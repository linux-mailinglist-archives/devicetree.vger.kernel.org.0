Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 663AD3E4C58
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 20:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235432AbhHISry (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 14:47:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235003AbhHISrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 14:47:53 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2035C061796
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 11:47:32 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a7so25003709ljq.11
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 11:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XZ7wnRewIwdMbAhi6z99aJQ8I92BR91L6EtQWC5lXLk=;
        b=QYmhbNeklYsTQNZNZ4xmRjXFSBl2e/AslyltQrPzSxXrISl5MG2cRFdalf7DZboO98
         0fVxNfnWIuFQch+bJdtbYV7E2pqZhjK42hTZeXLrlhMjiRWfc9JOKRirUvbokHk0r+Jv
         I0FoakPlNVEiEkgA1Yd8mVdwoS5lE8iTSfyW7g13dek6iwZj8bmv6OWG9RFA43l/zGRi
         yBCMnefnAO50s39Bsb0pXGzblujuX69TCU3KGmfUUW/1LDRAv4ggDMasmE6CT/8CfW0Q
         CBrYE8Jm6eBTSBL4YSw+q1bkHOJb/NiqXBlmxe5jQpezIvgE4nxKtV0QwpQhiWoEiSna
         070g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XZ7wnRewIwdMbAhi6z99aJQ8I92BR91L6EtQWC5lXLk=;
        b=qoQPT9l128843P7fihUQlFpIBLjTL/AIWrg8z3haMj/5XJZh7VCfgmjKC3X9Qemfzs
         zDI7UBl8XxN979jFDLBRE7J0I61Qpl7SuxJ5K9wlWIlt/rKLkhnVTQyh0VAU9h97Rrfe
         +ZwPBKAgtXlgodZ1X1hm3nBjtZNrqgDAwyAECeI7hXkU9sRRo6HaxsFfIKL1LKtA8CPX
         BR83mwtzTBTLj4/Y6ywg5kFD7ef29y4uSJ9bFmbWbnJlRj5z25HMF9f5Bh83OfJTEceJ
         SU4jMnMqJW9RfTCcLNiXJaYj1d7ICjVJ35e+m7yw75Y25K5hEfSsozHgNpPNhTcEpP1m
         uNRw==
X-Gm-Message-State: AOAM531r3q2rF2Os/eJElDSWC6+19TMKbI479aXhvGmQdvhot/gmNu5B
        9HH5SoVc1yPcxY7C5vQycM2jJw==
X-Google-Smtp-Source: ABdhPJz/V7rTl2AffWzwR22OpmuG8lB69f2RXqXmtlUIko33wPoasjUUXyrvmz3BI4xpGOEJSk1PQg==
X-Received: by 2002:a2e:85cc:: with SMTP id h12mr10194756ljj.55.1628534851303;
        Mon, 09 Aug 2021 11:47:31 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u22sm1216128lff.270.2021.08.09.11.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 11:47:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: add bindings for the Sharp LS060T1SX01 panel
Date:   Mon,  9 Aug 2021 21:47:11 +0300
Message-Id: <20210809184712.203791-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210809184712.203791-1-dmitry.baryshkov@linaro.org>
References: <20210809184712.203791-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for the Sharp LS060T1SX01 6.0" FullHD panel
using NT35695 driver. This panel can be found i.e. in the Dragonboard
Display Adapter bundle.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../display/panel/sharp,ls060t1sx01.yaml      | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml b/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
new file mode 100644
index 000000000000..c4af5e7f6f39
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/sharp,ls060t1sx01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sharp Microelectronics 6.0" FullHD TFT LCD panel
+
+maintainers:
+  - Dmitry Baryskov <dmitry.baryshkov@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: sharp,ls060t1sx01
+
+  reg: true
+  backlight: true
+  reset-gpios: true
+  port: true
+
+  avdd-supply:
+    description: handle of the regulator that provides the supply voltage
+
+required:
+  - compatible
+  - reg
+  - avdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "sharp,ls060t1sx01";
+            reg = <0>;
+            avdd-supply = <&pm8941_l22>;
+            backlight = <&backlight>;
+            reset-gpios = <&pm8916_gpios 25 GPIO_ACTIVE_LOW>;
+        };
+    };
+
+...
-- 
2.30.2

