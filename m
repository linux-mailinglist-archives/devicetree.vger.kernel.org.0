Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1114538846
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 22:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241659AbiE3Umc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 16:42:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238708AbiE3Uma (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 16:42:30 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBC1625290
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 13:42:28 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id q21so4885966wra.2
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 13:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TBMGHe/9NOqZ3Kh+JOrF68tVZuQ1XNvw/gFRCoIpoLM=;
        b=P6EJUlIkaQX/GAxBBZworgItiQjIuaWiqEBkZRvFN4ucg3iAj0Ml0k3grIAjx3OFjp
         w0lfN8SApSeQqK7P5hjZgGNmUbXDq7blnl9L2Y0Sb0qiEwoZ34cWoMTKgdHLmyb+40lS
         2MCr9PjlXd4z3eJjh42Qqawvch3nzt0TNlSwjOngUQ5aQUSvkjtF6JedOdKxn1kRaznk
         4ulkTbMtYqwZ99h0SkMY+94ea0xdzNyMWgq66vKOsoeYlgy0o8MRoGClQJ9cBUDzOoQj
         GEDrc2psEt7zDqLpKLZ0iMkR55oAFlF4CJd0ZDcGDPNaiYRzjjyqXNQZ4K3HoWxIOyaz
         nF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TBMGHe/9NOqZ3Kh+JOrF68tVZuQ1XNvw/gFRCoIpoLM=;
        b=8OOGogmY1opmZz5ZpHo32+f6iIGLzEPjUnJvcM4oQ3BRjSVd1PHFIeJ6cAsfTFEz5r
         PusLTLTUrRTvAIDfFnynmMbDG3PIeXw1fjUpOlGlcE+nWCvhAK/usD7vDIXd0uPiGe7k
         Qj/jlikZNBOfSAVQAfb8xlN7KGzEiBhZMh3hwAMECHflyX5mPemS6UV18u0ZVLMYyy8H
         bRsc7uX91wO5EIEknOzNnCWqz3GqN9rPWl19TkNmmL+mRLHU5EgyebLVFA6IvIpTSO6a
         lXziGMwJb5rVAmyjBxk+71qVRhJBP9KUke6WqtQkrrsh62ceB9kkYoJGvJxAST+n7HA1
         Y21g==
X-Gm-Message-State: AOAM533X4FbCbkQECh1tjvAMuMQw94Z2CFGRCq7WQzjHswvscwY3DnNx
        ei2U8g4zIiCjuOJj4JtYSCrALA==
X-Google-Smtp-Source: ABdhPJzMnN8B6FO9tAuqRbT/IvWGcIChRi6Gj+uHJVi4s2P8VaVhe+EpgYkhfQ7KfQ7fMyV1+QxVwA==
X-Received: by 2002:a5d:59af:0:b0:20f:d3fc:c5ba with SMTP id p15-20020a5d59af000000b0020fd3fcc5bamr34780364wrr.436.1653943347514;
        Mon, 30 May 2022 13:42:27 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id w13-20020a7bc74d000000b0039b17714eb2sm262253wmk.34.2022.05.30.13.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 13:42:26 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Matthias Brugger <mbrugger@suse.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/4] dt-bindings: power: Add MT8365 power domains
Date:   Mon, 30 May 2022 22:42:11 +0200
Message-Id: <20220530204214.913251-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add power domains dt-bindings for MT8365.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../power/mediatek,power-controller.yaml      |  2 ++
 include/dt-bindings/power/mt8365-power.h      | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 include/dt-bindings/power/mt8365-power.h

diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index 135c6f722091..2c6d3e4246b2 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -29,6 +29,7 @@ properties:
       - mediatek,mt8186-power-controller
       - mediatek,mt8192-power-controller
       - mediatek,mt8195-power-controller
+      - mediatek,mt8365-power-controller
 
   '#power-domain-cells':
     const: 1
@@ -67,6 +68,7 @@ patternProperties:
               "include/dt-bindings/power/mt8183-power.h" - for MT8183 type power domain.
               "include/dt-bindings/power/mt8192-power.h" - for MT8192 type power domain.
               "include/dt-bindings/power/mt8195-power.h" - for MT8195 type power domain.
+              "include/dt-bindings/power/mt8365-power.h" - for MT8365 type power domain.
         maxItems: 1
 
       clocks:
diff --git a/include/dt-bindings/power/mt8365-power.h b/include/dt-bindings/power/mt8365-power.h
new file mode 100644
index 000000000000..4f50997a13b4
--- /dev/null
+++ b/include/dt-bindings/power/mt8365-power.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022 MediaTek Inc.
+ */
+
+#ifndef _DT_BINDINGS_POWER_MT8365_POWER_H
+#define _DT_BINDINGS_POWER_MT8365_POWER_H
+
+#define MT8365_POWER_DOMAIN_MM		0
+#define MT8365_POWER_DOMAIN_CONN	1
+#define MT8365_POWER_DOMAIN_MFG		2
+#define MT8365_POWER_DOMAIN_AUDIO	3
+#define MT8365_POWER_DOMAIN_CAM		4
+#define MT8365_POWER_DOMAIN_DSP		5
+#define MT8365_POWER_DOMAIN_VDEC	6
+#define MT8365_POWER_DOMAIN_VENC	7
+#define MT8365_POWER_DOMAIN_APU		8
+
+#endif /* _DT_BINDINGS_POWER_MT8365_POWER_H */
-- 
2.36.1

