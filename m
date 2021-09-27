Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 037B0419585
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 15:56:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234666AbhI0N6R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 09:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234665AbhI0N6R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 09:58:17 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61EFBC061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:39 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id g16so52150182wrb.3
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=BLNGDEJLWcAjEHkV7/sAuO/x0d7vEWhqt8PROhoQqAzxzhJAG0C6BdWlEHIqlq2BOQ
         7554peKuUtZrxPXdQAa6SYJq50HAKlT1MERxfUyJC2VqVwa+gRr42shhRGyOmY+5oUe9
         0pbDOrb3zr7IY8l7WqNEOK1b+2RiN2L8a0CKWf+9YYqJzbRcOY9eyQ/U5UpSdTActgST
         CssRobbVNVFTYXQHWyALSs590lqgklDd1E9VhVBvKWdU7PjcE6YYMdrfzHe4EKnlbXTC
         kTkRz0iOUIrgjI5qoayh6MmWKBHyUD0Cxe2zLx9ZpxZdXWvQpCB34DxWopUflfSM874q
         WyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2dEl9+MXeU9ILc1heZjgbaev2CRPnvoQ4/YvbAvAmQM=;
        b=4Yfd+IcDW9IPlP95s3PvaeQf3vOHFcHPQbsyEmamG2QGVrwckogA+5dcFQTOdn8KHx
         WhT+J/xJA49+5QFVh4GEGN1NKU98l9Y7zK0ulcqmgSVCBqbvAXLJ8MQZA4w6t7q6RMHK
         s9/tBl3iNfhoANWQ+pGx3GZkVY2f+Ta6k4niOpwDZa8JkXOseontjbbEzq/e0GMOR7ma
         +rCTTQY5foAIJaNFBrBnJXrOgE+3nSTefR9JE2JcFqLea8mI/rQ4zIerxBVKMKP1Sldj
         iJzhTzjITmJ8YQmtLJyPvnQlRd6ZI3A8jJxWbAPxzq7Qj8rXzrf3dj/sNWSJOkpws2FM
         ktmg==
X-Gm-Message-State: AOAM530jTtx349PKMKiS64AGq+PIUsRKwc4MIl4EOUAqzZIu3IubbIwV
        crilD/6AC3uedUNR+7047pfwnhbxexjkBQ==
X-Google-Smtp-Source: ABdhPJwQ0H+cqKR5s9tf/HAJNGH77+atJLJ9MyQMe97sxAQTA13RWtnbGeZbomyyp8MnMBOiZHLwrA==
X-Received: by 2002:a5d:5281:: with SMTP id c1mr28730682wrv.92.1632750998047;
        Mon, 27 Sep 2021 06:56:38 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm20485606wrm.9.2021.09.27.06.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 06:56:37 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 12/22] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
Date:   Mon, 27 Sep 2021 14:55:49 +0100
Message-Id: <20210927135559.738-13-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On AudioReach audio Framework access to LPASS ports is via Q6PRM
(Proxy Resource Manager) service, so add a dedicated lpass-clock compatible
string for this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../sound/qcom,q6dsp-lpass-clocks.yaml        | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
index c686164732aa..f83f00737a2f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,q6afe-clocks
+      - qcom,q6prm-lpass-clocks
 
   reg:
     maxItems: 1
@@ -54,3 +55,23 @@ examples:
             };
         };
       };
+
+  - |
+    #include <dt-bindings/soc/qcom,gpr.h>
+    gpr {
+        compatible = "qcom,gpr";
+        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        service@2 {
+            reg = <GPR_PRM_MODULE_IID>;
+            compatible = "qcom,q6prm";
+            #address-cells = <1>;
+            #size-cells = <0>;
+            clock-controller@2 {
+              compatible = "qcom,q6prm-lpass-clocks";
+              reg = <2>;
+              #clock-cells = <2>;
+            };
+        };
+      };
-- 
2.21.0

