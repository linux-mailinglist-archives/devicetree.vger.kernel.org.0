Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56E286B0ACC
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 15:16:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231826AbjCHOQK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 09:16:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231845AbjCHOPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 09:15:50 -0500
Received: from mx.kernkonzept.com (serv1.kernkonzept.com [IPv6:2a01:4f8:1c1c:b490::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC6AA900E
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 06:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=kernkonzept.com; s=mx1; h=Content-Transfer-Encoding:MIME-Version:Message-Id
        :Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=WlXRewEJFvIoy+L9dwIgvESfgt98IneCSo08niNe2CM=; b=kn3LYHhP7CvYm8qMQSx4FNFHBj
        SqsZaqmVNkRJMvD8D2GXl6v6hyyKqTmUl0A+abEibfJwxFtZaUIf6/fOgp9UKlfQ7i4LEoZVzfmlH
        M4o2fgPUXJEmCaIxjV7umAt0PaiqU3YFRO0ZukSBpEwH7Nlp4yaJZLLSNthqg7fbAwynaBpF+vWXz
        DT8qN4SCTW6w4kd413GjH1k9bFnMQ68XFIZW6Z46nxDXuPKUf/078yu4zSh3qcvGJq+IksdEgqfko
        bN0jcERGQA1I43zM2fjrjo1MF/Lcc+Ek+7g0npCuoLV3ZUdNCrnswJGu1ZQmgCtURabCI2Dkb/hSC
        l41+cqNQ==;
Received: from [10.22.3.24] (helo=kernkonzept.com)
        by mx.kernkonzept.com with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim 4.94.2)
        id 1pZt1w-00FCip-0f; Wed, 08 Mar 2023 13:36:28 +0100
From:   Stephan Gerhold <stephan.gerhold@kernkonzept.com>
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Subject: [PATCH] arm64: dts: qcom: msm8916: Fix tsens_mode unit address
Date:   Wed,  8 Mar 2023 13:36:17 +0100
Message-Id: <20230308123617.101211-1-stephan.gerhold@kernkonzept.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The reg address of the tsens_mode nvmem cell is correct but the unit
address does not match (0xec vs 0xef). Fix it. No functional change.

Fixes: 24aafd041fb2 ("arm64: dts: qcom: msm8916: specify per-sensor calibration cells")
Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 0733c2f4f379..0d5283805f42 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -503,7 +503,7 @@ tsens_base2: base2@d7 {
 				bits = <1 7>;
 			};
 
-			tsens_mode: mode@ec {
+			tsens_mode: mode@ef {
 				reg = <0xef 0x1>;
 				bits = <5 3>;
 			};
-- 
2.30.2

