Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD44E559FD7
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 20:07:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbiFXSAx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 14:00:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232005AbiFXSAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 14:00:50 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95C4A4D9FE
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 11:00:49 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id z19so4486123edb.11
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 11:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PVF1kQELJGnzeWwHQpr93Ja3CpfIbtJSBiq/WRe2Aqw=;
        b=yIN36rTJWuMdPh8V2chZVAKTrNjd02evEAOOBG7tnsxPBD9iRKdCNtpiHQlIf3S/+v
         KebiThdpyDKGeT+tocAPjmmfRq4WPnRqv17ZpGKUJFafQ6zbADW/PUJ3kegmq+D0j4iC
         05PzH/EV6QYXtpbQHYaULEw6PrGsYlqAZkxvWjmqZ43FHJfwmK4DhOCwNHTDsPFf7sgw
         adRZxjQc1QZ7ezPre4Tt/xPueepCmNqgPVPqH50irrTonfZg9SEsUeCcHL04ijzfgIwc
         njm/a1PzRqx5k2k7kwL2bTVD0qSCxANDzg4nK9PnT1OAK6Hh1/mRtElmAn7Z0+zg2TGr
         eY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PVF1kQELJGnzeWwHQpr93Ja3CpfIbtJSBiq/WRe2Aqw=;
        b=0UmmqHGxJ/YfAPqKvx2c1mXI6GwEEVOwXZ8JxPwNgKOONNQn66cRbsKlGFY23Vy6qs
         fQlc3tJpmiRKhCRiiQJhA9k7f63Ef3ZSrETKpj6URSqQ6i+YfRBPEhca0TxD6U3czGf8
         IF1wj63CRmrrY7xnlBwLsamadqNArwYXxRdimUXP037YgQlPJZr9ej9djUnie0mPybSa
         j4Vq1fDU2XNDUkub7BswUjR/xPrENVC8TO5crKJ9CsWEBEoZ9pjmHrdcyJrRZywVRtmA
         hecWR1o8di8bKqiIHeTZoEFPxULefWdRqnX1t4MnE7NQipy9yuuYlxODcBPno1vwCI5m
         ThoA==
X-Gm-Message-State: AJIora9C1vSTGtWG4uQ1XTC4hrFe0hnxfVQZRLTEQ6WFZeNzCaMwDnVp
        7KIlRicii1ycSDcQTyBxnGx5XA==
X-Google-Smtp-Source: AGRyM1vWeCRg0q2tC0VvZ87RhPAlSposRAQ4DNwHRzbQ2bGcG2ZksnIijyMyr3BZjrfjTm/kH/c30g==
X-Received: by 2002:a05:6402:2710:b0:435:bf54:8569 with SMTP id y16-20020a056402271000b00435bf548569mr357638edd.165.1656093648159;
        Fri, 24 Jun 2022 11:00:48 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p22-20020a170906839600b00711d5bc20d5sm1420681ejx.221.2022.06.24.11.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jun 2022 11:00:46 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 3/3] arm64: dts: qcom: msm8992-xiaomi-libra: split qcom,msm-id into tuples
Date:   Fri, 24 Jun 2022 20:00:36 +0200
Message-Id: <20220624180036.102510-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220624180036.102510-1-krzysztof.kozlowski@linaro.org>
References: <20220624180036.102510-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The qcom,msm-id is an uint32 matrix, so a list of tuples.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
index 7748b745a5df..15467b697e94 100644
--- a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
+++ b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
@@ -17,7 +17,7 @@ / {
 	chassis-type = "handset";
 
 	/* required for bootloader to select correct board */
-	qcom,msm-id = <251 0 252 0>;
+	qcom,msm-id = <251 0>, <252 0>;
 	qcom,pmic-id = <65545 65546 0 0>;
 	qcom,board-id = <12 0>;
 
-- 
2.34.1

