Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8652C792C7D
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 19:34:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbjIERd6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 13:33:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231474AbjIERda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 13:33:30 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D991029812
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 09:59:33 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-31ae6bf91a9so2239103f8f.2
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 09:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693933108; x=1694537908; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VSrCRSGbYpW5ai6iRwGDzaSKxkP5+0TJhgHCmN0LPbE=;
        b=ZJfdvrg73vgwPW1vCIFEaVfwjYQkmnqiZDxy296wZGjQJxkHFWI8F7cAGiJJ+GSHcW
         QwqgAcd8u1Ol52RqcYF1ORtV+DBUsSgeRO1+6yHrDPfyiRNZbRTuqw8DNK1lpEDAbCLH
         U2JJ4HAmMOEzj8Q1y7w2QFslJCW6O/aXAntq+g4KyggwBDPrOFE38afL7aj3aAqj+4LW
         3Mxa1LJKMSDjcS/p7Jg9EJJYmThiH2sD14McyMCFBU4uJggMzNL7+m5PU5p+QMQ4fNbK
         3mym2/pwsjxCjTpMXRn7vKGHHAf0Dg2B5ZIqdzCH1NdgS3PwCoqJWa0dTpQAkzFWi49N
         tJ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693933108; x=1694537908;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VSrCRSGbYpW5ai6iRwGDzaSKxkP5+0TJhgHCmN0LPbE=;
        b=AcWwcRzVc7Q/yeB51zNLbM+OhBGzECJir0EkglhWRm4lS5uWGwM9FQWJOqHNXASGK2
         PiWwxOv0jV3wFjmq+RW9Ofu17yTWwIwv4wGm7yF6EFBUiEHR220cW9/i8dsVco/Khda8
         lZ+R3tevBJX/xXlXYKDht31buICHqySSfLJxbLKGcUtbtsAR0Jf27IBSCPSzDNfGeZ7j
         kDMysp52eZ6rRoNseew1pLklICfsBbpN3PWA5Brj6c0wCFNKyg9xjjlvRpmkVJM14tCp
         yoiscNZhbds3iFEAm5sPOgdSPlEAp2E82RsG5F5fiMd5m6C2DkMlSfoJO7MO1dsYA9BS
         NJNw==
X-Gm-Message-State: AOJu0YxIMX2z6SGLEQLO2/ZbnrnfszIuQNI5DLc0jd7HP1uOkuNJ201U
        iM1JiS4gLrNklXoaTFtQiLD5NbJDUP8TukjYqTg=
X-Google-Smtp-Source: AGHT+IEvHvDkL/lwj2z18NbyDp5Lnix22wGCXyb6dsIf/iVENXsMx/XhwkxQAS0wyyCd41yNwAxfYg==
X-Received: by 2002:a17:907:7811:b0:9a1:aa7b:482e with SMTP id la17-20020a170907781100b009a1aa7b482emr259657ejc.26.1693930773471;
        Tue, 05 Sep 2023 09:19:33 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id v26-20020a170906489a00b0099cc36c4681sm7743165ejq.157.2023.09.05.09.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 09:19:33 -0700 (PDT)
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
Subject: [PATCH 05/12] arm64: dts: qcom: apq8096-db820c: correct UFS pad supply
Date:   Tue,  5 Sep 2023 18:19:13 +0200
Message-Id: <20230905161920.252013-6-krzysztof.kozlowski@linaro.org>
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

  apq8096-db820c.dtb: phy@627000: 'vddp-ref-clk-supply' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
index 385b178314db..d2aaff3e0d02 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
@@ -1091,7 +1091,6 @@ &ufsphy {
 
 	vdda-phy-supply = <&vreg_l28a_0p925>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
-	vddp-ref-clk-supply = <&vreg_l25a_1p2>;
 };
 
 &ufshc {
@@ -1100,6 +1099,7 @@ &ufshc {
 	vcc-supply = <&vreg_l20a_2p95>;
 	vccq-supply = <&vreg_l25a_1p2>;
 	vccq2-supply = <&vreg_s4a_1p8>;
+	vdd-hba-supply = <&vreg_l25a_1p2>;
 
 	vcc-max-microamp = <600000>;
 	vccq-max-microamp = <450000>;
-- 
2.34.1

