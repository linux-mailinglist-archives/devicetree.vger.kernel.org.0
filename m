Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E12370FCCF
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 19:39:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235564AbjEXRjK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 13:39:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231759AbjEXRjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 13:39:09 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D09B312F
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:39:07 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f60410106cso9959085e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684949946; x=1687541946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rSmVapjGY4609B8VseiXBSPMlIsV3BDKD/4/5pbhv2g=;
        b=PjsfoV/3p9Z8SJvDkWm5jDBR5q1bDXVC/jfq0BgRSjKqxrEqRNYu5ooIdQJ13AgLoD
         NjcvF4HsHtrW01hPfLEDX1vNixaL3nHCfSUn+Cm6i2soP3hZM1SCBnMnm75+31Y6C+XB
         pP55kPiKnzH0rxF2al1Fx+B3F5osph2qtfpp8Thob3E/aECGAcnX5Tl41Oh0RF2RTV4v
         FJNQZcDam3OsS45osKZN54SvEfYNBSEAkMYMuNlJaCeh2pffb8DaOW4UDBC4KZUkQ+tr
         z3p/87boRdrDu3pl6sp18NqsAIRGHp8egqiSuMbd1bYOQ/ZDYHTW+6NN2S8PDajrUFPG
         ov5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684949946; x=1687541946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rSmVapjGY4609B8VseiXBSPMlIsV3BDKD/4/5pbhv2g=;
        b=mDX39qcyGJw3Iaro9NUdhR8YFn72qUtUGaVJrM0aaCfzShXkaZQgM8jmREcvCmdJ+F
         7EZaxAR1GzulH3xCCmw9ETlgWAgW+we0eRB7PqWW45o9KKCDOSAo/Qui/gE5y1TnYfKF
         miw/0YS0a0BTHCdSBst5bCrVqPLRy/WOay2au5NEFAIq7tXch/1NYM8YwsIobRTcccKF
         eSYhXOzotaFzYGFY1KPjEItlhVcsB0OtBCJDq0nxw/NgOpiVBAn/cDCvoTk7tKFK7GhC
         gYz2pzTrTRpe5c3Sx3qrsHXeb/ajWEWMciy3MoiaB9Np/rP6Rl2y3HhpA0m5FjL8MlxM
         qRYw==
X-Gm-Message-State: AC+VfDzGaMXQGWug2IcB3RvzZlABu6kTifvsjOjSQfjdZF5m0/w352Jd
        Hha0lI5Vhf1El89mJvDjOelpoQ==
X-Google-Smtp-Source: ACHHUZ4wwkp/KxiFRRPQd5u+yMrkpkupW7CD1t5UcZ+t2Ku41ciiE00aSn/ZkkklOnRerxtIERZstQ==
X-Received: by 2002:a05:600c:2244:b0:3f6:3497:aaaf with SMTP id a4-20020a05600c224400b003f63497aaafmr349544wmm.9.1684949946396;
        Wed, 24 May 2023 10:39:06 -0700 (PDT)
Received: from lion.localdomain (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id l17-20020a7bc451000000b003f4fb5532a1sm2993053wmi.43.2023.05.24.10.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 10:39:06 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
Date:   Wed, 24 May 2023 18:38:55 +0100
Subject: [PATCH 4/6] arm64: dts: qcom: sdm845-oneplus: enable pmi8998
 charger
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230524-pmi8998-charger-dts-v1-4-f9334afc4505@linaro.org>
References: <20230524-pmi8998-charger-dts-v1-0-f9334afc4505@linaro.org>
In-Reply-To: <20230524-pmi8998-charger-dts-v1-0-f9334afc4505@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1853;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=AyeJbiuz3WEehh/6aaynrQbFEhw+gvf37a7oFpCMTYc=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBkbku1+gZPetbUZ7jelvBoX68tW8gbMQJ+dzApY
 NJwImcTiXiJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZG5LtQAKCRAFgzErGV9k
 tinmEACRG4PJdNl/KaCPPbReZP0swb9ejYOVCnhjImZXLy40+lSDHwkVFsSIVA1un4kb34SItMY
 pCBZTi9RwBLL+LTif9Fn4vpO4pWu3/tXGguuKsqXTN8NTQjz5BR8i5rK0w3gw2H2l5ykj1pYxkS
 SWwmgK87Lp092KW0tz5fwI61OSF/RPiVRWlQkLpdeo/NtPILkzdVvmTF7uSEV2/ZQFMLVNJgZYN
 ejpyk1TNZbiZ3uces1omYRkKWHfj1HAQ31nx8RhFFz51hsqCcAKqUwGNuKwlMRhqDTxCrXeTHf6
 EJcguM1g6qO2VS0hpKqUjzO+9d+bYgTO5GD88mQa+CdjEXXl7fDpAlldDf5BlqChr3wSVPr125O
 Q27pHsnGKOFsytSvumNbb8mvJZPvkwkPASZ1PbYSrFWLF1PObLlyBYkURc9BtcDva0FIoFYN16B
 cEyDIl8McOK8dhG5UgKiJzi9BcGDJIheHGDn4z9Edzf7GdTYGixlCtK7L20pxfzXYYNqvMvLeTj
 FCxeioH55uMCPtCdhA6CkhSAE5Jsuoa/5NP3Hma8JfNXvc+4STSKhDja1CqupN6xC++qK4S/Lqj
 BAOAR7jkc/Sn2V+EQaSfkCKDztR7B6kqaB0nRrgy8pS7qQ1wgsTRrS+p88xctw1U6Aw+fH30C18
 O/AzgtGa+n0UFJA==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the pmi8998 charger on both devices, enabling charging speeds
above the default 500mA limit the bootloader sets.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi   | 4 ++++
 arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts | 4 ++++
 arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts    | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
index 55ee8dcf27c3..364adf416c4f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
@@ -480,6 +480,10 @@ pinconf {
 	};
 };
 
+&pmi8998_charger {
+	status = "okay";
+};
+
 &q6afedai {
 	qi2s@22 {
 		reg = <22>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts b/arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts
index 6cdda971bb4b..623a826b18a3 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts
@@ -51,6 +51,10 @@ max98927_codec: max98927@3a {
 	};
 };
 
+&pmi8998_charger {
+	monitored-battery = <&battery>;
+};
+
 &sound {
 	model = "OnePlus 6";
 	audio-routing =	"RX_BIAS", "MCLK",
diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts b/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts
index d82c0d4407f0..9471ada0d6ad 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts
@@ -47,6 +47,10 @@ &sound {
 			"AMIC5", "MIC BIAS3";
 };
 
+&pmi8998_charger {
+	monitored-battery = <&battery>;
+};
+
 /*
  * The TFA9894 codec is currently unsupported.
  * We need to delete the node to allow the soundcard

-- 
2.40.1

