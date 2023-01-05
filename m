Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E154065F27A
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 18:21:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235016AbjAERVF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 12:21:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235079AbjAERUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 12:20:52 -0500
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58EF744C54
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 09:12:49 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id bs20so34663136wrb.3
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 09:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BGyNZMSELVhIYsmh8IQ0cClyJQ3/Pu1dOTSavukgh6c=;
        b=DFV2Bk7pE1z4nPsGE5YQsNh5/MwQhELQBIwLpGoUt5Kr9gGjWSCWaFcpmx/AiWgzTM
         CeJmBndmStn53lw/APB9JGUuZ75hK168BLWCI/aimccr/+KgtnF2uyggiH/FpeScDRZ9
         +Yl4VULKayXF9MQk0OaIC5ksglOZuaQtzTLCqmwMD/1z4GQbtzQL3k7lIkYbHCrOMtow
         OtLWWmEESfhoGWyamVruOyv2ut8FI+UEPxH2mD3AOfjNKwJHDRXDin5IrcMvaC0GLALj
         YbliiPCOSz8pGhwtNyXH32N8CUQXHE6sJcSAizkGHLBmITscU38JNk17TMPNYeNMrW1I
         pQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BGyNZMSELVhIYsmh8IQ0cClyJQ3/Pu1dOTSavukgh6c=;
        b=BRe8G2dvFShsnY1/ZiQhpKam7EaJO8Ae2ZaP37Q37WtjbcMNM+8mHMEQ/usz+BQ4Wg
         8gZQzPPSVD+vMhgzngtw7+DHnq+sANyFYKx0VEBh95SiFdrPJykN6SQS1Tg6Gw8MyFlN
         unu4CtrvNA/YleGm30lQjNuqRI7azLYa3isi6szvtm7N0fwyUULKWP3QcrxX7s19p/QH
         hwR2yK2d6IxIHX6oBtHNGJaojOF1k1etbcEGLk6oSk2na6ud6tafYViesuHP7ouDq2PT
         sbrbqyE8ttIH02zY4Dm9gCVxrDEK02kc7L7iI9HCbmHcA7/SlD/OLsCy6bH8jKliuFN6
         O6eA==
X-Gm-Message-State: AFqh2ko4jPlGa1BBoj16qrUI85suy0R7w3OzWkbWLIi/j6RzIGHo1xZW
        KU6fB2r9oSlIeexG+uxmWqjToQ==
X-Google-Smtp-Source: AMrXdXuowYI8YNiqe+s1dAJFjpbJUx2V8Zot+mmm14+rnSw+zcIM7fBJvdIhDwBvmez939s1n5rILw==
X-Received: by 2002:a5d:4e4c:0:b0:2b8:bcd8:1808 with SMTP id r12-20020a5d4e4c000000b002b8bcd81808mr215071wrt.44.1672938467798;
        Thu, 05 Jan 2023 09:07:47 -0800 (PST)
Received: from blmsp.fritz.box ([2001:4091:a245:805c:9cf4:fdb8:bb61:5f4e])
        by smtp.gmail.com with ESMTPSA id f14-20020adfe90e000000b002365730eae8sm37164853wrm.55.2023.01.05.09.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 09:07:47 -0800 (PST)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 1/8] dt-bindings: power: Add MT8365 power domains
Date:   Thu,  5 Jan 2023 18:07:28 +0100
Message-Id: <20230105170735.1637416-2-msp@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105170735.1637416-1-msp@baylibre.com>
References: <20230105170735.1637416-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

Add power domains dt-bindings for MT8365.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes in v4:
    - Add infracfg_nao as it is used by mt8365
    
    Changes in v3:
    - Renamed mt8365-power.h to mediatek,mt8365-power.h
    
    Changes in v2:
    - Made include/dt-bindings/power/mt8365-power.h dual-license.

 .../power/mediatek,power-controller.yaml      |  6 ++++++
 .../dt-bindings/power/mediatek,mt8365-power.h | 19 +++++++++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100644 include/dt-bindings/power/mediatek,mt8365-power.h

diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index 605ec7ab5f63..a496c43cfa16 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -30,6 +30,7 @@ properties:
       - mediatek,mt8186-power-controller
       - mediatek,mt8192-power-controller
       - mediatek,mt8195-power-controller
+      - mediatek,mt8365-power-controller
 
   '#power-domain-cells':
     const: 1
@@ -86,6 +87,7 @@ $defs:
               "include/dt-bindings/power/mt8183-power.h" - for MT8183 type power domain.
               "include/dt-bindings/power/mt8192-power.h" - for MT8192 type power domain.
               "include/dt-bindings/power/mt8195-power.h" - for MT8195 type power domain.
+              "include/dt-bindings/power/mediatek,mt8365-power.h" - for MT8365 type power domain.
         maxItems: 1
 
       clocks:
@@ -113,6 +115,10 @@ $defs:
         $ref: /schemas/types.yaml#/definitions/phandle
         description: phandle to the device containing the INFRACFG register range.
 
+      mediatek,infracfg-nao:
+        $ref: /schemas/types.yaml#/definitions/phandle
+        description: phandle to the device containing the INFRACFG-NAO register range.
+
       mediatek,smi:
         $ref: /schemas/types.yaml#/definitions/phandle
         description: phandle to the device containing the SMI register range.
diff --git a/include/dt-bindings/power/mediatek,mt8365-power.h b/include/dt-bindings/power/mediatek,mt8365-power.h
new file mode 100644
index 000000000000..e6cfd0ec7871
--- /dev/null
+++ b/include/dt-bindings/power/mediatek,mt8365-power.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
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
2.39.0

