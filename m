Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFC1F686AC3
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 16:51:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232710AbjBAPve (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 10:51:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232557AbjBAPvX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 10:51:23 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC8D074A60
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 07:51:20 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id m14so17273319wrg.13
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 07:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Kpow5TmoN11TQqLCFQ1hBrJbvbsRH3+96bPlM7q+RI=;
        b=ow/F3FkjCZ9BG+CzE0TjbgDKKEIFZ3vHqgkerKpdXC9Mlyc/jKUTfPKaaRUmtHUroh
         2lCUOFbfhJ9cVYGrZBtZzzva7CFJsia6rOuOdeshUrFEX2l2/C4aRjz7M8a0bv2fc7WK
         VhfyRgejvGltpGuQhxjs0xMr7M3orwnijv7VMnJppwtWhu/F4mZQULqcM5R3ROjofgC3
         RFj0jirkcWF/08fG/PjVuIv9Tw4k0+GArzypH2CRCwJy85/OVgI74LyvBzzS4PUzfO6/
         XBLKKCamQeBWNX2C2SOQRTPxFzuSPyuBPn1wUS1Vjhdk5G5vL7F06bfkQcgpz/w2Yl5m
         MFrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Kpow5TmoN11TQqLCFQ1hBrJbvbsRH3+96bPlM7q+RI=;
        b=BY4gX20z7E5cWrcLybOdpMb8+i0i4GZd9froYZzLkEGgPT0iLYZ1kt+QJABhCEe7Cz
         9aa8MHWdU6f8eofn+fiQLfyB+QyBIL0h5fwLzMiUzKV4oXUM014vMEmejpE0xw7pk0/C
         PTzxgk4OzH6suB/jnA8Y7TwShsqDX6ktc9H/VJ2Vp+a8WpreWtRg2jQk/pGD3PBsesp5
         FTJ2kChukZlRCS9SZrDHjwtswOuIFcdiIOrynzjDGoJgzOqaRq8LOWlEfZEHF3hmvPSH
         wlaLWuKTHE0jnYXI2k6D4Xnc5tPTNvZgZjR3EeJAAtfkZ7I8B+DqAvgkqj8WSyNFVw45
         /DLA==
X-Gm-Message-State: AO0yUKWz6wvGCHZFxCREbzi2QjMhneGVsdDrUpkTzWRoCmahx7PJZVer
        4fHPlwbYv6knqtfl4K0y6bv1yA==
X-Google-Smtp-Source: AK7set/rU7hKIvsw7PnTZQU64cCL+P+73CfS3k4X/GdN8+/SSTQqa2ODRAZj6KnR6Ic83AdhTljmag==
X-Received: by 2002:a5d:6b0e:0:b0:2c2:6541:7afa with SMTP id v14-20020a5d6b0e000000b002c265417afamr2935097wrw.57.1675266679336;
        Wed, 01 Feb 2023 07:51:19 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t1-20020adfe441000000b002bfd524255esm14816189wrm.43.2023.02.01.07.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 07:51:19 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH 07/14] arm64: dts: qcom: sdm845: correct TLMM gpio-ranges
Date:   Wed,  1 Feb 2023 16:50:58 +0100
Message-Id: <20230201155105.282708-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201155105.282708-1-krzysztof.kozlowski@linaro.org>
References: <20230201155105.282708-1-krzysztof.kozlowski@linaro.org>
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

Correct the number of GPIOs in TLMM pin controller.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 9ffc0fe07c21..488aab3db294 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2704,7 +2704,7 @@ tlmm: pinctrl@3400000 {
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			gpio-ranges = <&tlmm 0 0 151>;
+			gpio-ranges = <&tlmm 0 0 150>;
 			wakeup-parent = <&pdc_intc>;
 
 			cci0_default: cci0-default-state {
-- 
2.34.1

