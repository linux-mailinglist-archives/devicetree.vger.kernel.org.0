Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C69DF40C603
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 15:14:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233681AbhIONQC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 09:16:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233191AbhIONQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 09:16:00 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2B27C061764
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:14:41 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id z184-20020a1c7ec1000000b003065f0bc631so4820062wmc.0
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JXUzKXqyFK0FF7TuDfDOhSheb5jJRieIFIcaHFlaH0I=;
        b=e+XMGdanY0/eYMfrz4B3FQ9ISacQb6ccxeueJqMUhtHmyU9qA1kps040zqO18Wlvwr
         xx6kY8y70AbTje1rYu3Fo2KwmZR3QPH6W42JunwVLujhvnb/Rn0hC2tdB6mVRYMLniIc
         G0e6Tvpd6AY9wllU9deFQf0brVfPXYONteDNcbaWRCx/n9DYiTBdkLaeHzZj1QwS+/0V
         LM4dpJSfqT8mCrYxecywlTc4Jbv6f8mnp+lXCOMhxTGapvSC5926yOCrjEf3H/lwXbKE
         XQEJcM+AIJHws+0RnMYDQ3mmoTHOktxze/nzpHbUuqDe/p33WkbMKuD6eG0wcGYnr4+x
         bIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JXUzKXqyFK0FF7TuDfDOhSheb5jJRieIFIcaHFlaH0I=;
        b=WF2ATHUR5vGMPx4MYidwenUviUbgLMyoJjaq1jO4eNBV3rrTYgamOK6QgVo4N8UZTI
         TzrYHrHaD2wgZcMWYJ4h6jcn7NgetYmopltiZNuM6RFnDX5aNJ1HrpijLgz6LlvfoFfG
         Z+VmGbCKLEp0RwTgI3KjyolXyE7/kGFuAWT1pHlCzvObOGzEPZmjq1d7tmuJTFYYmTXf
         T6izRrTU+HSZpQ29vIfRbh7Io9Ewp9QnljMjcip7VICCYaXBazNKT9Lk1Bitj9heIgfB
         J6jnO9d37xWEh9P1jBH/xWgOsUOsfjy0/yDzlZNWm9uqiV8nXCMCkI97VXBo22EBh9FI
         sanw==
X-Gm-Message-State: AOAM5309eMeCUNJDsfalsifpHqPLguVqJHTa8I0Y0rE4/Bm1u4hBxDPs
        zqWLg9Y6598zP5tEMlHvhAL6yA==
X-Google-Smtp-Source: ABdhPJyHhGNdmGfTv9wtq6gJn80pNJ9SBtwDPfGsQybAYgtpi/0Bld6HttsqWC613iZsz2rWX+dseA==
X-Received: by 2002:a7b:c3d4:: with SMTP id t20mr4382511wmj.27.1631711680290;
        Wed, 15 Sep 2021 06:14:40 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id m29sm14501717wrb.89.2021.09.15.06.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 06:14:39 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 02/22] soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
Date:   Wed, 15 Sep 2021 14:13:13 +0100
Message-Id: <20210915131333.19047-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
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

