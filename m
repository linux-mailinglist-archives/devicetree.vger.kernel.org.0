Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD145AF8B7
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 02:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbiIGABO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 20:01:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiIGABM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 20:01:12 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CC6A8053E
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 17:01:10 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k9so17800286wri.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 17:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=3q6fJu/ZLTksZ+dx7M5mQ5FWA4TkvOoCR9GW9z70k6w=;
        b=psgm18KbEz1MZzL5ml9HK8Y2VP0VsM6O/G3bucH3PM1FXOH+GFbnU40vFYHvQ2u7US
         2pNr6gBiU5ZhG9Pbx+7DIbiPaQHgArhb+PBw9Is550Yif2Jxh3oVuU790ZrYOsENNof7
         7ft172Tz/qSMAKsfOntBQO5VqBX6I3Jjpy/JLN7z3g1YCOtZYbri2Zcj5xLrqSWR0Drv
         R0WN+M8i2+70DpNZ3OBm3M7zOd3Eb5mO7rfpi1BQLTUz8tCyeQ0dSg9/wy7cDS6jHQjf
         Ho9pE3lqRFxD7KcXfY0fgitK0MzifWpjZLaLv23hYsI5XUTOm6mXkhHxCwODFbG0dcd/
         gQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=3q6fJu/ZLTksZ+dx7M5mQ5FWA4TkvOoCR9GW9z70k6w=;
        b=RyZ13+ys9ZFELp32cSh4fkQCyNFLWull9jSA6wsYCc5qda5oL4nBpp9F0vH2J3Nzhw
         YNCIobpD1UYPNpAqjdEpnjz2t3Cm4PT/pREInra7YXqCkRyO3GLeWKUBQT2bU+FCVrVr
         Nzs+KPc3/1QMRSnghQP1STDXnmzSp/N/WbR9uXcDXrQr36qkhuwJmDskQSEcRoF0MafG
         B6cb11eSxV63luHOCNgokSu/um6fr/hd/iap6Rc/kXVH6qYCFSoyJi0vbot4Y8W+UQc4
         WMJZVwVO6pm2AjufBXTNj3p94QQGl59NOpi1suZtkxPbz5nsyhjdY6DMxgTvOwZJ20QY
         a+vQ==
X-Gm-Message-State: ACgBeo223Pru0S4vdBeQYR5V7GmNJ0RmzFE4MIAFcvx4rZuQjzSklioK
        OzswDnbyOGldM86N9FDjoYw1DQ25bEF3yQ==
X-Google-Smtp-Source: AA6agR7dYBhKvEp4eCM6ucrIig15auHjVB/7ks1Zm48YRbkDW505pUpMy82e5XUvgx5HtVlsxP1Bnw==
X-Received: by 2002:a05:6000:1f9d:b0:228:6446:3d67 with SMTP id bw29-20020a0560001f9d00b0022864463d67mr421994wrb.575.1662508868716;
        Tue, 06 Sep 2022 17:01:08 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id g13-20020a05600c4ecd00b003a4c6e67f01sm26848613wmq.6.2022.09.06.17.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 17:01:08 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_mkrishn@quicinc.com,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH 01/11] dt-bindings: msm: dsi-controller-main: Drop redundant phy-names
Date:   Wed,  7 Sep 2022 01:00:55 +0100
Message-Id: <20220907000105.786265-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
References: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
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

Adding in msm8939 which is based msm8916 dtsi I stumbled across a binding
check complaining about the phy name for msm8916 which we were reusing for
msm8939.

The currently inconsistent upstream dtsi naming of "dsi" and "dsi-phy" is
not captured in the yaml for this driver.

The driver however doesn't care about the name of DSI phy, hence the yaml
check is redundant.

Both Krzysztof and Rob suggested we could drop the phy-names entirely if it
really isn't a dependency.

So, drop the inconsistent and unnecessary phy-names field from the yaml.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 880bfe930830c..3742e2ab4fb1d 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -49,6 +49,7 @@ properties:
     maxItems: 1
 
   phy-names:
+    deprecated: true
     const: dsi
 
   "#address-cells": true
@@ -133,7 +134,6 @@ required:
   - clocks
   - clock-names
   - phys
-  - phy-names
   - assigned-clocks
   - assigned-clock-parents
   - power-domains
-- 
2.37.3

