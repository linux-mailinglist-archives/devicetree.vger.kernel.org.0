Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D8D44DA294
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 19:44:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351118AbiCOSpa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 14:45:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241627AbiCOSp3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 14:45:29 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 010E831DC5
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 11:44:16 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id bn33so157964ljb.6
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 11:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i/o0L3hTYisqmbos6i4n5C7fiDTc6ZsJWgTpi9Ng4uU=;
        b=XebtoG8340YqJQPtKYSfxhMnNYymYZYcnRTf1s7a3LbgAecmJt+yFkaSTD2U7IYwBP
         ujJfLG38YOkp11xbSj+RMIWjFhDhKhyhv/ovhNRaV9JjU/NuITQelD7i4XEKV2N/goWi
         d7LwFfDp4SaeDpdhSZg2NZNh9JIcyezmg6ucH0xrjlbv0FJtQO7eHdEaL/wrVNP1YXff
         rKi/ROpOmLCKYkjChJ4Hqq8GVU7hw4tjXUNHpbKHXJC83t9jT3NwYWFSD54B5n7SF8dY
         en1Yus6m9vwvcSWVijBlyahqdCUL3fq88pkp/bbu3Os4oJ5RzqOSUeWOCy/+r3GR17dy
         Hy0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i/o0L3hTYisqmbos6i4n5C7fiDTc6ZsJWgTpi9Ng4uU=;
        b=SWJ56sip4hslp2eJZ2kwEs7q4ctUS84x0wHtqMf5qOX6QM4pNi3icsedKDag1h7Q95
         6M8Oh+TfR+AxnSwy1iLc+3+exOcLklBQrdWz424xePOKsGCPJ3O7ir9O7M9rei0LRJ6i
         uF9Y2ZLTTjHCBaVjHtkNjgVFMn3ezwJKQqsgKHwmmpUhQoYdMwNAgokV041mcVb++hSh
         K05LfaBHVp6pOrvXN3bIivaOrE/+iiSZPPRIv5Tt1g5TtRdjkQXABt8TWA2x2GORtjN/
         DXR62tuonAdAo3onda16SIRJWLKRoRLN2VCE7X8jRYRiyxOhNikg2Rgkh8MmcnrkI3hX
         pnqg==
X-Gm-Message-State: AOAM530pUqr/Db975qzLHpJdS5phwfOwMV7WmNuimk1XzWtmGb6ylvAZ
        OM/sjKYvWaDTeLkIExpNHnA=
X-Google-Smtp-Source: ABdhPJyCYVPWcFCJ26iK5dOlDBz28cILfuiyPXzUVPyxkuu3vlUF2pFECF8kcABFDMf/4X60jV4ipQ==
X-Received: by 2002:a2e:a451:0:b0:247:fdea:247 with SMTP id v17-20020a2ea451000000b00247fdea0247mr17886434ljn.305.1647369854123;
        Tue, 15 Mar 2022 11:44:14 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id w8-20020a0565120b0800b0044846f3a8d5sm3708592lfu.201.2022.03.15.11.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 11:44:13 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: arm: bcm: document BCM4912 bindings
Date:   Tue, 15 Mar 2022 19:44:03 +0100
Message-Id: <20220315184403.17217-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4912 is a successor family to the BCM4908. It includes BCM4912,
BCM4915 and BCM49418. It's mostly used in home routers.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bindings/arm/bcm/brcm,bcm4912.yaml        | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4912.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4912.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4912.yaml
new file mode 100644
index 000000000000..438a6f20ca93
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4912.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm4912.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM4912 device tree bindings
+
+description:
+  Broadcom BCM4912 / BCM4915 / BCM49418 Wi-Fi/network SoCs with Brahma CPUs.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM4912 based boards
+        items:
+          - enum:
+              - asus,gt-ax6000
+          - const: brcm,bcm4912
+
+      - description: BCM4915 based boards
+        items:
+          - const: brcm,bcm4915
+          - const: brcm,bcm4912
+
+      - description: BCM49418 based boards
+        items:
+          - const: brcm,bcm49418
+          - const: brcm,bcm4908
+
+additionalProperties: true
+
+...
-- 
2.34.1

