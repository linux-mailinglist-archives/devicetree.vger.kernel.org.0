Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACADDC10B7
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 14:07:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726155AbfI1MH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 08:07:58 -0400
Received: from mout.gmx.net ([212.227.15.15]:60659 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725857AbfI1MH5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Sep 2019 08:07:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1569672465;
        bh=/ScWQbBAyXuNKzjoeYet94tK8hr90mgTZg1PlOrDDcw=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=E0id8RfsUQo/vu9AkkzEk2O7ctKxrU7xwLUwsgubIoNDr2/cSVPjoLPpMn89hW3Un
         R5xUlxlv3vPt8PzuFxnZXTkw1dKfu0gaaGLrjtCb+X5NSRDEXwYS5IesloR54zVJw4
         bcMQZxDyfc7BYuSJy/G10hOkM9rL3VjQFmvvqnas=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MhD6W-1hizhC3a4Y-00eKbf; Sat, 28 Sep 2019 14:07:36 +0200
From:   Stefan Wahren <wahrenst@gmx.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH V3 2/8] ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
Date:   Sat, 28 Sep 2019 14:07:08 +0200
Message-Id: <1569672435-19823-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:dC6viQ2JsjUhpbPXyk7+j5zSW/XlofqFAcv2ZESZEpI51n8HdEp
 ofgCOSTFiJibFbW0TUKZZClQc9BmePh7phF4RkRRYrpvPT/adkmaMHKTyzybCBHhs78Ig/G
 /WC5/N88kq497T5Sqm/ZoT2jKztjLhU5r7ng40Zpe20SdoTR3o9eVR4TOsRPEdpKPb/r/Xj
 ROy3oM/Srz0wY41/mxTSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bwrEiyAno3Y=:fYLpdrpFTwBDAp7xSQY3qR
 Wy0fIXnHzxf0pmrExq9z+Evktvo6QoHV16d77vr2FX5DcNAyyzFzuVa02VF6PrjzTN7da/xHA
 +ND+HKGFKGi10vWu323HutcLNwHpX2ZT3wiFcQ2X1bx3M+qucfWZLDcCETPtt/WC4CSMtFJuc
 0OSMsXJ6RTbRHvIQ+xHTyQNOLCoGDQ4CdIjBsU5jj9AbxMgOwCw1uV45hiiPaUdvZPLATmCMh
 JMB5yOyU2YE3UzqcyFuArtAvX0278KYzOtOeRmxB22Fq2/gz+nBiBWHFRFVFtRaC43p7P9WlA
 NCm09+A1h2alBi+c8bCPo6qI6Ke3u/2BaHiVmFjQ9t+TwXRXpLJ3PhyRWkVcjIQTyU6beTbf4
 LxVnmSCXqzQLHwh6hXeVJfOAlM9v2cPdNcxMn2xffboIFfApvkuycslVyNJBgWgsHtFXP6fcS
 FoIMKPS+WG563Xh6eExneeGS52p0LNMSTLzY1SjUOT8YNbQdVTzDhon5OnaeWRoX5Z4mUQCN7
 CwyT5pdvHIcoTaUqTxuO01T6Cg/anM8hODL3Lv7bhw6Pt/x2lgX4u4AwhYwxMD9zlmhG/a7K2
 lqn3HBrub3uP02hINz7azIMoPlsyuDuMu5gRe8L5+i5w/+oQgLqgiSDdT4G0QUolQWkzm6ucP
 lSR2Y0c1fJyxUXIivzJbr0o07WtlCMw2Ii5nNUESIke36iYYOi6ojzm6NBEwk2G1fz7qtovz8
 RIRfiC673NGw4SlhIEgXRLb8WFbcvaGd5YzGccnm0egAXgnxspVKez9+OnfdwB0aKYKni67qB
 wjXwylt/RF3Y7LF89QsuUvaSU2GbVYW6a+Bh9Kli3N2zXjeVN/v9qbyLOvybN6Jcd6AUgQxL+
 f+fkkskJSyIBcr4OXG7A2YKQnzPHDLFBV6U2Fby/euXAPExnXa0I1QJdc6qXgA6ILiDOYYemi
 QCFljRzKo+Ep3m76BYqBUl0MVOawy5yDWnXxy0jY2+eJSsGS+yLbNwRbPF1KcHMgVZFQOZc8Q
 6OEoLoEHhYdiWZZtTmGQt0f1ibb3yHrWmEQVbw/IAqkKIQ/oDCPhuO/dbuL/iGURHzS+sl53H
 vx2hPPBhr90+GoCTNYexEvEKHVlHgJVw2OuVQyabNPV9p+ujC8LDIUtBMflNxx48jDA+GHD3B
 0umGiseiHTJjBeJ/ImuXGX1glRMmokWianYxEeR3E7Qq3REuRM90V+YjhpOp8QjRxTe49JouV
 XJDXp07kDLDbcEFmnrnTMigZhLniYvmERAWTpmc4dYXI4VcDsOhztvVNiFZMJ+AqeDa3ib9YU
 rvpnVd8Z4zZg6prlXqusn4Y8q29yzXK7cTWIaaFuYMm0tOSGKzhYzdt9ufQ8ZYbkdRCF9nCnr
 AN+amtVvJ0DKD/+mujHQTpVrSHKsPzl/aCxm/SFH/1r5790SG8ZH+brO4HtWdUWtn98O/c0BG
 fZWRvy7WV1lou80GQt3mLONj9/B8OchrAaQo7NMOgkjV2wsNaz8Dv5
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The downstream compatible brcm,bcm2835-pl011 hasn't been upstreamed yet.
So remove it.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm/boot/dts/bcm283x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dt=
si
index f16899d..ae8296f 100644
=2D-- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -396,7 +396,7 @@
 		};

 		uart0: serial@7e201000 {
-			compatible =3D "brcm,bcm2835-pl011", "arm,pl011", "arm,primecell";
+			compatible =3D "arm,pl011", "arm,primecell";
 			reg =3D <0x7e201000 0x200>;
 			interrupts =3D <2 25>;
 			clocks =3D <&clocks BCM2835_CLOCK_UART>,
=2D-
2.7.4

