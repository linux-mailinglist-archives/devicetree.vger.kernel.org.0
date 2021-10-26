Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31DDF43B0EE
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 13:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235460AbhJZLTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 07:19:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235021AbhJZLTn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 07:19:43 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 690F4C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:19 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id i9so2709131wrc.3
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=oh49rrCVN7EdZTDIKN11rUnmYn+IRrLy1GtZUUHVLNUCo0cTkcaCmdwOd8NWxxJqTq
         SKTu4x+8UQLFBeZfae4D3wmjXf7VbEh6eHe+Ej23tFPN+RfsR1PwicySueaLKi5O66vO
         zn2UeJYVjmlVDruF/bwlvYgsjNFiCpWnNF18lwGnvI7dmDRN5CFCG6ja8osJJ3T7Wv1n
         uDTQlaOxGJycK4v/0KeqWiMU3nHxK5JJkUk1x8d9oN6VWB4v6K3w2FYW4PNVxqghPmSB
         FTTXLLNcOi3SvbSm3kxw4ppgnDUvOl4V1ZkStlVYkezuFlf4p8tre7S+mHGt17l4BMjq
         +Q6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=Wl7nFLhfxzBo6FXUUQ3Oib+J06glsjIDlxYrMiy3813C5xqVz5WGGZccW1C0g+oF02
         Jur9aQ3V1mLjx0efPu1YYqHX3Ltz+Q6zuzLH7eBSeEw0JouJbwnjj52QLhO+0T1bFYbm
         ic1xut/5SZBVIm56BlIIEd7A/sgDYoJ+GEEeN50y3oIdBSRn5K29klkHQMsToeIdRd62
         UNy+01lSwzJOJcsgmpUXP5WWy31MWQlIHuPs2CdS6ARleeAY8qUQBtsXDUmn3ZuBH1zc
         gBrk5p23kuDA5F/sIfIQtJVK0/YLtg0mknx+FNBJrmZMR/KXD2MFMn9ZGlPLJFXF0o0A
         GTfg==
X-Gm-Message-State: AOAM531+GlU4TM0iMbLt0NYI3shBUe2UVAI7s5GnLzdYe6LaNdUH73CL
        wOCspHuTCnUo/OX6rnSqHE8cEA==
X-Google-Smtp-Source: ABdhPJxr4jI+h9lIpRckifGWWyAGuh6/esfMUPDe/Fg2XZiS0gyU0/4DWHUcSWB+hv1zuXtH7v3X7A==
X-Received: by 2002:a5d:6b86:: with SMTP id n6mr19443952wrx.334.1635247038020;
        Tue, 26 Oct 2021 04:17:18 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l124sm355483wml.8.2021.10.26.04.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 04:17:17 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v11 06/17] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Tue, 26 Oct 2021 12:16:44 +0100
Message-Id: <20211026111655.1702-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
References: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
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

