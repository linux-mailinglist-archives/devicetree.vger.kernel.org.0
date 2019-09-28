Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 026CAC10B6
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 14:07:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725965AbfI1MH5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 08:07:57 -0400
Received: from mout.gmx.net ([212.227.15.18]:47857 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725857AbfI1MH5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Sep 2019 08:07:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1569672456;
        bh=Uiusfd++iO6W8WtYRF60ANQDODpBG+UQSmFz88xtJgk=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=dQQAfY4vF9eIiMhhnPGoT5NglegGATZLY2pWt5aHEKQTfHpbo5mXmBA2lOMMYtol9
         0RYl9Xdf72oHrJejRZvgtxira0cT89r516zxoKJBQpQogQGbjbFKM/28zYVRed4eaT
         1rCKc0ib8NpCUf/BH2aTQVuWU7ShKx1WkQMEmd9A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mk0Ne-1hlkaO1gXA-00kMD7; Sat, 28 Sep 2019 14:07:36 +0200
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
Subject: [PATCH V3 1/8] ARM: dts: bcm283x: Remove simple-bus from fixed clocks
Date:   Sat, 28 Sep 2019 14:07:07 +0200
Message-Id: <1569672435-19823-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Qtvp3jbppime3Xe7fPvHlPdRWaE4I5Ik5MHiGVEb5DsNMGaIWjk
 VKQScuoHMcCmlS9y5vS4d3x+5fVvOllNTYU9pqisHOQI03U34MOGTzQCmdjyaBmm+z6pSsq
 PfBJnqBGdYamgCBvo/LP9ZbfAE/lt9bRqM5zLAIkR0UtaSM5+7EdYMYqGgRrxKcx8X7qqZ4
 8bnsG4ILMaGfP4K0PFrVg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:b3YvHamCSD4=:9/VGlDodTXtRD2VUougHaS
 AJd7T1yanl95AH22mpgekYcnltdSxncVFWd7p9D4VjpOA2lWhCjhcd+tCvB7uk3uYo1PI78yl
 dG6zYU+LwEzwtMCUMnF77XL5/kJi4Waya71RhCRo6p0UifZ183Tzn4E9zIdTArV+OrXwGj8un
 0LjCgyv93C3Zmtn1vBIAGzZHthTFSB3DhrUZfuUOQ3n9ET6DKvcdiw8tAFlx0O28rTf3+iix+
 qyGHa0Tve1JBtuv6lXkJJUEYbM517UzkCU7JHnctOtYHjRMVwYhPCz8yrz4HkIGiALHVX/6dI
 MOAHfCswJEJQkxKXRUWHY5amfYsOCxXdfPt74mjbPoN8G698NiUHjDdhKIwDURiIK1DLNzxQM
 nAJjolUF1t25+Quqtny2SkKvhiIup2xrYZ7kOzEl54FPIRykR3gLtg4lZ+JBXQHmOGEYYtiOC
 7OKHnCZ3jXQDov6RMeI4xlLBw3TqDU+mUBaE0LfKI45no4XYPnEmxQtkF6qsAGKwex3rz4Dh4
 9c1E0peVbVSLovs0cMJcs7v9haXtCPVcVR+114tHZ3d3pD+uWxBhTNLxthADxerlZYmm5bDpE
 Hl906ScNr+21ETKFGVQO0SfhdSe78Dfh6xeEwjqAU7PvLC0eQ+swXcwJ7uh8WeYI+UJfiYRTH
 /AqVvfzYLJBZoqOq3p6ydsfwigpT9jzHYStB96jMIyxxw0pGPohr8yH08x/JVuc5aShJalrHv
 nWhhUL8D/bw8nAVUwpXQXV+sWNy39+D5EtsDa+gcI9Gf7AnmdwORvB3BNZ/Udvi6f2ZU/BJYw
 HJ3DRch/R223wqQlzT4qqZoxOeB7Wf2loDkEtJRhX9NTxfnJg0rK0nmrgnQYYHRLC+SlfRPQo
 NwMnH/wYQ43yRvi3mC0khxKDVBoBNnVb10pAyxwPrv6ox3tCHjlfxUWg7n8XF6yx4R0+Sq/Ob
 Bgw26uphkGX00YRMxUWzo5223DJvUiLSnD6J0wyi+sjKCLJV85Mh1aMLzi9Xp7bEq+0Wgf149
 u4e/KRNTdJZnLxa2ayoYIJwS0vXuxydewt3ubMjKm5csistwzcexb2Q6C3aXpPr1Z+BllBrkI
 WK1LU5u28og2R1jqHSqCxF/vcj5yKE3zYN4mjBypAK+gsCZI5wcbyCqdCUH6d8+DY3YaS+lw3
 gTJnN1iXzwsT6Xuf2Bt5Sk9It2/XKhal2IXZ6gzDc0yc7b9qeKDssQgI3K3omc4+M8OFuyvJ7
 gEucJ7VG3anMiF6mkHrsN4bBibSbz9tKwLNFlsg==
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fixed clocks doesn't form some kind of bus. So let's remove it.
This fixes the follow DT schema warnings:

clocks: clock@3:reg:0: [3] is too short
clocks: clock@4:reg:0: [4] is too short
clocks: $nodename:0: 'clocks' does not match '^(bus|soc|axi|ahb|apb)(@[0-9=
a-f]+)?$'
clocks: #size-cells:0:0: 0 is not one of [1, 2]
clocks: 'ranges' is a required property
clock@3: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
clock@4: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm/boot/dts/bcm283x.dtsi | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dt=
si
index 2d191fc..f16899d 100644
=2D-- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -650,22 +650,16 @@
 	};

 	clocks {
-		compatible =3D "simple-bus";
-		#address-cells =3D <1>;
-		#size-cells =3D <0>;
-
 		/* The oscillator is the root of the clock tree. */
-		clk_osc: clock@3 {
+		clk_osc: clk-osc {
 			compatible =3D "fixed-clock";
-			reg =3D <3>;
 			#clock-cells =3D <0>;
 			clock-output-names =3D "osc";
 			clock-frequency =3D <19200000>;
 		};

-		clk_usb: clock@4 {
+		clk_usb: clk-usb {
 			compatible =3D "fixed-clock";
-			reg =3D <4>;
 			#clock-cells =3D <0>;
 			clock-output-names =3D "otg";
 			clock-frequency =3D <480000000>;
=2D-
2.7.4

