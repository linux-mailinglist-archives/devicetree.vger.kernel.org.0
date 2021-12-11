Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8975C4712FB
	for <lists+devicetree@lfdr.de>; Sat, 11 Dec 2021 09:53:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbhLKIxc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Dec 2021 03:53:32 -0500
Received: from pv50p00im-hyfv10011601.me.com ([17.58.6.43]:58073 "EHLO
        pv50p00im-hyfv10011601.me.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229614AbhLKIxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 11 Dec 2021 03:53:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
        s=1a1hai; t=1639212811;
        bh=FkNCV9JTCXjRD1uNu48z5W576AOCU+XiGrHpKjxgaW4=;
        h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
        b=xWSFKnWJB9vFvTlThkveaaNVVZZnm9aU1sNUh8ZeEDm97tc+lqY1141byWV/CnOrO
         N8d3+Knc/UFeu8IWiYeUqS7NBJkI6oUA6+k31gOgOednpYdqqtNzU+siKrmh8yrbOD
         OeaVTGbngpJ4sdIwmiCmQY87S926aQDwaqMxM21ckyISJf0lpkY0rcgqA6h8kuXNK6
         062baSiBIev3WyOPDOR9GuYwKW/B941DMk+nX8gMKR0xKTw7uAAfEmrQexKJ90jNbP
         6fNH6SRD/crzudZvMtLP+PZuB3pEbEWACT9V7WSnSNa8rh/oE+3czvSY+9EQyqipXX
         eDPBx4ioNWjpw==
Received: from smtpclient.apple (125-227-78-46.hinet-ip.hinet.net [125.227.78.46])
        by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id D086F3805BD;
        Sat, 11 Dec 2021 08:53:27 +0000 (UTC)
From:   Lisa Hill <f11o1iomh3dmt141n@icloud.com>
Content-Type: text/plain;
        charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: [PATCH] ARM: dts: BCM5301X: Add USB GPIO and missing LEDs on Netgear
 R6300v2
Message-Id: <C3B4248E-2870-4572-9A11-45AAA7019E9A@icloud.com>
Date:   Sat, 11 Dec 2021 16:53:23 +0800
Cc:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>
X-Mailer: Apple Mail (2.3693.20.0.1.32)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425,18.0.790
 definitions=2021-12-11_03:2021-12-09,2021-12-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2009150000 definitions=main-2112110047
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set GPIO controlling power for both USB ports properly, add missing WAN =
LEDs and specify USB ports for the USB LED on Netgear R6300v2.

Signed-off-by: Lisa Hill <f11o1iomh3dmt141n@icloud.com>
---
 .../arm/boot/dts/bcm4708-netgear-r6300-v2.dts | 26 ++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts =
b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
index 4c60eda296d973..46e77973b12df0 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
@@ -34,20 +34,32 @@
 			linux,default-trigger =3D "default-on";
 		};
=20
-		power0 {
+		power-green {
 			label =3D "bcm53xx:green:power";
 			gpios =3D <&chipcommon 2 GPIO_ACTIVE_LOW>;
+			linux,default-trigger =3D "default-on";
 		};
=20
-		power1 {
+		power-amber {
 			label =3D "bcm53xx:amber:power";
 			gpios =3D <&chipcommon 3 GPIO_ACTIVE_LOW>;
-			linux,default-trigger =3D "default-on";
 		};
=20
 		usb {
 			label =3D "bcm53xx:blue:usb";
 			gpios =3D <&chipcommon 8 GPIO_ACTIVE_LOW>;
+			trigger-sources =3D <&ohci_port1>, =
<&ehci_port1>, <&xhci_port1>;
+			linux,default-trigger =3D "usbport";
+		};
+
+		wan-green {
+			label =3D "bcm53xx:green:wan";
+			gpios =3D <&chipcommon 10 GPIO_ACTIVE_LOW>;
+		};
+
+		wan-amber {
+			label =3D "bcm53xx:amber:wan";
+			gpios =3D <&chipcommon 10 GPIO_ACTIVE_HIGH>;
 		};
=20
 		wireless {
@@ -79,6 +91,14 @@
 	};
 };
=20
+&usb2 {
+	vcc-gpio =3D <&chipcommon 0 GPIO_ACTIVE_HIGH>;
+};
+
+&usb3 {
+	vcc-gpio =3D <&chipcommon 0 GPIO_ACTIVE_HIGH>;
+};
+
 &spi_nor {
 	status =3D "okay";
 };

