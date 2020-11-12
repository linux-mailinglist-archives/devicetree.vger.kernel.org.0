Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25B922B0047
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 08:21:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725979AbgKLHVu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 02:21:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbgKLHVu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 02:21:50 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC2E7C0613D1
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 23:21:49 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id h23so4890156ljg.13
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 23:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GyWk5PjDUYTSk9QfIFovmi6CDCNql+TgvrDx6+B7tds=;
        b=aZNt4p67a9HuFvNvMHWxqKoWsGjjmevBM2+yqT86vIaT4npiWlsgatjc5hKxL9SmdE
         JTUhwobsZOqC9w2TcHocRvMxUPfBLE8oIHF9dNOTl0ZlDj909uoBetrOM1uqMX0OZyK/
         ROeZgKnvC/MqP7yEy96R1YNeKpVeq5I56Y9AKDBkZcP+HXDqCzcjUnS4cRRCZgnI2is+
         pu7Cjqua9cbTDH6cv1X1XO7xeARg+kaMl1KruyMxIt3EpbnGXS41kyzR5oH0oYsF8JWb
         GJPaYXo/svZiYuLPyX8Ln9ZVOTH+n0OEqBDm+JSATg5kOWK0+EAcj2Y4wPUkr4wChMli
         Qf+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GyWk5PjDUYTSk9QfIFovmi6CDCNql+TgvrDx6+B7tds=;
        b=fd3x/QQ8mAtPEdYinOvV3q6VLO1I5HYXKBUgrVCnb8Qhu3V6YLckwu6Q1Kx+LQHNGJ
         Kv7OML+agqhNo81ED6A3tPn7Ks4YUgjCPwrlhBpFSzCwXvtYnhUhgb5zhDJztr+p8XTs
         6Y+6Pli0HTbklLszcmm1heArUlVk12S/7q748IBCvZ3+GaFO2i0r+jQ1aguZp4cjcuc8
         bkWXvaK1/0+1K4XmnDg80YLB0JaOcHxqv4WjEj4hI8HmoO1Yrqqa8haa1GOW6xXDqjJy
         xn0liUX2DmCtRtiXfpQwpxxXFqe5G5daS8EF3RBCeWzd8f21xtkuUtGix+H+GmCshnj1
         ampg==
X-Gm-Message-State: AOAM530qfCFILrZ3x5p7oqpyX9ZFRtS9xWKsMieFjPzzzXdbQiVZ2EvO
        epEGSNuSPgTOU+S1tOG5KYY=
X-Google-Smtp-Source: ABdhPJyeqDPsFT0CAMOdUP5tSrIMjh3hPu9SOVWVbPBCT/KJaEFvRoS1RN+7CyNrzveC/keRaedo6g==
X-Received: by 2002:a2e:8942:: with SMTP id b2mr12352853ljk.441.1605165708494;
        Wed, 11 Nov 2020 23:21:48 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id w18sm460427lfc.5.2020.11.11.23.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 23:21:47 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V3 2/3] dt-bindings: arm: bcm: document BCM4908 bindings
Date:   Thu, 12 Nov 2020 08:21:32 +0100
Message-Id: <20201112072133.17039-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201112072133.17039-1-zajec5@gmail.com>
References: <20201112072133.17039-1-zajec5@gmail.com>
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

