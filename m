Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A28FEA2109
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 18:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728068AbfH2Qgx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 12:36:53 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43082 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727906AbfH2Qgl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 12:36:41 -0400
Received: by mail-wr1-f67.google.com with SMTP id y8so4088685wrn.10
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 09:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uODZAlCkiSE/bKJhKAz8rlp7NCW9snJyiy8JBrR1VCw=;
        b=mApPXG0XWA1gfN05UGmqu2X89CUhhEFqhFFUCJsa9sadnG82mtfokDvxwlYTDWpieO
         F6SldFti2FnAMbHlNVojpVAr+OllpG7MgvdO/Z6LiSOUhWw6mdzFGLHOS8EnpoR81PxQ
         Xa/GRf5fSw1R+iZXUFxSc7FUNN2XLgOvHXGZInynrzyDkyQC5LbpLHMjcbmf7mJE7FO6
         HLh45DZxuXMzpiyQ89u9qsevOaSr/Iy651odrCGgVZeIJmtY3jOnPZu9pIQSU0wl97yX
         o9w37UW7CZNmeahBINh9vKz3iSMA6h1TErX5v8Fg2wNTl4uG1MrE6z5fQI5qf2vhD0vt
         /loQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uODZAlCkiSE/bKJhKAz8rlp7NCW9snJyiy8JBrR1VCw=;
        b=IqTg9nWnflxKA3GQX9EwZKgztdcG269hczXTsNC2ZPknsIgN7DPjlD0cKHy+hjOCgv
         BV5pY4nXJfVivwJ5AYaSRpZA2Vf3R4yU3Ilp97+fVavVuGQ5ObAnSI5bQyldhwKHPGEn
         XQs3DIB/L9GfuQPmI9/wk0ffHP1zhHSthuZl4FZG0D7KPqswOqEzY/B3Xftgv6/DFg7v
         LLrAzwHIxGtG8YUJTzOfiOIqWS7lHhx3qhnrM0E2chifZfUlrPgWDZhqAaX49ll2Zk30
         neOpAlJY0+hIzLfOqs5+dlUqmvirDEo09JrQM4mG/qG4vamarvgnL/7OjrBUn2PqIe5H
         UcwQ==
X-Gm-Message-State: APjAAAXyJ3z3UBxMdebsAAwSKc2xF+pFf7Tlvwz+Hv7w7RSj3BOC9EPG
        w5AL5Re0EVPYMcJO9wxwqbr4Sg==
X-Google-Smtp-Source: APXvYqzGyFneHpcFhMPPomV4ePM5ce4JBgHf2enu6MOATiDfOAfr/WVqucexAtZ9BMn2awNiWQ3KiQ==
X-Received: by 2002:adf:e50b:: with SMTP id j11mr12682651wrm.65.1567096599459;
        Thu, 29 Aug 2019 09:36:39 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id k9sm4398243wrq.15.2019.08.29.09.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 09:36:38 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Cc:     spapothi@codeaurora.org, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 3/4] dt-bindings: ASoC: Add WSA881x bindings
Date:   Thu, 29 Aug 2019 17:35:13 +0100
Message-Id: <20190829163514.11221-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190829163514.11221-1-srinivas.kandagatla@linaro.org>
References: <20190829163514.11221-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for WSA8810/WSA8815 Class-D Smart Speaker
Amplifier. This Amplifier also has a simple thermal sensor for
over temperature and speaker protection.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,wsa881x.yaml          | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
new file mode 100644
index 000000000000..faa90966a33a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wsa881x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bindings for Qualcomm WSA8810/WSA8815 Class-D Smart Speaker Amplifier
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  WSA8810 is a class-D smart speaker amplifier and WSA8815
+  is a high-output power class-D smart speaker amplifier.
+  Their primary operating mode uses a SoundWire digital audio
+  interface. This binding is for SoundWire interface.
+
+properties:
+  compatible:
+    const: sdw10217201000
+
+  reg:
+    maxItems: 1
+
+  powerdown-gpios:
+    description: GPIO spec for Powerdown/Shutdown line to use
+    maxItems: 1
+
+  '#thermal-sensor-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - powerdown-gpios
+  - "#thermal-sensor-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    soundwire@c2d0000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x0c2d0000 0x2000>;
+
+        speaker@0,1 {
+            compatible = "sdw10217201000";
+            reg = <0 1>;
+            powerdown-gpios = <&wcdpinctrl 2 0>;
+            #thermal-sensor-cells = <0>;
+        };
+
+        speaker@0,2 {
+            compatible = "sdw10217201000";
+            reg = <0 2>;
+            powerdown-gpios = <&wcdpinctrl 2 0>;
+            #thermal-sensor-cells = <0>;
+        };
+    };
+
+...
-- 
2.21.0

