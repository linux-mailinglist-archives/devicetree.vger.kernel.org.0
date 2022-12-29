Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60850658B78
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:15:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232879AbiL2KPe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:15:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233085AbiL2KNQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:13:16 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AECFD13F02
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:05:18 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id bf43so26890652lfb.6
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vi6tcI8bHyA9S/bOSi1wpPh2ZLAvYqA78JsW9WBoa6M=;
        b=yTs5cP+DHZp/DBZjAkLQVtKuJOpND9KFE9C1Q7WRQkf9GzjnZzBcs33yzkhe5bPBAS
         Pkr6LODyxkEoW92e0XvZr1E8XjXrv3QlHoV43axXxQjpSw3ot64cAEvV3RmWuKFQf+0G
         Y7AvCUxloWX44apGMGZMIg+5lZtPpG62BzAPxsX5ged+TSI8X5hhfZDGEB2f1wtVm6X2
         Bc0/95UaLoZQtnMtKrUQQo0CD95VdnKmZ2LXeg9nWNOc7KpXWHYF0zoa68MKKKE+5NRD
         jRGiTkhnHndR9sxTznNi39skuJVUGSsuBofbcwmdffzRvQTA+Gm+QHt0o19pZGMS2n5z
         enjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vi6tcI8bHyA9S/bOSi1wpPh2ZLAvYqA78JsW9WBoa6M=;
        b=AtJ+1GDaepUgz+mWDXHKn1Hydejhu9UDQEQ1EoBnReV+aWtiUBJK451GOKO1AR0Db8
         mJhXA65EOT8YT0al4D5MgIbZIoRrUE5cPW2HgIVMdiveB1xofXXxhcL2kSjQ6nMYQ3iC
         N75iiOi7BLtXQ9ROEdTaXK8vBLu9DMvguNFlHW/eYJgIODhXV9P/cIWC+y641/D0CtXv
         TxNfVnvjxLXp1FX1YS5aHkv20CLKuDOrWZ/2P3eDuNdt7pkOKVDntOfEb2jp9Jwg8pG6
         AxnOD/U6QHCpzEydkZVhZXX4BebmaTbXxW+1AFXp3EOB6wpVsNOB2+LfmSWWx5f3n13+
         mNXw==
X-Gm-Message-State: AFqh2kpY7K2g2TVtRCyKiAN3nW36N3IBfxvIGiFHuzvFq6SGIm+lOPyB
        6XqbS4erUrbniMd+5rCvnIg+hw==
X-Google-Smtp-Source: AMrXdXuNTAP7gHozY4pQ3hHtDlF5oK3rbEgOcGNXc7qqJxgpYxvJVPdcIYzICa4Bpl87HcNBnNwFbw==
X-Received: by 2002:a05:6512:2394:b0:4b5:987c:de3e with SMTP id c20-20020a056512239400b004b5987cde3emr12138705lfv.69.1672308317047;
        Thu, 29 Dec 2022 02:05:17 -0800 (PST)
Received: from localhost.localdomain (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id x2-20020a0565123f8200b004b590b0c084sm2959896lfa.3.2022.12.29.02.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 02:05:16 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: qcom: sm8150: Add DISPCC node
Date:   Thu, 29 Dec 2022 11:05:09 +0100
Message-Id: <20221229100511.979972-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221229100511.979972-1-konrad.dybcio@linaro.org>
References: <20221229100511.979972-1-konrad.dybcio@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Years after the SoC support has been added, it's high time for it to
get dispcc going. Add the node to ensure that.

Tested-by: Marijn Suijten <marijn.suijten@somainline.org> # Xperia 5
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v1 -> v2:
- Pick up tags
- Remove required-opps
- Move power-domains up
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index a0c57fb798d3..c7935f7a2926 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3579,6 +3579,29 @@ camnoc_virt: interconnect@ac00000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		dispcc: clock-controller@af00000 {
+			compatible = "qcom,sm8150-dispcc";
+			reg = <0 0x0af00000 0 0x10000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>;
+			clock-names = "bi_tcxo",
+				      "dsi0_phy_pll_out_byteclk",
+				      "dsi0_phy_pll_out_dsiclk",
+				      "dsi1_phy_pll_out_byteclk",
+				      "dsi1_phy_pll_out_dsiclk",
+				      "dp_phy_pll_link_clk",
+				      "dp_phy_pll_vco_div_clk";
+			power-domains = <&rpmhpd SM8150_MMCX>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8150-pdc", "qcom,pdc";
 			reg = <0 0x0b220000 0 0x400>;
-- 
2.39.0

