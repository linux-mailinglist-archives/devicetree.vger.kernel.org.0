Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 823BB792AF8
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 19:02:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233577AbjIEQpy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 12:45:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231570AbjIEQhm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 12:37:42 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F07883AAD
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 09:34:33 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2bcc4347d2dso40735901fa.0
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 09:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693931576; x=1694536376; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u65I1O1lKLMNJ/qEOfucgBHMYGAUrWEEbV/2ps7wmMA=;
        b=IdrfnD+38vu8yqN5qmCHfQUbWEYMRqOSbsVN/TjL87CpP4/mTeBblobZUvtpC+qjbb
         GhlvKh3YgqLUbElzKLLjmEKwFKtA7U9Z09ARlPvIkplDjwVEOdvIhSRgCMI3noCQkCOz
         a8kfg/VY1Abm6DlQ9KQHU9SWO05/KOD/ZyxZP97pj3FX42GE0/vE4JrwWAnpPQLcvXOX
         uIw0mmqDZILLBVsCy0q8lQF4uyOaaAEFAMnw/xCuzWo+2ExIqTNHVTP7qPxVJ/1MzpPP
         kLS4ZqZy4y/q5lV+IxxrpsotGXWh1pfCnQE51h259GOnk2nPJHaO86PRdLtnqOHeKzI4
         /U5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693931576; x=1694536376;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u65I1O1lKLMNJ/qEOfucgBHMYGAUrWEEbV/2ps7wmMA=;
        b=e+SLl6QDrFQu372EvV7TUejfpChdh/6+UBTUg1MxDIKa2dpuSKbDsvBE5xordKg95j
         spfNfdgKg9eSlzwETopol1RCHSaqRzYB9NBaZ5NDqOCTiDFdy2eHQINdxnGxlv1/3Gq/
         LKRhsWWO5kT3OvIChP0NTwCgS1LVWS1TtSc7TDHv5G5flreOvVoNZU+xsbPcOniEL8bk
         nI7cprSk01oBt44jcNuNXgAGBrOOGWbAl+iIGtmTSAGwmWbH237Cxbx7mNIOrcDnKd9A
         275egNtoy/QRPtsxkUlXyEvqx59Uyev7245iMIgkU5br0e9LuAQ/FdVi586AEw/f1R3P
         gb+A==
X-Gm-Message-State: AOJu0YwOv3sq2crV/SJLmaWPctdooFGyijkhEqNd2lIMQMCUroAnPMBp
        uUKH5WqOXHnZ/rDcTqO01PF+6nybbnN1xh5SMPk=
X-Google-Smtp-Source: AGHT+IE8+CDJh2xbtEx7uZ2aluglM/hJtEE/udwXwpOfMHa6iUNE1WT8MTjjF9i5oQB7WOBdc1L1zQ==
X-Received: by 2002:a17:906:31d2:b0:9a2:2635:daab with SMTP id f18-20020a17090631d200b009a22635daabmr268509ejf.47.1693930775682;
        Tue, 05 Sep 2023 09:19:35 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id v26-20020a170906489a00b0099cc36c4681sm7743165ejq.157.2023.09.05.09.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 09:19:35 -0700 (PDT)
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
Subject: [PATCH 07/12] arm64: dts: qcom: msm8996-gemini: correct UFS pad supply
Date:   Tue,  5 Sep 2023 18:19:15 +0200
Message-Id: <20230905161920.252013-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
References: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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

  msm8996-xiaomi-gemini.dtb: phy@627000: 'vddp-ref-clk-supply' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
index bcd2397eb373..9a4c11c33a17 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
@@ -419,6 +419,7 @@ &ufshc {
 	vcc-supply = <&vreg_l20a_2p95>;
 	vccq-supply = <&vreg_l25a_1p2>;
 	vccq2-supply = <&vreg_s4a_1p8>;
+	vdd-hba-supply = <&vreg_l25a_1p2>;
 
 	vcc-max-microamp = <600000>;
 	vccq-max-microamp = <450000>;
@@ -430,7 +431,6 @@ &ufsphy {
 
 	vdda-phy-supply = <&vreg_l28a_0p925>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
-	vddp-ref-clk-supply = <&vreg_l25a_1p2>;
 };
 
 &venus {
-- 
2.34.1

