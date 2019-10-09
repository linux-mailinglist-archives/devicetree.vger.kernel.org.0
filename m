Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D905BD0A3A
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 10:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730041AbfJIIwB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 04:52:01 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:37845 "EHLO
        mail-wm1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730110AbfJIIwA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Oct 2019 04:52:00 -0400
Received: by mail-wm1-f54.google.com with SMTP id f22so1556632wmc.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2019 01:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8RzjK5Ht69tgaUqi7M8XuzUgX+3LalFIhFT3YvqgXYI=;
        b=vVm0pPMkQYy/h5VYDpnrGaE9yQfO5VH/YkKrb5BIS8ENJCQnTTgeO4ll019fenRPkc
         lkKutuyod/dNvtejtkIcwnxvzF8q7QNJd7QpZb/l9cxe3mJtymzycCCKHqGPHxlhfn6V
         /acQLp0pPgPOq2AZ7905BLPctteb8uSTVrHcshHjphSsAx/MiU2L2wxLXDoL8WjNS1Q2
         05lce6NsUMpXS6LaaoRKA9Bq17MwPuXOROCkOlVqTO4sju/9Q0g+hwQ7+07IRHmmDLec
         JA2I/G25CUIt857fxL33xiwd4QE/ulsRt/agB77cOFpp3hHH5P4pQ6QvuV+i3oL8avWv
         FkJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8RzjK5Ht69tgaUqi7M8XuzUgX+3LalFIhFT3YvqgXYI=;
        b=b59E9AXh7JQJWb5nOEvhP5yxkQLKTCjv5AAirwg0fhAOow9/+umUJe8NotxeC/1hi1
         gTHYvWmWPHz3uQP8OpLFi65cWBzC069gyJbg1N7YilDaWCm2y5SOh2R8HCdXkiO2BJRD
         MFGb+f7By9WeYxy/DyK4/V5xvS0k/6VgV5lc07KjscDQ5EWD5994l/by9xXBbyrmEtqF
         CPVlIyA7rFidDRxvMKnebalknx1YqYBKPv24HFzJxK1WF+EixXCe6UvzlGvgeCh7sXnX
         n+dS0NGw7Yroi6XiT182GiY+QpXqXOJuTmcH+Q01GYcPl16gm8W8yEe8uLObYCVca5wg
         az7A==
X-Gm-Message-State: APjAAAVhAzUPn2NyU/BnreNsiV3N/cnfkhokFjVOk1+IHEIvXXz3l8IU
        fTABsQBuDvEavr8vBNOYXUPCcw==
X-Google-Smtp-Source: APXvYqwWsN+PW6LcmLg6/1IPcJS1sIpL1XjH2WZIlo5h77kq6x0RCdyaTNOd1We6G30Z5Os4jb3uWg==
X-Received: by 2002:a1c:f714:: with SMTP id v20mr1764594wmh.55.1570611118575;
        Wed, 09 Oct 2019 01:51:58 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id b144sm2476291wmb.3.2019.10.09.01.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 01:51:57 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     spapothi@codeaurora.org, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, vkoul@kernel.org,
        pierre-louis.bossart@linux.intel.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v7 1/2] dt-bindings: ASoC: Add WSA881x bindings
Date:   Wed,  9 Oct 2019 09:51:07 +0100
Message-Id: <20191009085108.4950-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191009085108.4950-1-srinivas.kandagatla@linaro.org>
References: <20191009085108.4950-1-srinivas.kandagatla@linaro.org>
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
Reviewed-by: Rob Herring <robh@kernel.org>
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

