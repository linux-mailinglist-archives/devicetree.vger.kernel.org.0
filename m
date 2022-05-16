Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B82BF528479
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 14:49:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242253AbiEPMtG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 08:49:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241797AbiEPMsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 08:48:51 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 098BB393E6
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 05:48:47 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id l18so28414872ejc.7
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 05:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y53eYrcLwAmSangpxuxMdMd0doZQvJz1NFbwjAei7+g=;
        b=qduStgQH2a1Hn/UX3HcVj9SM1/RM5O9Ujys6kdPprHxFm7+eoZDUhJtzS4mPWZm9e6
         f09CIa+Gfi1ujpbm0s+g8AGN8tJyeuz/glsYLsbeom4ER2K05lvwUb1O72Vn12fHo7bV
         a8VCLML3ANzLAL15BlljKMtessPx+YKGimlntugEnMCsQKysA9NAVHjhflEYkBY5J1yV
         kJjL1Kl03ye4Ah6sTsHHO6353LijJA9WWgklojE6iIKR9mHhk3Ch6l8jV+Tet5U/mbRi
         nyI4yB8ud2ClGB7aJu8zzCV6+UaL1zO7LRnG35OgwkJdDORntSJZWuvj4n6bSTsDm4vZ
         BVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y53eYrcLwAmSangpxuxMdMd0doZQvJz1NFbwjAei7+g=;
        b=OauWRw7vs7N+OvjqS+jgJGPl6c8bxgaRDUBlKLl+qwDdmw3IEKwkSI1/THC89VNwPx
         9Fl44KJVECNjorPXGATLEZ8KwnMjh/Cy0/NRGDOAs1e/T8K7do2c8N0D3l0LB/a2tcxB
         PTmua9sBpxUw7ZwJ4NOr/3AV8SKbmb37CCT54fgJF8oAnpdnd+h4DlZGJoMLMMNoIUPg
         kMX5fIwv6shU3Ea36qAdAK+rq3hwbWFuxZKOl/Yhf9sCIEZMsqodGWcCMqG9Yp50kReH
         b5Ty4HWldycErHmbIA5dPSWOvSK1eO06i+U19QFhmqNjYC3wfWq6EpjQqXkYe8e/EZtD
         wIog==
X-Gm-Message-State: AOAM530WYi5iazEHnNeFADfR7aUVJS8XmVUPyGcJvHyJXeCPgfPUDemt
        9VRG9bsRHqkY23XETovpaTo3dg==
X-Google-Smtp-Source: ABdhPJzeNOXCTq2Ruk0Ljy0J5la2oXmZVDgdt15vJSfMC51mUDRZPFvlPi/iKh4EfW+xI+AhNAorlA==
X-Received: by 2002:a17:907:d16:b0:6f8:c054:29ac with SMTP id gn22-20020a1709070d1600b006f8c05429acmr15297923ejc.96.1652705325507;
        Mon, 16 May 2022 05:48:45 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-105.xnet.hr. [88.207.98.105])
        by smtp.googlemail.com with ESMTPSA id e10-20020a056402330a00b0042617ba6386sm5093331eda.16.2022.05.16.05.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 May 2022 05:48:45 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 05/10] arm64: dts: marvell: uDPU: align LED-s with bindings
Date:   Mon, 16 May 2022 14:48:23 +0200
Message-Id: <20220516124828.45144-5-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220516124828.45144-1-robert.marko@sartura.hr>
References: <20220516124828.45144-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to bindings they LED-s should be prefixed with "led" in this
use case, so fix accordingly.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index 4ae1688e6627..f216777acacc 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -31,32 +31,32 @@ leds {
 		pinctrl-names = "default";
 		compatible = "gpio-leds";
 
-		power1 {
+		led-power1 {
 			label = "udpu:green:power";
 			gpios = <&gpionb 11 GPIO_ACTIVE_LOW>;
 		};
 
-		power2 {
+		led-power2 {
 			label = "udpu:red:power";
 			gpios = <&gpionb 12 GPIO_ACTIVE_LOW>;
 		};
 
-		network1 {
+		led-network1 {
 			label = "udpu:green:network";
 			gpios = <&gpionb 13 GPIO_ACTIVE_LOW>;
 		};
 
-		network2 {
+		led-network2 {
 			label = "udpu:red:network";
 			gpios = <&gpionb 14 GPIO_ACTIVE_LOW>;
 		};
 
-		alarm1 {
+		led-alarm1 {
 			label = "udpu:green:alarm";
 			gpios = <&gpionb 15 GPIO_ACTIVE_LOW>;
 		};
 
-		alarm2 {
+		led-alarm2 {
 			label = "udpu:red:alarm";
 			gpios = <&gpionb 16 GPIO_ACTIVE_LOW>;
 		};
-- 
2.36.1

