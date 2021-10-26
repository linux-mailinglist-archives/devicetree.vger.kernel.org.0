Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B919243B038
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:38:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233877AbhJZKlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 06:41:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233927AbhJZKlC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 06:41:02 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA28BC061767
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:38:37 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id z14so17183641wrg.6
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=C84q1UigSHqEDprWlNbKiRxo7t/t8Gxf8Acv8pOd6wifnplgThGMajnUPPppcuwtfR
         u87CJJYdPWL1djvQw9qXKtv7BVZYEQ84qmsBT2pKkrjCXFVOBkO7pintT+4EvqeWQ5BH
         1sKmSBFWXIRa1H2Ei41TCx7g5gAAspzK6OudUaClvDhjJUsje7lsEmrPfi+DQSGdmXx6
         LrGRCLgplhDPCyBYSQw3fmESmH82S80avTxwk7+owHH+N4lcrdhGxs0JY1lkrOVH156H
         IpoZWP1U6BfvywFDAa3SlOUZE89MTCfZU/eTHEIKO6VUd6TalsAZxLR9gWYoul4uvaLq
         TNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=wc5B8pJBm2y6JtoYlQ9xbgfpESmHI+w15OvDTUXQCxBa5TZc8plSGX4kbLiyVA69u1
         Xe31psjN9W3abRnca1brtaLhga9fyzk9V+dD1akQXEV/RLA7Mo0etph18YA1T6xduyPM
         nzrs2McfphsWZjLlFKtYO4w4Y1iG9mEe4CdZr4Zp+I7kRunwO16Y6JTsW1Tc7kbK/u33
         /fytQjx0hEmQKB6sRxpJrjJcNqg8QiyAlYQ5hvSPINcQF2bJ+kkq88H2O00AzEOfJJ7B
         AHYJR6UU68lqaV8gfvGipbJUORXlNXBd6gxbxUL+Uxz8lP+1Bgid0PRF6EZqsaeC7ufV
         J/kg==
X-Gm-Message-State: AOAM530AOZVaiYWCrZYhlPhXeOzUIlcc14X9atOwLfok40Iv+1glzLzv
        4YhwJ9V6hDcrp9PClNhkb4SOGw==
X-Google-Smtp-Source: ABdhPJyTjcWajc7F1RRtxUcBM2062zvAhL9RZb2WBYS/U1l8dwdKEntzdWfiCQYcZ+jyHP7zyy0cew==
X-Received: by 2002:a5d:47c8:: with SMTP id o8mr12287858wrc.374.1635244716500;
        Tue, 26 Oct 2021 03:38:36 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id x21sm221397wmc.14.2021.10.26.03.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 03:38:36 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v10 06/17] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Tue, 26 Oct 2021 11:38:04 +0100
Message-Id: <20211026103815.19468-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
References: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
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

