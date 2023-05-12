Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A91697010FC
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 23:18:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240564AbjELVSO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 17:18:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240541AbjELVSN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 17:18:13 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C4C5903E
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 14:17:50 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f14f266b72so9514614e87.1
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 14:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683926257; x=1686518257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UhWJCvsiOM+PbnYgsNzdrZ31BrHJ3YrqzSWfh68CWBg=;
        b=LTCeDjNIPw9zFiuXJu99yoJ6EnntXtG3+RtvRtFiyUPyHdAcDwFqQEyveGm941vond
         0RKkviUk1NZ8eX3A5HRLZfCet6/FFjlj2rmWeRk022gSQjdMCjtuHp7Pyl5Z3KeO+uJ+
         zqOkuNvAx6LJAftmVG6DZiE8ksQAc+xaC92KUMoYPoJrc48iM5Hnw7MwtiGL+YNLsVib
         l+1V5SJmNc1uY2pKe0cnr1roau8Cwv2LiLJC/zh6/a1VS4aM/WAfpZCIcq88Z6iz1j+9
         fdT6r2J8wQGxZwJe7N7DfwVKlMO0y270kBk71hJW4HM3/5gRSPnmBAwCOj8i7RhhgQoD
         jxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683926257; x=1686518257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UhWJCvsiOM+PbnYgsNzdrZ31BrHJ3YrqzSWfh68CWBg=;
        b=LvjBAswVtBUwmGwX/aP48MvsohT6igGnleYq3TZGmrFt0VT86GLa/kkX+X87YUniTM
         nvKuI2HCUmq4hcBZecmBgL54/PVuLmFjNIPih9Nci7Ev3NYNPne5Wv0OqBYEB7jHL49S
         +u5kjFmpyb2WyA/6DexazF9wC3sPdGv0n5tULG0M5k0lVdFbpQaxXyZQfQiiG2c0qHor
         V4GM2esfAG9MBhLAz+Pk/f6vim/xxUCAgNGmPoqG/8BlF9kryKkHj+DD1bkfTn08VNyl
         8Vgmb9dAftODEP1Tv8tY0eAfOGntyz1eDo3FVCMx/duCDWIWLpcIFZkssxJegQVjD/6q
         dVBw==
X-Gm-Message-State: AC+VfDwap88Ng4ES4uzCdG+ezsnFzAFQAtBG/XVeBhntWkYKWx5jQ1Cb
        sIq6F68wy78HmTvj2F/Bzt+VHA==
X-Google-Smtp-Source: ACHHUZ64lNbAweb8iOnKkk1XHLEikx3Xor5qRBwHiMlnolDco6DeWqdIFsODjadj1J5mvoqdPuF/LA==
X-Received: by 2002:ac2:44cc:0:b0:4e8:3fca:4927 with SMTP id d12-20020ac244cc000000b004e83fca4927mr3971478lfm.58.1683926257521;
        Fri, 12 May 2023 14:17:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w4-20020ac254a4000000b004edafe3f8dbsm1590363lfk.11.2023.05.12.14.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 14:17:37 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 10/10] ARM: dts: qcom-mdm9615: specify gcc clocks
Date:   Sat, 13 May 2023 00:17:27 +0300
Message-Id: <20230512211727.3445575-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512211727.3445575-1-dmitry.baryshkov@linaro.org>
References: <20230512211727.3445575-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fully specify the clocks used by the GCC on the mdm9615 platform.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-mdm9615.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index 556abe90cf5b..fc4f52f9e9f7 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -10,6 +10,7 @@
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,gcc-mdm9615.h>
+#include <dt-bindings/clock/qcom,lcc-msm8960.h>
 #include <dt-bindings/reset/qcom,gcc-mdm9615.h>
 #include <dt-bindings/mfd/qcom-rpm.h>
 #include <dt-bindings/soc/qcom,gsbi.h>
@@ -106,6 +107,8 @@ gcc: clock-controller@900000 {
 			#power-domain-cells = <1>;
 			#reset-cells = <1>;
 			reg = <0x900000 0x4000>;
+			clocks = <&cxo_board>,
+				 <&lcc PLL4>;
 		};
 
 		lcc: clock-controller@28000000 {
-- 
2.39.2

