Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FEC948797F
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 16:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbiAGPFU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 10:05:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232227AbiAGPFT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 10:05:19 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E513C061574
        for <devicetree@vger.kernel.org>; Fri,  7 Jan 2022 07:05:18 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id s1so11606832wra.6
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 07:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PxD5eSuoVNmuy9uK+8ImVic/9oJqQQRTmLdQoVDSq7Y=;
        b=allaRBuE+NfgOYcgaqBMlz6bKoIKZa8JYncqLI5T6/Xtm6s6P6phIFYcUa0rvypbvu
         sFWrlfMVftIjPl3vzagIyy/M2Idct/NJQ65Dt4MsVWkaQSY22o8Ng5+G0JTDaiGnEgTf
         D8J6bt/LQ3SE+l1KzZVb2l+lTAhO8AMfv3n5rhWYYg58uYnBEjk6MmYqr0fDMv8OCQqL
         cZmgZ0QKnnBsZUQZMXVsdI0Ux9IhoNlMKgOpvpiRquPdzKj8cwuewopvpioacSyMWw7W
         UbszOOEDbO8iGME//IQGBRZz1x5MPd6TWSz3gZMnUs1WZ39ZYmdPetza2HDkmKNZE9hi
         8Kow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PxD5eSuoVNmuy9uK+8ImVic/9oJqQQRTmLdQoVDSq7Y=;
        b=Swg9VH1+Q07gAV9B/fM+pXYg8rXrHiEg5mqmOEPZuvCphYFiyUXaIpD+o5lAw4oYtg
         sphnbCerF+SJ+KpNFuhZeQx3BRXXq/qlbGR+Qy3iM3Y8r+BFNyJ+Jl0x+pFORLmVE+wn
         aqsSclFE+fwBQjNeJ4/+T77gH9BVGD3cGCb4hfsNb4HgWMxip50p5KaQxnLX5774lput
         T5XkIZYt9hbAF9OFJ2vUMLhyPW7ELzSqTbsatzOb+30uwXdXHaJi9wKjhnUDYuDcqHR0
         CG5f2gnq/ne2PNEiTEAE+SUf/xe17YFUjYw6O1JC/n7wm0Z5TfXoGt22gzxyncitPyf9
         A6PA==
X-Gm-Message-State: AOAM533ykU73BT7gl4eyPqo3HT43iLgECZfu5uX9P6SJILs1jj6xkbMl
        xtqAcaxF1KwhHD4TRao7EiFdm5hNaTI02Q==
X-Google-Smtp-Source: ABdhPJzx5sj2gYh1ULvzxGJ7yFMUUqcDmoHIYl0Ac4TNb3gQXehLf7eOzhw8ByfX64VEo3qPUrx8HA==
X-Received: by 2002:a5d:554e:: with SMTP id g14mr53969208wrw.353.1641567917145;
        Fri, 07 Jan 2022 07:05:17 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:fc89:e826:8938:cbde])
        by smtp.gmail.com with ESMTPSA id s194sm1848246wme.45.2022.01.07.07.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jan 2022 07:05:16 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     kishon@ti.com, vkoul@kernel.org, devicetree@vger.kernel.org
Cc:     linux-phy@lists.infradead.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v3 1/2] dt-bindings: phy: add Amlogic G12A Analog MIPI D-PHY bindings
Date:   Fri,  7 Jan 2022 16:05:11 +0100
Message-Id: <20220107150512.614423-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220107150512.614423-1-narmstrong@baylibre.com>
References: <20220107150512.614423-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic G12A SoCs embeds an Analog MIPI D-PHY to communicate with DSI
panels, this adds the bindings.

This Analog D-PHY works with a separate Digital MIPI D-PHY.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic,g12a-mipi-dphy-analog.yaml    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml

diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
new file mode 100644
index 000000000000..7aa0c05d6ce4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,g12a-mipi-dphy-analog.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A MIPI analog PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    const: amlogic,g12a-mipi-dphy-analog
+
+  "#phy-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@0 {
+          compatible = "amlogic,g12a-mipi-dphy-analog";
+          reg = <0x0 0xc>;
+          #phy-cells = <0>;
+    };
-- 
2.25.1

