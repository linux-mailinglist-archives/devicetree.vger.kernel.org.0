Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CDA4704275
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 02:53:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245528AbjEPAxQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 20:53:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234683AbjEPAxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 20:53:15 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE4FD9D
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 17:53:14 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f14ec8d72aso13492634e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 17:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684198393; x=1686790393;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KYFefbvAKdLmrbtQItz+DnXN4dowsh1ByYhd/wrlwx8=;
        b=dc7sSrVJMUw9cOgswSUDasLW3hkuinDUDvdNb9MNaQNVwnP7p5zcZLrMbEXG0mdUWr
         jGita/R09PX3T194MxU+M2DvarG3QEMhNOUhxg/tXO2sP8/od1HOYhlWL6AK7ZTUlFOa
         hgjs5iZka+yyKfehTHBtwWwSqkGUwTTXRHuMNbZBWwbUVVimcvMT9YnZI6+NPk0d/Dhq
         lJJjRc59bL8OVqLyP6rxbMxj/e4ETAGEAjDiRnmcaXanjGU9QOEq3VrqSFDG5qBEZ0Tu
         zeLFrulKFmbElAVFRLJ3VosylMYl2KQhbQK9+fRraToo+KSJOP7+uXwonJvFPkomuVB2
         DGtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684198393; x=1686790393;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYFefbvAKdLmrbtQItz+DnXN4dowsh1ByYhd/wrlwx8=;
        b=BbppfhnTpxRCMFmU00l5ktt5uVVsXkGgldlShb+t100q/tKF2iTZH+jJykuPZTvcVN
         zEvCCHEGapUejolLN5byOU5u/yzj0FxY0S63YIaCsNXq0i71GMY9OTWTIqsKYCQptjwF
         8euFxwl8eaM7Kabcl74q+nfNMFT7zgsX/98NDiLiovggBgCEDeSNndMEbIXqAWE4T3Nr
         dDSC+iPZ0KmcwSr3I53pGyr2if9+X58+nXmIEJ3d3fA33bMQgBovaJ3dM8o+ofIeT/lC
         OEHmXEWo24X6G/wGKkw44DM8RN/QNwbiYVu5YNEMJ04ZwwuKmmX/Ky71bzKIlAB8rxLZ
         g/bQ==
X-Gm-Message-State: AC+VfDwsH+pbN69cP29P4lqk9mVxUesEmcV/W+QwDqoG97gPGbL9daTo
        M2efZlCr7CFz66o+YJ1n8fIArA==
X-Google-Smtp-Source: ACHHUZ4K3kdNas3Da/ObcCzJysW9zSfE4h4RKYaEWW0toEqCW5bCFUEaL93+bkKo96Lj1tJ+NMSSNA==
X-Received: by 2002:ac2:4d03:0:b0:4f2:391f:e9a3 with SMTP id r3-20020ac24d03000000b004f2391fe9a3mr8692936lfi.3.1684198392906;
        Mon, 15 May 2023 17:53:12 -0700 (PDT)
Received: from localhost.localdomain (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id 17-20020ac25691000000b004ec88128dc4sm2812286lfr.68.2023.05.15.17.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 17:53:12 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8450: Add missing RPMhPD OPP levels
Date:   Tue, 16 May 2023 02:53:06 +0200
Message-Id: <20230516005306.952821-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We need more granularity for things like the GPU. Add the missing levels.

This unfortunately requires some re-indexing, resulting in an ugly diff.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index b4fc6abf8d8a..d3ac5644232b 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4195,31 +4195,43 @@ rpmhpd_opp_low_svs: opp4 {
 						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
 					};
 
-					rpmhpd_opp_svs: opp5 {
+					rpmhpd_opp_low_svs_l1: opp5 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
+					};
+
+					rpmhpd_opp_svs: opp6 {
 						opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
 					};
 
-					rpmhpd_opp_svs_l1: opp6 {
+					rpmhpd_opp_svs_l0: opp7 {
+						opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
+					};
+
+					rpmhpd_opp_svs_l1: opp8 {
 						opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
 					};
 
-					rpmhpd_opp_nom: opp7 {
+					rpmhpd_opp_svs_l2: opp9 {
+						opp-level = <RPMH_REGULATOR_LEVEL_SVS_L2>;
+					};
+
+					rpmhpd_opp_nom: opp10 {
 						opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
 					};
 
-					rpmhpd_opp_nom_l1: opp8 {
+					rpmhpd_opp_nom_l1: opp11 {
 						opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
 					};
 
-					rpmhpd_opp_nom_l2: opp9 {
+					rpmhpd_opp_nom_l2: opp12 {
 						opp-level = <RPMH_REGULATOR_LEVEL_NOM_L2>;
 					};
 
-					rpmhpd_opp_turbo: opp10 {
+					rpmhpd_opp_turbo: opp13 {
 						opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
 					};
 
-					rpmhpd_opp_turbo_l1: opp11 {
+					rpmhpd_opp_turbo_l1: opp14 {
 						opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
 					};
 				};
-- 
2.40.1

