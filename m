Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A6875AF8C2
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 02:01:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiIGABR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 20:01:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbiIGABP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 20:01:15 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E90F80504
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 17:01:13 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id e20so17732021wri.13
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 17:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=+tH0+5cmMinJY7FmmCFIkbSwQc1QUXigmKybnusy4h0=;
        b=J9gJsJkwX15Py548spAV7VOgBvygZ0QxUCWUn0tstC/hSHymj15HzcfxHZDaN9GfUu
         BDqMG92ZBliz8DAZpYtiOP+z1xQ7bvjlJiZ7vpgmiP6se73RU84bGmL79sKLbPg/y1s8
         GiGLhzsXxzrVIH423CIBU1QgWozMsdmd7jBkkceENSU4hz9Ubv9lA3InH7YPaL1HVKEA
         cD4J9mSnUtZPvRddwH282ukW6OYdyA3lf9vCCsgZLmw3QurWDTWCZbqyTUGvkBsECgTp
         uc3GHARrQWdDo9+C4Vjhd5Y87M7JGH3zrU94Xh7rFXm4ZALiOcxWIHc5WFe9AnDPNnV5
         mfoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=+tH0+5cmMinJY7FmmCFIkbSwQc1QUXigmKybnusy4h0=;
        b=tpmenWmdn0pnlQTNcJfGjnFoY+/iVe+xSJaDMguUZLt/Mm57Upcg4wTFCPGJ2Fy6ot
         4A3YlsYLYZP3gGEQbOCzBhhySFQtWRovBhI/Cfn/oX/KnIQqrmdE5YoXmO7H8CzO0+/2
         RQdsiUhBfHmPEKTgD9hYjdPCsDySC0aEAeFJ9tWGZ+yjuLBUvtFOkTNTgY0Gs3B3GOXE
         k/0zc32rUWaRBLDDv85Tz4Mb1cwtOtkFmEDb/TsKPG42hIt+Dojz3QEjHhLomQPkkcni
         kseyNSFsNOOnIhKMLyzDrE9vkWNQscgnw3HYtgiI+XO5ww5MSaHTsejXaq4o4lYPDaNP
         QHjg==
X-Gm-Message-State: ACgBeo37IF6QFQJaQSWEq8NTOm8nZ/CfR1tclXwDDHr/fz1UHAPVYgIp
        mE9+TCH7srPueGayL4vixTUBPA==
X-Google-Smtp-Source: AA6agR6+CusdbfsZHpK84uR2/lNh/n5YV88mExLn4rFS28dPtNx1yz8zrvVoHxlM1DhdPBFQqmBVNg==
X-Received: by 2002:adf:ea4a:0:b0:228:635a:d491 with SMTP id j10-20020adfea4a000000b00228635ad491mr434902wrn.137.1662508871967;
        Tue, 06 Sep 2022 17:01:11 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id g13-20020a05600c4ecd00b003a4c6e67f01sm26848613wmq.6.2022.09.06.17.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 17:01:11 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_mkrishn@quicinc.com,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH 04/11] arm64: dts: qcom: msm8916: Drop redundant phy-names from DSI controller
Date:   Wed,  7 Sep 2022 01:00:58 +0100
Message-Id: <20220907000105.786265-5-bryan.odonoghue@linaro.org>
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

phy-names has been marked deprecated. Remove it from the msm8916 DSI
controller block.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 7a9882e39e905..f0f457688f3a4 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1032,7 +1032,6 @@ dsi0: dsi@1a98000 {
 					      "pixel",
 					      "core";
 				phys = <&dsi_phy0>;
-				phy-names = "dsi-phy";
 
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.37.3

