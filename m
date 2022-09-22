Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B056F5E6C68
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 21:57:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232608AbiIVT50 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 15:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232426AbiIVT5N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 15:57:13 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E6F10D0C3
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 12:57:08 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id j24so11774642lja.4
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 12:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ZL3t03EQvl9mHvGpFybHkv480XEe974dhXgVTeybEX4=;
        b=PxA5QBSKygBoXAEkyYLXLy14kPGP3Cl9s6viTGZHqDB+z5CQCiZeP01q6kv0gzUX+R
         QBhSrvaklBjM5D3cohsvKEwi3tDUSLCQntM/ppCqDOgNMIfxeVxoYjhWJwL4rg4j2emN
         YyQSDvX9hMMdV0st0/CpDlqkfrRCLbI+Isn9isG3mhZGJnl6GfBJa/V3TfLU+qw/xhyt
         pnWqy8XS5R3RFh1PFjjtviH055W43s7hsLpuiia1WPU/c/lVad5rAsSojjUElXEI3m61
         jELOaXKejW50OhvrOSurgKtjWFqnj5woW+WhnJQ6Aa/COcTilhXeGjPvbpveFGoGvzvl
         txHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ZL3t03EQvl9mHvGpFybHkv480XEe974dhXgVTeybEX4=;
        b=OiObk45HtAtdfIOvm9JHU5HKEYJifRpQ8MdJOScWcVVJLmgxCwhbyqKUkJ+JqQo2AU
         2eUYLUScXgT9N0W3ElvnWlsY/hOnCwgD7MWvDpSYovUaVECCIg4b8D60De0TSN/Vb8Jq
         ud4Sp23FsCFX4TNALlse0V7KbaV49+E8A/Cv39dFpxB03fBI//ukyCIqreakXbOSigaS
         TH7VcZgl6l20COK0ypd81oFD49KFQpM0T5C9Z+tIE+HDpJTCqqm8yrLRLYPrMcSP0J0W
         q+kCwrrAKx17pfhHlGvbrdiizEgv4mP1+MgH3rY0u4tmPY7QEDUryqJeVAUX0gjeGeEY
         69vA==
X-Gm-Message-State: ACrzQf0dNd18IAnissxZ5Mu7aoS64t9pUlppOjblmRYoSVY0oFZ/2ZPz
        RAflFlp2c4jkbU5j8r1G1BSCUQGzn7paIg==
X-Google-Smtp-Source: AMsMyM7UC/G8p+d5MfztVEkIqi0QpWM+sSfc2ngV1gr8LL+ylW+w2TUpjQl6Dj5UaTWNCmKF7/VXQA==
X-Received: by 2002:a2e:b016:0:b0:26b:f00b:a8cf with SMTP id y22-20020a2eb016000000b0026bf00ba8cfmr1636230ljk.24.1663876628272;
        Thu, 22 Sep 2022 12:57:08 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x15-20020a19e00f000000b00498fc3d4d15sm1079375lfg.190.2022.09.22.12.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 12:57:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 09/12] arm64: dts: qcom: sc7280: drop clock-cells from LPASS TLMM
Date:   Thu, 22 Sep 2022 21:56:48 +0200
Message-Id: <20220922195651.345369-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
References: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LPASS pin-controller is not a clock provider:

  qcom/sc7280-herobrine-herobrine-r1.dtb: pinctrl@33c0000: '#clock-cells' does not match any of the regexes: '-state$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 8d807b7bf66a..8823b75a6f1b 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2432,8 +2432,6 @@ lpass_tlmm: pinctrl@33c0000 {
 			#gpio-cells = <2>;
 			gpio-ranges = <&lpass_tlmm 0 0 15>;
 
-			#clock-cells = <1>;
-
 			lpass_dmic01_clk: dmic01-clk {
 				pins = "gpio6";
 				function = "dmic1_clk";
-- 
2.34.1

