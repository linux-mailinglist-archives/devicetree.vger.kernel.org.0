Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F20B54D690
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357390AbiFPA4v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:56:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350566AbiFPA4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:56:09 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D82D0590A2
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:55:01 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id cx11so114753pjb.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4Vomts4VmbqvFQPOL2ceI/hWwepbwm4BG8ZS+YMOGeM=;
        b=RMYupGnPOpuGbxL+j/mOKPQxchJTm9gdAW8O3N7c5LD15PUMEfbScpik3d+ikdvZog
         +T5xSYVsqKagsiKKzU5RiNpinzAbt/IPlHyAFRvibosYAWrR79/XjlsOJyPUGxkNWn66
         39bgeZhuJ0Bt5zp8wfLEmnaRqpewfWpyc+MDggdLnM+8Qy73wABoJqsQ3dqU+oQwtjvb
         +dL18n5Rnlxizrm1Q/JU+bKbdlA1FFDITp9Xh8bJtD/kbjCPAQUMU3irekgyBU0zMXs2
         6nPpKrj6hO5CH613QCfgjUhPJsBSS35GucCsxiTzkO8ds35rPvwjVgl4DBbzDOnsHAGv
         xoAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4Vomts4VmbqvFQPOL2ceI/hWwepbwm4BG8ZS+YMOGeM=;
        b=yjzzxU5r5ajoyGtukrOPClkkh2CktJYDiQiLaQ688zjALKUj4Yov/tauc6j3QgpybJ
         t6t/nBE4h3PyDnn4aIeQuFmoLbODC/6vZI+9f53A3ggf29l7I7Xkz6biF8MQLKdyXI8H
         9g1aUg+JGavgoppC4HUMuxK5maMaZCFJ46+X5Uk4ZpdaKWL+5ILMWz8L6EuRwTa7LikV
         rEyC1gEqlmj9zszajPytsKroXwuQYOR7NKCPGPDCUJ463tdze2GSXhi7fXGGaTF7USBR
         TbLPTrwkvP9VKcRlKUefyrjVwz2/Guvqs55Z42/LtHWkc/jHVUZGgZiaHY5MBBLvO6eL
         pJfg==
X-Gm-Message-State: AJIora9tQIL8lkpngaEu+5RdOgqitXnD2M0JHYv/2KmWaxzqJ6Msm0v+
        ls8R/+exiUhaMFyHyMJ9uuoBsQ==
X-Google-Smtp-Source: AGRyM1t+KymAIQRuqWy/mRILx38eaGMZzrgQK/Zp/YywmnGMoYPs/P8xrZj2uSJ7yaj7neJ4SWiSNg==
X-Received: by 2002:a17:902:b68c:b0:167:95e2:f822 with SMTP id c12-20020a170902b68c00b0016795e2f822mr2108356pls.128.1655340893636;
        Wed, 15 Jun 2022 17:54:53 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 40/40] ARM: dts: at91: drop unneeded status from gpio-keys
Date:   Wed, 15 Jun 2022 17:53:33 -0700
Message-Id: <20220616005333.18491-40-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Nodes do not need explicit status=okay.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts          | 1 -
 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts | 1 -
 arch/arm/boot/dts/at91-sama5d2_icp.dts        | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index 838353a42097..1432732e163b 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -80,7 +80,6 @@ gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_key_gpio_default>;
-		status = "okay";
 
 		button-1 {
 			label = "SW1";
diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
index b55e8fb113b1..e1158755008b 100644
--- a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
@@ -31,7 +31,6 @@ gpio-keys {
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_key_gpio_default>;
-		status = "okay";
 
 		button-1 {
 			label = "USER BUTTON";
diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
index 38f0e1ae6ae6..0ba73df5cda7 100644
--- a/arch/arm/boot/dts/at91-sama5d2_icp.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -47,7 +47,6 @@ gpio-keys {
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_key_gpio_default>;
-		status = "okay";
 
 		button-1 {
 			label = "USER_PB1";
-- 
2.34.1

