Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9315F5404E2
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 19:19:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345835AbiFGRTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 13:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345751AbiFGRTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 13:19:13 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB4EB1053CF
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 10:19:10 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id h23so25483110ejj.12
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 10:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JTakNFUAlJ+9+QijuO6iyqkTb1n2200p/o3oEjl4QAI=;
        b=oLDUADkWI7zj8fKLuPWyCXEtD3hxx8wr/y4HavmaRBiKFAZE3sUGOpuGF+dpxUEnrz
         r0QiAuyCyc99yOvxTKcF1+df/D63bQdBjnfmjGyhUGWhpT+RNEbITil3fuWtW3Le7bXy
         u3VchKVZMiUxUISD03NCtOMIcjjsA8m1P36itoqc/IHdYnmJhLrB98RFpnR/eexXWeYj
         QbsXS7B68/Ul7OI7wBzhjMQtBAZq8Zpf17b8ajNxNI/Vvf5tJ9Lxlqbjjx/jWyFrWbUG
         VtpmBJqFs9Oh/x7Hi+lFsF+vBdUAVlzKwbQZBOl/mTy0gt0da6PXV9y/OEDrDB0URrgr
         bF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JTakNFUAlJ+9+QijuO6iyqkTb1n2200p/o3oEjl4QAI=;
        b=4i8hGnOo3jgMpTldQSbTk/B0HDpMjOoCuvvSswKhhF1b23tamLY/dV1DpU0qhCNRw0
         g11QbmYCxgOtUuMDIToWwwNvoCYW8vGJI89P9h+gOx6BgslfTm1ei1xPp7E0N7hG5Z0f
         4sRioKFqFFttSz8IEqTSBCeUlxiMZw18gBFyE6ACLU39OcSCCbvIINXSVdW+UbWfBxM9
         1niDrn9cNdmffAGTXjPk5/mP7u86berczXqfsedITSV9NEGUCVCCaolkwdr0CPZKryBq
         H6eWWsl2XSLShJfmF7oTEW+W5Fl02M3S9RWFDIECCFtF3HppgS9UEQ4Ki+ObIES2T4GP
         eKhw==
X-Gm-Message-State: AOAM533MBMBiKNK2VkkwSAgxqbuB4TGib/1XtXiES1ZafXffbe1UeM+f
        LgQ3UDjJQkAZG8p9ObMDa/6wcw==
X-Google-Smtp-Source: ABdhPJxLHbqw+at64Zdxj3zFrUnGGT0lravZ0FT1iFC6rCWrK2xpKqKpZk4ZZkH2s8rvJ/aptLE/HQ==
X-Received: by 2002:a17:907:a0ca:b0:6f8:5bef:b9c with SMTP id hw10-20020a170907a0ca00b006f85bef0b9cmr27872089ejc.630.1654622340475;
        Tue, 07 Jun 2022 10:19:00 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i7-20020a170906444700b0070e238ff66fsm5876540ejp.96.2022.06.07.10.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 10:19:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Brian Masney <masneyb@onstation.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 09/14] arm64: dts: qcom: qcs404: add dedicated IMEM and syscon compatibles
Date:   Tue,  7 Jun 2022 19:18:43 +0200
Message-Id: <20220607171848.535128-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
References: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
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

Add proper compatibles to the IMEM device node:
1. syscon to allow accessing memory from other devices,
2. dedicated compatible as required for syscon and simple-mfd nodes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 1cca749ac9fb..7b5d3e1ddfc4 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -1103,7 +1103,7 @@ blsp2_spi0: spi@7af5000 {
 		};
 
 		sram@8600000 {
-			compatible = "simple-mfd";
+			compatible = "qcom,qcs404-imem", "syscon", "simple-mfd";
 			reg = <0x08600000 0x1000>;
 
 			#address-cells = <1>;
-- 
2.34.1

