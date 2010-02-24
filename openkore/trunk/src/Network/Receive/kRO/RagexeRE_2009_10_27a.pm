#########################################################################
#  OpenKore - Packet sending
#  This module contains functions for sending packets to the server.
#
#  This software is open source, licensed under the GNU General Public
#  License, version 2.
#  Basically, this means that you're allowed to modify and distribute
#  this software. However, if you distribute modified versions, you MUST
#  also distribute the source code.
#  See http://www.gnu.org/licenses/gpl.html for the full license.
#
#  $Revision: 6687 $
#  $Id: kRO.pm 6687 2009-04-19 19:04:25Z technologyguild $
########################################################################
# Korea (kRO)
# The majority of private servers use eAthena, this is a clone of kRO

package Network::Receive::kRO::RagexeRE_2009_10_27a;

use strict;
use base qw(Network::Receive::kRO::RagexeRE_2009_10_06a);

sub new {
	my ($class) = @_;
	my $self = $class->SUPER::new(@_);
	my %packets = (
		# //0x07f5,6
		'07F6' => ['exp', 'a4 V v2', [qw(ID val type flag)]], # 14 # type: 1 base, 2 job; flag: 0 normal, 1 quest # TODO: use. I think this replaces the exp gained message trough guildchat hack
	);

	foreach my $switch (keys %packets) {
		$self->{packet_list}{$switch} = $packets{$switch};
	}

	return $self;
}


=pod
//2009-10-27aRagexeRE
//0x07f5,6
0x07f6,14
=cut

1;