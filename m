Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C9F338809A
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 21:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351891AbhERTlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 15:41:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351887AbhERTla (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 15:41:30 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42A09C061573
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 12:40:12 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id a4so11532849wrr.2
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 12:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w916I/0sjB8ZeTLALSSIwoUKwmWfEbuQ72Hpwd3NOu0=;
        b=imtv0CYo96W3t7tK4e2c0G+asBQh3MxUV4zhTePtdhickz6yO6CV/Uxe+0mDylMgKa
         OOYFukZKU+SLyEhPO2dNddst9TRtn4XyBfw5Uvip/dl4tP8yOMZQV4lMiwa/xVGksInt
         v90XyXqT6Pys9EfGXyaUGJMiUtRKeYPjmY1TMvSBllAsJkypu1reDAprpqraATtzspaZ
         vPutGVyjLKQSsXtkLqeHIlJMXri05RvfeRYYYgBCaDwD3eRCTORRRimvb+/PO6pC3hIk
         DOYLDfuZ3k+SSsFnV/EQXzaa0W2uphkDUjbwX0Ws0leGltYP9wLnVn5/SSF4v3ZeajkG
         nagg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w916I/0sjB8ZeTLALSSIwoUKwmWfEbuQ72Hpwd3NOu0=;
        b=tdW8ziUMHDYQI59Wy5luqpGZOiJNrYHJsmNBWFE4d5CWVe8BJpdWyobr8x5XUHAbT1
         +/LPpgZ69ADt1tObZJKHjSDYm1cJG1xeZffHCT0qxP39GIr3ioycvLGqUDnLzdvczDQx
         bhD276MbwwpNnYlW4ymriFl2+h/iPQUu+ZCSpiyZmG6U2mNGXXoLvvUNhhCIZrwRgth3
         VNtWZhJn2BjabCVL+u9fOM+KsclgpUOpUx1mJ7gpd7nZJGYCkhFfUaLhT4tEmTDnDOfT
         GmtTCYRrEx6ULKIot1k4vsHz5evI4H5QlCbsMxdAG5J830odqKeYP3qIZHWIhIJNZPhk
         q9Dw==
X-Gm-Message-State: AOAM531AExcwwTWZCD/pYgoqZdIyP9OVuD6px8FNvCwNMUVdOpfqbAB3
        btt60OZKhl/UasHOv6Df/fIFkg==
X-Google-Smtp-Source: ABdhPJxqBvFdPKeDHOE6hCEivMK6rdREhcDBBFaoT/XGgJgqhulDWVhyvbfztJUlEUSOEXnTWAQJKA==
X-Received: by 2002:adf:f788:: with SMTP id q8mr9020066wrp.205.1621366810997;
        Tue, 18 May 2021 12:40:10 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id q186sm5484407wme.20.2021.05.18.12.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 12:40:10 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        Matthias Brugger <mbrugger@suse.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: power: Add MT8365 power domains
Date:   Tue, 18 May 2021 21:40:07 +0200
Message-Id: <20210518194008.2921469-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add power domains dt-bindings for MT8365.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../power/mediatek,power-controller.yaml      |  2 ++
 include/dt-bindings/power/mt8365-power.h      | 20 +++++++++++++++++++
 2 files changed, 22 insertions(+)
 create mode 100644 include/dt-bindings/power/mt8365-power.h

diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index f234a756c193..9a26a2cee7fb 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -27,6 +27,7 @@ properties:
       - mediatek,mt8173-power-controller
       - mediatek,mt8183-power-controller
       - mediatek,mt8192-power-controller
+      - mediatek,mt8365-power-controller
 
   '#power-domain-cells':
     const: 1
@@ -64,6 +65,7 @@ patternProperties:
               "include/dt-bindings/power/mt8173-power.h" - for MT8173 type power domain.
               "include/dt-bindings/power/mt8183-power.h" - for MT8183 type power domain.
               "include/dt-bindings/power/mt8192-power.h" - for MT8192 type power domain.
+              "include/dt-bindings/power/mt8365-power.h" - for MT8365 type power domain.
         maxItems: 1
 
       clocks:
diff --git a/include/dt-bindings/power/mt8365-power.h b/include/dt-bindings/power/mt8365-power.h
new file mode 100644
index 000000000000..352440c4b5dd
--- /dev/null
+++ b/include/dt-bindings/power/mt8365-power.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2021 MediaTek Inc.
+ */
+
+#ifndef _DT_BINDINGS_POWER_MT8365_POWER_H
+#define _DT_BINDINGS_POWER_MT8365_POWER_H
+
+#define MT8365_POWER_DOMAIN_DISP	0
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
+
-- 
2.31.1

