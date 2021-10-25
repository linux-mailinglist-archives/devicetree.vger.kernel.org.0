Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AE9A439D48
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:17:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230285AbhJYRTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:19:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230183AbhJYRTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:19:40 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B393C061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:18 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id v17so12830279wrv.9
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=e6CRZxO5gyLdtBRirpqnjrI/D6f081UmD7L4gJVxGDqCd7Wc7t8XY50CzC9Pni9wiH
         B0pM+smnJnHSPqtjVi9/7gUv1vZinLOpflJ7CK2K3RU5gk+D+IwpD5bS7/jNi+lvNWwr
         4VDiVfC7etqqgCiFcaVmReaCmxvChG668qv3h/FAqv3IFz+oW7uYA4Ckf+PTJDiDFkBi
         i7jWBQ5OKT2XBHLAwjAAMGjQbqkq48b1GDKrbW+hei6p4HSLwYSRFHmjm03AHg2393dO
         zzFHNk8uHl0ZDofkyxZNcUs3sgIoNzHoMxZhBtu2uNZoJGwu3Lft73L0P52nOs3VR7JE
         waiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=l3FrnE7NC5l8FZDiDeCj4M5C5q5lyfITKUkDb5zx/P3ffIVxX4Gpubarts4El2zkj6
         FpwfUwzweROkKku45ajezar/qScRakDGtlQS0fFxaQ6sBFgzXSsxMDm4zaoc7WWTbqJw
         4HOFQrWchIAQU7LmOhH/mwmGEvoS/ci1Q38CCqvDe3tqT93E/Z+KlDXJQH3o7vdONN7T
         QiRSbdgWbDSXuRdYEEw+wypwHlZqkXL1lka6NQl+KXb0uIUq+cPg2lPXuLgkUwxhrlax
         hlF3r/QmP/KYquQdIyLU+iy1twT0dZpxA2pJ6zVsWnjBRBHTFw9LhgikO3FQDkZeaRTc
         IErA==
X-Gm-Message-State: AOAM533nJw1DJJ2f4uD9xlivemsIrJlvD4eQFzObLjf0qc2heA9pXpY+
        tV2j9goYwVkZMkMz/Wa3mf3sEw==
X-Google-Smtp-Source: ABdhPJzNVyv1+hL/toNvrVNroxJv8s0eRkrCZdjGQEjFumS+k8qznK3MGFRYD1ecocDUhMlvgpyHaw==
X-Received: by 2002:a5d:4202:: with SMTP id n2mr24801374wrq.287.1635182237033;
        Mon, 25 Oct 2021 10:17:17 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id r11sm5181012wrt.42.2021.10.25.10.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 10:17:16 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v10 06/17] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Mon, 25 Oct 2021 18:16:38 +0100
Message-Id: <20211025171649.17730-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
References: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
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

