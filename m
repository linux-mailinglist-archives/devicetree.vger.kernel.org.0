Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3001273E78
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 11:24:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726549AbgIVJYF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 05:24:05 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:46208 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726526AbgIVJYF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 05:24:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1600766644; x=1603358644;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=v67pOoIOu8fCd0FA5AiaGCAVwkK4d6IjelxBSizpDr0=;
        b=AWx/ZrAvbhdEeh5QOHfZaqr71z9P7K2jOj4FqT4yNSIC8z0ZiWzq4xF7rWKUclhS
        GOJhoKzciJyPFeD5So443VSgovIXyWXYsx4oU3ebMbMrkPAsoLnjSsF3RcY7XzGp
        nKyRJCVq1BZutC88Miq/o/1wF52fxg2l7p1VoIsuFgU=;
X-AuditID: c39127d2-269ff70000001c25-a5-5f69c2b4fb8e
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 51.E6.07205.4B2C96F5; Tue, 22 Sep 2020 11:24:04 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020092211240416-473853 ;
          Tue, 22 Sep 2020 11:24:04 +0200 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Yunus Bas <y.bas@phytec.de>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH 4/6] ARM: dts: imx6ul: segin: Add phyBOARD-Segin with eMMC phyCORE-i.MX6UL
Date:   Tue, 22 Sep 2020 11:23:11 +0200
Message-Id: <20200922092313.151293-4-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200922092313.151293-1-s.riedmueller@phytec.de>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:24:04,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:24:04
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBLMWRmVeSWpSXmKPExsWyRoCBS3fLocx4gxvvZS3mHznHavHwqr/F
        psfXWC3+79nBbvF3+yYWixdbxB3YPHbOusvusWlVJ5vH5iX1Hv1/DTw+b5ILYI3isklJzcks
        Sy3St0vgyrg89RRzwTzRirdPNjI1MLYJdjFyckgImEgsOLqHuYuRi0NIYBujxKqtk9khnGuM
        EvOP3mAFqWITMJJYMK2RCcQWEVCWOLWxD6yIWeAno8SJq51gRcICURLzen4zg9gsAqoSi//8
        ZAOxeQVsJW5t+M4GsU5eYual7+wgNqeAncSy8xMZQWwhoJq1V6ZA1QtKnJz5hAVkgYTAFUaJ
        49t3sUI0C0mcXnwWbAGzgLbEsoWvmScwCsxC0jMLSWoBI9MqRqHczOTs1KLMbL2CjMqS1GS9
        lNRNjMDQPTxR/dIOxr45HocYmTgYDzFKcDArifCqGaXHC/GmJFZWpRblxxeV5qQWH2KU5mBR
        EufdwFsSJiSQnliSmp2aWpBaBJNl4uCUamDskg+UXPpgbehK8ztXfNlOmincffznZUOccOfU
        xZPY7t7fJalwa9r9uH8TU0T0A2Qb9NW87kz5+asnYVq0c4ltuPat5Wxz/uwwkeh8e3a5affv
        1wwzSqdHXdlyVJkvmXmqR2zpl3txumtvLstgW3agy3jHo81LF621bNzh+/X16qToR7+yXt7g
        UWIpzkg01GIuKk4EAMEoxStLAgAA
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
 arch/arm/boot/dts/Makefile                    |  1 +
 .../dts/imx6ul-phytec-segin-ff-rdk-emmc.dts   | 93 +++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 4572db3fa5ae..81ede0707a51 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -615,6 +615,7 @@ dtb-$(CONFIG=5FSOC=5FIMX6UL) +=3D \
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
index 000000000000..934c05fad615
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
+&tlv320 {
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

