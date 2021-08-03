Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7298D3DEE53
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235982AbhHCMyv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236057AbhHCMyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:49 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D9D9C0617A3
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:36 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id n12so25218215wrr.2
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=28lNrxGL6jA0sHRoGitHZoiKhTcNCqvnm+1QFtFW9QA=;
        b=oMdPQTqYbS0n7nNTAc6RUgeTUJfRUAgxS9yeER6PWv/htrRkc7boe3tOVDL9OKK06U
         tnRGmueii8x8eIUASxX+dEl1D4UrHAhAZdWYoIVsubKdVaF/aPnvQnIKZksawDN3DA8h
         uf00k/yDQ/n4nifh1m7f/bgpok65g69jvw9pLHhsegNRXCXy74nSwVSoqyXuN02tLR+J
         paJycM+Qawia8H1X6ZSrWFyaQUZ9FhvXesa6kSWy+TofW4sZqANszjmH3dDfMqf8kwiy
         d9x0zGBAMWI/R4mcSlcNoah4+eLbxRaOL7g/yV+LAsyOB+03ctnQrrBvHqmm+nsNrNgc
         2sWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=28lNrxGL6jA0sHRoGitHZoiKhTcNCqvnm+1QFtFW9QA=;
        b=ent2wdSxT8fSxgqfhxbMKXyAkvrhQ1DSh71TAkR0mTwFLISkZ00XoHq+nYdO1R16Ej
         Wz3soP9uusQ8C2X+9BvsbkGs4M6bdXkWHsA8wt/ns2I7hIsMJEUhsb1EG1uSgVbAlqlS
         bZtSQ4/zga3tCs/4hCpH/bgdHYaB/BApA0Is4+XXAw6rMco3dLaiI9Ja6NhuokoJcpPy
         xDaCUIJ5JrXyKgyC+CSx9UkLxwsWvN348+MnMWrwR8tqS972ztUCyKpug1dbbALW5N02
         tlPNXfHvrtdrzhm2OJJoU4AZi1/Z0SwJo2CYUUZXe+h6fhZsNMucnC9Ii0lZg3hCNNvv
         JstQ==
X-Gm-Message-State: AOAM530Zgl6RqAzhKKR2KlniKLPkrY9op5/IrgmEUG1FRdlQmxYsFjRx
        Z3GWA585y52PrdCGeJXicdZKlA==
X-Google-Smtp-Source: ABdhPJwSV90qUIMwimZIMbPTkUyxXqCNgtBEJRQx9Izi4W3JJxga8ow9xr+OhU3p76VGtvY0fb4QpQ==
X-Received: by 2002:a5d:61c8:: with SMTP id q8mr22850871wrv.151.1627995275295;
        Tue, 03 Aug 2021 05:54:35 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:34 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 11/20] ASoC: dt-bindings: q6dsp: add q6apm-bedai compatible
Date:   Tue,  3 Aug 2021 13:54:02 +0100
Message-Id: <20210803125411.28066-12-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../sound/qcom,q6dsp-audio-ports.yaml         | 27 ++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-ports.yaml
index 6990295803a8..521256339909 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-ports.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-audio-ports.yaml
@@ -14,7 +14,9 @@ description: |
 
 properties:
   compatible:
-    const: qcom,q6afe-dais
+    enum:
+      - qcom,q6afe-dais
+      - qcom,q6apm-bedais
 
   reg:
     maxItems: 1
@@ -168,6 +170,29 @@ examples:
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
+        #address-cells = <1>;
+        #size-cells = <0>;
+        gpr-service@1 {
+            reg = <GPR_APM_MODULE_IID>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            q6apmdai@1 {
+              compatible = "qcom,q6apm-bedais";
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

