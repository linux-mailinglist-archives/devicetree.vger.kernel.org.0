Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 715DC3A0F53
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 11:10:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237865AbhFIJMQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 05:12:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233853AbhFIJMN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 05:12:13 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CEB8C06175F
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 02:10:05 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id h11-20020a05600c350bb02901b59c28e8b4so3282913wmq.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 02:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lgmJGXmS6RCspCVU9ceSBH9yezcF2/kLSegrw/MRv68=;
        b=zJKzEkINFVhTGIUS4kvq63QgUNmb7dwAHM4RxIWLdNr89TLi7MlVi/PsQnkHWAi2iN
         D+/3MnhgYQAE5IKjvPD9qKpbMBGHGKMoG0kDQnU7/mcF9NNVCNA6phEC+nm5vCiqkchb
         VLYV6eQU/N9z8c5a+9M7oQCzWifyJyhI3eCqljbgVzYzUw1kT+WZttHvo/68FUObZcAt
         nJetzZWhgWBgwdNcaw7EdkUE/Nn1B9mqJSxFOAuD7qDKy9DL4T7VzOC4RjFQfg7pwuGN
         YVxUGfnaCCocs5rH3ENlYq09AuTrzY3t0VlCPvnckCz4Niq9yUXd9v+Osqi44Ht0oYzs
         JD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lgmJGXmS6RCspCVU9ceSBH9yezcF2/kLSegrw/MRv68=;
        b=QEeccgWCNPdWORwRn/L8Q3hpkITNoBiYoBVsqF9iar3MSSsWDmLPuxpi83pEfivoY/
         h0kTpR42ca9grcO+YBq2EuEUKAHNpO68YawMzrCWGaFfdX7nyqEHbgMY4e+vZ+uSC+q7
         iUVRwo/pKN7OPUMOg0qkptMl1jFiOXLl8aTuLdNPZNrPBGQ3cpYoo1o5V7CDILcAhReq
         vMdK2kUqNk1eQfYebTbrBU8sJoE0Nhh4GjR1+CuPFgTWkkk3j8F97FyB4BfllcaY0uj9
         Rx2YyLAUR87IPtIACoajBuItdGpAHsiieZkaRhGoWmnP71jPDBKrwv9MEH8t4HJFzHo1
         oh2A==
X-Gm-Message-State: AOAM531mICTYr5xrw3AmfASZ32OJNfUrcgSVGPMnkZ03hPEVKWQkpiDW
        l+7GBSGuNRz5NCTfLFmqsUbEkJwJ2V6BbA==
X-Google-Smtp-Source: ABdhPJz1AiXkIVoLEr7RGwcbRdPADxa1JH+h3T2dtqh/OxpslVTb6IVPwdwgb6LW31S+gph/mhLDWA==
X-Received: by 2002:a05:600c:3b11:: with SMTP id m17mr26629127wms.150.1623229803768;
        Wed, 09 Jun 2021 02:10:03 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id v18sm25165385wrb.10.2021.06.09.02.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 02:10:03 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v9 4/9] ASoC: dt-bindings: wcd938x-sdw: add bindings for wcd938x-sdw
Date:   Wed,  9 Jun 2021 10:09:38 +0100
Message-Id: <20210609090943.7896-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210609090943.7896-1-srinivas.kandagatla@linaro.org>
References: <20210609090943.7896-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC
connected over SoundWire. This device has two SoundWire devices RX and
TX respectively. This bindings is for those slave devices on WCD9380/WCD9385.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/qcom,wcd938x-sdw.yaml      | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml
new file mode 100644
index 000000000000..49a267b306f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x-sdw.yaml
@@ -0,0 +1,70 @@
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
+  qcom,tx-port-mapping:
+    description: |
+      Specifies static port mapping between slave and master tx ports.
+      In the order of slave port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 4
+    maxItems: 4
+
+  qcom,rx-port-mapping:
+    description: |
+      Specifies static port mapping between slave and master rx ports.
+      In the order of slave port index.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 5
+    maxItems: 5
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    soundwire@3210000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03210000 0x2000>;
+        wcd938x_rx: codec@0,4 {
+            compatible = "sdw20217010d00";
+            reg  = <0 4>;
+            qcom,rx-port-mapping = <1 2 3 4 5>;
+        };
+    };
+
+    soundwire@3230000 {
+        #address-cells = <2>;
+        #size-cells = <0>;
+        reg = <0x03230000 0x2000>;
+        wcd938x_tx: codec@0,3 {
+            compatible = "sdw20217010d00";
+            reg  = <0 3>;
+            qcom,tx-port-mapping = <2 3 4 5>;
+        };
+    };
+
+...
-- 
2.21.0

