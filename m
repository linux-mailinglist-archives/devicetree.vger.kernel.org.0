Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5FA3D135AA4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2020 14:53:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731345AbgAINwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jan 2020 08:52:33 -0500
Received: from mail-wm1-f44.google.com ([209.85.128.44]:37022 "EHLO
        mail-wm1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731337AbgAINwc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jan 2020 08:52:32 -0500
Received: by mail-wm1-f44.google.com with SMTP id f129so2932324wmf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2020 05:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bhaw+vfeaLxVOzoOOCbTv5V0pf4zVwEkBpFfiGVWyVQ=;
        b=YdplVJrxQA+rY2BfRpe9YrdFu32Wj2CXIK6O7oNhJ+sbeu9+jnKJ3HEUaf2V5BJX74
         3AekydIO2Yw+kCgrfAF0Y3oC3xirkpj9HLmcqKTdo3bz8tDU4aMdmkumzs0V8Nxk19kt
         Q2E9oE6+Nb4PWtpQm827ovygGXqEcqChiIATgpbQBEmmP+jmbYxyAeyGAV8u1UMQbtam
         6gh7ljgTzc5DM9whVfY5mHeSzvqarUTJMKcUeCV6OjYj2YbCqj1NvCL9W9Geg1ns7MEw
         imqehgrg7yjWqGxNBlSjUsj1UV/WNccYv7+dVk4uSCs/MGn88OEGkdUbBZ8PInncF8lZ
         qqKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=bhaw+vfeaLxVOzoOOCbTv5V0pf4zVwEkBpFfiGVWyVQ=;
        b=DSQgRnTsdoxVknZuf6fxHsq4R1o2EcWMUUHfkOfIiL51tgcmcae6YFfMHvbrgy6bRf
         UbWOyIlgNajrepd/KZ9BuHRun+yR0f0aHpgtCMg127GwiGnHvdzR9wHE5zT3VGt9Io5s
         ZMJ7jzZc2O7kCT4L2v7XVyls8i1tBD892nhyegsWT+rQaGbIWCYFNhHiHKnPls1upjHS
         6/kcbq/9SAsGXZa5BFR7jK/L3WJ01nWmVIgtNziSgWcAA3PhOkgrq+JfTnXpbqRDxJEZ
         kZg3nlXJRs+kfIJK2IHfmc8q++lgUj97z8K5PfN4s5bxo5xg/9bTAclg8RsxnNfJGeQG
         T//w==
X-Gm-Message-State: APjAAAVQyMZMkuM+JuMtr3k2ZE1sr/iIGWQ/LkPr0a8oY4OSE22ETDPT
        X3BBw+A06+xjlxvpDkjRC9dBfg==
X-Google-Smtp-Source: APXvYqyy61xoMPBUlxiAZV5k/2Bht20Qx7hWrsTdyE+yPuJ53LS+84ZZ7DetqZNUKlSdQG0ZOVFNiA==
X-Received: by 2002:a7b:c7d4:: with SMTP id z20mr5478709wmk.42.1578577950336;
        Thu, 09 Jan 2020 05:52:30 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id v14sm8100554wrm.28.2020.01.09.05.52.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Jan 2020 05:52:29 -0800 (PST)
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-arm-kernel@lists.infradead.org, git@xilinx.com
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Harini Katakam <harini.katakam@xilinx.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/8] arm64: zynqmp: Turn comment to gpio-line-names
Date:   Thu,  9 Jan 2020 14:52:18 +0100
Message-Id: <daa153e9b77184e29a4064efebd759cfb999de7a.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Label gpio lines properly.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 43 ++++---------------
 1 file changed, 9 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 7c6b538490f8..c96e8416fa7e 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -125,21 +125,11 @@ &i2c0 {
 	tca6416_u97: gpio@20 {
 		compatible = "ti,tca6416";
 		reg = <0x20>;
-		gpio-controller;
+		gpio-controller; /* IRQ not connected */
 		#gpio-cells = <2>;
-		/*
-		 * IRQ not connected
-		 * Lines:
-		 * 0 - PS_GTR_LAN_SEL0
-		 * 1 - PS_GTR_LAN_SEL1
-		 * 2 - PS_GTR_LAN_SEL2
-		 * 3 - PS_GTR_LAN_SEL3
-		 * 4 - PCI_CLK_DIR_SEL
-		 * 5 - IIC_MUX_RESET_B
-		 * 6 - GEM3_EXP_RESET_B
-		 * 7, 10 - 17 - not connected
-		 */
-
+		gpio-line-names = "PS_GTR_LAN_SEL0", "PS_GTR_LAN_SEL1", "PS_GTR_LAN_SEL2", "PS_GTR_LAN_SEL3",
+				"PCI_CLK_DIR_SEL", "IIC_MUX_RESET_B", "GEM3_EXP_RESET_B",
+				"", "", "", "", "", "", "", "", "";
 		gtr-sel0 {
 			gpio-hog;
 			gpios = <0 0>;
@@ -169,27 +159,12 @@ gtr-sel3 {
 	tca6416_u61: gpio@21 {
 		compatible = "ti,tca6416";
 		reg = <0x21>;
-		gpio-controller;
+		gpio-controller; /* IRQ not connected */
 		#gpio-cells = <2>;
-		/*
-		 * IRQ not connected
-		 * Lines:
-		 * 0 - VCCPSPLL_EN
-		 * 1 - MGTRAVCC_EN
-		 * 2 - MGTRAVTT_EN
-		 * 3 - VCCPSDDRPLL_EN
-		 * 4 - MIO26_PMU_INPUT_LS
-		 * 5 - PL_PMBUS_ALERT
-		 * 6 - PS_PMBUS_ALERT
-		 * 7 - MAXIM_PMBUS_ALERT
-		 * 10 - PL_DDR4_VTERM_EN
-		 * 11 - PL_DDR4_VPP_2V5_EN
-		 * 12 - PS_DIMM_VDDQ_TO_PSVCCO_ON
-		 * 13 - PS_DIMM_SUSPEND_EN
-		 * 14 - PS_DDR4_VTERM_EN
-		 * 15 - PS_DDR4_VPP_2V5_EN
-		 * 16 - 17 - not connected
-		 */
+		gpio-line-names = "VCCPSPLL_EN", "MGTRAVCC_EN", "MGTRAVTT_EN", "VCCPSDDRPLL_EN", "MIO26_PMU_INPUT_LS",
+				"PL_PMBUS_ALERT", "PS_PMBUS_ALERT", "MAXIM_PMBUS_ALERT", "PL_DDR4_VTERM_EN",
+				"PL_DDR4_VPP_2V5_EN", "PS_DIMM_VDDQ_TO_PSVCCO_ON", "PS_DIMM_SUSPEND_EN",
+				"PS_DDR4_VTERM_EN", "PS_DDR4_VPP_2V5_EN", "", "";
 	};
 
 	i2c-mux@75 { /* u60 */
-- 
2.24.0

