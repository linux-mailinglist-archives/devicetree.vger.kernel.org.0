Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8940856B535
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 11:17:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237666AbiGHJRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 05:17:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237784AbiGHJRB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 05:17:01 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A2328E0A
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 02:17:00 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id d12so12013352lfq.12
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 02:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VZs4kXHK9xbLHkrqMGuJyZ5VoLx/pQiEUX4aKEkcY5A=;
        b=rEaQt7wL0V598Kwbau7WXouKDJNh3OYqBOaWnbtH1qBkKauaiEujomY+8PtDLlLww2
         uY7Jly2CqOdazTf/20O0v1lJJUT9pgaZmCyjjP9mOHUUw4JdSc91PJyz7HZCf14nOlfh
         ZDV1yXgFCSVDr58GHWG/6tsBBPHzI2v/su2asca3VD25b07gCkedGOUZJvLWQWCORAWe
         xvy2QPi8BL7R3O8YW0pSwJBk9+91++twuDe+R/YEdVIK0WMgeFbTvluWiAeUbc3yYfC/
         Xv+hgt61RnCgIJhBBl64rAinFfQLSzBpolktMThDOyqs+u/AdRsycuIt+0BZG4/PBNIa
         0I/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VZs4kXHK9xbLHkrqMGuJyZ5VoLx/pQiEUX4aKEkcY5A=;
        b=ZmcwZ4PcaERtpqkwEYH3+mFiEbvAV7pv8IL2IHym7f2awpC6zLkMLI4v61AVLQ8+8j
         UHy84B7JDI5yCeC8fvZDPMrDV9Sc1U932GLW0jGWYBwqhtWkKKdDbum39OYJW6shdrNt
         Jj1hvd1Sei9goiM+l1hHs9lCVrSpfvcvU11gzN2TIzscFYFIo75ywkA4EC+6b1XNWUJE
         taqGJAvslHPB1pjU+2PczFJdXng29GQcwJKhXvsGtXFLcoe6dvGiMQmeKz7NVwrQ6VC+
         YYARYlQEkF/LGx94mGDIk4PL44xb8BYtkvW2Vj4SkGULO0L2rBmadRCxc5FyJrDGQopN
         o5NA==
X-Gm-Message-State: AJIora9tf8x/EiP+LRbtqldnuD1SNG1ra9wQbFw3sScqjwOnrhbbbiLX
        JI0pVlOwJ2EgQscmFj4OdyU+Ug==
X-Google-Smtp-Source: AGRyM1tmv0KYYzEE5/QuhQCXbUC+Osul/FRTo6hL40JRJbkhGgJqSrK9zzxvCo8FNnJtZ8/Fxxx4Xw==
X-Received: by 2002:a05:6512:1587:b0:481:1946:8e1c with SMTP id bp7-20020a056512158700b0048119468e1cmr1824425lfb.163.1657271818621;
        Fri, 08 Jul 2022 02:16:58 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d12-20020a05651c004c00b0025d52cb8c0csm567651ljd.31.2022.07.08.02.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 02:16:58 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: sc7180: rename DPU device node
Date:   Fri,  8 Jul 2022 12:16:55 +0300
Message-Id: <20220708091656.2769390-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220708091656.2769390-1-dmitry.baryshkov@linaro.org>
References: <20220708091656.2769390-1-dmitry.baryshkov@linaro.org>
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

Rename DPU device node to display-controller@ae01000 to follow the
DPU schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 72994f599825..e63b4515453f 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -2911,7 +2911,7 @@ mdss: mdss@ae00000 {
 
 			status = "disabled";
 
-			mdp: mdp@ae01000 {
+			mdp: display-controller@ae01000 {
 				compatible = "qcom,sc7180-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
 				      <0 0x0aeb0000 0 0x2008>;
-- 
2.35.1

