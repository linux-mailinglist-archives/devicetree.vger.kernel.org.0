Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5FF966B17B
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 15:24:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230456AbjAOOYZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 09:24:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230354AbjAOOYZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 09:24:25 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F9AE113F4
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:24:24 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id bi26-20020a05600c3d9a00b003d3404a89faso2665004wmb.1
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JHgEcx/XwJQID9tOV3WWoFHFMS7waVTn73QAL3PQ/7k=;
        b=bDGt4Lm0T2Gs4Ah7GRiIyTBqGAt8/dprIrtIbvc01ccYMEdIJ0v4Dnb/Y6ilH43Ody
         isMytpc+ZqyUMLL+LsN9+YuMGCq0kDLYEod/uqfE94UTO8rjPjfsw8V9hV1OYn7nkdc/
         8236rY+Ln90XDZRsaKuY6dfI2TC4p/dScNNHBlyecPKuG4qrkzM3IMJOcUc7K3lxUC8V
         8ObAbU0v9lIaBEpsZMoZSz4tQn6Bgekou7/bZ5pnLm5QdDMp8d9jdn5POyQVz+F4TRBA
         dmSG4V8k3nKfmqz5trc+grnM365lkf22fmQFyojz/OJrtHhzFyYiExhi6ovvk4Qpxshl
         /JXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JHgEcx/XwJQID9tOV3WWoFHFMS7waVTn73QAL3PQ/7k=;
        b=T8S5Mgw6v4vch06k4Pe3Q8lW2Kzx/NwUIbbg6OL+7VufTHo7oJSQzC0PRUcBEiA84S
         CM1fYZWb89uG0ySHFDsBD+y0XAHAhUgmEvJ2aOFi1PfxbWsni29melhwKxy+I7W1ANPO
         Mc4BlP/Vk4Gxc6pQVDb21vobRKDJResy3GUI9NeV4J2RfA9TNCwmu4sUy6TLbU59B4oE
         Cj/qKT7GKLYaYuLaXU4N/bdmX610+4boZsv+lE6fTegL+UmzEyqXIEGD+/Ykh6/ra6CJ
         opPDpHGN/2S7ER6KyNefGETrPBr0CEkUdInrB92XJpn3VCIAgqNZkfFcehwmMlL1XJHN
         rOUg==
X-Gm-Message-State: AFqh2koh0CmI6LsLR3SduoxX2aig9FBeSo6WZg8+LjjAvu4dPmC/CYRu
        9sgUrxXM1V33VViH2Dwhltc=
X-Google-Smtp-Source: AMrXdXsc60WQPmfEOgM0V8OVCMS6uFoIYxBdTIEc4MIHjZ0nMeiiUMEOLlzJdioX9+eswYdLa8VWew==
X-Received: by 2002:a05:600c:3c8a:b0:3d9:cc40:a8dc with SMTP id bg10-20020a05600c3c8a00b003d9cc40a8dcmr31909443wmb.27.1673792662637;
        Sun, 15 Jan 2023 06:24:22 -0800 (PST)
Received: from ?IPV6:2a01:c22:6e61:8c00:154f:326e:8d45:8ce7? (dynamic-2a01-0c22-6e61-8c00-154f-326e-8d45-8ce7.c22.pool.telefonica.de. [2a01:c22:6e61:8c00:154f:326e:8d45:8ce7])
        by smtp.googlemail.com with ESMTPSA id q6-20020a05600c46c600b003d1f3e9df3csm37936797wmo.7.2023.01.15.06.24.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 06:24:22 -0800 (PST)
Message-ID: <8f1b2db3-f17d-f192-c28e-cb34dfcaf63d@gmail.com>
Date:   Sun, 15 Jan 2023 15:24:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible string
 documentation
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
 ...12a-usb3-pcie-phy.yaml => amlogic,g12a-usb3-pcie-phy.yaml} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb3-pcie-phy.yaml => amlogic,g12a-usb3-pcie-phy.yaml} (90%)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
similarity index 90%
rename from Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
rename to Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
index 868b4e6fd..821d37218 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml
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

