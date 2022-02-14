Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9100B4B43AC
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:16:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237970AbiBNIQv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:16:51 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:43708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231497AbiBNIQv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:16:51 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D83354EA14
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:43 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 517CC407BA
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826602;
        bh=3IKrMG5sgA9nuG1n0JrwWMFi9IjPyF8pWWijGFM2qQk=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=jOmDsuv3v4e/WwRm+OLFmg3iFdX1Yjm/3cHFn4qZimNhj+3zrVKyp509H+pymS6vY
         FBRxYQ9f6+WJNXPUnijRZenk5e8qk78zCVmdOek/K9S4pjTwjmNoGu0ZZdGn6dXfg8
         Gm+vNz+1d/TO4w22bBNhtIqi8xruTFHv6wy6clCkWe3IaKzVLzYh/EREpFMPy3LL5Q
         YXe7bFp8pUjjH0zq7KDFUS8FWANuzRKhzwNOVaeVdGsVcnF+hS3pI81+36w4NlAlWr
         EBXh1eqc2QGP54MLhOx54s8tTEx5EpxVUD5Ct730RLxZVCXHtgUqvd6fZoCFHQ8TQ/
         70hu7ijwpWsfw==
Received: by mail-ej1-f69.google.com with SMTP id qf24-20020a1709077f1800b006ce8c140d3dso578662ejc.18
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3IKrMG5sgA9nuG1n0JrwWMFi9IjPyF8pWWijGFM2qQk=;
        b=EKB6g9aOY3bpEtbHVC0cRAc7NBAli9Jf98Bejm54z3CWRXWyWufDRqltS/gDeTmW7Y
         o0nqrQo7ieOt6d7jAQSb5Ag7SMfO/fNFVOsuXczQ43rUKnILzYtDi78xyUk3srArVKVp
         dpDmNFRpmXHcAYhhhAQzssUa4vMQ6/1jlmGhoBt+cRdCobRwxhK1TlBOXNrLCcqd8nA2
         3UUkt8ZzJ2/rWT4XbAivoQ7eljo9K70NmoaHNAsaUZYPKNbk82+ScFEi2QTCsu06mXWE
         8tlm14eKRgaES5sgsj29gw9c85ltndfUTkpKHz+EQyGh6qiYdnsMV4D1Gw1CZ+wAhzR0
         4nYQ==
X-Gm-Message-State: AOAM530bFagVtYosGwrs6zSbmjAwQ3A5/UYE5pJRuJWqV4tRJ2ERGqvV
        xfv8bH12Q7F/x1bwYCE6ugiLFhlqCCKjTjVE76u/KXw/MYlvNvf3ib2/Pk50iSfU7/4byTN35R6
        +R/f+oMDlZkj8J3iFOvZ1hyPU3XZ8Sk2C/vwUJpo=
X-Received: by 2002:aa7:c90b:: with SMTP id b11mr13704747edt.378.1644826601901;
        Mon, 14 Feb 2022 00:16:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwgHjuUJhQbPl50s1KVPp6UQx9W5/7E84exEe5joEuH25s16vRC22QO8sTEVBDCljC9Ui8TEg==
X-Received: by 2002:aa7:c90b:: with SMTP id b11mr13704730edt.378.1644826601747;
        Mon, 14 Feb 2022 00:16:41 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:41 -0800 (PST)
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
Subject: [PATCH 01/15] dt-bindings: pwm: allwinner,sun4i-a10: include generic pwm schema
Date:   Mon, 14 Feb 2022 09:15:51 +0100
Message-Id: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
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

