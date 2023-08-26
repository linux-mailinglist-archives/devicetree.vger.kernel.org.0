Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 637117899AF
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 00:20:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbjHZWTv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 18:19:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbjHZWTY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 18:19:24 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86DBD1BB
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 15:19:21 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4ff8f2630e3so3136821e87.1
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 15:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693088360; x=1693693160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zEwIPlTV6qxfqZM8MaZOGOzma6eROBWXempa4AAvEfs=;
        b=NjP6Xa24i9AQpuAqcMAyLd3Nm4F4xLuAzKeVvSDSG38h0LXpH9fTEQcUAi2J2E7VG5
         qalFuZoUhHxtIJoH8p682056l2CY0dqAJYrNhtXMwRZKAAGg/HK6ZdPSS8cFUqEviUox
         hdHVHlAS0CA+ZXmg464/a/F1iB8uybGSt4RQa8tKwcKvafBfgaSOIuF0bk+CDp/Zam46
         vQm7F8wVqtsP2GMre4a35DDToZTVnjil6hcFtg3sCZ2YYg9k1PxNZUg/3/JDF1dZZ9Q7
         IhdunR94ZjC98/m6B7JBhT2e1NNPr7y2w6km/+i7fvzo+3bXhZ/rwsciub5cA33nfuyi
         xSPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693088360; x=1693693160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zEwIPlTV6qxfqZM8MaZOGOzma6eROBWXempa4AAvEfs=;
        b=OMeWXDMx+R7NMs523OGVbCrY6XMEJ2Eo4r+uB8sRYCtZVJ7ruqCcQbuAnLp9s5NmtI
         o22EkGSjRHdp21U7u2fPyOCwjrDiMwZcFDIts/YLhffhh7t7jfMh3eNHq1lS6/i3t4eF
         ZncyeDIZM0Tvi74ZeDVLzYIcQtg5p5pZ4COzsXwBHw/gKye/6n70VeNeEA+mEdWVc3GW
         HoalD1yoM7hkOYNMslD3fWDBt0U9Fof7BCpmPiV9cCvCwsAcWH90uMOktD200MpCBv0f
         3C6WMLZ54ox2aVINZZEe/1LnQGHvFIDCuImnMrqpLRdNafkxN/QdSIQ5D1WuA+1i7V8l
         dAKA==
X-Gm-Message-State: AOJu0YzQBu59kORFu47k0pbns8gvQMB4ljvIsW6zCv381YGRhbaTLWhQ
        ZG/mks3KIOgD8Jr34f0z3Wjr7g==
X-Google-Smtp-Source: AGHT+IFuvMwwhMYay1wPzuauPRXC3/YFVxdMbTtBPLh7JHyGfOmwmfTWQVVVn0h5FWsZ8lBz5E3a2Q==
X-Received: by 2002:ac2:5f8b:0:b0:4fb:8ff2:f2d7 with SMTP id r11-20020ac25f8b000000b004fb8ff2f2d7mr13394021lfe.45.1693088359837;
        Sat, 26 Aug 2023 15:19:19 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id f25-20020a19ae19000000b004fbad341442sm868672lfc.97.2023.08.26.15.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Aug 2023 15:19:19 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 4/5] arm64: dts: qcom: sdm845-mtp: enable Vol-/reset button
Date:   Sun, 27 Aug 2023 01:19:14 +0300
Message-Id: <20230826221915.846937-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230826221915.846937-1-dmitry.baryshkov@linaro.org>
References: <20230826221915.846937-1-dmitry.baryshkov@linaro.org>
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

Wire up the Vol- / reset button on Qualcomm SDM845 MTP board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 7579ba66c6d8..aec3f358d426 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -609,6 +609,11 @@ quiet-thermistor@4 {
 	};
 };
 
+&pm8998_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
-- 
2.39.2

