Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E3EA3E44AD
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 13:24:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235138AbhHILZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 07:25:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235126AbhHILZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 07:25:05 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17839C06179E
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 04:24:43 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id h13so20923973wrp.1
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 04:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZwS0pTLfaYvtmnmGSPY2CWYSjvjRmgOXbJ+a8m+7l0Q=;
        b=Fn/HFDIrduoeAGIvQSZhyW2UG9VaxI5LU+PWDnufGBpxXxlf/YpRPsRo59OwwnX5iw
         wLmyRO+KoxArio0pb1VPTu2JlhgG07/ajfrGcA0YMgAuUcC3bjtGvY4gEg5UGp/qZSOn
         2CFjt4mdALYXPsqGjWGcL4Oh1RaeupTcr3iac2bOC3t4ZTZguB2XZxHwm4kPfwEWfQQl
         UDB+xqPgB9zFlHbBSlp5A7mOSNAdfXZ0fgDQ7+dhuTwmZM1Ko/OEL+KOGj0rlxXWjtj7
         fu6j+LIrfrSbbDqKDq+Cg83rNmAUe5US0jBe30s8IkJlNfupmWdPZSFAlmsGFtfFWpS+
         P8SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZwS0pTLfaYvtmnmGSPY2CWYSjvjRmgOXbJ+a8m+7l0Q=;
        b=p4uZAG8V0HHxRMpU7AYLWZbRcqEPv8xiFRP7udxa0kx8u5Pgo9/ySxw2A9Fn9T64mr
         QaYcigN0bZahXrQXLUK6eBzU+z2eb6mR4Fs5lbVJR4JzZ2A8j7tv4GUuuKstwkrLFt/C
         P8jqxSZHP7SOKb6zSJa/JjU12jM5tLcqJxziypgWUnLnPEggHXIxD/J20XjrPcIbOeKK
         wTjJLR22OquCM7SrrKzQHIvyR41mpj+w3DPw6KbNnRVRmoX6jgsdzZbcw96CFE/MBmIw
         tKsBD9MOQSQ+6kZ+fbdvVw8zAypLSkRf3ArOFBSH7midObu1J9eymFX19XfzDImbvx0Z
         F13w==
X-Gm-Message-State: AOAM531AsZncGQhxp6WW6Z84sBl6OdDsBQOvrP4hSA9k0Ru9bBpuNIbQ
        hP8C9vgdtFMz4T3gt7zfX6bGxA==
X-Google-Smtp-Source: ABdhPJwCI67MRfUSvaUQJxvzTEQtCf5CHHvpolvSbV3NQXq5iQxqzFIN+gPrx6Oh1OXcMeXhOaoDjg==
X-Received: by 2002:adf:a1ca:: with SMTP id v10mr6532991wrv.177.1628508281682;
        Mon, 09 Aug 2021 04:24:41 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b80sm7774900wmb.2.2021.08.09.04.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 04:24:41 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 10/20] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
Date:   Mon,  9 Aug 2021 12:23:29 +0100
Message-Id: <20210809112339.8368-11-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
References: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

on AudioReach audio Framework access to LPASS ports is via
Q6APM(Audio Process Manager) service, so add a dedicated compatible
string for this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../sound/qcom,q6dsp-lpass-ports.yaml         | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
index e6148c17419b..92a641dfe04f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,q6afe-dais
+      - qcom,q6apm-lpass-dais
 
   reg:
     maxItems: 1
@@ -169,6 +170,29 @@ examples:
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

