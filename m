Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FAC874B1C3
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 15:29:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231245AbjGGN3F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 09:29:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjGGN3E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 09:29:04 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD7921FEC
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 06:29:03 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4fb77f21c63so2924820e87.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 06:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688736542; x=1691328542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ggGCcsxQJrhWFCsbYUM7jneppQvXQVuLsj3YLMHMi7A=;
        b=HuBEM68jslLXomBQACU8jSFlXDCLa1qT2or7i975aywA2mnLxCzTUWHCzxp6+1YenY
         6gsl5KQ+R7bu8hC/pc3ur5SX5A9tOsZKeRy5mrlQCAzsILLs/VnVlDLd/raAUeD+AFky
         HprZlxMQEoWGbmJ3BigLTLFsECfSgh8D9oPyfl+oSoWr3j+980aNNbvfToIFEDe1EkyW
         dGUs+LCXdzbzACF2ya5V81JgHk0LWlWJUSquM+wdN6MC2dC/mIWjsdbMoau1t4x6HpbF
         aXeg5cZt58pQhzIEEry6O7jnAT4BC4bemKG/nt9ySAwg4RAuNnBG1fdKM2VxqOeAKOLf
         TZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688736542; x=1691328542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ggGCcsxQJrhWFCsbYUM7jneppQvXQVuLsj3YLMHMi7A=;
        b=U2kTt3o250s18zFJ3jRkdgbxUe6bWm9jc3kNzAWnBp9d6lOXTbXr5Xx853e2M+4EbD
         J1eDAcngWPGtynv6/+8jidDqeRWPk0r/tReIGiCGbXNl8g9kMmhhBIRqTISnuXmS5fsd
         q2WP+Sq0pAPDLHNfrMg6UGDOT4q/KMk4ONSLjMt+HDBqPU1/atGieDsbDg36bvNM8Z6g
         Ty4WVTvxrD8nAGyTOLthDLmu9zxxohDuL9+1QvHJr1aTvLmJRY+SQsnDApN69bBM5iaJ
         wp3cPOLb7h5FGIWk5smZkwReW/cWNl+PAgbKPnkq/DDM51GVO04M35clXtlEhVc8oweV
         JoqA==
X-Gm-Message-State: ABy/qLb4FX64cF0pYTDENjHHnb5XZ5fcSIGj+BM/7vOitrQodJwPg8vW
        /uTj6Ogdxy2x7tlj3s3uhY8=
X-Google-Smtp-Source: APBJJlGFIIOCl8jx2roirNT+OaJyVEIYevyy9Dpa0DujBOCE1iOVbMZCxxz7dcpRJzg+yD+nKxZa5A==
X-Received: by 2002:a05:6512:3ba0:b0:4f3:b708:f554 with SMTP id g32-20020a0565123ba000b004f3b708f554mr4424767lfv.47.1688736541679;
        Fri, 07 Jul 2023 06:29:01 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id t13-20020ac2548d000000b004f871027d9dsm677019lfk.133.2023.07.07.06.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 06:29:01 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] dt-bindings: arm: bcm: add BCM53573 SoCs family binding
Date:   Fri,  7 Jul 2023 15:28:50 +0200
Message-Id: <20230707132850.12670-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM53573 is a family derived from Northstar with some important
differences:
1. Cortex-A9 replaced by Cortex-A7
2. XHCI controller dropped
3. Two Ethernet interfaces removed
4. Two 802.11ac cores embedded

Linux already contains DTS files for some on those devices so add a
proper binding for it.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Add -v1 prefixes to Tenda AC6/W15E. There are more versions.
---
 .../bindings/arm/bcm/brcm,bcm53573.yaml       | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
new file mode 100644
index 000000000000..1398c93b122a
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm53573.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM53573 SoCs family
+
+description:
+  Broadcom BCM53573 / BCM47189 Wi-Fi SoCs derived from Northstar.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM53573 based boards
+        items:
+          - enum:
+              - tenda,ac6-v1
+              - tenda,w15e-v1
+          - const: brcm,bcm53573
+
+      - description: BCM47189 based boards
+        items:
+          - enum:
+              - brcm,bcm947189acdbmr
+              - luxul,xap-810-v1
+              - luxul,xap-1440-v1
+              - tenda,ac9
+          - const: brcm,bcm47189
+          - const: brcm,bcm53573
+
+additionalProperties: true
+
+...
-- 
2.35.3

