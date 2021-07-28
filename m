Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 244C63D987A
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 00:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232536AbhG1W0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 18:26:18 -0400
Received: from relay03.th.seeweb.it ([5.144.164.164]:32857 "EHLO
        relay03.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232547AbhG1W0H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 18:26:07 -0400
Received: from localhost.localdomain (83.6.168.174.neoplus.adsl.tpnet.pl [83.6.168.174])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id DEBB41FAEC;
        Thu, 29 Jul 2021 00:26:03 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 13/39] arm64: dts: qcom: sdm630: Add qcom,adreno-smmu compatible
Date:   Thu, 29 Jul 2021 00:25:16 +0200
Message-Id: <20210728222542.54269-14-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728222542.54269-1-konrad.dybcio@somainline.org>
References: <20210728222542.54269-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>

The Adreno SMMU in SDM630 needs this compatible string for proper
context handling and split pagetables support.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 9683efa4dbcb..1e54828817d5 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -907,7 +907,8 @@ sd-cd {
 		};
 
 		kgsl_smmu: iommu@5040000 {
-			compatible = "qcom,sdm630-smmu-v2", "qcom,smmu-v2";
+			compatible = "qcom,sdm630-smmu-v2",
+				     "qcom,adreno-smmu", "qcom,smmu-v2";
 			reg = <0x05040000 0x10000>;
 
 			/*
-- 
2.32.0

