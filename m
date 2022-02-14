Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C1E44B43C7
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbiBNIRT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:19 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241837AbiBNIRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:12 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D111E5FF38
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:04 -0800 (PST)
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9B155407BA
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826623;
        bh=rXTrjGyqcJ3i7iMn5DJq5QR/kPtoX00uoKdkO1EvWnA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=YN+H80mJaxHP7RVwtIf8771Wp57uvuYklRNgAP94xDtIBMe21n0KWc6PySjqAZfY7
         Cdaj47cdN+zs6VRRnAqQNcxRSyVibAgicsum1Uhh8+n/9LmMpeJ9FKJhWLNL4S0nXO
         D0+HjCzI/nH4PDoXfhfRVLGmxmr7KE8geuuv3mwAbdD90DfZPS2GRmenrlUuhmnraw
         N1WPYoujraEvvlvd9QB8JGUodgC1EnhIn62MpTciru6D4f+SeW8BVUAwqNtHI766Th
         9e1KGfVWnSMp7CZQKuHf7Xv81/O0mqAbfuhTLEclolsLQuVidqmVxbo60jRCudOga3
         DSWvhCGMikRcA==
Received: by mail-lj1-f197.google.com with SMTP id d25-20020a2e8919000000b00244c1051034so753580lji.8
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rXTrjGyqcJ3i7iMn5DJq5QR/kPtoX00uoKdkO1EvWnA=;
        b=3SpBZ/vaRpahIQ2gCWqH4DKuJCG0pAFUaBjR6hutoCCFSnZv/eO56z5OoPiZsX39uK
         c9cqmPNGPzxbwrjEn01vtIlYWFkIiHiK5vjzPseVexAYnp8qmg4FSrqlrWMuc8QEQDoD
         zYVXpZdFcGSy/Ebd/ST6z1xsdxGYWIKZlb2z3WZb7YV4e6qLo51ef1wVlS2oYAwbnNnz
         0f+XaK3JxbhyDTafz1r8J6vS292lgSdrr+vFgWvdcxi5ruKGXdZ4PxQmU10/bTCzAj89
         VENcSi/QDx1LwFS3F8NgV+BvTXii8Im8brJfdwTHrmkKWWzbJ8MJ3qUklATIwRWdqZ5V
         xuBA==
X-Gm-Message-State: AOAM532iF9otqf+me15DuGAq5OSEU7cTa08QLyqrTbn/otpLz08FWD7X
        M3SbUiTyaLCfKJ0CznAJzTM0rEmVIKos8RmBO+i09J26ZyBJGQdpHVjF1F04sUnzGO7IEeX+sSR
        tZL70BjvEL53phA/9vW95hAqDuhcfe9hNgeRpRVM=
X-Received: by 2002:a05:6402:c1a:: with SMTP id co26mr8160851edb.442.1644826612061;
        Mon, 14 Feb 2022 00:16:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwS9jQ9wGixoRtv+jL2Y9f4opmRogKX8GhZRCH8lW8x+aJuR/wbCf92drFjmIbNOrRWeCUm2w==
X-Received: by 2002:a05:6402:c1a:: with SMTP id co26mr8160813edb.442.1644826611896;
        Mon, 14 Feb 2022 00:16:51 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:51 -0800 (PST)
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
Subject: [PATCH 08/15] dt-bindings: pwm: renesas,pwm: include generic pwm schema
Date:   Mon, 14 Feb 2022 09:15:58 +0100
Message-Id: <20220214081605.161394-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
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
---
 .../bindings/pwm/renesas,pwm-rcar.yaml        | 26 ++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/renesas,pwm-rcar.yaml b/Documentation/devicetree/bindings/pwm/renesas,pwm-rcar.yaml
index 7ea1070b4b3a..1c94acbc2b4a 100644
--- a/Documentation/devicetree/bindings/pwm/renesas,pwm-rcar.yaml
+++ b/Documentation/devicetree/bindings/pwm/renesas,pwm-rcar.yaml
@@ -59,21 +59,23 @@ properties:
 required:
   - compatible
   - reg
-  - '#pwm-cells'
   - clocks
   - power-domains
 
-if:
-  not:
-    properties:
-      compatible:
-        contains:
-          enum:
-            - renesas,pwm-r8a7778
-            - renesas,pwm-r8a7779
-then:
-  required:
-    - resets
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - renesas,pwm-r8a7778
+                - renesas,pwm-r8a7779
+    then:
+      required:
+        - resets
 
 additionalProperties: false
 
-- 
2.32.0

