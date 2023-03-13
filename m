Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB6E36B7E04
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 17:48:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231307AbjCMQsI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 12:48:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231311AbjCMQsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 12:48:00 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0399CDF7
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 09:47:57 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id i28so16575611lfv.0
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 09:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678726076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GB5+MgNzUoww1LduPsj/kA1u8asZ8xGKu+ucqi8DqkA=;
        b=saaEbbMiGjRacuwvYysT+BROdK1stmsdZL70/GHxPboU46EUY3gFk6AAF/oQIughy+
         rRDsjZa5xwpR1/w6b6L9RHiuIkzPW9JMZp6EWuwYjPAP1s9cuVRXuK/KltzkjHWbWtpo
         hoF7cv8YxDioFordwv0eLElHaMyFLA+OQQaI0phNLfO6aoMdqI9jQkJbRkahlbV3kxlh
         I/nu7l8LFAM3jwoUik1C2oGAumgQ2dQR42+PjQWBqt/uvi/ZQ3+OdalG8HXpFutgPydv
         urfuEXcgKfFya08b3+qJsEbVtkmBjOQumsO/IvnLo8MTvMIuL7Q3catKD4Ncb5xaZssi
         T1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678726076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GB5+MgNzUoww1LduPsj/kA1u8asZ8xGKu+ucqi8DqkA=;
        b=jDF2u7Np4TTRsz6CdVD9svVpVUh4tHDwDfJ7Rx4dHjbAGTujAF/mg4w8QMP17/UHmk
         eosMCOdMjEoo+cgRBsZVDg3sF7z+UV08Bi/OA9nVNQYRgOwQLNINgteZ2C4J8pcRzdRu
         kytsLRiGsh8QqmaMgc1zLrxduvnUNMIaAmqM9QcnMgGM+zFwTrYviAMlDany7ApeyYxN
         1okBWNSEarXS/poGIfWNdPI77212jk0s5YHaoGsuYpumZ1In0LHIlOkP8JoG3+4BQywn
         1Bn/rp0/EIEeo7YNBggg46acnR0mEWiqk49va+42ieJ/QiZBmzVSVIdsP+tI9mhEaTKz
         kjng==
X-Gm-Message-State: AO0yUKWlreAye/7JqpCIid3BAcoHdpHPBbz+3zz5E4JLR6padjixWhTE
        gkgF6TyVu7fv6inAtCkN3PT28Q==
X-Google-Smtp-Source: AK7set9sCAp1oxYJKx9RuveTlDxKq2oCYlhvPPeifyP+2zU778CadiIN1f7uH8pJ12ffi5k8eB1Hgw==
X-Received: by 2002:ac2:4a72:0:b0:4ca:fac4:5a34 with SMTP id q18-20020ac24a72000000b004cafac45a34mr10259878lfp.61.1678726075941;
        Mon, 13 Mar 2023 09:47:55 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id o9-20020a05651238a900b004db48ae69cbsm18134lft.206.2023.03.13.09.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 09:47:55 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 13 Mar 2023 17:44:20 +0100
Subject: [PATCH v3 5/6] arm64: dts: qcom: sm8250: Add qcom,smmu-500 to
 Adreno SMMU
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230313-topic-gpu_smmu_bindings-v3-5-66ab655fbfd5@linaro.org>
References: <20230313-topic-gpu_smmu_bindings-v3-0-66ab655fbfd5@linaro.org>
In-Reply-To: <20230313-topic-gpu_smmu_bindings-v3-0-66ab655fbfd5@linaro.org>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678726067; l=837;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=fDzp/6YnfTrRmkZHxWUQXIGpdeCMrs4IC6LBNSCvx9M=;
 b=oYA8x3dZFacSEaO5HD4/R9aKdOdYV+N6P3elUE4qOCAKdBKuuo6Su2jDD8IPb3edElmfRLKLMZyH
 L2Aod54rAhAs9XlBwWbkSAk6NaEL97TbuOwcow/A64HPvWlVaIqL
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the fallback Qualcomm SMMU500 compatible to the Adreno SMMU.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 2f0e460acccd..044c8c1c9d48 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2656,7 +2656,8 @@ gpucc: clock-controller@3d90000 {
 		};
 
 		adreno_smmu: iommu@3da0000 {
-			compatible = "qcom,sm8250-smmu-500", "qcom,adreno-smmu", "arm,mmu-500";
+			compatible = "qcom,sm8250-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
 			reg = <0 0x03da0000 0 0x10000>;
 			#iommu-cells = <2>;
 			#global-interrupts = <2>;

-- 
2.39.2

