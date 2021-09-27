Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3D0B41957B
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 15:56:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234657AbhI0N6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 09:58:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234641AbhI0N6E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 09:58:04 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC51C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:26 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id i23so52221803wrb.2
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JXUzKXqyFK0FF7TuDfDOhSheb5jJRieIFIcaHFlaH0I=;
        b=FJVHaZ92Zy4tdL4mLMnairBsfoQht09siSoxJ/xaKOuD+75nKunNeAx8TWvIP7607T
         CrT6/MdgzbYjA5UZJVnHAAcPkrVHknaAHPa5DUbrm0qaxAZb9ZMe7vj8n2NgRLHhrrLP
         AGXxT8NvcCBY5q9ujiTzb0Kr8ZS4nIsKnwBh+Sa/xjipYHIOBbtItbcBpqP5Kt1Pp3T3
         Y4natP7yDJvp6V75Vx3IXUgqmL91mgLNeoF9LksC0ilienn61TwoCmVdLw4s0zoWvRVG
         y24kL52HfDNEigLDkLUrWCWx7uhEunmOw+NYni7pQxtW3BzwTthjNe2LNJ/2O3eckok2
         0vuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JXUzKXqyFK0FF7TuDfDOhSheb5jJRieIFIcaHFlaH0I=;
        b=v1kmE0ZiOTt7zmWM6V+03341YxzYj/FEan8qgbsnyez6XzxJxX7y1aO3T/WcLElGYm
         kJac1CriWXKbcbhaGgtFZXesE/BDMYMKEZSAu98HPMqENgZsQBFR7bVc8U2poEok85kj
         nhY8PGqzUr1C0SqPzSquLpH+OUZsgGkMsitUT6Y8zm5wymjyWGN9R2WcR30O6rW12ExQ
         dxwZbhV2j+BGBlWvxdnL9hsmHivUja3237GjpkoSFhKIcsxo/HuF5ejFPqOO+FDZRmtj
         +Fp+CGvdmKUWB+HaUqzJyZsusLiIhR7mviNNunc4JKH9ErxtHXewzAeNYRJh48bInYEt
         Bu/A==
X-Gm-Message-State: AOAM530L3i2aIAhhDYHiULbVwGrsWwTcwvi3/JPG0Kj2NnvbLe9IMyTU
        OpjiODLpBBYQBwl4JoBPwiq1Ug==
X-Google-Smtp-Source: ABdhPJyMnxWD4DFpntZjf1T7Cl+1GxX4bnbqpL4kGzlnlR8WkcIGK7SIgSAUMnOjuPwy990O/t+eDA==
X-Received: by 2002:adf:ea45:: with SMTP id j5mr15407688wrn.291.1632750984966;
        Mon, 27 Sep 2021 06:56:24 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm20485606wrm.9.2021.09.27.06.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 06:56:24 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 02/22] soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
Date:   Mon, 27 Sep 2021 14:55:39 +0100
Message-Id: <20210927135559.738-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

replace usage of qcom,apr-domain property with qcom,domain property so
that bindings and driver can be reused.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/soc/qcom/qcom,apr.yaml           | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
index a52b955b8b39..bfe04fca8aa3 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
@@ -31,6 +31,21 @@ properties:
         5 = Application processor Domain
         6 = Modem2 Domain
         7 = Application Processor2 Domain
+    deprecated: true
+
+  qcom,domain:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 7
+    description:
+      Selects the processor domain for apr
+        1 = APR simulator
+        2 = PC Domain
+        3 = Modem Domain
+        4 = ADSP Domain
+        5 = Application processor Domain
+        6 = Modem2 Domain
+        7 = Application Processor2 Domain
 
   '#address-cells':
     const: 1
@@ -96,7 +111,7 @@ patternProperties:
 
 required:
   - compatible
-  - qcom,apr-domain
+  - qcom,domain
 
 additionalProperties: false
 
@@ -105,7 +120,7 @@ examples:
     #include <dt-bindings/soc/qcom,apr.h>
     apr {
         compatible = "qcom,apr-v2";
-        qcom,apr-domain = <APR_DOMAIN_ADSP>;
+        qcom,domain = <APR_DOMAIN_ADSP>;
         #address-cells = <1>;
         #size-cells = <0>;
 
-- 
2.21.0

