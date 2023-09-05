Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DC3D792D1F
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 20:10:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241037AbjIESKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 14:10:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239893AbjIESKO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 14:10:14 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F60A6606D
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 10:00:26 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5007f3d3235so4344709e87.2
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 10:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693933145; x=1694537945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RGaxUhsaWm/cp+r2DPolOLK8u8MC47KqNdL9YaScpsw=;
        b=BhBnHNUG+KSGUhVgGF63CgsXMGt1xLPlQd4r6yrcMCTO1gGiXmfpzHoDCB3n3dHa6U
         bRBis+VEFxanRSZDoh3EY9m9z8Rq7q6PeJMoOd0DACJlwqliwQdkQbVUbEyiFa5MQ4fr
         EMwhUHyHHWLYwmyOqkK74hS6Tonfgf7KdOjm4CEI4rivmfOhd8O+S91N4MHSQRDcnes8
         dwxZ3gagUrqCWO3bkVDwjXdbqp0lcv1TWcuCL4pvoiOBO59C/tg0lpy9wrgH2mSCc8ml
         jhCEZLJd6fpHOtadayPMbad5jEFDEthG26Vl+BjE6vVjRvTN67EB133ip8oaOTrGU8CA
         7tKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693933145; x=1694537945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RGaxUhsaWm/cp+r2DPolOLK8u8MC47KqNdL9YaScpsw=;
        b=Iqsa0MaKSBCbMoPuM9Eq4KCAWAS742a7E0cxrx/1phR1cdu/uua9pRE02OZYFQZVKe
         SAqt4+xxgASxe4Vn3Vp0DQkkDQsXZ7mzTJ+M9l+a3wMKhicMfiMfMf0ca0PL5VRiIxwR
         nPMUW/0VnURGXltZCSwt2QWImEiCfbYxChV33Mqtyr1NKn9pQ9gAfogmUAIK2CCwpi2N
         kCl6sd7rkoASXv+4x7aEStebooXzkF5Ab8/bSv47KD99MiWy8FAWh4xByAvFRdBrN59W
         i6ioFUQWUr56ukWkC+v9j7LApqH90EeS3car5sfgNBuOiBMzkJUcUw6JptccsTewyYSP
         GmzA==
X-Gm-Message-State: AOJu0Yw3jp0ufB02rl9Bre03Y+AREWHuTifTggjr0kiscrqYyfyK4N60
        3A+c2qOp1UB5jQON9cGUzXCWk+Xl32kPt//f7QQ=
X-Google-Smtp-Source: AGHT+IEp1DTEiq7Z2Jiw52W4zhnCePvt/4EW1RpyNiAdy2vPAMIQNgxfwDn0BPDatgDGfl5TO898Pg==
X-Received: by 2002:a17:906:20d0:b0:9a5:b8c1:2ce1 with SMTP id c16-20020a17090620d000b009a5b8c12ce1mr242650ejc.31.1693930772320;
        Tue, 05 Sep 2023 09:19:32 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id v26-20020a170906489a00b0099cc36c4681sm7743165ejq.157.2023.09.05.09.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 09:19:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 04/12] arm64: dts: qcom: sm6115p-j606f: correct UFS pad supply
Date:   Tue,  5 Sep 2023 18:19:12 +0200
Message-Id: <20230905161920.252013-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
References: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm UFS phy switched from dedicated driver to QMP phy driver.
Eventually the old driver was removed in commit 02dca8c981b5 ("phy:
qcom: remove ufs qmp phy driver").  The original driver and its binding
used vddp-ref-clk regulator supply, but the new one did not and left the
supply unused.

The Qualcomm UFS phy bindings were also migrated to newer ones and
dropped support for vddp-ref-clk regulator in commit dc5cb63592bd
("dt-bindings: phy: migrate QMP UFS PHY bindings to
qcom,sc8280xp-qmp-ufs-phy.yaml").

It turns out that this regulator, although with inaccurate name
vddp-ref-clk, is actually needed to provide supply for VDD_PX10 (or
similar, depending on the SoC) used by UFS controller.

Bring back handling of this supply by using more appropriate regulator -
UFS controller host supply.  This also fixes dtbs_check warning:

  sm6115p-lenovo-j606f.dtb: phy@4807000: 'vddp-ref-clk-supply' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index c2d15fc6c96b..54da053a8042 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -344,13 +344,13 @@ &ufs_mem_hc {
 	vcc-max-microamp = <600000>;
 	vccq2-supply = <&pm6125_l11>;
 	vccq2-max-microamp = <600000>;
+	vdd-hba-supply = <&pm6125_l18>;
 	status = "okay";
 };
 
 &ufs_mem_phy {
 	vdda-phy-supply = <&pm6125_l4>;
 	vdda-pll-supply = <&pm6125_l12>;
-	vddp-ref-clk-supply = <&pm6125_l18>;
 	status = "okay";
 };
 
-- 
2.34.1

