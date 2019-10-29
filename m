Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92DE6E871A
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2019 12:31:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727525AbfJ2L3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Oct 2019 07:29:34 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:55567 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732605AbfJ2L3G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Oct 2019 07:29:06 -0400
Received: by mail-wm1-f68.google.com with SMTP id g24so2142139wmh.5
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2019 04:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6RliGfxjeZRZKsvz7+xFZDSC6zQkkXVAUlzYsp0mzbo=;
        b=EA1r3HXJQSw1Wc/1K8+BmJ1oGZOA1scoI+iD/EvM0ZkSCrsgix7EYZSzLH2+yOOnlf
         a4dr691lyhUVb2AJqJGeTnZIRr/uHkmK2/OEeg0t1ZmsdjTKL8Mrv2hB2J2v6jOdi8dz
         1Z+l31KZH+2xwp1PxWzyEzwE9k8YkdzjH3wSA5LS5yBJ5J2L1fa8U5FfzUX8Neb12QYW
         69YuJnS2iwDWfK4aGK4UreoTdwZIGz8C96LDNOcgBV7KLCQSU/d8oLlv78/vw8WLd9O4
         LNeibi8s4HtNlabgpVgSjlIPfUZrm9EGUQ4xGfMmFm0eFeC2KxSs/I05KusodbUCPh6P
         9RNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6RliGfxjeZRZKsvz7+xFZDSC6zQkkXVAUlzYsp0mzbo=;
        b=VESdHV3jZy8DunrdKMrbhoqTZbgfjGNO2SN7JolB7Pzlbb53hfnyTkqAYtMwbmaGE8
         KmgELCKJQx9wxTivEL5Xx7AWrmKwf/KM/BwxicefIQdS3+6RRHRr7pJEDNZDcgT++Jvf
         7RIEC9vbVr3U7m8pkflGQAhv1mpbox2lswOfDAUFUl7NZ0WP2+W8O0DuQhlWwrbo2Cwh
         m4ahoLufpWZ+Y/mS9/F4Mm04koYm7CNxfqtZW7UvdmJDd7SCKHN9UopV9jaQz7+0SMHd
         46NiCGLy7Yj+7i7XLWnhTckHUAr1S+hh71SdS2owI1rxbwmghBlNZYAIzVwWsaN9yBdP
         C7Lg==
X-Gm-Message-State: APjAAAXHfxV94dH42LfESRHVmqqhf+UcsGTU16uM1e1vE6VXp82XmyVi
        76gvGfHswg4dNy+W6bQVvM9lHg==
X-Google-Smtp-Source: APXvYqyyXUH29YzkT8TrafrF9AotGHHKFEQ4zZ8CQ4t/MCXVculHlP/PhSsj+O6ynB5w7Sp8f+IgAg==
X-Received: by 2002:a05:600c:1009:: with SMTP id c9mr3586096wmc.6.1572348544385;
        Tue, 29 Oct 2019 04:29:04 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id f20sm2373247wmb.6.2019.10.29.04.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 04:29:03 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh@kernel.org, broonie@kernel.org, lee.jones@linaro.org,
        linus.walleij@linaro.org
Cc:     vinod.koul@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        spapothi@codeaurora.org, bgoswami@codeaurora.org,
        linux-gpio@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 08/11] dt-bindings: pinctrl: qcom-wcd934x: Add bindings for gpio
Date:   Tue, 29 Oct 2019 11:26:57 +0000
Message-Id: <20191029112700.14548-9-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191029112700.14548-1-srinivas.kandagatla@linaro.org>
References: <20191029112700.14548-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm Technologies Inc WCD9340/WCD9341 Audio Codec has integrated
gpio controller to control 5 gpios on the chip. This patch adds
required device tree bindings for it.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../pinctrl/qcom,wcd934x-pinctrl.yaml         | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,wcd934x-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,wcd934x-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,wcd934x-pinctrl.yaml
new file mode 100644
index 000000000000..432486d753b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,wcd934x-pinctrl.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,wcd934x-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: WCD9340/WCD9341 GPIO Pin controller
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Qualcomm Technologies Inc WCD9340/WCD9341 Audio Codec has integrated
+  gpio controller to control 5 gpios on the chip.
+
+properties:
+  compatible:
+    enum:
+      - qcom,wcd9340-pinctrl
+      - qcom,wcd9341-pinctrl
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+
+  gpio-ranges:
+    maxItems: 1
+
+  '#gpio-cells':
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - gpio-ranges
+  - "#gpio-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    wcdpinctrl: pinctrl@42 {
+        compatible = "qcom,wcd9340-pinctrl";
+        reg = <0x042 0x2>;
+        gpio-controller;
+        gpio-ranges = <&wcdpinctrl 0 0 5>;
+        #gpio-cells = <2>;
+    };
+
+...
-- 
2.21.0

