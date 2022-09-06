Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFEA65AE7C3
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 14:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239926AbiIFMUE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 08:20:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240300AbiIFMTc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 08:19:32 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 397FD7E315
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 05:17:13 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id b19so12059842ljf.8
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 05:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=sO81WKVtvhIgo2awJD1gSAd3Fv0gIwfzf8ud+NOPFUk=;
        b=zA/Is61CE5bwxBiHloK3TAgpudaZLFTV6Sfj1ly97/3GgtrzDrFspytWbFmkZPqzer
         bOcUr4VgIleXFvfmNENrx4ZBAgBcLrfqYXR83M8IPCUACtkpFoQgQAsjWH8cPzvWWScj
         nMsT3G2XV4YT19VRieAeB8xwBJ9JmYzGwV00JoYyMCCdZYNdDYWWIaZ2csRSD1ubTzSN
         RuOJbAmwkNWIynzqWbZ9IGqZrphsa0KSV3E/lFhoMT/eTtKW/KHBauY9tKrJNGuTeiAt
         EdVFjEYI3TN8nLgh7hUVsCp+J+CpMGTC3g9K8aXG2eLU+HlRNJwNr7mDz2xLSzLg99xR
         u2Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=sO81WKVtvhIgo2awJD1gSAd3Fv0gIwfzf8ud+NOPFUk=;
        b=O/js4Sc5r+oHkSPm1T73ufR3MpB60TB0ZA3RfTi46iBCfdhRt/FgfwF359It0EnDeo
         IheqHRfnlgSfwYcDYu74yKNVtRZtBCCrUGRdcagOuOH4fUiOIFXU5HuH7ZYJ73PLzKLp
         8lz14qBsxg1Ku32XA70UZ/uR2/oC+bjtfUoLUw6bvuaaxWs23o4GACI67mYEB2HKMC/Z
         YemSsrM1rMuW0FqLKXhQkZ1epf/beo1kyHsX/iVwuHivoJq96O9xItcCJS2iykHbTpN8
         YuhQO/7XnmVRjyGUT+tyvkaB7JEXesSfj7ml2ZWER3PYX6CsLw3zzdbnlnHbxipPJPGq
         fYng==
X-Gm-Message-State: ACgBeo3LPb6CAm6rp19RbOiXlwBp+oTmQX4Mslg1KEluIuLnbVvNOPPS
        mRfdEUSJeRaFOwJ821cPgYDwTA==
X-Google-Smtp-Source: AA6agR7RIrgLDHUTYfwwRRK/fTmffBGAkqOcgbq1by/s92F8cpNx7SME6oPPKVkSdiZHXg+WY2DWjg==
X-Received: by 2002:a2e:9e48:0:b0:261:c713:37dd with SMTP id g8-20020a2e9e48000000b00261c71337ddmr15094251ljk.385.1662466627595;
        Tue, 06 Sep 2022 05:17:07 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u17-20020a05651c131100b0025df5f38da8sm1882802lja.119.2022.09.06.05.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 05:17:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/12] arm64: dts: qcom: qrb5165-rb5: align dai node names with dtschema
Date:   Tue,  6 Sep 2022 14:16:50 +0200
Message-Id: <20220906121655.303693-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220906121655.303693-1-krzysztof.kozlowski@linaro.org>
References: <20220906121655.303693-1-krzysztof.kozlowski@linaro.org>
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

DT schema expects DAI node names to be "dai":

  qcom/qrb5165-rb5.dtb: dais: 'qi2s@16', 'qi2s@20' do not match any of the regexes: '^dai@[0-9]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index bf8077a1cf9a..d39ca3671477 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -867,7 +867,7 @@ &qupv3_id_2 {
 };
 
 &q6afedai {
-	qi2s@16 {
+	dai@16 {
 		reg = <PRIMARY_MI2S_RX>;
 		qcom,sd-lines = <0 1 2 3>;
 	};
@@ -875,7 +875,7 @@ qi2s@16 {
 
 /* TERT I2S Uses 1 I2S SD Lines for audio on LT9611 HDMI Bridge */
 &q6afedai {
-	qi2s@20 {
+	dai@20 {
 		reg = <TERTIARY_MI2S_RX>;
 		qcom,sd-lines = <0>;
 	};
-- 
2.34.1

