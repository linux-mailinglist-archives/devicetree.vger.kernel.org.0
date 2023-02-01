Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8107686D06
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 18:31:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230054AbjBARbM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 12:31:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231144AbjBARat (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 12:30:49 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45B766E42F
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 09:30:20 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id lu11so16254969ejb.3
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 09:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KD5M9gxdESVXZNHygJsIRCRG6O5U78kyIhxKOX+bsgs=;
        b=XDKmpzK3vIb15pZuQ3BFMFlnBksAmdYKSlo7+m/ocAUhGEPTFJXTo4ER12jpVQj5u0
         FC8hBV+CbBpFEBVnxrBPwZA3I2ujM7pNw3CuYcmYNt/YclFXdII72s/WlirfN1f58/2a
         WrG87KqF+ZPsWnc30pjA/Lbjow4GM1nx6GUld0c+1n/yb7l1oEJWtesHY1L0wY5en8Zv
         Ttsubi3MWMtqRzeheywwFDYFIG43AUTD/0A/ezN+tU643eB5VKaIBGZu9Ng4Eq+TFF10
         Cq4I1OOkYyvY68VlfEGU/KMWYCkUxjRE8DJH/lHN6mEiDCh/45nWNJVYddtk852Az1wv
         vM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KD5M9gxdESVXZNHygJsIRCRG6O5U78kyIhxKOX+bsgs=;
        b=m8u8zGpFtsuQO3JhsiKwtdDZ+qaYdEKideyuVfKb/Whmwx2DhGJt1yQlBDYJbuLimw
         ojgUhD/ETHosvetvLaTaMjaOLwFiUJ5MHy325OpdrYJvjMwYO6eCjmQWW6LYwNgU+1t4
         gEDX3GCpBFUedc5pskjkWKDK+SKfhiGeL5Mpk4HtyZVD645Py4+X+yMVur1eI/XgbTUC
         OB22/BCVE7KEGhVpBGxWFRA3gkcCFabJIhQ2gUgkoF7b9sbBdcAN/I/na/ek3yrb4Xd7
         oSvaAGqwH/fWymoITkIZjxZJ1eTnXKE89D5LWvHpPS2Zn4PV0rVUpQgz3FyIXsPkQVkn
         ABKg==
X-Gm-Message-State: AO0yUKXPLCj7ECJKl+fNU0j/iE0h/I6jhhz61qyz0qPq60MkaJ7GlsBM
        4r2kvSd9qA0uCv05OtlESmY=
X-Google-Smtp-Source: AK7set9mvzLzTGxj9MJf4SML7Kc8isI2LQrbbB779YEZqBnwmMUw731G5f3NDBxtmfBILXq47PAcBQ==
X-Received: by 2002:a17:906:a009:b0:879:9c06:c8bc with SMTP id p9-20020a170906a00900b008799c06c8bcmr6654115ejy.15.1675272618599;
        Wed, 01 Feb 2023 09:30:18 -0800 (PST)
Received: from ?IPV6:2a01:c23:b912:d400:3963:7bc4:12b:ddb3? (dynamic-2a01-0c23-b912-d400-3963-7bc4-012b-ddb3.c23.pool.telefonica.de. [2a01:c23:b912:d400:3963:7bc4:12b:ddb3])
        by smtp.googlemail.com with ESMTPSA id z16-20020a170906435000b007b935641971sm10245083ejm.5.2023.02.01.09.30.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 09:30:18 -0800 (PST)
Message-ID: <e7b3fd1e-69eb-e66e-8abc-72b7c5fa975d@gmail.com>
Date:   Wed, 1 Feb 2023 18:30:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH] arm(64): dts: meson: adjust order of some compatibles
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

During review of a new yaml binding, affecting these dts, it turned out
that some compatibles aren't ordered as they should be. Order should be
most specific to least specific.

Suggested-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 arch/arm/boot/dts/meson8b.dtsi              | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index d5a3fe21e..5979209fe 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -580,8 +580,8 @@ &ethmac {
 };
 
 &gpio_intc {
-	compatible = "amlogic,meson-gpio-intc",
-		     "amlogic,meson8b-gpio-intc";
+	compatible = "amlogic,meson8b-gpio-intc",
+		     "amlogic,meson-gpio-intc";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index 923d2d8bb..12ef6e81c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -300,8 +300,8 @@ &ethmac {
 };
 
 &gpio_intc {
-	compatible = "amlogic,meson-gpio-intc",
-		     "amlogic,meson-gxbb-gpio-intc";
+	compatible = "amlogic,meson-gxbb-gpio-intc",
+		     "amlogic,meson-gpio-intc";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 04e9d0f1b..af912f698 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -312,8 +312,8 @@ &clkc_AO {
 };
 
 &gpio_intc {
-	compatible = "amlogic,meson-gpio-intc",
-		     "amlogic,meson-gxl-gpio-intc";
+	compatible = "amlogic,meson-gxl-gpio-intc",
+		     "amlogic,meson-gpio-intc";
 	status = "okay";
 };
 
-- 
2.39.1

