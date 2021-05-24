Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62D7138E2A6
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 10:48:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232489AbhEXIuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 04:50:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232576AbhEXIuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 04:50:15 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DF17C061343
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 01:48:47 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id y14so25578562wrm.13
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 01:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lgmJGXmS6RCspCVU9ceSBH9yezcF2/kLSegrw/MRv68=;
        b=YlwDilq1XQCzr/ANqb/rauSvxFIZri9vT22/IajVJ/p73Gbw0AoAG4DfbPC3GD0gOI
         VCaW9S/zVc8vzXcyn83gyUehmQQ5VUBLOMbJX3IpT3WcXMyO9al19dpKzCbsI9bCFfnl
         dbkXbwNnWJBjobaboZMpz5Tw2KCo9xtcRPKm+ce3fJadTSF8WV3vHW1ElvbP0/7IDhY8
         nhT4Gd4OPrsU2wDouWqWEX+q13TadkKsH3EPgBvw9rUff5tokFO4/GGpFrK37DdybaiZ
         6CErred0DK9sYYqoVrpSs2CSRzQPKdhz0JOhztgyGPYLoJ8UBjlgHKegDIF99DgD8q0R
         uf7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lgmJGXmS6RCspCVU9ceSBH9yezcF2/kLSegrw/MRv68=;
        b=ZNjCH7fg1ekwcnqgu9upaQWZYdocZqENxCgs4pFH/ewhNmsY3bmUhUUYnDEvuHfeXE
         q4faSz4JxnMy01mXNHF/42dviQMvJJsSeeJM/EWZVDAM8FR/+8J+vcNCs8TLg7cTTk7t
         wv0rLnhQSIhwg87HACwTSMWBE7kg9CT2H32RFt0pv0BMMn8YMv8DAV3f+MRPrs/wpwmQ
         5ajFCFiEtsXpsGCZ30XCyCzEQfheei7afpBoMKrWWzNss5G8mIOCTm3gzXT4Bsybm7qv
         7YLKf9T9t181rnRO9CdqH3znZeLdf1KikvB88cnFBeXCzvDe//pV+St2OG0rZZim+weU
         E62g==
X-Gm-Message-State: AOAM532bWYGELHUr7WEHtYHp7SSRMrUu0PiOj9ySs07X4lfe8U8Ay54s
        Q7rGnGns6Oud2pwaz/wywMwwJQ==
X-Google-Smtp-Source: ABdhPJypXPkKsJ6vJ+y2RdPOiLryB+KKjuFKfwuEoB/CXz9ZMDiuo1/o5GwXSiwUBZiCwVLZ310oGA==
X-Received: by 2002:a5d:4003:: with SMTP id n3mr20909443wrp.173.1621846125839;
        Mon, 24 May 2021 01:48:45 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id x206sm4034548wmx.47.2021.05.24.01.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 01:48:45 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 4/9] ASoC: dt-bindings: wcd938x-sdw: add bindings for wcd938x-sdw
Date:   Mon, 24 May 2021 09:48:23 +0100
Message-Id: <20210524084828.12787-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210524084828.12787-1-srinivas.kandagatla@linaro.org>
References: <20210524084828.12787-1-srinivas.kandagatla@linaro.org>
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

