Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C65DA35F858
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 18:08:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352180AbhDNPuK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 11:50:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352271AbhDNPt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 11:49:59 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DF33C061343
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 08:49:29 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id r9so32151079ejj.3
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 08:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X9klurVQ9zaPgZiimhz9hUIzAK6dPBY5bXiVGcul6OE=;
        b=w3P0MHZgxNgpNfFYAq2gmPdZrV7GUG+M5QtlVg6DAc8uPqNt93EKgxKPFCjkJ35Q7F
         gmPG+NEEm/uO2i7CkLyIp4plI6sV/IG7gHmngXfZ+QtF+SuPMQ3iujXnmWYlUO+lBBig
         6fuEWVzhrcSBZSdoVB3vBzOUJ4MN0I4IMlo4OmwZOH2PeMl0mry4dsDaMWnMSE41OojN
         16/D0CZ4guSwifAAKV0r6b7OGE45Qq5sj/tjOpAdAlG5RnROkQW5UvdshCSm4v495FFZ
         fUeSQzePBsCFpJzL2VT0m6qU/LBnE4ISp1nevv9dAU5HZht2xOE75ru6s1k1Hl/4+wlh
         I/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X9klurVQ9zaPgZiimhz9hUIzAK6dPBY5bXiVGcul6OE=;
        b=R2aE3w9jX5HgIz7dJ6TsCwSDgbGW7pZIYM8CDg7IJtyVtb7Gn9F/HzdaLS77cmNJh4
         Xu0AO6gn10JIt/uBioDr2KDObL4y/VjBaTeFlJnJIUKJ2/tID6aKnCBoa77SlLMgt7+c
         sfn961QXpCMhfEVcssu0bwQqzPziSMlb3KzjI5oLLvnU2Sk9C/dCIm1kSUd+7uLgjr4d
         jJd55EZZqx54lQ3Gq1yNi5f6YOdddSXgBsUbb+1GvTVff8GlOHZXUbpC4DW1yD2U/Epy
         0vrixFcsSPt5pWdSfSJhzwJ8BPhOqf/ZGk9KY9viTF2mHeeN2CBY8NGBu7yFtvqTVFBn
         Tf9w==
X-Gm-Message-State: AOAM532nV38U+UpoT7zQsCeS+E9GYiIuhiP5h7tf2c0lELHYurmrXEZQ
        1PhiBICdA0vAev3wan+OI2FE6g==
X-Google-Smtp-Source: ABdhPJzopcPuHp+P53ubCJe/TbePBdtumhDcyarmzsRWLkCWIDduTL0agiZLzwZxLHSC0aA/ZAzg5w==
X-Received: by 2002:a17:906:ecb8:: with SMTP id qh24mr39510393ejb.162.1618415368378;
        Wed, 14 Apr 2021 08:49:28 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id q12sm10495540ejy.91.2021.04.14.08.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 08:49:27 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 4/9] ASoC: dt-bindings: wcd938x-sdw: add bindings for wcd938x-sdw
Date:   Wed, 14 Apr 2021 16:48:40 +0100
Message-Id: <20210414154845.21964-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210414154845.21964-1-srinivas.kandagatla@linaro.org>
References: <20210414154845.21964-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC
connected over SoundWire. This device has two SoundWire devices RX and
TX respectively. This bindings is for those slave devices on WCD9380/WCD9385.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,wcd938x-sdw.yaml      | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml
new file mode 100644
index 000000000000..fff33c65491b
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,wcd938x-sdw.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bindings for Qualcomm SoundWire Slave devices on WCD9380/WCD9385
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC.
+  It has RX and TX Soundwire slave devices. This bindings is for the
+  slave devices.
+
+properties:
+  compatible:
+    const: sdw20217010d00
+
+  reg:
+    maxItems: 1
+
+  qcom,direction:
+    description: direction of the SoundWire device instance
+    enum:
+      - rx
+      - tx
+
+  qcom,port-mapping:
+    description: |
+      Specifies static port mapping between slave and master ports.
+      In the order of slave port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 4
+    maxItems: 5
+
+required:
+  - compatible
+  - reg
+  - qcom,direction
+  - qcom,port-mapping
+
+additionalProperties: false
+
+examples:
+  - |
+    soundwire@3230000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03230000 0x2000>;
+
+        codec@0,3 {
+            compatible = "sdw20217010d00";
+            reg  = <0 3>;
+            qcom,direction = "tx";
+            qcom,port-mapping = <2 3 4 5>;
+        };
+    };
+
+...
-- 
2.21.0

