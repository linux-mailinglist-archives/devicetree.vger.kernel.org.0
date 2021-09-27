Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48420419583
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 15:56:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234661AbhI0N6R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 09:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234690AbhI0N6Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 09:58:16 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DCB1C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:38 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id d6so51970965wrc.11
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=aD4CvHR+ZQkz5XAu0OSPF4jHMzIIAjOJIpI8+E8VvLfsjwiXTzETWzSI/VPbF4rfJi
         2tBr0a6hoMbGlToBypfkItdLKZxgP9xUtudU3R0mwRZf+L0s5XiOC+Dcp3sxBxWQnTJL
         5Yx6mx0SRoyPv4Ndx9OCVjlXdQjLK7EGoMuh9wEu/ytPwTStgJ4b2+GhsM+EBaLeD0H6
         DdmULyIUp+LNh7i3C86ViHINrXtqg+gp7gbeBRk9TSo7ve9VBWahdsdI7pU7TbAlLLgy
         WAO5pUV00ePKVxD5vU4i63aBsswUDHOPuGoyVcQmIf1ENrx08eowXb4Een4XbTIbKymY
         q2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0TebeQ0TXJpETl5yyZtrFs6HbXMx9cchKOW5rtUhE/g=;
        b=VXTWVLFdOKIOClD6pwHP2qioazpvnfAYmbv3FOa2zqXmz3a68dWVBigzYdjBohIvfP
         PZQ8/6n+tFJT7/1LdHTAfewLnOLwkKtjFuU2qFqwL+TTUhiWqIQE77AeenZpw5l2z9S8
         NG6lODGUpPDR57PENNGNW/KIOodTi4RYUYHEKOkWeXj9qwHhhaji/A6DKHrHLZXqXZ0+
         sGWi7OBTrxG/5+jP+ebjK5D6lZyAtj+rtlplEcew9Iwr+jI7Y37elgxkfmyVuacGNdi3
         8ZKW3Oi40ZIZ7wJD7KG2EKL0y3P5Q5VpRqu/L5J2sJOyY8FhDvvzE2EcU3UqgdXXG4df
         ro6Q==
X-Gm-Message-State: AOAM531Nz/Cc40OHgsjyUQvy7E8nYGlXxvyHWWlCTAJzXE89+dPygX0c
        42y9COMycceojOAz1qNtXNReVErmyKHC5A==
X-Google-Smtp-Source: ABdhPJy1lXMT8mdMnx+FjqmzrE3eXkoohZj4XsTJEzS6wy4nlayEvgd2GitTbf6qsZ+5junzUxljyw==
X-Received: by 2002:adf:ea45:: with SMTP id j5mr15408688wrn.291.1632750996922;
        Mon, 27 Sep 2021 06:56:36 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm20485606wrm.9.2021.09.27.06.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 06:56:36 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 11/22] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Mon, 27 Sep 2021 14:55:48 +0100
Message-Id: <20210927135559.738-12-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
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

