Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3020566B17A
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 15:24:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbjAOOYZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 09:24:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231199AbjAOOYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 09:24:24 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC507113FE
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:24:22 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id f12-20020a7bc8cc000000b003daf6b2f9b9so905422wml.3
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zPB9krp6eiC7JbYL+IhgTGE/R+STIoi/Z4Ow6TqzdnE=;
        b=p16Cx1eLPV5Q9j8Bf/WMOcz2U66PM1w/fra68F60TnFnXzJ4vZQJgZYY3RSU/fCM7A
         CQKRFtbL0/F1WRCL2h035+w8yYHtHLTcFAvYoTLgqyKZykntxaAl/uB/O63id+MOFQ5D
         W6jQNnMjIAwDyj5b4ntxWIE7FeniUlyW2a6JiRiKSXRg5Y0T9n+H6GbyZ9/SoluX+Mib
         vSJRGESJt4fpkew78EQnBUb4CQhSFri5JAwj5LBxxNBrz18xCt3oy7h/+iduNoU+4OyO
         JmFvlCeLe1w3r8auSl/+rV/SjSXUZ9VyiDjZhtjRp0XgK5lbc2Khhfk0+D1C3rB1aa8N
         ouKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zPB9krp6eiC7JbYL+IhgTGE/R+STIoi/Z4Ow6TqzdnE=;
        b=TqomJZwXVb4kpWIwS8ucQg0a5iTLRb5nNa9zsgLJg26JdoV3ysAFxunEmGs+zRhRQj
         75RVJZDcVuhpurMk47jZtQp24rZ1E1n+FzUURQKzAKHVsaes1O10Hp1WQsIrevqRu5lZ
         nhu5ZI+kHe7sr694g4fg8t6N1XNJeRJifNqLs6Gti9Fg4Rul9JJ1Csn5pwEPqo3hvroK
         hiRPWD8j7w5gg9rdmk057/n95yzopCTJUyzIuUfM4vPszRZuXMhSsFb196xWzIwjqJkb
         hSTJVA//SczDzx+VJxUOjwWnt2/vuwL5k6KXimXJDoTnt7po+eFFFbXkuIYilwu+frRX
         3Sew==
X-Gm-Message-State: AFqh2kr9lgGTx3BZ0vBY9J9cPDxoUfHzN8y8TKtQ52jcegbo8S+Csxxz
        G2zukuRZXUihteNJFSlrK/w=
X-Google-Smtp-Source: AMrXdXsmQNYKO1JhaPJuv6ZlUsDcHrE/7WIDXiMd0eEr5+aDL7G2VdCUVsIMrhS22a+F0WvvkF4wHg==
X-Received: by 2002:a05:600c:a4f:b0:3d2:196c:270c with SMTP id c15-20020a05600c0a4f00b003d2196c270cmr67053230wmq.31.1673792661012;
        Sun, 15 Jan 2023 06:24:21 -0800 (PST)
Received: from ?IPV6:2a01:c22:6e61:8c00:154f:326e:8d45:8ce7? (dynamic-2a01-0c22-6e61-8c00-154f-326e-8d45-8ce7.c22.pool.telefonica.de. [2a01:c22:6e61:8c00:154f:326e:8d45:8ce7])
        by smtp.googlemail.com with ESMTPSA id o14-20020a5d58ce000000b002879c013b8asm23699826wrf.42.2023.01.15.06.24.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 06:24:20 -0800 (PST)
Message-ID: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
Date:   Sun, 15 Jan 2023 15:19:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH] dt-bindings: phy: g12a-usb2-phy: fix compatible string
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

The compatible strings in the driver don't have the meson prefix.
Fix this in the documentation and rename the file accordingly.

Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
Cc: stable@vger.kernel.org
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 ...,meson-g12a-usb2-phy.yaml => amlogic,g12a-usb2-phy.yaml} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename Documentation/devicetree/bindings/phy/{amlogic,meson-g12a-usb2-phy.yaml => amlogic,g12a-usb2-phy.yaml} (91%)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
similarity index 91%
rename from Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
rename to Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
index f3a5fbabb..19a0ddab0 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml
@@ -13,8 +13,8 @@ maintainers:
 properties:
   compatible:
     enum:
-      - amlogic,meson-g12a-usb2-phy
-      - amlogic,meson-a1-usb2-phy
+      - amlogic,g12a-usb2-phy
+      - amlogic,a1-usb2-phy
 
   reg:
     maxItems: 1
@@ -68,7 +68,7 @@ additionalProperties: false
 examples:
   - |
     phy@36000 {
-          compatible = "amlogic,meson-g12a-usb2-phy";
+          compatible = "amlogic,g12a-usb2-phy";
           reg = <0x36000 0x2000>;
           clocks = <&xtal>;
           clock-names = "xtal";
-- 
2.39.0


