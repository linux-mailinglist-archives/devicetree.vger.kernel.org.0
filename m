Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0F7239E077
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 17:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231325AbhFGPcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 11:32:22 -0400
Received: from mail-wr1-f41.google.com ([209.85.221.41]:45684 "EHLO
        mail-wr1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231358AbhFGPcT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 11:32:19 -0400
Received: by mail-wr1-f41.google.com with SMTP id z8so18069862wrp.12
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 08:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lzk4lCLmAXbNCfDcTx4wmKLjACEaxBk+nh7dbPXaa38=;
        b=UDhiFSqxE1s5YjiU15JeFLbAqZTe5nrAp1XpGXbX3+6iigSEPtlXwzTkvntFfFKvUR
         CpBxINqcZhWT0UC1sfuoxFLEQRwISz4l/4Eiv4J3HFKjSN8JJTn4d+7SZ+3azQAoxnVh
         AxmwdoO+fl8Jq+VPXz37aaoKN8tzydm2SBo7HzVGMsl3tfb/UdJ2T/cO8q4jTYYecott
         QCPxHQ2SW6oWTs0oL1nM8oi6jOmXMtoR1gvlZD4nbeLwiSh5fXpXltWklGS9irK9lX/V
         WZlzDpgHayq+NoLyEkq675dzef9ZyF/MhtS5y3zUcKPzpZTzxk2P59ioGDKB2+5D2dfy
         cTIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lzk4lCLmAXbNCfDcTx4wmKLjACEaxBk+nh7dbPXaa38=;
        b=UXjsNkkfswFA5N0uc4gZzNNmzE83A/nk7yBoARtkQPCXi6LYHvJJhSkfIzV3MXCJ2H
         5BmZQ0GB6YRuUsFwPxLfx2o6psbm2vzxQDdxvvWax6vaO4tVmBKp/bBhFnAziWZu4flY
         9Lp5uZmQGmLUNS7nfdb9tBNtFDKNmjyEBgcYdbBu47qu1E50CeWPee4yYsihTGPo5OXG
         tlBtY34KcH0Bp1RqARNiTRpWedDk2gTjk/rexSdC6wKPU0MckvXlCKD6g48BUOkh9oui
         umQUaEUEwU1BzUFoIJsZMC79LVZz4V/1UraI7vDsSxKZikwqehhOnjHGambgweIYnYT4
         bG7A==
X-Gm-Message-State: AOAM531JY/dFMiU/EiPS3Q1nyGpPhGMR9phvI/AbpWvEwrJS1x+4JpPl
        KMYBQCe6PflbIBE/KYuTbkbXxQ==
X-Google-Smtp-Source: ABdhPJwzX/sWF8yrXRuPQ0fIro1jD8AuiOKC8LpOEgmpevy8/2G9wmoj3HHnFWe4aaCpWakoNCyS1Q==
X-Received: by 2002:a05:6000:18a8:: with SMTP id b8mr17320018wri.208.1623079755937;
        Mon, 07 Jun 2021 08:29:15 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id q3sm16370170wrr.43.2021.06.07.08.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 08:29:15 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, robh@kernel.org,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 12/13] ASoC: qcom: dt-bindings: add audioreach soundcard compatibles
Date:   Mon,  7 Jun 2021 16:28:35 +0100
Message-Id: <20210607152836.17154-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210607152836.17154-1-srinivas.kandagatla@linaro.org>
References: <20210607152836.17154-1-srinivas.kandagatla@linaro.org>
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
index 72ad9ab91832..551f4fe04749 100644
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
@@ -157,3 +159,44 @@ examples:
             };
         };
     };
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
+            codec {
+                sound-dai = <&vamacro 0>;
+            };
+        };
+    }
-- 
2.21.0

