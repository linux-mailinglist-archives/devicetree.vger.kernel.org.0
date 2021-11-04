Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4530444C9C
	for <lists+devicetree@lfdr.de>; Thu,  4 Nov 2021 01:33:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232925AbhKDAgd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 20:36:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231137AbhKDAga (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 20:36:30 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B62C03401C
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 17:29:53 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id t11so6681183ljh.6
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 17:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KwyY4/D7bezVbBRBW5e3v6w/N7ORNMVBOazMTzAPF+M=;
        b=KnpNWOuseBLTTpZa23dA4LUt8VyZsfnJ9xN/IpZFHqPCv9EumZYx4+ZC6JN48Il8UQ
         ryE9dr5EHUR8khM72Xver0pip6kpry9S64kt7Qf4rbNiCWohb7GvQTy5Ku3fF8rKSEcA
         KzrGE5J1Ak+2nO60NFXhp80ii6nXq3fJBAZHwN9ZNvYZexifg99FNj9MogncvNxQA6Qw
         c5ld4EoKPPJOTnvRjBX2WpKqMXvXGh/oYAFNStKmhhWMxV9ShGk0cO19+ANmGPQZiXlR
         NNgB+Sr0Ye9H/b0/kc1kpB6ZnHFixf0qg5LVQMSCzN6qoRhkBvzViQElQxhq8MtW5dKq
         wdIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KwyY4/D7bezVbBRBW5e3v6w/N7ORNMVBOazMTzAPF+M=;
        b=KKIIk94eiH4XRHlmhWuRmdvG38FfIpDtM6CT8wuMtx4r04unJ5J2XGUfDscMWwKgqe
         8WJ4KW3Bm3eU61k9nZEuzWprXuidqhCzyI96xQ0vlGQ+sFmpFlF1cxfxvuiT2DP2zbTx
         XW9RQMmE7PxMdWgjS/5nTwOpMPO57TcFijyqrohJMBdmwJH/M77AJB+lWVLe5sGyYLIw
         MizTOiMcNfAk5TEPjLQMzuLKS/sgBQxd8nrwBKPmnjPhH717pFlaNAOykW6BNleZpvxj
         AGYhGwVNMbrqbvpL3szV+8VxaENRxbTGfSTSxRV/EO2WV9ThNjuukxZVw4lY45jwrHh7
         lR/A==
X-Gm-Message-State: AOAM532k84g1/swVpZBGt3SXKPWM24OE+PBkYKogu3GJxCRZXUuRuZT7
        Pv8v6x7MbgOfxxHgajonRURbdMrB82/nhw==
X-Google-Smtp-Source: ABdhPJxUd+5BjpDN/ny1QhfwVI4BWi+eYfuKy3JcrLP6IdXRBdDO60nOE99aVJe2YFAWzAHGS7FhiQ==
X-Received: by 2002:a2e:85c8:: with SMTP id h8mr36780225ljj.432.1635985792337;
        Wed, 03 Nov 2021 17:29:52 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 188sm329861ljf.71.2021.11.03.17.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Nov 2021 17:29:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH 4/5] arm64: dts: qcom: msm8994-sony-xperia-kitakami: correct lvs1 and lvs2 supply property
Date:   Thu,  4 Nov 2021 03:29:48 +0300
Message-Id: <20211104002949.2204727-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211104002949.2204727-1-dmitry.baryshkov@linaro.org>
References: <20211104002949.2204727-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The qcom_rpm_smd_regulator driver uses vdd_lvs1_2-supply property to
specify the supply regulator for LVS1 and LVS2 (following the pin name
in the PMIC datasheet). Correct the board's device tree property, so
that the regulator supply is setup properly.

Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
index 48de66bf19c4..7cc564d8ca7c 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
@@ -223,7 +223,7 @@ pm8994_regulators: pm8994-regulators {
 		vdd_l17_l29-supply = <&pmi8994_bby>;
 		vdd_l20_l21-supply = <&pmi8994_bby>;
 		vdd_l25-supply = <&pm8994_s3>;
-		vdd_lvs1_lvs2-supply = <&pm8994_s4>;
+		vdd_lvs1_2-supply = <&pm8994_s4>;
 
 		/* S1, S2, S6 and S12 are managed by RPMPD */
 
-- 
2.33.0

