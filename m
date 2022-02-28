Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2A454C6C85
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 13:30:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236437AbiB1MbV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 07:31:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236427AbiB1MbT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 07:31:19 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE4574DCF
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:30:41 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id p17so10564179plo.9
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nAVvmeFPIjPaZ8Ic6jkgvNjs8mBwZCyzpyJ7eU2Zm5c=;
        b=PsrilE//k/KBeU5lfyDt7ncyeCRTEibDue38hBEJBUHIvkzBWoK+qMbmKZLMJ4NFhE
         VRLAsCpCkYSIgkkDZRh8rep5UDSNHKG960QXJDENxs8hai9thhWS3pUfr0fDDSYxvE0L
         cZzzQSGjLJi4360Cm6fw0xSijbym/jrkPTQDSsTIoh03gIS1JU6t1RsRNIHYm2CEMawU
         wIVqC0ZtRXAIhzSYmHz954aD88uQaSm8ohACEB/zXvNOLOeGvxIXKDhtQ4yM5l/yoV7h
         3mtikdVIHu0kqL1EGbBY5gNuHUh0ggqL3ZjSHU7zNP/PE4RjuGvVe9hM3u00v74aLf8e
         yGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nAVvmeFPIjPaZ8Ic6jkgvNjs8mBwZCyzpyJ7eU2Zm5c=;
        b=SKSGB4vX4m71XZMhbo1oeIE9WGm8l32Hqa8Qdr6sNzPvsdaCzBToVBa3BH+bnv/OBv
         P/GMgSJ3xu9yNBkKJXxWD3Ks278gadU+WmtmLMe2/aUwvUD0gkls1jJYkLo4zP/Roi8D
         iUf1X+V+sRDnVolmiqZwYcpeLvU367eDt8YXf7nCOQ3qFunlCRy6ICXS6LlB3S/BVV8C
         4MV+RCR+1U57NnDFzKvkFpQYcWGlV61SCJGhgobWcftMWagac/TpoQWxY/IhOcirTPoe
         fg86BqItRdGsbh4J+BYcmtnUUp9SiQNL28Auv2Ph5CGnbJx8q2+G4otg4K19jrzz3zUN
         5DEw==
X-Gm-Message-State: AOAM533n08y3WI7G1aQZvQibP0+y64egtoWovY7gDvVPRcc0Snu9svS6
        Utz4wu9ZMZchZyJXxls6Ntylpw==
X-Google-Smtp-Source: ABdhPJy5t8eALRHCJam/DcW+LuiRUR5zjwBdLipSnmBRkvJ+XYeLJYVECL6zv2428OGGf5chqtp06w==
X-Received: by 2002:a17:902:cec9:b0:151:532b:7074 with SMTP id d9-20020a170902cec900b00151532b7074mr9421726plg.123.1646051440499;
        Mon, 28 Feb 2022 04:30:40 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
        by smtp.gmail.com with ESMTPSA id f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 04:30:40 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, shawn.guo@linaro.org, vkoul@kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2 2/8] dt-bindings: phy: qcom,qmp: Describe 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Date:   Mon, 28 Feb 2022 18:00:13 +0530
Message-Id: <20220228123019.382037-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since a few boards based on QCoM qmp phy use the
'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
describe the ufs phy nodes, add them to the dt-bindings doc as well.

This fixes the following '$ make dtbs_check' warning(s):

sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
  'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
   the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 48cd6b6171a1..70e7cd75e173 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -87,6 +87,14 @@ properties:
     minItems: 1
     maxItems: 3
 
+  vdda-max-microamp:
+    description:
+      Specifies max. load that can be drawn from phy supply.
+
+  vdda-pll-max-microamp:
+    description:
+      Specifies max. load that can be drawn from pll supply.
+
   vdda-phy-supply:
     description:
       Phandle to a regulator supply to PHY core block.
-- 
2.35.1

