Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C460B43B0F0
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 13:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235467AbhJZLTp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 07:19:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235021AbhJZLTp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 07:19:45 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B198C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:21 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id g205-20020a1c20d6000000b0032cc6bbd505so2129753wmg.5
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZUTQPGMld1NjfHqBeBgP6Q5d4oV2F6unCGQSSDbPgkI=;
        b=HoT9mSWR02oI0cJdFN7jh5/Qf8bpowLGwY80xHBAgSwrF2dQOHSifYlFaRxs3xLcku
         fsA4YIVQkD8bTt2OC1exa7yOBUz4TzZKFtm3IOKHWh/y3jqZa81UGUA0i93l29L9gIpx
         3405qym9sWSms4I85qAw5Okg570DntU3TG6oNxxS/Q1V+kPZRTGXDx9IbxyTpuIbkoEb
         OqmlUtzdmn+Uqlb/7kKRIPT1cmWWu73DTdPuMPsF8rrmRtTgvfnsxfOyWWbL6giBQtEL
         cU6RPfpwA1X/oFe5EmT02HKW1ev44w/TXxKoDz6gM+IqaFp5zhMELRnRXSa+ES0dj9UE
         IFAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZUTQPGMld1NjfHqBeBgP6Q5d4oV2F6unCGQSSDbPgkI=;
        b=pKrRxu2EDE5rO0geJbnSIuo8tsE4Pw1Aao8joas0D7hn0fJHR5jODFZYf6kJ33TY2p
         MbVhRA4gGRaSBOZAn1lMS30GS2kreX7+JhrUFllu8rpFWqNcc6FR8e2XC8AjcOoHdx4W
         vP9d0NDJoWaPJs6NsRFW1ZK3TanHSHeW+fE3OQ7Az9PGKlr/65F6umw5aRbO/hOL+Da9
         t6ze2bYk+Ulg6ipt32DNPd8U3teaNLUBlWm2HoIWZXqILxlTIydQpoqCGQt7sjVK+XjM
         eIumfvw+F/SPvLnpgLXd5/Tzaunbsef3tRNJqhwPkKYguBwM124oL39b7zwgO29Kyv3Z
         JzbQ==
X-Gm-Message-State: AOAM532iXwDrjuq+3i/lWU1jq34bZEdpXTNL2yS2tZyI90g/mQlxWYVf
        pxq1A7yTv0eP4kMLp6kVTTZv8C2gwLTmFw==
X-Google-Smtp-Source: ABdhPJzQQ6++lOSni9mgb5nZVK0QIU7uvdyNlgihsXqvFpfRauYAYHNfofnfbBa05Yt1kX/H5wsSug==
X-Received: by 2002:a1c:f615:: with SMTP id w21mr26551011wmc.16.1635247040043;
        Tue, 26 Oct 2021 04:17:20 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l124sm355483wml.8.2021.10.26.04.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 04:17:19 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v11 08/17] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Tue, 26 Oct 2021 12:16:46 +0100
Message-Id: <20211026111655.1702-9-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
References: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
exposed by the DSP.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Hi Rob, 

You might see a dt_binding_check errors as QCOM SoC relevant non-audio patches
in this series have been merged into the Qualcomm drivers-for-5.16 tree,
as this series depends those patches an immutable tag is available at:
https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git
tags/20210927135559.738-6-srinivas.kandagatla@linaro.org

thanks,
srini

 .../bindings/sound/qcom,q6apm-dai.yaml        | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
new file mode 100644
index 000000000000..5d972784321d
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
@@ -0,0 +1,53 @@
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
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        compatible = "qcom,gpr";
+        #address-cells = <1>;
+        #size-cells = <0>;
+        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+        service@1 {
+          compatible = "qcom,q6apm";
+          reg = <1>;
+
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          apm-dai@1 {
+            compatible = "qcom,q6apm-dais";
+            iommus = <&apps_smmu 0x1801 0x0>;
+            reg = <1>;
+          };
+        };
+    };
-- 
2.21.0

