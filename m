Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 343CE78916C
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 00:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbjHYWJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 18:09:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbjHYWJB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 18:09:01 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7997E26B8
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:08:59 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4fe27849e6aso2087071e87.1
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693001338; x=1693606138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+nLuiyKPnTvwmGaqD45VK8kDibcFDjRREh20W1tVUkQ=;
        b=O5AFC+CrRznWPFk5vB3kehaVth/iGshyKIRvXun5q81yCPGeSio0L+0fgfdrL4p+QJ
         9Jz+Gz9bQQWWlDkPiaV8x6qrsSMGSFHq1EfgPwK3McpWz/GFxZUTJD6u8Ysz3szSkiMJ
         KYOowhuvm5RYt5HQPO+6UggI2vPpn5OnmvkQhj7odKDvgxvOimTQ8BuvbCb46Nt/+knX
         LBe1NevB2jbeBZtNgPL8XSbgYrcv9iekjTvCFaiD5Oj83XTIPLZgM6uQrrpDnVHXGSNB
         3LkhjnfGT4/4bQoS1Afme/4YWQ1xuq0PSZkQ6HjNtaWDKLeA54W0VZTMTob/MIQ0hWDy
         zumg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693001338; x=1693606138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+nLuiyKPnTvwmGaqD45VK8kDibcFDjRREh20W1tVUkQ=;
        b=SGWp56YbehYbj+Q7Ydebai7qSAz45qGYwMU/Li6vHMUnj3PoVAJ80fij0+hZiNQZih
         y02+vAt8EGzgbD19WARYxfpXxt2JYS+JC4N9zazIZn3F2kpEoM5m3RFYQuVrAqW/d5wQ
         isnaS9ZZ4FSmFc8onlkzDAtGpPCWf15CyipiTmW/OTwA00n4IBm0nZ1l39TnUZmIkI1r
         qSQIkZFV3l1KhYR33rcKOk2NctlVS6xY/3/bVcWHRxSEWyt9YfA3QjrDQoR8M5AoE4xO
         sixgeSywKQrltRWpCLvykOYmlp1iFUrao4brT/CSjOIP20vwePNhF+WYnxNv02O0B1Cb
         RnjA==
X-Gm-Message-State: AOJu0YyzAondkFlX1l6Mr46lOqAlXR9UZ6WmocWhOH7st+WKUNua7FHH
        xT+8NuAjWqcv+3+zWm/SnFZ1bg==
X-Google-Smtp-Source: AGHT+IENIfg40/rpxmoGXpit5rMC+IlHeiNxX7PqKbrFlq9FgKAQYc/rWpW/1nQkldT7fLQ5qfy6YQ==
X-Received: by 2002:a2e:9804:0:b0:2b9:e1dd:5756 with SMTP id a4-20020a2e9804000000b002b9e1dd5756mr14256159ljj.45.1693001337746;
        Fri, 25 Aug 2023 15:08:57 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u16-20020a2e8550000000b002b9af8422a8sm494951ljj.130.2023.08.25.15.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 15:08:57 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: qcom: sdm845-mtp: switch to mbn firmware
Date:   Sat, 26 Aug 2023 01:08:52 +0300
Message-Id: <20230825220854.1655162-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230825220854.1655162-1-dmitry.baryshkov@linaro.org>
References: <20230825220854.1655162-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We have switched most of devices to use mbn (squashed) firmware files
instead of spit mdt+bNN. Even this DT uses modem.mbn and a630_zap.mbn.
Let's switch adsp and cdsp firmware files to use .mbn format too.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 56f5bf52d9bd..7579ba66c6d8 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -114,7 +114,7 @@ trip-point {
 
 &adsp_pas {
 	status = "okay";
-	firmware-name = "qcom/sdm845/adsp.mdt";
+	firmware-name = "qcom/sdm845/adsp.mbn";
 };
 
 &apps_rsc {
@@ -415,7 +415,7 @@ vreg_s3c_0p6: smps3 {
 
 &cdsp_pas {
 	status = "okay";
-	firmware-name = "qcom/sdm845/cdsp.mdt";
+	firmware-name = "qcom/sdm845/cdsp.mbn";
 };
 
 &gcc {
-- 
2.39.2

