Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2EE429E4E7
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:49:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731776AbgJ2Ht0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:49:26 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:51576 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730134AbgJ2HtW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:49:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1603955018; x=1606547018;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=0Y8YimoRM2Ff8+CQ2vuxWxe9jmAg/cdXl0yKDQLWd00=;
        b=le+q6NtjvPks4F/mm0yu1m2+OwaPHGWtsTuWC/wU0V4TA6C2xD7yOgWQOdimCLvp
        jtCOZtndQo4h8wmzL17cAGhhT0r1qpWKv+5uld4hEkX6XtRFFAwChc9KsSQ6mGs6
        crdt/0ak6X0QvCiNHd/KvNJQMPpO2oe3xqtdIIkJZFU=;
X-AuditID: c39127d2-269ff70000001c25-1d-5f9a694a0bcc
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id BC.4B.07205.A496A9F5; Thu, 29 Oct 2020 08:03:38 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020102908033857-690348 ;
          Thu, 29 Oct 2020 08:03:38 +0100 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Yunus Bas <y.bas@phytec.de>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH v2 4/6] ARM: dts: imx6ul: segin: Add phyBOARD-Segin with eMMC phyCORE-i.MX6UL
Date:   Thu, 29 Oct 2020 08:03:22 +0100
Message-Id: <20201029070324.16057-4-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029070324.16057-1-s.riedmueller@phytec.de>
References: <20201029070324.16057-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:38,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:38
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBLMWRmVeSWpSXmKPExsWyRoCBS9crc1a8wcSz+hbzj5xjtXh41d9i
        0+NrrBb/9+xgt/i7fROLxYst4g5sHjtn3WX32LSqk81j85J6j/6/Bh6fN8kFsEZx2aSk5mSW
        pRbp2yVwZRxftICl4K5oRdOiLvYGxrWCXYycHBICJhIvr35j7mLk4hAS2MoosWHqPXYI5xqj
        xJM5q1hBqtgEjCQWTGtkArFFBJQlTm3sAytiFvjJKHHiaidYkbBArMSZA//YQGwWAVWJSc/X
        soPYvAI2EhuXXWCCWCcvMfPSd7A4p4CtxJTG+WD1QkA13XeOQdULSpyc+YQFZIGEwBVGiQ8v
        vrBCNAtJnF58lhnEZhbQlli28DXzBEaBWUh6ZiFJLWBkWsUolJuZnJ1alJmtV5BRWZKarJeS
        uokRGLqHJ6pf2sHYN8fjECMTB+MhRgkOZiUR3heCM+OFeFMSK6tSi/Lji0pzUosPMUpzsCiJ
        827gLQkTEkhPLEnNTk0tSC2CyTJxcEo1MBrxtaxr5XZ2CLxx64XYfHMp5kXrs1ZGt/ow9C19
        +jEs/zbjn3/c17YIrE6Uu8BZnvP8V83FZjvuilI2fW+hf6rx6e7n3R7HXnh0aUvfQTYBC3O/
        D+0rra9u5A6z/i2lrlXgzX3qjpqH6u/cJ0e38hvM+3p5GcsS71e/58w7fYb9Qsv/M48V3JRY
        ijMSDbWYi4oTAT6EtgVLAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yunus Bas <y.bas@phytec.de>

Add a PHYTEC phyBOARD-Segin full featured with phyCORE-i.MX 6UL with
eMMC and following features:
    - i.MX 6UL
    - 512 MB RAM
    - eMMC
    - USB Host/OTG
    - 2x 100 Mbit/s Ethernet
    - RS232
    - CAN

Signed-off-by: Yunus Bas <y.bas@phytec.de>
Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---

Notes:
    Changes in v2:
     - Fixed alphabetic order

 arch/arm/boot/dts/Makefile                    |  1 +
 .../dts/imx6ul-phytec-segin-ff-rdk-emmc.dts   | 93 +++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index ce66ffd5a1bb..654692919a27 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -622,6 +622,7 @@ dtb-$(CONFIG=5FSOC=5FIMX6UL) +=3D \
 	imx6ul-pico-dwarf.dtb \
 	imx6ul-pico-hobbit.dtb \
 	imx6ul-pico-pi.dtb \
+	imx6ul-phytec-segin-ff-rdk-emmc.dtb \
 	imx6ul-phytec-segin-ff-rdk-nand.dtb \
 	imx6ul-tx6ul-0010.dtb \
 	imx6ul-tx6ul-0011.dtb \
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts b/arch/a=
rm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
new file mode 100644
index 000000000000..4a25122e0da2
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2020 PHYTEC Messtechnik GmbH
+ * Author: Yunus Bas <y.bas@phytec.de>
+ */
+
+/dts-v1/;
+#include "imx6ul.dtsi"
+#include "imx6ul-phytec-phycore-som.dtsi"
+#include "imx6ul-phytec-segin.dtsi"
+#include "imx6ul-phytec-segin-peb-eval-01.dtsi"
+
+/ {
+	model =3D "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured with eMMC";
+	compatible =3D "phytec,imx6ul-pbacd10-emmc", "phytec,imx6ul-pbacd10",
+		     "phytec,imx6ul-pcl063","fsl,imx6ul";
+};
+
+&adc1 {
+	status =3D "okay";
+};
+
+&can1 {
+	status =3D "okay";
+};
+
+&ecspi3 {
+	status =3D "okay";
+};
+
+&ethphy1 {
+	status =3D "okay";
+};
+
+&ethphy2 {
+	status =3D "okay";
+};
+
+&fec1 {
+	status =3D "okay";
+};
+
+&fec2 {
+	status =3D "okay";
+};
+
+&i2c=5Frtc {
+	status =3D "okay";
+};
+
+&reg=5Fcan1=5Fen {
+	status =3D "okay";
+};
+
+&reg=5Fsound=5F1v8 {
+	status =3D "okay";
+};
+
+&reg=5Fsound=5F3v3 {
+	status =3D "okay";
+};
+
+&sai2 {
+	status =3D "okay";
+};
+
+&sound {
+	status =3D "okay";
+};
+
+&tlv320 {
+	status =3D "okay";
+};
+
+&uart5 {
+	status =3D "okay";
+};
+
+&usbotg1 {
+	status =3D "okay";
+};
+
+&usbotg2 {
+	status =3D "okay";
+};
+
+&usdhc1 {
+	status =3D "okay";
+};
+
+&usdhc2 {
+	status =3D "okay";
+};
--=20
2.25.1

