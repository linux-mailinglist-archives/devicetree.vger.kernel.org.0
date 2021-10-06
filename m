Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93AA4423CF9
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 13:40:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229851AbhJFLmH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 07:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237836AbhJFLmG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 07:42:06 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4718C061749
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 04:40:14 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id e12so7918961wra.4
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 04:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=VocKV+Sep1Qh/9L8MCyQ6Kx84oBjpB7JPRH+bXo4WZivRNBhtlMOtcKmZzK4ScF85Z
         ELKBDqgwBys8sOp5jSnEi8i+3lrZ8Gzioqhlf4tDhQ+ESL/3hvdY8y7DLjUf0crctjD1
         1MBUqtHNfdo2wYQU0EnW3PWpwt7/9wwrb6OylOXIm0se+4S2UI00C+6ASKtdZuZiomhY
         e8h5VNDcM77MV35ddDTDQYWMyRqduKRRt1L6WEWmj3ndi12Al3jzcsClFAM2XYlM6gOU
         2oLqBKDHl332WoCUXEJTYMyE4M6j6yNc69fvmRthwGYrel5b1G1Bu++K3DnhtiWJY0ZS
         DhIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=FdggCpQv/gwU9Mg7hC/uDMdtIYv54m7kdTwpOl7QjR9+npjeOyiH0BkhdQ6yeq9w4z
         OzYf2SHbLDZu+9AZmlrmHOlHB3otaNY2fYoUbzud9qcP/VmLc5W/1nwg2lO3KX9OVQSr
         C3igKS9FM8n3maCUgXxC5JkY8Adtnr5OecEdce/IE671erG+WNP314ua0drBtIxCeVrX
         KBs5abUMVfnkehd1JdQnPGKoqeZGwau1Y5RzxiJAYdUCOK2D8on6SA7jgSIt66cuENdX
         csz/fDQ1eWnv/rnBzORACgSL+PIRSAtEZGooe2bybk/0FrLBmEH8yEo2jbhi5i2WPwUB
         midA==
X-Gm-Message-State: AOAM5303cmLzAQmU3/KRhIXUEUCh/ZOgWRidw0F1vyMf828OK8RO6oR5
        G+VZ6zrgWIPgz/JNBXrEUzM1wQ==
X-Google-Smtp-Source: ABdhPJxB+XWkbItuB14332DsdNb8BDqq8LaRhqpiiCHgWSmT7O/NANo6qhkcCZObEvP4Yt3HVdeNmQ==
X-Received: by 2002:adf:a504:: with SMTP id i4mr25221813wrb.35.1633520413329;
        Wed, 06 Oct 2021 04:40:13 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n11sm5540110wmq.19.2021.10.06.04.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 04:40:12 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v9 06/17] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Wed,  6 Oct 2021 12:39:39 +0100
Message-Id: <20211006113950.10782-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
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

