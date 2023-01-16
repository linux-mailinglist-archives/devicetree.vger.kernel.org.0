Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92D2166D00F
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 21:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232305AbjAPUVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 15:21:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbjAPUVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 15:21:31 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDF6A1B567
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 12:21:29 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id n7so2502338wrx.5
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 12:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WHkIkbVKLCXvEDsaxHuzRlYTaDc9U7AuFKwcOpzQ0R8=;
        b=ghAAysYYXNEWrVsfssS1FzZcLJVvOTDCTIyFshsJemsW2mMVcVF7W70T1ihTGxvbTA
         7vzYKk121j04xKHhhn7UlY/WcrfRCUsrJmMGCXGa/3iZ2NOFMOccweI60d2COpOjDwr+
         jQrPGnnIwZxJtuUn5Wbkwi3qMGWTSf5G1NeNiiKUNr3045iqJpjaFo9DwhfrR+PfLEWI
         OJVscHPBPMTCL2dp57s7OgYgoM//s0jM6ycSFa535pV+xoQxaFFG3iPbPFrDEPA2E1jN
         LyrlP8ocY6bkTEt8gcDbFZ5eObuRUy+ZREeOrnOGY8GZgjL05jV+UoklQmlRMXoCC39V
         hO1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WHkIkbVKLCXvEDsaxHuzRlYTaDc9U7AuFKwcOpzQ0R8=;
        b=cATXWN5X0332ucvARrb7ZC+BMIQQv35uSUdU0ZEDJtTNZInJ0hW1E5AQeApJa6A+Um
         Q7d5Zjeembeu51QEmYG5tS3JfGuMywMyQks3E7GT8XrjpvXFkuoTX7ImVx3Vm/PWkvgL
         c/9sgJ2SOX3Y4KSFlFlhNsQ3/8GGzK6fnUPGd774cktECmk2+9msXXCEJbp/LSOBud5S
         bd7Tbdrj0Igs54PcWzgiyZcfo/NpW+DbqgtsK9SUun9KxKiaYpkqLobaWO0gzlEJYWzY
         EPyVdRzmPEiG1n73P1aswe4tX8obheOuId5a2LhA6jmwRjZ+qp8zDW2DGHxKZLQOMGw6
         N8CQ==
X-Gm-Message-State: AFqh2krqitThqGbXYqBZJWOfizvvUoVYl6dkbT9zn5Z6fDzIpH8klYk8
        emHSdyA9i572zkvi4a+cLKI=
X-Google-Smtp-Source: AMrXdXtcq2IlBvdXggAVobFYX1ii8S0eaeQ+Xgf82n3t8pt0yUGs609GaF/R1EFd4XsHG1d1LLEj1A==
X-Received: by 2002:a5d:55c1:0:b0:2bd:dabe:b60a with SMTP id i1-20020a5d55c1000000b002bddabeb60amr585620wrw.36.1673900488398;
        Mon, 16 Jan 2023 12:21:28 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4bc:ff00:1041:a2b8:3c58:ba6d? (dynamic-2a01-0c23-c4bc-ff00-1041-a2b8-3c58-ba6d.c23.pool.telefonica.de. [2a01:c23:c4bc:ff00:1041:a2b8:3c58:ba6d])
        by smtp.googlemail.com with ESMTPSA id n13-20020a5d67cd000000b002bdcce37d31sm15412076wrw.99.2023.01.16.12.21.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 12:21:28 -0800 (PST)
Message-ID: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
Date:   Mon, 16 Jan 2023 21:19:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Language: en-US
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

The compatible string in the driver doesn't have the meson prefix.
Fix this in the documentation and rename the file accordingly.

Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- align $id with new file name
---
 ...a-usb3-pcie-phy.yaml => amlogic,g12a-usb3-pcie-phy.yaml} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb3-pcie-phy.yaml => amlogic,g12a-usb3-pcie-phy.yaml} (82%)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
similarity index 82%
rename from Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
rename to Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
index 868b4e6fd..129d26e99 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
@@ -2,7 +2,7 @@
 # Copyright 2019 BayLibre, SAS
 %YAML 1.2
 ---
-$id: "http://devicetree.org/schemas/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml#"
+$id: "http://devicetree.org/schemas/phy/amlogic,g12a-usb3-pcie-phy.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
 title: Amlogic G12A USB3 + PCIE Combo PHY
@@ -13,7 +13,7 @@ maintainers:
 properties:
   compatible:
     enum:
-      - amlogic,meson-g12a-usb3-pcie-phy
+      - amlogic,g12a-usb3-pcie-phy
 
   reg:
     maxItems: 1
@@ -49,7 +49,7 @@ additionalProperties: false
 examples:
   - |
     phy@46000 {
-          compatible = "amlogic,meson-g12a-usb3-pcie-phy";
+          compatible = "amlogic,g12a-usb3-pcie-phy";
           reg = <0x46000 0x2000>;
           clocks = <&ref_clk>;
           clock-names = "ref_clk";
-- 
2.39.0

