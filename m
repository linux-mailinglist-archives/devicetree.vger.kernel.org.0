Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71A833C878F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 17:31:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239885AbhGNPeL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 11:34:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239853AbhGNPeI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 11:34:08 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AB9BC061762
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 08:31:16 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id b14-20020a1c1b0e0000b02901fc3a62af78so4172228wmb.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 08:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4M0Qy9u7qpzLdCXZMtfpQrDY8UIAvDYX27th6ZO86XE=;
        b=MLzir5u+L1TZw0QCQvWIj9BP6JSBDcbHCeK5bRrSwvdLa2ZhQVK4+yyzIaISzzKzSX
         169ZnI3j7fQaCN+EencL2dLJsdRxk8Ku1PtgQKiCtFpE+Crp52msf9n99sJ5zmiUvZzu
         WQepkEyiONQcRCNtSStAwa2C++VUJWivAXu7hYkbhtw/TA+oA723d7vFUbRbtLuP1sZI
         ZUncQyZ/tfYV26h3iMGyP42gHwRe1bzlCs8zoDmgIC/2dYNarsV5f0HsvzmRQiVpbnaw
         uxn/to7S+vpKSyjK/UJ/IpP/jo0xzvPWBv4T8XREcrTMpf3P9PE2sXG8L9h1zOuUWFCq
         VSVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4M0Qy9u7qpzLdCXZMtfpQrDY8UIAvDYX27th6ZO86XE=;
        b=p8/Hm7LiJhxOgQ0hpM0R2v0g4HDHFcXZ6b7iodVsLCBOPmkGFQwc/duLLwQC1Ss6IK
         gCMrgBmhcySXQXr3hHC7BftFe3RHOR/zTqef0KNDFD3+I09Y9hYSVuvvAiEvxcHDyijK
         zJNLGTEH/KHul6PtPxnSGm600vdcAC61CSqfxrymcTmWBZW/LBjcVhMa1suzvjEGLDWj
         voIgWYrF61HuC7drplSTvozwM+lnuZNKJT6NbZ4/JgKwAsBU0k00jvlsKSpwn/U/j42G
         QxvKUy1Pw9Mot/Z0mmPSxCn4pSEQK2mZ7dNqviLcd2ONZVlncecuF1TAwlqEljTjOMtK
         8aJw==
X-Gm-Message-State: AOAM533UYS+SLV/v1+t6Je+Od3atR4poy9+i5MvLtUqTn7mrAHXeXxN2
        OT85YzGTanTJE/Y8WbNFvAIrkWdwas7cUw==
X-Google-Smtp-Source: ABdhPJw9d1nsWK+DrCqoihkWKOXVTL6vRHatVZ+UtvGOXfOFrUmQgYk5h/cCRyKY0ozwwAhdupByNg==
X-Received: by 2002:a05:600c:2ca4:: with SMTP id h4mr11774924wmc.37.1626276675086;
        Wed, 14 Jul 2021 08:31:15 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id y6sm2465174wma.48.2021.07.14.08.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 08:31:14 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 13/16] ASoC: qcom: dt-bindings: add audioreach soundcard compatibles
Date:   Wed, 14 Jul 2021 16:30:36 +0100
Message-Id: <20210714153039.28373-14-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210714153039.28373-1-srinivas.kandagatla@linaro.org>
References: <20210714153039.28373-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible strings for AudioReach DSP firmware based soundcards.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,sm8250.yaml           | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 72ad9ab91832..2f61bc4a2d7e 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -18,6 +18,8 @@ properties:
     oneOf:
       - const: qcom,sm8250-sndcard
       - const: qcom,qrb5165-rb5-sndcard
+      - const: qcom,sm8250-audioreach-sndcard
+      - const: qcom,qrb5165-rb5-audioreach-sndcard
 
   audio-routing:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
@@ -152,6 +154,47 @@ examples:
                 sound-dai = <&q6routing>;
             };
 
+            codec {
+                sound-dai = <&vamacro 0>;
+            };
+        };
+    };
+#---------------------------
+# AudioReach based dai links
+#---------------------------
+  - |
+    #include <dt-bindings/sound/qcom,q6apm.h>
+    sound {
+        compatible = "qcom,qrb5165-rb5-audioreach-sndcard";
+        model = "Qualcomm-qrb5165-RB5-WSA8815-Speakers-DMIC0";
+        audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
+                    "SpkrRight IN", "WSA_SPK2 OUT";
+
+        wsa-dai-link {
+            link-name = "WSA Playback";
+            cpu {
+                sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
+            };
+
+            platform {
+                sound-dai = <&q6apm>;
+            };
+
+            codec {
+                sound-dai = <&left_spkr>, <&right_spkr>, <&swr0 0>, <&wsamacro>;
+            };
+        };
+
+        va-dai-link {
+            link-name = "VA Capture";
+            cpu {
+                sound-dai = <&q6apmbedai VA_CODEC_DMA_TX_0>;
+            };
+
+            platform {
+                sound-dai = <&q6apm>;
+            };
+
             codec {
                 sound-dai = <&vamacro 0>;
             };
-- 
2.21.0

