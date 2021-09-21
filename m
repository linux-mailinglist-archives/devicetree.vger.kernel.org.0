Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 437F741346D
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 15:39:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233128AbhIUNk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 09:40:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233117AbhIUNk1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 09:40:27 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DACBC061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:38:59 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id co2so28032862edb.8
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=asG8G0Cy7N6oDlz+uZjY3tkYV7m6YfYA4UitzcWyLH0oFiUbnRybNZ0jfkY9zjDbTc
         2GwV1NM+OoeZHhCbS1A+rCxSV5iFrbyV5HKQ6dL+rPIQLdz/hnlp1wHJuDiglSj++5be
         nKHIagQSJgr85q9oYHhBlazj5QOtIDR0N+cRhk88JsraatQD9UQwipHlpPVErx08o6xL
         XartguHfkooEy0tYpL0DNYMU7t0e84ac7Pa5+1XEKllDjccC7V3ahQDyMpBbLAgKVPc6
         xHtrDCENsORxikIyK+5RXmudKn7B130vZEYJZi0SJ3pTrpA0oAHgrWO3wvcrlD+8Ym8F
         Zq1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=H3rimTaWoeis0+Urx2D9tj8MlXjguXQSYFpH2Jn/gJwfPob9P0zadXPmRBlWSiJLlM
         rpy1tUNK2LcDrq6oHBRdpzHXbGGWSOyElWJ2qQM7Dz9DbedGpHw2bTC80ilNtIpz4C8p
         Gy9wEQhOqoP0nui1RIRk16+rbTcoJC0nP7N8QEBPobtNJdVvPmUXFjn28EJXKgVllyWn
         +swaZ+tHmhhmjbp8tLLQPb3/QvHWEOMbxFnxKQQlR5ewbn+fLaLYDPj2EykygAa23xD3
         YU9Mlomj+NDFDGUTfwDekFcs6OwgRgXgUND07INetMECL6acko45ym9M3/s4nPqRXX53
         ZvQA==
X-Gm-Message-State: AOAM530BpN5YAm9x/uiLhTiLHNYsUDZq/MEEuyuWiag9gR7jF+iIz2Po
        +3f7PTgBYruAClj4z+waNcrN9w==
X-Google-Smtp-Source: ABdhPJyJIhR6Fkv0gjSorfwETvJDf9crA2rKm6C//0VTBuSQJckctgW428NOy4bAUwO347jqWwcVVQ==
X-Received: by 2002:a50:da0a:: with SMTP id z10mr7383569edj.298.1632231460397;
        Tue, 21 Sep 2021 06:37:40 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b3sm7915799edx.55.2021.09.21.06.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:37:39 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 11/22] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Tue, 21 Sep 2021 14:36:58 +0100
Message-Id: <20210921133709.4973-12-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

on AudioReach audio Framework access to LPASS ports is via
Q6APM(Audio Process Manager) service, so add a dedicated compatible
string for this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../sound/qcom,q6dsp-lpass-ports.yaml         | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
index e6148c17419b..dc7fba7b92d5 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,q6afe-dais
+      - qcom,q6apm-lpass-dais
 
   reg:
     maxItems: 1
@@ -169,6 +170,32 @@ examples:
               #size-cells = <0>;
               #sound-dai-cells = <1>;
 
+              dai@22 {
+                reg = <QUATERNARY_MI2S_RX>;
+                qcom,sd-lines = <0 1 2 3>;
+              };
+            };
+        };
+      };
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        compatible = "qcom,gpr";
+        #address-cells = <1>;
+        #size-cells = <0>;
+        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+        service@1 {
+            compatible = "qcom,q6apm";
+            reg = <GPR_APM_MODULE_IID>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            q6apmdai@1 {
+              compatible = "qcom,q6apm-lpass-dais";
+              reg = <1>;
+              #address-cells = <1>;
+              #size-cells = <0>;
+              #sound-dai-cells = <1>;
+
               dai@22 {
                 reg = <QUATERNARY_MI2S_RX>;
                 qcom,sd-lines = <0 1 2 3>;
-- 
2.21.0

