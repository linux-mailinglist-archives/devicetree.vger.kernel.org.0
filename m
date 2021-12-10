Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 548D646FACF
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 07:53:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232231AbhLJG5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 01:57:09 -0500
Received: from pv50p00im-hyfv10021501.me.com ([17.58.6.48]:43472 "EHLO
        pv50p00im-hyfv10021501.me.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231272AbhLJG5I (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 10 Dec 2021 01:57:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
        s=1a1hai; t=1639119213;
        bh=jAwhqI+j2+6olMnTrv6REzC7x4spgPUsERXxblhsXZA=;
        h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
        b=lry7z4tCYfA7coaBOa6YOdfP7VtaQFPz01Cb2grMl6i3m6qhy1ufMszYCtcojfVgN
         vrC8I2atbp/7bjOuDnBL5y/9Z6S5ab/wlK6MEWYdgvB4INMnRj3jXX4A8fpIEGlFOd
         hE07SPhtS6LW2Mq2lmqn5HQfikEHR8c6UaHuRrEdbDCi8jObvEUAPubtj1FyUhEc/B
         vhw50/d16gIrf58E6luRnI6DetWUyHUcI9ak5v5qrDWW/2UmxaIpxu+EN+oiuxseLT
         zr5o/sM9wDOXMzH4yk7dZDghT1CX2J5s3gEVFMhhT3dhfsgeQnJyJAs63Q0zw1sUe5
         z1Nnjsyi7x51A==
Received: from smtpclient.apple (125-227-78-46.hinet-ip.hinet.net [125.227.78.46])
        by pv50p00im-hyfv10021501.me.com (Postfix) with ESMTPSA id 0495954072C;
        Fri, 10 Dec 2021 06:53:27 +0000 (UTC)
From:   Lisa Hill <f11o1iomh3dmt141n@icloud.com>
Content-Type: text/plain;
        charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: [PATCH] ARM: dts: BCM5301X: Add USB GPIO and missing LEDs on Netgear 
 R6300v2
Message-Id: <74E33696-D05A-4009-8C40-927A4DBDD4EF@icloud.com>
Date:   Fri, 10 Dec 2021 14:53:24 +0800
Cc:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>
X-Mailer: Apple Mail (2.3693.20.0.1.32)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425,18.0.790
 definitions=2021-12-08_08:2021-12-08,2021-12-08 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2009150000 definitions=main-2112100040
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set GPIO controlling power for both USB ports properly and add two WAN =
LEDs and a USB LED missing for the Netgear R6300v2.

Signed-off-by: Lisa Hill <f11o1iomh3dmt141n@icloud.com>
---
 .../arm/boot/dts/bcm4708-netgear-r6300-v2.dts | 27 ++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts =
b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
index 4c60eda296d973..5810c95ab239ae 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
@@ -34,20 +34,33 @@
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
+	=09
+		wan-green {
+			label =3D "bcm53xx:green:wan";
+			gpios =3D <&chipcommon 10 GPIO_ACTIVE_LOW>;
+			linux,default-trigger =3D "default-on";
+		};
+	=09
+		wan-amber {
+			label =3D "bcm53xx:amber:wan";
+			gpios =3D <&chipcommon 10 GPIO_ACTIVE_HIGH>;
 		};
=20
 		wireless {
@@ -79,6 +92,14 @@
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

