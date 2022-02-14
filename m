Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C3814B5CC0
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:27:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231261AbiBNVWq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:46 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231163AbiBNVWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:42 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E9F613CED6
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:22 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DC45B40337
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873740;
        bh=fcG/L5ODzpr+LI/EAJmGBh5z8kctn/2OPAueI4k16fY=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=d2NrFa7pCk8oDt8A3j2SSxGICj3FO0EiERSp9iHRJcmrwVGwo+rbhF9saB0ajDV3y
         f2xWzaM2vMGpHpBtUifdPneLjxHkPJOv3eBJsqdAZ6uIjgvj3D2+Skt6e7HI+5P3ig
         oLSieB1XU8Wu31uC0WxVlQSo23BfE0rOFIX20524IUs3ownX0ipY15vl+o5kDSS7sZ
         p41PYVgziRB7Hnbv9RRrtckNG7OmiEbC1YyR9VHZdYWnAwRDWidrYjj/4vfdZai3Ci
         KbhK5WVCkMkjnFTsV3Z+miEerL2Ff871PPZLRo5XmQQ6qCHZsq657Cd+6BiWnMz9Lw
         juASSIlxJJZ8w==
Received: by mail-ed1-f71.google.com with SMTP id g5-20020a056402090500b0040f28e1da47so11089550edz.8
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fcG/L5ODzpr+LI/EAJmGBh5z8kctn/2OPAueI4k16fY=;
        b=6U92UK0ATb3eYUPm/AnX/sbfM0vnnhPhRTqHBasvoaD7ibiJh0dpJRpMJMt33XTdXj
         7KlrqWpWGB/czQOeybjhg4tpKpZ2C4ydqXQHquNmlrkLydfXvHKOGX2vYdauApSquyvJ
         T17ajYju5htk+LmZLyI0v2Mz8sHsWCjJ32HeHOYsOopdaX5T2cZjV0ja+847KDzaTnjf
         k6YvrT4faANy6xR2i0NgYfCmFQE4O/XxR5opY+W6lKfey+vn6uHqQ7B2Sny4xh/vnIKt
         D6Kl1eGYIcE2sLspjDEek5jjuEkG1rv/nVDCxFPHvq2heZNjg9VMtXlr1FiWWKAmKQxs
         aJNQ==
X-Gm-Message-State: AOAM532Ytq6yQCGFRt/mr+jqKrnT34Uhh5cEl3I6ZCPvYUIZJkotft0F
        E4rfkBl7whylXWgHIq9Eeil/waY+U845sf5EQFmmU2MnahFSsuxbgRQeNgNnuAignMr5uxes6Mq
        vfMArTJtG2sQeM83P5HDbjvx+NnTnaclK1x8RQ7g=
X-Received: by 2002:a17:907:1b24:: with SMTP id mp36mr543878ejc.519.1644873729732;
        Mon, 14 Feb 2022 13:22:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzl9EVISrmS6C69YAe5K0Xxu1OTn1NN475W1VUcNCLsva3N5oY9yHZqeVlKnpSoM0+sjZgNNQ==
X-Received: by 2002:a17:907:1b24:: with SMTP id mp36mr543835ejc.519.1644873729549;
        Mon, 14 Feb 2022 13:22:09 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:09 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Anson Huang <anson.huang@nxp.com>,
        Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
        Rahul Tanwar <rtanwar@maxlinear.com>,
        Jeff LaBundy <jeff@labundy.com>,
        Yash Shah <yash.shah@sifive.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Vignesh R <vigneshr@ti.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v2 06/15] dt-bindings: pwm: rockchip: Include generic pwm schema
Date:   Mon, 14 Feb 2022 22:21:45 +0100
Message-Id: <20220214212154.8853-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/pwm/pwm-rockchip.yaml | 74 ++++++++++---------
 1 file changed, 38 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index 81a54a4e8e3e..a336ff9364a9 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -51,42 +51,44 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
-
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - rockchip,rk3328-pwm
-          - rockchip,rv1108-pwm
-
-then:
-  properties:
-    clocks:
-      items:
-        - description: Used to derive the functional clock for the device.
-        - description: Used as the APB bus clock.
-
-    clock-names:
-      items:
-        - const: pwm
-        - const: pclk
-
-  required:
-    - clocks
-    - clock-names
-
-else:
-  properties:
-    clocks:
-      maxItems: 1
-      description:
-        Used both to derive the functional clock
-        for the device and as the bus clock.
-
-  required:
-    - clocks
+
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3328-pwm
+              - rockchip,rv1108-pwm
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Used to derive the functional clock for the device.
+            - description: Used as the APB bus clock.
+
+        clock-names:
+          items:
+            - const: pwm
+            - const: pclk
+
+      required:
+        - clocks
+        - clock-names
+
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+          description:
+            Used both to derive the functional clock
+            for the device and as the bus clock.
+
+      required:
+        - clocks
 
 additionalProperties: false
 
-- 
2.32.0

