Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EE8A706997
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 15:20:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231863AbjEQNUG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 09:20:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231954AbjEQNTz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 09:19:55 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACE6519B
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 06:19:53 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2af0f1301f7so1903141fa.1
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 06:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684329592; x=1686921592;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Snql9fZTVzGEa4100bCYfNArEVQGFmNQcHmddiMGNsw=;
        b=PSGPQwd7aSZF8vck4JAqV1uQpBjlGBgWdQZ6ndjUP7T2xNHy+zCY+wfDzBfTwFrMxP
         0/kgOqZcWegzG4/b1Y1mLSWaNdLEVvrizOc5zuU76NN7iQ0btqGV0MTEKXnVGaY9yb/E
         CZ6fysvS/D9Amb3yM9oHPXanEmXHNe1NIjSWjzp/UnkfJYcObcmMFwuE8y+nFsp2I7A5
         BK/y+vyKMx9IILqsYWlh13yJZVlIxLKtluTOCj8RKnylFbHoUycslBW2rJyU/7moWXQb
         TAnFeJSkdopJl5U3L3jeZqHHYIyoQjly2FQMG9+WaS9wDoXYigySG0XZrbogifmy/C5+
         sFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684329592; x=1686921592;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Snql9fZTVzGEa4100bCYfNArEVQGFmNQcHmddiMGNsw=;
        b=k6XxeXq6kM+4M2TJ5bPDRhpo9ZvnXks+DLewYs+euV0np4sn3C1uwFQyAaHIzlSttK
         YGgxIggYC86NfN5rM50/5hqhvBkGNIxfYTohWFsou1tAr29UhvEzX9IEHhD6RhPZB6eZ
         zrBLeLFA3Xtua2wgC4x6RNBDlC9O5o3zqBqoSkMRirzVVEe9NOj6jDl0/qlLoq5MUVod
         9IV0K17H4+aT1ULYfdXDYBxCkh2gDFQq/M/Tblovv13KPmXKXEEj+lTgJSSqlk4dKxv2
         deL7uoiq8T0p0t9o9prRXXsRgSpCOGxjFUPiDSAMLhzkg4Y+3QnJM2uodZoodUK7LtLe
         iRjQ==
X-Gm-Message-State: AC+VfDyEYQoz3RsGL9/UrxW/FWl0EUPzcRMt3PjCxhllcMPRuFjJ8oOT
        Tq2/Xw9HSxZQrqLoueuI5SVVW0jgS3h6qA7uc+8=
X-Google-Smtp-Source: ACHHUZ5MuTqRjz5JXlvl6zJHyFZFGPTDjgIffWQ/g5V7+mY4ajzFZBKqGtG1RaGX8p9PqwVz0QksoA==
X-Received: by 2002:a2e:801a:0:b0:2ac:67f7:25a2 with SMTP id j26-20020a2e801a000000b002ac67f725a2mr8993656ljg.50.1684329592065;
        Wed, 17 May 2023 06:19:52 -0700 (PDT)
Received: from [10.167.154.1] ([2a00:f41:c93:874f:be7b:fb6c:26f9:307c])
        by smtp.gmail.com with ESMTPSA id f7-20020a2e9187000000b002adadef95c0sm3007457ljg.124.2023.05.17.06.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 06:19:51 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 17 May 2023 15:19:45 +0200
Subject: [PATCH 3/3] arm64: dts: qcom: sm8550: Add missing RPMhPD OPP
 levels
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230517-topic-kailua-rpmhpd-v1-3-cd3013d051a6@linaro.org>
References: <20230517-topic-kailua-rpmhpd-v1-0-cd3013d051a6@linaro.org>
In-Reply-To: <20230517-topic-kailua-rpmhpd-v1-0-cd3013d051a6@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1684329587; l=2258;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ZxLc6Pyv1LGo4O8MrviS8WijNnatdta5WuEdHKXOjlE=;
 b=Ra4e2+oAWw6UTwvdX5hrOrg9xPuQHRqVZBPauOldQ4WFI+T0ug71fez4yahebETqSm7cE0H2w
 AHiHBZav3vCBe11B9Cs6t/HNSLir3Gqkyir64zF2sB5MtrG9/NSN6O2
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 36 ++++++++++++++++++++++++++++--------
 1 file changed, 28 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 6e9bad8f6f33..0c987dd4e4e5 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3616,35 +3616,55 @@ rpmhpd_opp_min_svs: opp2 {
 						opp-level = <RPMH_REGULATOR_LEVEL_MIN_SVS>;
 					};
 
-					rpmhpd_opp_low_svs: opp3 {
+					rpmhpd_opp_lov_svs_d2: opp3 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
+					};
+
+					rpmhpd_opp_lov_svs_d1: opp4 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					};
+
+					rpmhpd_opp_lov_svs_d0: opp5 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
+					};
+
+					rpmhpd_opp_low_svs: opp6 {
 						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
 					};
 
-					rpmhpd_opp_svs: opp4 {
+					rpmhpd_opp_low_svs_l1: opp7 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
+					};
+
+					rpmhpd_opp_svs: opp8 {
 						opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
 					};
 
-					rpmhpd_opp_svs_l1: opp5 {
+					rpmhpd_opp_svs_l0: opp9 {
+						opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
+					};
+
+					rpmhpd_opp_svs_l1: opp10 {
 						opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
 					};
 
-					rpmhpd_opp_nom: opp6 {
+					rpmhpd_opp_nom: opp11 {
 						opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
 					};
 
-					rpmhpd_opp_nom_l1: opp7 {
+					rpmhpd_opp_nom_l1: opp12 {
 						opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
 					};
 
-					rpmhpd_opp_nom_l2: opp8 {
+					rpmhpd_opp_nom_l2: opp13 {
 						opp-level = <RPMH_REGULATOR_LEVEL_NOM_L2>;
 					};
 
-					rpmhpd_opp_turbo: opp9 {
+					rpmhpd_opp_turbo: opp14 {
 						opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
 					};
 
-					rpmhpd_opp_turbo_l1: opp10 {
+					rpmhpd_opp_turbo_l1: opp15 {
 						opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
 					};
 				};

-- 
2.40.1

