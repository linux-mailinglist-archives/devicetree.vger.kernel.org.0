Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA4453E44AE
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 13:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235126AbhHILZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 07:25:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235144AbhHILZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 07:25:05 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E16DC0613D3
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 04:24:44 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id k5-20020a05600c1c85b02902e699a4d20cso669733wms.2
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 04:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XrcdWigOrJBOqNH3/v+b+R+GIipVI1XmPMk0yejMbMo=;
        b=QvD7nzEsRjPxWIit4L+5LSu2gd9d6gRBzyEs62A9RprUqA7t93ZQYfBB8exftwlanp
         utU2hVroQTDCfKGMMvl5VTBBgXbfmxNXakmSdIvZKUvgPzlS4fqxzp30eWRo8cSMJgLh
         KkCUuE5hTj03XSh9APb18Q8jm0ZTFC9yR9+BEBSdCdNt93Z4eneBlo4T0Oge6BnueqIV
         J1xOHcPaU6K0WjZrXKnfM+2gUcohcMdSRlPKdRcptIjkACZsgBlSp5O1ujOgeopzrNpO
         GANjUwKEw8THwQl9q19+rGa086BjRA99v2MPvbDK7PDIoKGeGCL1SRrY11ucqOnzRy4h
         gH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XrcdWigOrJBOqNH3/v+b+R+GIipVI1XmPMk0yejMbMo=;
        b=CdAzx1nyd9H1A3CQrj+VaK4y1KrXdP7QcNCcW++/Q9hMutGnLPDzYTqiZEtWVjwJ16
         70aQs3OT6gbK4gHjcNYrNlD6iFyeaVLimMWvtY3PPeEPJk9op61MqbkbelImQ2sg+HQl
         Jjtn763l9LlUvRbhJL1e02AGmtHT/XVxa9xOmb4Fh6a8sw217s5bpaiZlxyUj7AAWf+Y
         2jMNXW9LvgDfIHgPlvITROmOcCG5+QhwWwXCBp6VnyTBEgfakQpLEZb+fdBu8jltVsIo
         u0gTBG1gNuCnL82mEYxptc9/8t+Gzp0ikVg0hv2EySqMAQE/RU3M9zccgIikYbbegUAp
         XWJw==
X-Gm-Message-State: AOAM531e3jFwr1khRpgaWxFv4foUSD5YU1V/R2ZNi7V3t9x0LrHYHBN0
        qhkgLG4WVdHs5bIXNhytow0Xs1g14VOF/A==
X-Google-Smtp-Source: ABdhPJwRBWDY3oYEYKCgAsSGYyPBG7FIKQUZ54kmuDdnJtSQgMaJKUTYWxH++BLxGb2N1PqZTw+E+A==
X-Received: by 2002:a1c:7907:: with SMTP id l7mr33250294wme.87.1628508282678;
        Mon, 09 Aug 2021 04:24:42 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b80sm7774900wmb.2.2021.08.09.04.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 04:24:42 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 11/20] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Mon,  9 Aug 2021 12:23:30 +0100
Message-Id: <20210809112339.8368-12-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
References: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework access to LPASS ports is via Q6PRM
(Proxy Resource Manager) service, so add a dedicated lpass-clock compatible
string for this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../sound/qcom,q6dsp-lpass-clocks.yaml         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
index 589c3f1e2008..9f3de2307d1c 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,q6afe-clocks
+      - qcom,q6prm-lpass-clocks
 
   reg:
     maxItems: 1
@@ -54,3 +55,20 @@ examples:
             };
         };
       };
+
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        gpr-service@2 {
+            reg = <GPR_PRM_MODULE_IID>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            q6prmcc@2 {
+              compatible = "qcom,q6prm-lpass-clocks";
+              reg = <2>;
+              #clock-cells = <2>;
+            };
+        };
+      };
-- 
2.21.0

