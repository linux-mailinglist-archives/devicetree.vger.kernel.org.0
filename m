Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 433FE792AF5
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 19:02:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236020AbjIEQpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 12:45:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239944AbjIEQli (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 12:41:38 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ED5F199C
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 09:36:37 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-500a8b2b73eso4274852e87.0
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 09:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693931718; x=1694536518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wH0Ng8oy03X8SMHsmTArDNYyeNPd8XC1y8dXMDsLWIc=;
        b=sPO/InESaNo4Dgfl6J5Yui6T9rly0ZlkL3EltMTlJcJXvtxMAPNvUdzVDIQ5TuN1yz
         q0PYrcsiEKp/Ly45StbEkbqLWUNFIxkTAl5FSqJHMFZmJU0Oznx1fI89o7tmVGqdu4ZB
         k0cjt8l3w0efa0MXWCGbTvCJh7uUGmVSQJbMEYR2D0/CF/4UIF4TORyWzvgk1HAzICuU
         SNaQQvcqsFZTwujf8WBCHxDuGgXZ4x0VGH06GnAThkrG+GMZXRmfpE7/z7txmh3Ley9k
         7xQYGcAEcKo1gaAw08SaPlB+EXNRQkt6y5wu1DptPKPkVA/0kzHgrstLLdESkp1+jaPa
         GrBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693931718; x=1694536518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wH0Ng8oy03X8SMHsmTArDNYyeNPd8XC1y8dXMDsLWIc=;
        b=VR8LlSjxk/Aj5ZmrS6eLvgbSpLek0l1wxLYipFro00t6V1pz1Cf71CfiRixSOYsahY
         1/MZ6kZ4qJ7k5gDzL+pqxmB2M3U/PMHzYM+3lJ9JHnFsmCJl9LLzik5unAMNGlY0aFDs
         dOCo51sHsWh9WvOHsrFEmWRT77D33Q4onSYA3Govm68d6rv15FMdnifJspm4oEAwcExK
         XX6pDcE/4IB59EeVt+OsF0qWMPq9cPZgg1cSmi61s2Ci8VpoU5f2CYp0aCA58/0SE7PB
         aU8nU0Kz39v2LSkcWpYSHmBLt9Z8Sl4l/2quBLTiK7kLxnd24RNOVmUEm43MzTDc2kpr
         N+Bw==
X-Gm-Message-State: AOJu0YzyANxCJMZTS+6Aroup5aiFkXrWZhgR4yBYrQ3fiUbLttTTLbSi
        PQQjMc5v5tYVoOUGjUOMj8G6cokJdcILkNJQ9IM=
X-Google-Smtp-Source: AGHT+IEnMq/K+PBH4fIwWFHDZIzZQAuV6yDEJtoSosWhc0PuWlIX9lGFDqQXnARU4PSyDs6TMRTApQ==
X-Received: by 2002:a19:6703:0:b0:4f9:cd02:4af1 with SMTP id b3-20020a196703000000b004f9cd024af1mr211263lfc.34.1693930776810;
        Tue, 05 Sep 2023 09:19:36 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id v26-20020a170906489a00b0099cc36c4681sm7743165ejq.157.2023.09.05.09.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 09:19:36 -0700 (PDT)
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
Subject: [PATCH 08/12] arm64: dts: qcom: msm8998-pro1: correct UFS pad supply
Date:   Tue,  5 Sep 2023 18:19:16 +0200
Message-Id: <20230905161920.252013-9-krzysztof.kozlowski@linaro.org>
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

  msm8998-fxtec-pro1.dtb: phy@1da7000: 'vddp-ref-clk-supply' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts b/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
index b6a214bea70f..f1ceaedd9520 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
@@ -671,6 +671,7 @@ &ufshc {
 	vcc-supply = <&vreg_l20a_2p95>;
 	vccq-supply = <&vreg_l26a_1p2>;
 	vccq2-supply = <&vreg_s4a_1p8>;
+	vdd-hba-supply = <&vreg_l26a_1p2>;
 	vcc-max-microamp = <750000>;
 	vccq-max-microamp = <560000>;
 	vccq2-max-microamp = <750000>;
@@ -680,7 +681,6 @@ &ufsphy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l1a_0p875>;
 	vdda-pll-supply = <&vreg_l2a_1p2>;
-	vddp-ref-clk-supply = <&vreg_l26a_1p2>;
 };
 
 &usb3 {
-- 
2.34.1

