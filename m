Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 222AC3FFEF9
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:22:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348992AbhICLWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:22:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349241AbhICLWf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 07:22:35 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C402C061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 04:21:35 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id g18so7723180wrc.11
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 04:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=//dKqQtyVNezpAIRnDOA9TcRJZDgQ0d9R3BICS21tDc=;
        b=wmZS/JpdpDhKKOiUAcrscdLMLOUHMjFl5m+4MoOLjHpeYa7goPbKbBaCfQuPHBFdtR
         r6/+jssbulj32HuMqSQ48oFlcquv9/pzggC9xW/wPRY8wksFy7+r05H5ZdF+rNxS7kWS
         SA3Ktpm98Sm4ECMrwItZQ48B+E1BCGeVgyDNn4ylccO7YU7odqh8JwiHYtsh6ZzscUc4
         kEaTgkZtUQjB9CenCE238k0C91+c/G+3EoeNeU1ecGHxo4MTbaYqUvMMcYPurlWAo0re
         e6My8mEfexB7InlMhXzSxuJiCK/skJuvyhmDkrOlAWT3Gb3LQnjSAzocKs/b0DC8nTYj
         i3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=//dKqQtyVNezpAIRnDOA9TcRJZDgQ0d9R3BICS21tDc=;
        b=fe6538X18l5vuL5dmV9wk/ulI1Q71Xf/6l+xfQHk/DurTAO5XLSaVyCOcP3A8qG/p2
         pfPYWns5xvjqyJe2id+aIFd4M9ttU6mULBXf7FR31TEJ2iw1HWJAEaL/cAo5RQ7Cbeas
         kYqUMfufNrm5UYeixrU/RFpzvvSuXN3IOsMhnVWYC2Tt01/9uLS6GGJbpr7t39pl99NS
         7gVkQjqI2UxXDbBFwZoJVdYtfVvlvMQaGKiIZFGWhUH0O87zI9eIv8/ukeq2qs+JRhjM
         tA4ruCaDeFdBGmk4CO4NqsEdXozGS8fTRXXnWxj3icrfaF8A9tPXWpL3rINmCjDE0z1A
         /iLA==
X-Gm-Message-State: AOAM531o+2v+rq4tahwuDGj1TxpW5lxVv6JeEmf+qVwP7IZa+wojfuMw
        P1z3h17wmljwj3k7F+7puHKOcw==
X-Google-Smtp-Source: ABdhPJzdx00/bR6Zmsjxe4MaeAATmKIDg/ma7PcG8N0v6jOVuazg79rcvbgd8Gbxkzg43gNAaNMmug==
X-Received: by 2002:adf:c550:: with SMTP id s16mr3529756wrf.25.1630668094060;
        Fri, 03 Sep 2021 04:21:34 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f20sm3881877wmb.32.2021.09.03.04.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 04:21:33 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 02/21] soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
Date:   Fri,  3 Sep 2021 12:20:13 +0100
Message-Id: <20210903112032.25834-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

replace usage of qcom,apr-domain property with qcom,domain property so
that bindings and driver can be reused.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../devicetree/bindings/soc/qcom/qcom,apr.yaml | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
index 133e9c6cd961..922c8567c134 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
@@ -31,6 +31,20 @@ properties:
         5 = Application processor Domain
         6 = Modem2 Domain
         7 = Application Processor2 Domain
+    deprecated: true
+
+  qcom,domain:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [1, 2, 3, 4, 5, 6, 7]
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
@@ -89,7 +103,7 @@ patternProperties:
 
 required:
   - compatible
-  - qcom,apr-domain
+  - qcom,domain
 
 additionalProperties: false
 
@@ -98,7 +112,7 @@ examples:
     #include <dt-bindings/soc/qcom,apr.h>
     apr {
         compatible = "qcom,apr-v2";
-        qcom,apr-domain = <APR_DOMAIN_ADSP>;
+        qcom,domain = <APR_DOMAIN_ADSP>;
         #address-cells = <1>;
         #size-cells = <0>;
 
-- 
2.21.0

