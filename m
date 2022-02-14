Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA5F04B5C8A
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:22:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230502AbiBNVWL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:11 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230503AbiBNVWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:10 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E2F9E6C25
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:01 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 057D3407D3
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873720;
        bh=pHflPK+1dIKzIsgbbrg2ywYytRq8pFheQaXjxJrMqyY=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=WvHlZ2p6gJlPjPBUxWCGpFZUslM7Zx7w2Zmg0Uv1yuAdOYXkm0ZfHN1ZKPO3F20Ge
         PjFv1jC/UEr/NEqr0NYb3n7ZpLOcp3yHMuUZz+xLReBxaBCukwCkXUf0m3ItSgFUm/
         /pP2ionPUFlv9DxDQoSloxXTA9E381b0ARV/11ICjtt1evemUN2utBo/LtPCkAxj4V
         1sJTbYVUgpod+CY8jkO4OYd6C3zAsP2+YnXSdy/nYdkvVUXiNiL2S3pynUltlKypSG
         +Iy7NyFJLiy/7jPRSWrQ7dfPhr+oOZjG5fKSxySuZGi7o+kbuxQn+Ahi50U7B3Oc9w
         NK5g4vfGgDpPg==
Received: by mail-ej1-f70.google.com with SMTP id go11-20020a1709070d8b00b006cf0d933739so1312496ejc.5
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pHflPK+1dIKzIsgbbrg2ywYytRq8pFheQaXjxJrMqyY=;
        b=u95CIa4dlo+jpAzgF+JgzgsbEy8z18mxt2aeTGpE6yhe5iL2KlPSiTPDYQvPwDAXxT
         dI8FLCd8xThn984xYt7UWXfjtNhu5qj6RL8A9lqJaKdui3RCCa8L9YmM+SrimZqF68os
         3RDX9lK2HY96t+UkUEQJXFdgEWYaofkULXoa/0U9HzOs/YMPAxzrZPfFD2j0t1qX4A8j
         1CUa1Rld6TWlIddId2YdkC/zdr9g2hXBwylAhxUvBLN64hbs1fmfucldOIZIYJzrVFMR
         LQN+Hd15ztzYtTZ9ox3myg53EuXCgdNgFuc4xFyJaZKZNCvzni33nj/7xIn4FWJY6RyB
         zJtA==
X-Gm-Message-State: AOAM532qvHofwSCT87tokr4HaeKporGm8CLStR7kpeYSthwpslSVbsRQ
        dASjCvvF4FSeW7HNWGsvgP5eWPW7G+FgeB+jwkVZ8eQ7npIAUSBi2dsqLtzq382goE3OUEKpCeH
        eNREaH0QuHZDy/lHIQEuaNYd5b5rqKEk/titnjyc=
X-Received: by 2002:a17:906:d555:: with SMTP id cr21mr592307ejc.428.1644873719515;
        Mon, 14 Feb 2022 13:21:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyXvrgHPtrdYKNQY7C7Wd9/NsvQdSUG3/eoACXgHTI31beBEFWPYpjvuWpVSYib/oyyZwbB2w==
X-Received: by 2002:a17:906:d555:: with SMTP id cr21mr592282ejc.428.1644873719273;
        Mon, 14 Feb 2022 13:21:59 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:21:58 -0800 (PST)
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
Subject: [PATCH v2 01/15] dt-bindings: pwm: allwinner,sun4i-a10: Include generic pwm schema
Date:   Mon, 14 Feb 2022 22:21:40 +0100
Message-Id: <20220214212154.8853-2-krzysztof.kozlowski@canonical.com>
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
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 53 ++++++++++---------
 1 file changed, 28 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
index 800d511502c4..e93e935564fb 100644
--- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
@@ -52,33 +52,36 @@ properties:
   resets:
     maxItems: 1
 
-if:
-  properties:
-    compatible:
-      contains:
-        const: allwinner,sun50i-h6-pwm
-
-then:
-  properties:
-    clocks:
-      maxItems: 2
-
-    clock-names:
-      items:
-        - const: mod
-        - const: bus
-
-  required:
-    - clock-names
-    - resets
-
-else:
-  properties:
-    clocks:
-      maxItems: 1
+
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-h6-pwm
+
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: mod
+            - const: bus
+
+      required:
+        - clock-names
+        - resets
+
+    else:
+      properties:
+        clocks:
+          maxItems: 1
 
 required:
-  - "#pwm-cells"
   - compatible
   - reg
   - clocks
-- 
2.32.0

