Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC063E44B0
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 13:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235147AbhHILZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 07:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235129AbhHILZG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 07:25:06 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20601C061796
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 04:24:45 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id u1so334818wmm.0
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 04:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RwkBekoVHbR6mINfcBzFLlTHGm7nkcct6qC3KOCM4UE=;
        b=Ko4dlkcapKjwQM7b2WlbCeTw2m/Z43Q8i747F7qcLEADAty8vNtbyR5Y7x6LdEwbLo
         lxy2H6he0DyVdbNupc4fUtKSJ2LzYFOrnZRrlug1cr5NUStj/Be+IOq+imtsGRMYZ3Yt
         yNWBEDKEtkPv3EY8ADih6U5w9HGMKArikvDiBojNSXZUQRow4O4lAdkQT9TYuKGO63jF
         XkPOajF2hk7fztruSIO4lYvVGMro6M3jxl5wKMx4F9EbRlt6FsxS3sL7+stS1o5K346e
         UfI+Vz4uDJtklfyiSSXMBm2/y2I+FGzCZ8chz0CdOgYlHXHH+V9HqSglIGQovMgmk1LC
         A3Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RwkBekoVHbR6mINfcBzFLlTHGm7nkcct6qC3KOCM4UE=;
        b=L85AxVfY0bnzHJQ2ru9Qc5Ge4Pi26TBuR6L5a8S60frYdGDYTd1uYbWVx9qYTN9G0K
         kbiRD40VglrTchaiviE2hCxcVYtjawJBBeL47WVxa+Y44JeomOetwES3TMGIO8CeH0XX
         DcLsGLlbKFnMJRoiEE8akaY4R7UaBcYeuxi31tpT4j7zG6yHeiSeWChEFxEyOXpOOtf6
         SuaapL7iCfwta00YbNVmCvExsF4x6CzmmWDNWRM0kh48D7h8BKtX42uRtVyIv9zfJ+F9
         war/mq70oi7MK3NmkUh7T1O55Q27DoCey4APyAcmkC/bFmMc8YgCqeJ3bSrGD84J4EmC
         wPCw==
X-Gm-Message-State: AOAM533KPzZsSh0eE6/Rg5ewcT+iHtJ33KW0adraWKS/r4M/qr6+CaT9
        rftRPQ3/s16LrtsGO5BGTYQSZQ==
X-Google-Smtp-Source: ABdhPJzAVta+ZCRikkesgjsVzopWoMoMQmcdgNEg1v1Buea1bemOpbJUVpYjF1/4f4UetZcfkTAuMQ==
X-Received: by 2002:a05:600c:41d6:: with SMTP id t22mr33384323wmh.66.1628508283797;
        Mon, 09 Aug 2021 04:24:43 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b80sm7774900wmb.2.2021.08.09.04.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 04:24:43 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 12/20] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Mon,  9 Aug 2021 12:23:31 +0100
Message-Id: <20210809112339.8368-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
References: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
exposed by the DSP.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,q6apm-dai.yaml        | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
new file mode 100644
index 000000000000..75431d1c0b2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/sound/qcom,q6apm-dai.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm Audio Process Manager Digital Audio Interfaces binding
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding describes the Qualcomm APM DAIs in DSP
+
+properties:
+  compatible:
+    const: qcom,q6apm-dais
+
+  reg:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - iommus
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    gpr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        gprservice@1 {
+          compatible = "qcom,q6apm";
+          reg = <1>;
+
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          apm@1 {
+            compatible = "qcom,q6apm-dais";
+            iommus = <&apps_smmu 0x1801 0x0>;
+            reg = <1>;
+          };
+        };
+    };
-- 
2.21.0

