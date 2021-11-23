Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AFC645A362
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 14:00:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235725AbhKWNDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 08:03:18 -0500
Received: from cpanel.siel.si ([46.19.9.99]:58286 "EHLO cpanel.siel.si"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232746AbhKWNDS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Nov 2021 08:03:18 -0500
X-Greylist: delayed 2476 seconds by postgrey-1.27 at vger.kernel.org; Tue, 23 Nov 2021 08:03:17 EST
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=q79EImEE7TwOxokPaFs4HaLT7ex7ZINGGp8tWA+29LA=; b=d5EKBPCfJWTpFF7quNcvs5yRAt
        jnuoPW0MKzs6v3+EQCI6fFEuyA2EVzNtD/cFmqwSJSz7XoxcIBzsVoTe1kHt7T6glj4brtA5/bxla
        4Uyvx1Q/XXnLIjEfpGlBOxgaJDR2n12H/oQ462YFrvPvRdT36uI+DUQBaEfn0wjd/hnkkrAkwd7Sq
        8xJq7Dvvun16uy01mvAw/eibCcL3J/cHn6puHJ5Ds3x2/rRyvbqVFOv7bV4VlVCnPVHC6+8zceTT1
        66wwm80EtAALIMthqij7JdONecuKhiagY4Sm/IBphnd/9wGDUjdVb+liBGnNgAMldCqlo+5HSM5XQ
        OrwFfmew==;
Received: from [89.212.21.243] (port=52734 helo=localhost.localdomain)
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1mpUl3-001MMS-MQ; Tue, 23 Nov 2021 13:18:45 +0100
From:   Andrej Picej <andrej.picej@norik.com>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org, andrej.picej@norik.com,
        y.bas@phytec.com
Subject: [PATCH 2/2] ARM: dts: imx6qdl: Handle unneeded MFD-subdevices correctly
Date:   Tue, 23 Nov 2021 13:18:33 +0100
Message-Id: <20211123121833.2439901-2-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123121833.2439901-1-andrej.picej@norik.com>
References: <20211123121833.2439901-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yunus Bas <y.bas@phytec.de>

The proper way to handle partly used MFD devices are to describe all MFD
subdevices in the devicetree and disable the not used ones. This
suppresses any warnings that may arise as a result.

Signed-off-by: Yunus Bas <y.bas@phytec.de>
Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi      |  5 +++++
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
index 2ec154756bbc..3590f439adf5 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
@@ -213,6 +213,11 @@ pmic_rtc: rtc {
 		da9063_wdog: wdt {
 			compatible = "dlg,da9063-watchdog";
 		};
+
+		onkey {
+			compatible = "dlg,da9063-onkey";
+			status = "disabled";
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index a80aa08a37cb..972419f20af8 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -113,6 +113,16 @@ watchdog {
 			dlg,use-sw-pm;
 		};
 
+		thermal {
+			compatible = "dlg,da9062-thermal";
+			status = "disabled";
+		};
+
+		gpio {
+			compatible = "dlg,da9062-gpio";
+			status = "disabled";
+		};
+
 		regulators {
 			vdd_arm: buck1 {
 				regulator-name = "vdd_arm";
-- 
2.25.1

