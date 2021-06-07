Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3D9139E070
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 17:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbhFGPcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 11:32:07 -0400
Received: from mail-wr1-f52.google.com ([209.85.221.52]:45687 "EHLO
        mail-wr1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230440AbhFGPcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 11:32:05 -0400
Received: by mail-wr1-f52.google.com with SMTP id z8so18069735wrp.12
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 08:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=idmBojPKMaEqXxTsPN9NMivz3VoeKNs2nUJ6x42cpzc=;
        b=vbXNC70ULxFFKb2gCHU+vvjhZgISGdWZ3B66ixqhsf3LWTQMUe7MN2fQfMQKBczDXu
         AJBltuf8DLQxCUEAsnoWbQdbRUt4598NJViyUyLY9ix8uAAr/UVBfqmLkAH9VxhdYhYN
         Lu2bVDSLdhPMRtHQE+RKUkId0BYQfrmEGwuWbvzw81oEnSQgJThgttlyZhgfsLwGOcOH
         HV7FWiLS4GpkrY7mvM1TAJepNBjVw6ngc/1dxB7E1Nz4E7/XJvKQtBtl2pa4vLvXXF0P
         DjpFuOHy4iDUubcbpAYQWWVrzyqMC6+V6pEQSJclbIohaBv8Am7+5Nkvhas4TMjeDeng
         E5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=idmBojPKMaEqXxTsPN9NMivz3VoeKNs2nUJ6x42cpzc=;
        b=F8uUPlY84M3gKjAVNtXbEJKhw7AUnA82PmEURYffjWdixpJBzrYPEItgxGff1GmJeH
         7BNa2uWTIK2QoFJQuQjCaqLvwItDFJolojL0oW02InzchnN8k1WL5a07UzFP5YTzzCB7
         x016H7EcamYrzZw6X/otPRgxV4gUsVmrYuLfyw5vuxSCUhiRdsAjfnUCZ9TMw25BG7kx
         RoRcZOhGOfKIy0XXLHaZQ4BZ6+m8lSMSM+uX5t5xksTj+48zOi6mFMGA5sQrLKcLm5om
         fS1Eqq5vV2iu6Af5LXkA3MVyvlKi5jfUs/gr6HeN6VZkCkY8kg2SUnf+QBXkr8HE2FDm
         wNjg==
X-Gm-Message-State: AOAM530pcoAxXvIDUQJxmy6oZOKr3u/dkq/Q91HPpwjJNNh+1F/dl6NA
        Mc+UKaGpe2oo5Yy1eLY55/cHbw==
X-Google-Smtp-Source: ABdhPJyihoRf0jBti0BaOD0KEen6Y1OrOVBSTVZrojU+gBnh4nUMuKYPhsE3C1kCmUHxfCUoA6+v/A==
X-Received: by 2002:adf:de91:: with SMTP id w17mr17979866wrl.352.1623079753520;
        Mon, 07 Jun 2021 08:29:13 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id q3sm16370170wrr.43.2021.06.07.08.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 08:29:13 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, robh@kernel.org,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 10/13] ASoC: qcom: dt-bindings: add bindings for Proxy Resource Manager
Date:   Mon,  7 Jun 2021 16:28:33 +0100
Message-Id: <20210607152836.17154-11-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210607152836.17154-1-srinivas.kandagatla@linaro.org>
References: <20210607152836.17154-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings support for Qualcomm Proxy Resource Manager
service in Audio DSP.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../devicetree/bindings/sound/qcom,q6prm.yaml | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6prm.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6prm.yaml b/Documentation/devicetree/bindings/sound/qcom,q6prm.yaml
new file mode 100644
index 000000000000..6f14146c1ea1
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6prm.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,q6prm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Q6 Proxy Resource Manager
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Proxy Resource Manager module is core module used to manage
+  core dsp resources like clocks
+
+properties:
+  compatible:
+    const: qcom,q6prm
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    gpr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        gprservice@2 {
+          compatible = "qcom,q6prm";
+          reg = <2>;
+          #clock-cells = <2>;
+       };
+    };
-- 
2.21.0

