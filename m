Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 012AB661E3B
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 06:14:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230491AbjAIFOL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 00:14:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234140AbjAIFOG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 00:14:06 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B7B8BF43
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 21:14:05 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id bq39so11321682lfb.0
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 21:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=frGsD/U3T8SDUQuobb0ngHDLYJCFfGHMt+azRt7XMrg=;
        b=CE9nKNLaE5wnGtR/t1d58awzkiYYz+xKLQ+8aEtYlS9wQH1vGZTKZDGiFh+fqnExf7
         P+WJtDuEJHJH80cOyWdXMkMLEDqRFT/j0AuqXSYKjGX2PRC8JBK4hqoCLZuSkEcbexJ/
         JaS7WmuEfRGNJPyKjY6YX5qPllrqo6xds51s/D5QI9YdfAIFh79bQLV8+DMYO3Ccnyst
         MeR91lnlPsPtv3LTClyU+e+czjryRnKpX/YIR3LdHaQEtRzYD174JmDmEdH4w7tWWByL
         eUwUxD99VLlWfUVvuV9KEqttu+wQIhLD3PqXeM6M2iapVnjdT3W7aYM4hUpHzCmetTWx
         H9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=frGsD/U3T8SDUQuobb0ngHDLYJCFfGHMt+azRt7XMrg=;
        b=S+nLj3PvHgEbOl6L0IfvLbyNBaa5bjnXJVr1JGQp2W604pkogEQyYZsxu8ka+luG7B
         WBZOdSb21VpFdo/U+JroLczuZIsCIlhmF/y1p24pAWgtdlcAAJt1B1EQ0oTdUQ54PC6Z
         tYaQ92RQrBvAIKKERXXE5fsz5Qlu4kW0+rdWEJltGsre6zICKDvVmsGmOBOQuDFdTur8
         SL8W5TFifhtgRGEA1CMknghe2r0Um9ArkB4CvbuaMJLJw+81xf20KsBO761sAdrYOxCa
         QP5kD83uz3n8Grzkma94u8Ba5AnuIaQBUZsjTxOrvdZf3kKUDmrNN257vVaPcifV/Dju
         XpqQ==
X-Gm-Message-State: AFqh2koNF4UgFV8LP+NPN/8DwWSdqmz3cmD7EUl+4XIbpQCZrZYdw82t
        r/hC/5Qttg0e1Se4xDO3seS0skwaNY0mqsEW
X-Google-Smtp-Source: AMrXdXtnCjMD5u5PYXTfWGp56VSnr8APOpEoohppOB/KTnfYBe/lILcOXtWt1FquP9UjvWbNR4jR/Q==
X-Received: by 2002:a05:6512:3e0e:b0:4a4:68b9:1a14 with SMTP id i14-20020a0565123e0e00b004a468b91a14mr21662849lfv.60.1673241243614;
        Sun, 08 Jan 2023 21:14:03 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w4-20020a19c504000000b004b5812207dbsm1426880lfe.201.2023.01.08.21.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 21:14:03 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 1/6] dt-bindings: display/msm: rename mdss nodes to display-sybsystem
Date:   Mon,  9 Jan 2023 07:13:57 +0200
Message-Id: <20230109051402.317577-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
References: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Follow the 'generic names' rule and rename mdss nodes to
display-subsystem.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/mdss-common.yaml      | 8 ++++++++
 .../devicetree/bindings/display/msm/qcom,mdss.yaml        | 5 ++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
index 59f17ac898aa..ccd7d6417523 100644
--- a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
+++ b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
@@ -15,7 +15,15 @@ description:
   Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
   sub-blocks like DPU display controller, DSI and DP interfaces etc.
 
+# Do not select this by default, otherwise it is also selected for qcom,mdss
+# devices.
+select:
+  false
+
 properties:
+  $nodename:
+    pattern: "^display-subsystem@[0-9a-f]+$"
+
   reg:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
index c218c9172608..47fde9b6779f 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml
@@ -15,6 +15,9 @@ description:
   encapsulates sub-blocks like MDP5, DSI, HDMI, eDP, etc.
 
 properties:
+  $nodename:
+    pattern: "^display-subsystem@[0-9a-f]+$"
+
   compatible:
     enum:
       - qcom,mdss
@@ -153,7 +156,7 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-msm8916.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-    mdss@1a00000 {
+    display-subsystem@1a00000 {
         compatible = "qcom,mdss";
         reg = <0x1a00000 0x1000>,
               <0x1ac8000 0x3000>;
-- 
2.39.0

