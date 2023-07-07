Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45AB874B04C
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 13:53:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232134AbjGGLxV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 07:53:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232151AbjGGLxU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 07:53:20 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A46A32107
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 04:53:14 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b6afc1ceffso28431601fa.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 04:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688730793; x=1691322793;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PZSXeZGMKpMDOu7F1W9eRuV1X8GeJBTFoMkBZSgI91Q=;
        b=dEApMadfo4+atos66GSD0RWkDMDytZtfjsJgZxPqBSN516cTmGZZOfCJyOfFUYWYnV
         Nkj6iR9y8++HgqQ3Y5LhbYWMd7P9j58YFEDdQbbl5EDwwJvAZiLe1Bqqe0hySN8HX3Z+
         5etveCeafR/mCwiGHxg+5ApaLm1pdwAS7r5YLamN6ieBXyJxoRdZw/U+8nsN7LQc20A0
         aVX9m7tC2ndSYWBpDKooqG6zHU5aipy6yrBS07wMQAHcbI/H9s3TXVZ2bygVCUcOSOvc
         8xP8ZrFevrjKr8EMRiWcXUybgQReQ3lPsTAl7mqbBw4HLcq/0LT3CQiBMHCA99bGoQuc
         K71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688730793; x=1691322793;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PZSXeZGMKpMDOu7F1W9eRuV1X8GeJBTFoMkBZSgI91Q=;
        b=P85uGg8zc4uL2PZv0mcvAYgXpwJsCdgbqhXiZge30ZLm0lSE/J8Rvk0kFUNc+r+XLG
         XJ8HwMfrZGVRGnsWSyybA22OlKtcLtQZ5BwY7V3SOTBXc8Lav+VvqtNTWwuYuv6eOmin
         WA7RuUWq2mGVU+9YgsxX2GpXgTpCZyQUYQI7aRHb1FCe0X/qtLfwM39UF0JcIT9r6/Mz
         Wy7LdGsIFh1FTcM+pOKUmneZs+reUh+KSVIhKZtAuW7lOMoh7UVoRds+Na7W4YHC/wMM
         qlPzOykZF81RQ0+ss7ZiP+L3FJJk7cwn4WyjCfeer/9Ik5NbEG11xILG5VXRUW9kBwwh
         rMmg==
X-Gm-Message-State: ABy/qLZSzGYHTWrRSTAwJbP6tQVUIF04F33+5abn+1NbPpVo87Ly18/P
        +BAtWQlzWAgKsBmADTQWHDQ=
X-Google-Smtp-Source: APBJJlFzQCJSQQd/hTTRsJy4AsQMql4KyWl5vZldSyyp6/MSfl21R5YlwVDfGkCuecXsgHwa35orzQ==
X-Received: by 2002:a2e:96c6:0:b0:2b6:eb8c:af06 with SMTP id d6-20020a2e96c6000000b002b6eb8caf06mr3606614ljj.8.1688730792658;
        Fri, 07 Jul 2023 04:53:12 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id b3-20020a2e9883000000b002b6b7a98c4bsm737596ljj.77.2023.07.07.04.53.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 04:53:12 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: arm: bcm: add BCM53573 SoCs family binding
Date:   Fri,  7 Jul 2023 13:53:02 +0200
Message-Id: <20230707115302.3491-1-zajec5@gmail.com>
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
 .../bindings/arm/bcm/brcm,bcm53573.yaml       | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
new file mode 100644
index 000000000000..6e502d718518
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
+              - tenda,ac6
+              - tenda,w15e
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

