Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B584DBA97
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2019 02:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406742AbfJRAUJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 20:20:09 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33360 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2503879AbfJRAUI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 20:20:08 -0400
Received: by mail-wm1-f67.google.com with SMTP id r17so8124855wme.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 17:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QGtqqoloz6hjB0cfAJP9qri2qA1iaYEqSaS6htthArs=;
        b=LIaho/b0J0bCWjv6CBIj3ZqtNf200u7TNu0EqK9EI/D1EbS9cAYhiXleb9Uuiaqiu/
         fXTNI2o/N4Ml6abfGPssQl9a3BGnzm9yUVQrdqtGthafs5VwIdKWiFle8XjR6MBn5VZT
         bsHgs7DnzUSfOZcfj8Scuv913Cu8IdvSTdCkK2X/FqwpHtzfaKSYL1iNHBPtwKy+IXju
         dge0dRglAXmJRAT8ibNcpVEbZ5d9nm9VTdo4kRCCDgKVtgKZDN4MVeGa/tulRTotYkk6
         EbCi4a6rWfry6/yYGE5QMVEuWuLY/WZLHAkqUD4pYofrxv3I3xrhzFiQ9UXPi3lX0WKH
         nSwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QGtqqoloz6hjB0cfAJP9qri2qA1iaYEqSaS6htthArs=;
        b=XOpm7B1j8Hq407qZPk8dnxG/itjIwq/ZDiWKXWFNmqKe6hRztfToymfXpdZCS2Qo8r
         eh+Vo1rrQsg2pTIyLjYHerpnpI7CJd4jBsA8VI8Xo6DsHhbIrmp0NkAuSo/Rq/f9jD0O
         slmvvxOTrYxv2aTJyrQG2n8aS20rh8fcvvQ7N7P/gihF6htv4+aK9cEwqAUgQaoMkSss
         9xQy5ONRLfVRQd0yJdqrjr8jXBCgrfKL/mxvdu2Trtkeb8d68RQzyHgwry0Sko2iC026
         YUzkv49snfGTEJ5pwtfoU7gBetU+3AbIr3bvzfFuiiJdvsda0mvb6HFdDbX1OcrxyVvc
         5/jQ==
X-Gm-Message-State: APjAAAXocWIndHNkFKt0ldx1v1bj7eUFL3qxgWMIYf7g9KxLRokShbxB
        GO9ypM7GhwR5MiVZEbOr/66Dfg==
X-Google-Smtp-Source: APXvYqx1D7V2pK2CNerimKn2kRSQmnmpBiXII2FunyzWAOtbGGBEB9dmQc42ffr4CshM5SaUVCtzuA==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr4991011wmc.80.1571358007133;
        Thu, 17 Oct 2019 17:20:07 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id z189sm4851248wmc.25.2019.10.17.17.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 17:20:06 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh@kernel.org, broonie@kernel.org, linus.walleij@linaro.org,
        lee.jones@linaro.org
Cc:     vinod.koul@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        spapothi@codeaurora.org, bgoswami@codeaurora.org,
        linux-gpio@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 08/11] dt-bindings: pinctrl: qcom-wcd934x: Add bindings for gpio
Date:   Fri, 18 Oct 2019 01:18:46 +0100
Message-Id: <20191018001849.27205-9-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191018001849.27205-1-srinivas.kandagatla@linaro.org>
References: <20191018001849.27205-1-srinivas.kandagatla@linaro.org>
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
 .../pinctrl/qcom,wcd934x-pinctrl.yaml         | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,wcd934x-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,wcd934x-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,wcd934x-pinctrl.yaml
new file mode 100644
index 000000000000..c8a36cbc4935
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,wcd934x-pinctrl.yaml
@@ -0,0 +1,51 @@
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
+
+examples:
+  - |
+    wcdpinctrl: wcdpinctrl@42 {
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

