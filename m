Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDE3F4B5CA1
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:27:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231305AbiBNVWw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:52 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231207AbiBNVWo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:44 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0B7013D557
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:24 -0800 (PST)
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B5E0940338
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873743;
        bh=rXTrjGyqcJ3i7iMn5DJq5QR/kPtoX00uoKdkO1EvWnA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=avnyN02uYJn1eRXlZJdh5sMJmMJrC2cfTjdAFrWoyR5VlFVgcpHRY4NLK6YRohBsy
         4LhJTTX8C1DxA40JNipmWw7s3+eBmyzYCDUmlEHPOofG1kmhrUEZMX/S1AlXVe9QfB
         gWEAQHMG6GqDP58ugu7Mqp9/jBDHmHF6NCahqDUN4xTkiWAS4fg+Vn9Hcfb+wz8jAs
         Rfh7wXT+ofdCeLvJmGbhY11bmh7j53swFtPiAMgllavlLh/g0L9+4Gvm8t2WdNKmA6
         aIH0fZxEWsXeH9F8Nn1FzUGwDSKt+gi0b1zeNE2c8Fmy5+MHlawceiWkE+Wsf1WTTw
         GyWY6PKxTWb/w==
Received: by mail-lf1-f71.google.com with SMTP id w25-20020a05651234d900b0044023ac3f64so5627101lfr.0
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rXTrjGyqcJ3i7iMn5DJq5QR/kPtoX00uoKdkO1EvWnA=;
        b=4OZHZ4lbz0JjFqCj2N1dHw4s5Rjgn1Zqi/P4GS9fsxDq8hKUkM44dUcHDJTlPQVf6R
         5lELr6sS+70Zd4SAoPb5bdJ/mkKIZCF/anIElo2rUvxGWAolQPCqW9ASWjOYsMSO1raQ
         zYjlg8QjvszHVgm3qKw8GIRDzNxcVkpHqZ3itq7koryHnm5vHb6DRlLx9Obbs6xUTtE8
         eD4SDhHOABepZ9EYomUeBOdKl5a7GxYkCMw2JnWrw79Fr26Lkgrw7FCBS1oYV204jPsk
         AJWeJZ/4E8YkJ9RaSk4boi3hBL3bHQOvQawmIo35k9KeNc7Eg2YVDPtOopD2YI8rFQhy
         EOvg==
X-Gm-Message-State: AOAM533hY5Aplj2HQuKZNjo0Jg/WD6VxBhzdjK8O2/nD86uanQZSoO30
        FbvrLKgiVnrmGRpfm97xyKyRLBT5LYuAJZT3DupHCkgbkVDCqlrfLoEjfut/rkEpmqY+ZRz1sHw
        xwWNaRS6MtW16V6hfwYqQY7Q9JXhqsqq1pRmssms=
X-Received: by 2002:a05:6402:34c7:: with SMTP id w7mr750381edc.397.1644873733091;
        Mon, 14 Feb 2022 13:22:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxhpmbRreV1af3l7NRnMOVACbyZVoBFnimePwQQgpSt+JN3lhtVVBwqSExQGXUXAJA1H+Jnfw==
X-Received: by 2002:a05:6402:34c7:: with SMTP id w7mr750338edc.397.1644873732938;
        Mon, 14 Feb 2022 13:22:12 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:12 -0800 (PST)
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
Subject: [PATCH v2 08/15] dt-bindings: pwm: renesas,pwm: Include generic pwm schema
Date:   Mon, 14 Feb 2022 22:21:47 +0100
Message-Id: <20220214212154.8853-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
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

