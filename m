Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7401241346B
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 15:38:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233088AbhIUNkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 09:40:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233134AbhIUNkU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 09:40:20 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EECAC061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:38:51 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id dj4so18747600edb.5
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JXUzKXqyFK0FF7TuDfDOhSheb5jJRieIFIcaHFlaH0I=;
        b=J5KYw5/JHY3SHsYK5xunLWBHiyNjKDGJmh26R0nD5SXMSzMzRszw7/jYFBUI3oMjBd
         Hv0eQNrj3VXxdR8p+9FlEqmRci3tjUCzv/7uF6npiknFzmdtSITr2nuAS4CxOXCDjJ7q
         h2BcHFbfCJFezSKXwaQb6kUUOce2QHxJF0v7x0SVEMicJnOlH++3vcsNhlvuPgflJGKu
         Z8k+511YeuMjyMwRR/RyEhQ6q0fxhCXSnCJAvbCNcDZDXZE1vLEekD4fTAORXuDqMoxM
         x4j4AJg2qjbyHKXWlb4JJC54wDGXY9f2v8CdkL0a06Ow/YuBo3CJU8YiYvtPbW15ZEMG
         HFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JXUzKXqyFK0FF7TuDfDOhSheb5jJRieIFIcaHFlaH0I=;
        b=WwFczLTTJxRYW5Z6cC0HMGjGh28bQE4ONXof00VJcKSNS7/pjeGiGIE+QihC6fpBs0
         aZHTjYgnSGXR2dkFdcjdqbjEB3MJuU+Y32UWYjewzLeCr7sGBU+Xy3hVDdddxkJ3XwoX
         WrUmOrg6HouJVoqVM9Bphosrgjow+/jaMJbl2LcgJaYt3A7Xz3MP9KVpykdL3fUJ0Yfu
         bSL9POue3ahiZ0QZsMPZH5k4eMdnpHs8X0pOrSrlKvQRf5AO4IGwdbd7G4sMtursc5Rv
         5R9tvAiccX682WR/1SV4HFIbZyrbRlb7w4sobf5NFNEk6wHnQ0e1aZW+3oJnJaQoz0n4
         9h6w==
X-Gm-Message-State: AOAM533J7odTk//oh7//g5jia/JUA+I5lgPy4UfsNR1lNIxTaIIiT9HD
        nf+caHnwR+A5L/4XT2hL0UROhw==
X-Google-Smtp-Source: ABdhPJxtEV/r1kUQl09tKJkIr/Lk3YzeGcoAz7qrFNky6Uuzy9MibbGzeXxennhqj5pAGCSZfjuiBA==
X-Received: by 2002:a50:9dcd:: with SMTP id l13mr11954771edk.90.1632231446434;
        Tue, 21 Sep 2021 06:37:26 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b3sm7915799edx.55.2021.09.21.06.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:37:25 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 02/22] soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
Date:   Tue, 21 Sep 2021 14:36:49 +0100
Message-Id: <20210921133709.4973-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
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

