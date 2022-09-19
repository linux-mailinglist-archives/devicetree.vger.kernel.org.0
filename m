Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 401E65BD4FC
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 21:00:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbiISTAs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 15:00:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbiISTAp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 15:00:45 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C35A140FA
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:00:42 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id q17so252557lji.11
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qvHk4DrIbTDxru8F4UVY05nNjanUC/r5WgFJSexSTzs=;
        b=S3K1MnY06Iin84h+SQUYYiyYPA367T77eR74mGsX3BbL6m+LdJHgO88w4u+qieYgss
         6M/l3sOw1N+GmJZoSSr+hvA3LoQt3RzTAfMi0u3CvGrgWOAaPATyTpM0Y9AdUB5kYKOp
         4pIHW9vvj7SysbTZMGaQCkYpNMvlFaAxMCoZt7cZIJe8OiqoILPTEwi+o1ieULxZ4Mil
         uJedLXz2JymE47VvQvnk2M1cOWTplnnfFGbficdQA9lRiXB7rGYt/BWuZcBvR2IUPGCx
         AR+QlbBZu0rcVyVSt6l3cPPx1ZjyZHcmQMH06KC+UBhSmNKqIFaNhOkqfvJUKKq2/Byc
         bDfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qvHk4DrIbTDxru8F4UVY05nNjanUC/r5WgFJSexSTzs=;
        b=UxADFbAzZ2pdcZrvBBN7PdxfvVMkWKzgFCjyInA9DIXl+r+jFaS7kgCoix4LIfISEq
         Ue7QZ2ScoOOZF1/sxFBcNnS/RPCkRhf5goXakUdmBcaU1GIuFLMdeldMiQZNQ0cFCeti
         S4Zea5M/wtG1WKzFpi4a4K7Xjq0qhPgtWwnX6TUkef11RiraI7NNR6/qf0ouO6IXqNfR
         D9mIhWIKHKfP7rbrdh/Bb2cdaLKa9/mr8Oj1nL+pP1+F9wREmP2vZucAIdhnfEmyh8y/
         Ym7w9A7+PPqcq2NP51p6o8J6FMosXuwbvM7+d4ffVDEYj51uCZ5rPe4aM/uQ1pqOL3rz
         8l/g==
X-Gm-Message-State: ACrzQf0ATlDYG+m/vPNb4tp4huJOF8Udv8Oz38joJ8GOdsv5kbRiqAP9
        9biE5Jojvu2cXoQ82gZjHNUqpw==
X-Google-Smtp-Source: AMsMyM7S6QC7UXumu9YciNWFn6RO8IIjaLIKqDl3HvMGfr1SPNrU9dwZOKv21sM/HDdkjmSToixbSQ==
X-Received: by 2002:a05:651c:4ca:b0:26c:50be:5df6 with SMTP id e10-20020a05651c04ca00b0026c50be5df6mr1769381lji.177.1663614040399;
        Mon, 19 Sep 2022 12:00:40 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u12-20020a05651220cc00b0049a747d6156sm4878907lfr.287.2022.09.19.12.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 12:00:39 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v1 1/6] arm64: qcom: dts: w737: correct firmware paths
Date:   Mon, 19 Sep 2022 22:00:32 +0300
Message-Id: <20220919190037.2122284-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220919190037.2122284-1-dmitry.baryshkov@linaro.org>
References: <20220919190037.2122284-1-dmitry.baryshkov@linaro.org>
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

Correct firmware paths for the Samsung Galaxy Book2 to include the SoC
name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
index f954fe5cb61a..78eb967041e5 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
@@ -124,7 +124,7 @@ spss_mem: memory@98f00000 {
 };
 
 &adsp_pas {
-	firmware-name = "qcom/samsung/w737/qcadsp850.mbn";
+	firmware-name = "qcom/sdm850/samsung/w737/qcadsp850.mbn";
 	status = "okay";
 };
 
@@ -336,7 +336,7 @@ vreg_lvs2a_1p8: lvs2 {
 };
 
 &cdsp_pas {
-	firmware-name = "qcom/samsung/w737/qccdsp850.mbn";
+	firmware-name = "qcom/sdm850/samsung/w737/qccdsp850.mbn";
 	status = "okay";
 };
 
@@ -385,7 +385,7 @@ digitizer@9 {
 &ipa {
 	status = "okay";
 	memory-region = <&ipa_fw_mem>;
-	firmware-name = "qcom/samsung/w737/ipa_fws.elf";
+	firmware-name = "qcom/sdm850/samsung/w737/ipa_fws.elf";
 };
 
 /* No idea why it causes an SError when enabled */
@@ -395,7 +395,7 @@ &llcc {
 
 &mss_pil {
 	status = "okay";
-	firmware-name = "qcom/samsung/w737/qcdsp1v2850.mbn", "qcom/samsung/w737/qcdsp2850.mbn";
+	firmware-name = "qcom/sdm850/samsung/w737/qcdsp1v2850.mbn", "qcom/sdm850/samsung/w737/qcdsp2850.mbn";
 };
 
 &qup_i2c10_default {
@@ -696,7 +696,7 @@ &usb_2_qmpphy {
 
 &venus {
 	status = "okay";
-	firmware-name = "qcom/samsung/w737/qcvss850.mbn";
+	firmware-name = "qcom/sdm850/samsung/w737/qcvss850.mbn";
 };
 
 &wcd9340{
-- 
2.35.1

