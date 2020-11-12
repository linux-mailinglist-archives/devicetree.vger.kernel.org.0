Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67CFF2B0825
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 16:08:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727035AbgKLPIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 10:08:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728220AbgKLPIn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 10:08:43 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD9FBC0613D4
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 07:08:42 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id o24so6539752ljj.6
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 07:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GyWk5PjDUYTSk9QfIFovmi6CDCNql+TgvrDx6+B7tds=;
        b=ay5KgOfpGPvmfXtmncwbSS0cJV8swVmzsxfWVo1jOu50J/yC+eW95c6kxXtSgAOH8/
         jGSwE38X9FvZKt58IHq1PDpfyts40vBu3b/w5z2z6vY2jT8HxsOx+5o245ojIXQo9XDQ
         FYCcmi3+qRZ/2CVwuykBIYvbECTgYDHM4Ha2oKUBgVsRU5GXsYoo5m6VQ7ww9VB2QcnR
         pDfN99n64S17wHumtg561F3RUzq/J8hjLnr11bD6h8oEu2W0QyN3CqgIDmhtE8LJBLNN
         +uHrC72PTcAYNpJ3BYCvXJM2eRmErcHjByDeLU+ihiu0GS969YWcZK8352J/+Qv/45yr
         Sqcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GyWk5PjDUYTSk9QfIFovmi6CDCNql+TgvrDx6+B7tds=;
        b=UwsUqdp7zLQPZSTHY6rJwuCrePJvZf8nO2V2Q5ynAYqv9b9QcrWyBSkZT/MR4I/UYY
         /2nCLeHT7rXM9H1FjTWbydlU04K6hDP+c3GBRP/vPiHN4BhsEwkoWE/Dui12K+1oqMXs
         mQhWnU6lP0j4BCkMRFTxBN2P0PeW9WR3ToFTbek89lkAFYt4PpxRyFNfuGdk7XY3vBE8
         uAdeKhK4W8RshCM4wgJpH+Luu254KR5ANend6H5i+4mpaqJiZtIGm25kzvw8uIWkhcrp
         MCUNALQc68+ayDMGYWz6tUnnHB09pylxkUQpg832K52O+aEdXyoD5OOmggnovCstWxJ/
         qegA==
X-Gm-Message-State: AOAM5339hlGe7NR5fxgb7enao1PJ/yyAZMM+5YikF42T5kKm7x42Fjp+
        yNFYW2KedAshA0tIGpqnEdVhRSegcxU=
X-Google-Smtp-Source: ABdhPJxFvkrHjky/SNDcuSGk26NdkqeU95CTCc8AY775I14/RFhyCut70RMSO9hxiqmEXU93rKuD+g==
X-Received: by 2002:a2e:b8c3:: with SMTP id s3mr4409355ljp.181.1605193721426;
        Thu, 12 Nov 2020 07:08:41 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id q2sm602305lfh.218.2020.11.12.07.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 07:08:40 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V4 2/3] dt-bindings: arm: bcm: document BCM4908 bindings
Date:   Thu, 12 Nov 2020 16:08:31 +0100
Message-Id: <20201112150832.26474-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201112150832.26474-1-zajec5@gmail.com>
References: <20201112150832.26474-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 is a new family that includes BCM4906, BCM4908 and BCM49408.
It's mostly used in home routers and often replaces Northstar in vendors
portfolio.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V3: New patch in the series
---
 .../bindings/arm/bcm/brcm,bcm4908.yaml        | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
new file mode 100644
index 000000000000..dfe1c1c6bb8c
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm4908.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM4908 device tree bindings
+
+description:
+  Broadcom BCM4906 / BCM4908 / BCM49408 Wi-Fi/network SoCs with Brahma CPUs.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM4906 based boards
+        items:
+          - const: brcm,bcm4906
+          - const: brcm,bcm4908
+
+      - description: BCM4908 based boards
+        items:
+          - enum:
+              - asus,gt-ac5300
+          - const: brcm,bcm4908
+
+      - description: BCM49408 based boards
+        items:
+          - const: brcm,bcm49408
+          - const: brcm,bcm4908
+
+additionalProperties: false
+
+...
-- 
2.27.0

