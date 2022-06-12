Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B520547CC9
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 00:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234577AbiFLWd2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 18:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237179AbiFLWdK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 18:33:10 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99994186DB
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 15:33:08 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id b8so4960227edj.11
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 15:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6hOWm4HNYwizqExKPot6DZ2kdpEPh1LrdUx8jfcJnW4=;
        b=3A7I1paCBwpUXDLdMWsRFLysHo1EmAJGUKSNsBdyEp2pOkvhABlgXjkC5UP/UFbws8
         Yox9lnXcjiCD++KIO81jM6YSmxhQ29lFkyTd11cVvl6/xrrvS8kuxpv+giI/ot4sl2GJ
         6HJvriPA3DISV0sbD4sHHawjJV01fB+zVL2X97JsmvVbEL2V+KZcUtzSAN6q9SUlvty9
         DZJE0wvvZ5eDO2Lk8/lKEPy2vUpy5S/Ef7doTX/N3akGfhmt4USiSfgCrKn7uhRAg3wP
         PhSS8kKHAGprUTdftrnqS5fJs+OnrhRFFKfpqAOJQpgdC+KiEn/p0nggY4OWvBPfBzb+
         qRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6hOWm4HNYwizqExKPot6DZ2kdpEPh1LrdUx8jfcJnW4=;
        b=v5zOix4abWN2HIr1LdhQCcEkrrzth2eeBVCJ5Hxp2tHhVMr2S6mE8aitjyle2YqHNx
         7+tmKJRedjJ8QPsaB8nDa7nqhxSetX3Qtb6MLGu6b/QO7NW7MyYnCawOAxI5SJycsa67
         +L6vaEJgUqouia5pJsjifOY6l1uQoAaQc2xFfEx3oaOAVnnegaadp7tOH1tfENcsfsfV
         Zh/AmjS1YUliHNa7AgAuxEXjQUrJGK6YRDL58PtIntnVs0hbUUGv629lKDyQoxVBCZ4R
         EJSZAiOLJzS6H9cB6bwHMsMQpvf/eJWmSgFMQyj9sDIDMcS1YUAC9mL4bOao/PWPC2DL
         eHkw==
X-Gm-Message-State: AOAM533IgxyHmi2+BdMlm3wDnPppxYyb2zpSe8P7CnC0Ix74xU9h+xh6
        0/T0dubhbHBqCa38CSC4Zz13fA==
X-Google-Smtp-Source: ABdhPJx8eUy4phHW+qZj/cwYpkeLTe7LCtyDKwnpwHZyQwCu62A7fWns65QZ8iSHnZFsCiFr2MFFag==
X-Received: by 2002:a05:6402:ea7:b0:433:6141:840e with SMTP id h39-20020a0564020ea700b004336141840emr11453126eda.266.1655073187046;
        Sun, 12 Jun 2022 15:33:07 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:06 -0700 (PDT)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Wei Xu <xuwei5@hisilicon.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH 4/6] arm64: dts: hisilicon: Add missing space around properties
Date:   Mon, 13 Jun 2022 00:31:59 +0200
Message-Id: <20220612223201.2740248-5-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing space around properties before the typo spreads to other
files.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 arch/arm64/boot/dts/hisilicon/hip06.dtsi | 6 +++---
 arch/arm64/boot/dts/hisilicon/hip07.dtsi | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hip06.dtsi b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
index 70d7732dd348552d..2f8b03b0d36537ca 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
@@ -537,7 +537,7 @@ port@0 {
 
 			port@1 {
 				reg = <1>;
-				serdes-syscon= <&serdes_ctrl>;
+				serdes-syscon = <&serdes_ctrl>;
 				port-rst-offset = <1>;
 				port-mode-offset = <1>;
 				media-type = "fiber";
@@ -546,7 +546,7 @@ port@1 {
 			port@4 {
 				reg = <4>;
 				phy-handle = <&phy0>;
-				serdes-syscon= <&serdes_ctrl>;
+				serdes-syscon = <&serdes_ctrl>;
 				port-rst-offset = <4>;
 				port-mode-offset = <2>;
 				media-type = "copper";
@@ -555,7 +555,7 @@ port@4 {
 			port@5 {
 				reg = <5>;
 				phy-handle = <&phy1>;
-				serdes-syscon= <&serdes_ctrl>;
+				serdes-syscon = <&serdes_ctrl>;
 				port-rst-offset = <5>;
 				port-mode-offset = <3>;
 				media-type = "copper";
diff --git a/arch/arm64/boot/dts/hisilicon/hip07.dtsi b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
index 6baf6a686450ee28..1a16662f8867ba1e 100644
--- a/arch/arm64/boot/dts/hisilicon/hip07.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
@@ -1422,7 +1422,7 @@ port@0 {
 
 			port@1 {
 				reg = <1>;
-				serdes-syscon= <&serdes_ctrl>;
+				serdes-syscon = <&serdes_ctrl>;
 				cpld-syscon = <&dsa_cpld 0x4>;
 				port-rst-offset = <1>;
 				port-mode-offset = <1>;
@@ -1433,7 +1433,7 @@ port@1 {
 			port@4 {
 				reg = <4>;
 				phy-handle = <&phy0>;
-				serdes-syscon= <&serdes_ctrl>;
+				serdes-syscon = <&serdes_ctrl>;
 				port-rst-offset = <4>;
 				port-mode-offset = <2>;
 				mc-mac-mask = [ff f0 00 00 00 00];
@@ -1443,7 +1443,7 @@ port@4 {
 			port@5 {
 				reg = <5>;
 				phy-handle = <&phy1>;
-				serdes-syscon= <&serdes_ctrl>;
+				serdes-syscon = <&serdes_ctrl>;
 				port-rst-offset = <5>;
 				port-mode-offset = <3>;
 				mc-mac-mask = [ff f0 00 00 00 00];
-- 
2.36.1

