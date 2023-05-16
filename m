Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40E79704F09
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232637AbjEPNRy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:17:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232321AbjEPNRx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:17:53 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 055DF1BCA
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:17:53 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-19292e65c49so2969472fac.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684243072; x=1686835072;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q4TT/qe2NSVHR/sToSR6o7vzIlNFMNpSMTh4ahD7gKg=;
        b=l+cpjtLzS359Ldzzx/w4ML0/1jodqHOuSf6CV/7OWyD1ExU5vZiExIoxAdpxb6Y7RX
         y+woz759dZVmrLa039X5A1TVBDuV1ZcnVM4K91+3dGGfvZDpKNZV22FPBP5M8KtdNcFU
         LacAzudV8dSG+TIwVn8+WoesrMEBGnApXKRqmog4iJBAZAMF0IY+ZQGxcDYBCwBRfVbL
         vskGi2qm9Dvzy5V1ZJjFUs3cw8FXrC7dwfm0JOdZbW+3neMHs8T+J5LHyZpehTk8Rgxo
         QnsITuAq9k6HTj3dWq9brq5ufwKjqAQZo56hC8+nFBJxgFQyOBL7tvsIeIcsXsxxgdSq
         RyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684243072; x=1686835072;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q4TT/qe2NSVHR/sToSR6o7vzIlNFMNpSMTh4ahD7gKg=;
        b=AnAM/iJyLiI/8JzBav8Q+KWxiXBaBxzHSvJawJp7J+zPABI3c80/pJaeR5J3rkencV
         aIOgsNCJ/H/W66pMs7G+hG3j5M4OP1G2KXMww4gqLIQ1rTB35g5VY3Mmg0juebouJOky
         rwaw44NkTvGxdF6RwGbT5FJO6xQ03ergqtUszCxLKnc0XV/4Hq7tt9BBR6wZ+riMBHKE
         1idDuWplJ8ZccKnIqybzM/mZjstlJhOymZqZ/BuRKIdprc1PTeRfj/lUAWt5WvLezhZe
         1u9mfu92mlJ+xcBlHWPbmCq0iorPvnhTPR/bS7L1+hBZ0d4uIy5Q6VsDmQAx6nKiSCld
         QAfA==
X-Gm-Message-State: AC+VfDzyHPS4ZUm3drhkdYXGTLo6VwxqFgwfX1ovFVdvWrqWpPGpFmEM
        hzRfMEc6Np6B/9F4Rngju7A=
X-Google-Smtp-Source: ACHHUZ6DFMyOxltvWZDouGjeWOEVHVowlYFk4gLJuq6qNtjhlWGL74raf/xQeFu/Ie3N/CeoE9ArNA==
X-Received: by 2002:a05:6870:618e:b0:18e:a5ce:71f7 with SMTP id a14-20020a056870618e00b0018ea5ce71f7mr6552096oah.0.1684243072249;
        Tue, 16 May 2023 06:17:52 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:12fe:baa9:ec21:f64b])
        by smtp.gmail.com with ESMTPSA id x19-20020a056870435300b001843c39b65esm13028340oah.21.2023.05.16.06.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 06:17:51 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     f.fainelli@gmail.com
Cc:     hauke@hauke-m.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: bcm4708-buffalo-wzr: Replace deprecated spi-gpio properties
Date:   Tue, 16 May 2023 10:17:45 -0300
Message-Id: <20230516131745.580361-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi | 4 ++--
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts         | 4 ++--
 arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts        | 4 ++--
 arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts         | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
index e583b9cbf07c..0846887ba144 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
@@ -16,8 +16,8 @@ / {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
index 43c698a0a7c3..95ef6ca7210b 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
index 407319cb5c0d..a2b7644eaf39 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
index f8622ecce6a2..7655e4ff2d1c 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.34.1

