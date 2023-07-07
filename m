Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56A8E74B5EF
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 19:42:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232562AbjGGRmu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 13:42:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232181AbjGGRms (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 13:42:48 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E9592105
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 10:42:47 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b701e41cd3so35148281fa.3
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 10:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688751765; x=1691343765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z54mN4aXgEPP2Sykw+F798h+c0t4S78JPX3MGMsme3I=;
        b=rIzCoFGVdB20065N6xObn1OAjce3QC+vblox21S292YFPbGSC8GmNcyLlTbmxOMbka
         nh0jcmrEHghm6ttvbMpGaHqPCWAbDJglM++j+wdjf2cbA3K7Y76UjHnVfN0jGH5Md4XQ
         R0VOqhSVQfcGQCxVEKWXzhwqjs9MF33o1KXzayjKXcZRDk/vCZ4jovPJ3259yAlgk5vM
         J6kfIZ9r3ALocXSnq/1HpYFJTCAlXNbaXhlBvat29F4mo70NEIE8X7g50JtQJX2uXuXv
         WJ/e0SkTbCJEY7Xnn0Kqil8sQAAO138kSLl+RGgXn4mkzBKWMwcWjd/G/8I46h/sq4h9
         Dp/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688751765; x=1691343765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z54mN4aXgEPP2Sykw+F798h+c0t4S78JPX3MGMsme3I=;
        b=eCHKXxuIRrXxpgg1RsssktSzULM3W5CmnDwElxRRLbzwJ5FQejbkSLsGBzhZl2u7hd
         hu7HmZzuwEvWS62+LsUGR+bPKGgtm6XsS5TRexIvF/Y0N041SCDBKfJoFGHJc+upYrny
         1JGpNGtDHLMQLvUYqH2lDJ+sZ1cpL31N+UoDfGle9EJuq//tp747s/qoncB5ZF4FFaPd
         71gpeShVV7xJlVg/pGjaUnG//Nu+OxlFkemxy5poQE3P9owB8z1xs1kfiNQRzRdXEy/F
         1zrgsNeXD4WAjtNwVpbJOKE7l296LnNUvL1CoPc+kLwyZnt569UjiXL6es6LKC5NqTl5
         +Ekw==
X-Gm-Message-State: ABy/qLZDDMCJ4db3q/aCfEVddFAFIh+EYTLt8YEIXdQwRs3/rZD6QU14
        UP6uMIezlwOUJ3i7Rb2lyP2VEg==
X-Google-Smtp-Source: APBJJlESL/zsHSjP3+q2nsmJZ+A1izmLVc3oqEgoRN5frb7ijEt1grFOcZvBOmMuoUFDfp7LKLIxrw==
X-Received: by 2002:a2e:988c:0:b0:2b6:fa54:cec1 with SMTP id b12-20020a2e988c000000b002b6fa54cec1mr321999ljj.48.1688751765529;
        Fri, 07 Jul 2023 10:42:45 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 7-20020a05651c008700b002b6ece2456csm859163ljq.121.2023.07.07.10.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 10:42:45 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 07 Jul 2023 19:42:40 +0200
Subject: [PATCH v3 1/2] dt-bindings: mtd: Add SEAMA partition bindings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230707-seama-partitions-v3-1-6aa9391b46bb@linaro.org>
References: <20230707-seama-partitions-v3-0-6aa9391b46bb@linaro.org>
In-Reply-To: <20230707-seama-partitions-v3-0-6aa9391b46bb@linaro.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This types of NAND partitions appear in OpenWrt and
U-Boot.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- Drop reference from partitions.yaml again
- Drop select: false
- Use unevaluatedProperties
ChangeLog v1->v2:
- Fix up the binding to be childless
---
 .../devicetree/bindings/mtd/partitions/seama.yaml  | 48 ++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/seama.yaml b/Documentation/devicetree/bindings/mtd/partitions/seama.yaml
new file mode 100644
index 000000000000..5105d1a6a44c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/seama.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/seama.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Seattle Image Partitions
+
+description: The SEAttle iMAge (SEAMA) partition is a type of partition
+  used for NAND flash devices. This type of flash image is found in some
+  D-Link routers such as DIR-645, DIR-842, DIR-859, DIR-860L, DIR-885L,
+  DIR890L and DCH-M225, as well as in WD and NEC routers on the ath79
+  (MIPS), Broadcom BCM53xx, and RAMIPS platforms. This partition type
+  does not have children defined in the device tree, they need to be
+  detected by software.
+
+allOf:
+  - $ref: partition.yaml#
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    const: seama
+
+  '#address-cells': false
+
+  '#size-cells': false
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@0 {
+            compatible = "seama";
+            reg = <0x0 0x800000>;
+            label = "firmware";
+        };
+    };

-- 
2.34.1

