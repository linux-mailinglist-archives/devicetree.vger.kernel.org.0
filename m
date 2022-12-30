Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A30C96571E5
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 02:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230286AbiL1B4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 20:56:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbiL1B4l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 20:56:41 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 663C313F
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 17:56:39 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id f34so21783540lfv.10
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 17:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ya4OkwTxkQIsQisM/Dm9mdZB4FBQpxpLG/pVmuZn5L4=;
        b=Jmkig8CX48nfiBERsCtde7QIRT0twnS96s3BpTt0B0ITmbwVmk/jZs0M5M+b0Z8M83
         aLA6MekTcPxaFRbkxVsmD/rLYAguq9i9pNrAafQaFsotkoCz23OCWAsioM50+5YZB7g6
         UrzhhlLStPOCi+86IReulMj3AiM2aTy6FT5BUHXEqfzBu6nNEFdBlfrzQSPO4/Ob0lGQ
         fcn7fg5+czVUC4vqcZcf1beJwirxZP7iXgmjEV9v5VNOLybuPofxjfaxXqxcJllN/jI3
         5qREHDaBfdTx/apFiu2HEZTGcRybUPp/YXxEMdMHMwc59TuIDfeZOVnffh1tj6llK+CN
         r45w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ya4OkwTxkQIsQisM/Dm9mdZB4FBQpxpLG/pVmuZn5L4=;
        b=SI9lLdk+X/dVUTxvxvKXPyrm2FBq5AX6VkSA5D6lNMMR/MKFT1ioXYk5Xb3JYn2Hgx
         02+Z4fiLWxmfA7bi94W6tKsVWb/nEN61dF2r+7qK+ONcsWvq0020Pa2PuxrfXnYqmgKi
         bLp2+GcnShe51LTUPBhXORXkaK9QC7vlvls2EXBkO94qC/C+RtLBKVsANsDxSnDFMcU0
         E3S1bkJaGRJNqAAMZ/qP9a2Jklx12Xwi2uv4Hr3NADupeCoAWr7Bq3TO9imb4FdpGhyh
         vS/ve/Y2jdWTSf6TVMOSabikShdYAXdpS6GVFndabagrGVcqNrZUuEvBbGBrb+f9ARht
         BWfA==
X-Gm-Message-State: AFqh2koAgth87l9NEl4aKU2pr7P1g+U8A5rQaXE/euZ9oe8H9N8GpNc0
        LZj7zcboaOSmmjO1P5SsI6DWSw==
X-Google-Smtp-Source: AMrXdXswpTVzhGP9x29LisdW+YxBu8bpDSgNf2VvWKUP22usyT4Oykd1ed9f4Aw/ebsj32589xEcDQ==
X-Received: by 2002:a05:6512:2527:b0:4b5:8504:7072 with SMTP id be39-20020a056512252700b004b585047072mr6558508lfb.14.1672192597725;
        Tue, 27 Dec 2022 17:56:37 -0800 (PST)
Received: from michal-H370M-DS3H.office.semihalf.net ([83.142.187.84])
        by smtp.googlemail.com with ESMTPSA id h10-20020a2ea48a000000b002776eb5b1ccsm1842623lji.4.2022.12.27.17.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 17:56:37 -0800 (PST)
From:   =?UTF-8?q?Micha=C5=82=20Grzelak?= <mig@semihalf.com>
To:     krzysztof.kozlowski@linaro.org
Cc:     andrew@lunn.ch, chris.packham@alliedtelesis.co.nz,
        davem@davemloft.net, devicetree@vger.kernel.org,
        edumazet@google.com, krzysztof.kozlowski+dt@linaro.org,
        kuba@kernel.org, linux-kernel@vger.kernel.org, mig@semihalf.com,
        netdev@vger.kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
        upstream@semihalf.com
Subject: [PATCH v2] dt-bindings: net: marvell,orion-mdio: Fix examples
Date:   Wed, 28 Dec 2022 02:54:33 +0100
Message-Id: <20221228015433.73919-1-mig@semihalf.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <7f6a2072-f26b-e2f0-9c07-d2ea43c8c4bc@linaro.org>
References: <7f6a2072-f26b-e2f0-9c07-d2ea43c8c4bc@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As stated in marvell-orion-mdio.txt deleted in commit 0781434af811f
("dt-bindings: net: orion-mdio: Convert to JSON schema") if
'interrupts' property is present, width of 'reg' should be 0x84.
Otherwise, width of 'reg' should be 0x4. Fix 'examples:' and add
constraints checking whether 'interrupts' property is present
and validate it against fixed values in reg.

Signed-off-by: Michał Grzelak <mig@semihalf.com>
---
Changelog:
v1->v2:
- remove second example
- add 'if:' constraint to 'allOf:'
- move 'allOf:' before 'examples:'

 .../bindings/net/marvell,orion-mdio.yaml      | 31 ++++++++++++++++---
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml b/Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml
index d2906b4a0f59..381cd8edebed 100644
--- a/Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml
+++ b/Documentation/devicetree/bindings/net/marvell,orion-mdio.yaml
@@ -16,9 +16,6 @@ description: |
   8k has a second unit which provides an interface with the xMDIO bus. This
   driver handles these interfaces.
 
-allOf:
-  - $ref: "mdio.yaml#"
-
 properties:
   compatible:
     enum:
@@ -39,13 +36,39 @@ required:
   - compatible
   - reg
 
+allOf:
+
+  - $ref: "mdio.yaml#"
+
+  - if:
+      required:
+        - interrupts
+
+    then:
+      properties:
+        reg:
+          items:
+            - items:
+                - $ref: /schemas/types.yaml#/definitions/cell
+                - const: 0x84
+
+    else:
+      properties:
+        reg:
+          items:
+            - items:
+                - $ref: /schemas/types.yaml#/definitions/cell
+                - enum:
+                    - 0x4
+                    - 0x10
+
 unevaluatedProperties: false
 
 examples:
   - |
     mdio@d0072004 {
       compatible = "marvell,orion-mdio";
-      reg = <0xd0072004 0x4>;
+      reg = <0xd0072004 0x84>;
       #address-cells = <1>;
       #size-cells = <0>;
       interrupts = <30>;
-- 
2.34.1

