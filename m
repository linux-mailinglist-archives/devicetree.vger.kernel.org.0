Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A785464DE09
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 16:48:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230222AbiLOPs3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 10:48:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230168AbiLOPs2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 10:48:28 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 274E22DAA1
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 07:48:27 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id n1so10332213ljg.3
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 07:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0FBCMfI6MLyMBcUp7QJ4Mt6HQ0Pr+2qKYBVP3YZd0J0=;
        b=QoCbzNXOwNLZs/3wzoj9wq3aJqgVSPiTZgS0dbRTVipPNYaxwpgaU5knXDDYtEcyjN
         /FlHgmmZXuDw+twq8BK122AOf2/RN3BxeVab3oO4OFtgUGJXkCMQ4F4ADTwjz3pdf+Gn
         HonwfcBeUYtCNTRqSqCSw2K1hvBWboULsOY/jWbTdE73RumI/+8k880YuZoR6vhCdpZI
         +rJMI4YKk9e+ra+0Ed763d5IMAvLNSluRvIKaVZl0NFVS/joiGfIP7QMlBBVd1Q0Kjcm
         dUbq+kTH2w26pVfAfl42ul5Or6lALR1kKy4LMoglFvmdpDkt+qSMjkA+KY8SBhXDOSVn
         7erQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0FBCMfI6MLyMBcUp7QJ4Mt6HQ0Pr+2qKYBVP3YZd0J0=;
        b=I5vxBj/qE0/fC6AjRevm9pE89Vm65GQyxEFesdQrF9tTrnhcQfqfjEEHXKEctTLLCh
         8QWkCG/1/1yO4KdCOEaH+IDhUuuK+bJLxPe1dITanbMTvNAAj2K9fjDsq1ZZROwGau+U
         kOtwMu40UAAWmbDsxyEqUaalnX0pEawR/ZXkY4qC77746E26PQeEWurZXSwO6B9eMAu9
         kBaFXtMZ/pDpJrFjCnbGcuAbQ/8/CkfYCaGtt3U1IEDmYxh3n51f0bMr3rppppp9b+ah
         dzmuBdVmApeI8lANJjpoOoku9XNUSyu6q9FgxeYSTqAIZjd5SY0CeF9K1hIiXCtyLkS8
         hfLg==
X-Gm-Message-State: ANoB5pmxcZrDo5aFt5pDgnyJuKgKdQKB6cuUFS6bk4cz1pYLTcJepiUH
        7uUdCRidoaw8cpqVVgLc1ZAyIA==
X-Google-Smtp-Source: AA0mqf7atQJp9a3VCnhj1pKzMlLJYVft6bxTO+Y/UFyJO59nCmN1ejDyrBIiDTjoEYeUtsZF/n3bkQ==
X-Received: by 2002:a2e:a9a7:0:b0:277:3e88:4fb4 with SMTP id x39-20020a2ea9a7000000b002773e884fb4mr9781590ljq.30.1671119305553;
        Thu, 15 Dec 2022 07:48:25 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id bi19-20020a05651c231300b0027a2e0b8766sm875656ljb.9.2022.12.15.07.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 07:48:25 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: qcs404: use symbol names for PCIe resets
Date:   Thu, 15 Dec 2022 17:48:24 +0200
Message-Id: <20221215154824.84198-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

The commit e5bbbff5b7d7 ("clk: gcc-qcs404: Add PCIe resets") added names
for PCIe resets, but it did not change the existing qcs404.dtsi to use
these names. Do it now and use symbol names to make it easier to check
and modify the dtsi in future.

Fixes: e5bbbff5b7d7 ("clk: gcc-qcs404: Add PCIe resets")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index a5324eecb50a..502dd6db491e 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -806,7 +806,7 @@ pcie_phy: phy@7786000 {
 
 			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
 			resets = <&gcc GCC_PCIEPHY_0_PHY_BCR>,
-				 <&gcc 21>;
+				 <&gcc GCC_PCIE_0_PIPE_ARES>;
 			reset-names = "phy", "pipe";
 
 			clock-output-names = "pcie_0_pipe_clk";
@@ -1336,12 +1336,12 @@ pcie: pci@10000000 {
 				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>;
 			clock-names = "iface", "aux", "master_bus", "slave_bus";
 
-			resets = <&gcc 18>,
-				 <&gcc 17>,
-				 <&gcc 15>,
-				 <&gcc 19>,
+			resets = <&gcc GCC_PCIE_0_AXI_MASTER_ARES>,
+				 <&gcc GCC_PCIE_0_AXI_SLAVE_ARES>,
+				 <&gcc GCC_PCIE_0_AXI_MASTER_STICKY_ARES>,
+				 <&gcc GCC_PCIE_0_CORE_STICKY_ARES>,
 				 <&gcc GCC_PCIE_0_BCR>,
-				 <&gcc 16>;
+				 <&gcc GCC_PCIE_0_AHB_ARES>;
 			reset-names = "axi_m",
 				      "axi_s",
 				      "axi_m_sticky",
-- 
2.35.1

