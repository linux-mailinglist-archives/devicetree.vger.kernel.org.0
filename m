Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F4446CF357
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 21:42:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbjC2TmZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 15:42:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230087AbjC2TmI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 15:42:08 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F08A55A3
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 12:41:37 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id c9so11228137lfb.1
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 12:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680118893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gTrBkFzXe00LoqFajXNI1ipYHy2TlqZWct5QZWbSb8Y=;
        b=I1yl3fj888zYN5PWA1Nj9tFHiqKaMAFw5N207p361C0pw2TA6WlrSn5pD+ZqyjpMq/
         y4ciL8i+1RTU0pbigla4CrpCUPEEIBNn/Hast8QRPXO0rpSVMlfFVMuhLEwG9QCficqQ
         fSe1YaetE/3SfQZwJc9YvStwWaZ5c4aPgyiFFJF5vTKHYu6cf5VJsRw3p3DquYjd4Stc
         eUFzwP+2sXHzpbXCUGmvGbC5hiJOZuZzDq8X3iXC37QKVBbVpRRf0QyGhARgoJVMHsGP
         LPAVCwXK0vXAKqBtUAqvURrbnRGm10C4nop919k3iu8BZHSwe/yBZ8IpCr9dPBRd6iLZ
         IhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680118893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gTrBkFzXe00LoqFajXNI1ipYHy2TlqZWct5QZWbSb8Y=;
        b=fuAQnP3G8IzXGXus9qopIe4AQWZ2o04aawFXpSjml4+QbKjE6b5fp/Wacsh1pEuwZw
         ar+tA9/AmL6tI9QIYk6V16XwH3Wh1wNaNhNF2n0HJiEj+/tuSuFlbGvIHYlKGGxetKEN
         9R8vumnj1szEeDl0xpBFv6GI9oaHvb5ggp7IfJrXpkrn08nlZeQ+N9IRxxyC/H6HPqDC
         XCZARt/aDtnwFD8v3OvH6aYzKi0XpcQGfZdQSyhtxb6gje6Rq5132V/nc5BKOtAIMcNM
         gnHFkKG6jlwHIMP3FOfVZI+6cjFj2qV3mccvQg32lnLVl4nZgwAhv0zFz0aUa498dU1p
         p12A==
X-Gm-Message-State: AAQBX9eTO9ekjEw6APRLKOQQiPO48Dpdx3Qw1WoPbSOv+bTdKY67ND6x
        gWqzIn8xZD4a5cyxScpzUAYLZRg5KuWeRly0lVc=
X-Google-Smtp-Source: AKy350ZOlpIGVZPMksHyex7o2poa7nv7r6vOOKpYsjm/RdQPoOO7meEi4CmTDyWZfO6K5Ip5molbWQ==
X-Received: by 2002:ac2:44c1:0:b0:4d3:9c2a:e73b with SMTP id d1-20020ac244c1000000b004d39c2ae73bmr6247668lfm.30.1680118893171;
        Wed, 29 Mar 2023 12:41:33 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id q22-20020ac25296000000b004eae672e96bsm3955048lfm.255.2023.03.29.12.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 12:41:32 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 29 Mar 2023 21:41:20 +0200
Subject: [PATCH v3 3/6] arm64: dts: qcom: sdm845-tama: Add
 regulator-system-load to l14a/l28a
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230313-topic-tama_disp-v3-3-2b1567c039d7@linaro.org>
References: <20230313-topic-tama_disp-v3-0-2b1567c039d7@linaro.org>
In-Reply-To: <20230313-topic-tama_disp-v3-0-2b1567c039d7@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680118888; l=1137;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=8wb98KM6mGGyokos6i9vJjAwd0Q8x7wf0P+4zmcfsu8=;
 b=fxsAq6Fe/jdrtoeKMQWQ6UKbTt2VdFKP3BLEWPXhC6BvVxELHRploHdyMu1PdSV2B81kiDLT/aqm
 Y1xskxvNCW3TKf/F1bUXmOV04P7O0SpkxzUKeh6X50qx3WAH9Gq6
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Konrad Dybcio <konrad.dybcio@somainline.org>

Add the properties to ensure the ever so delicate touchscreen setup
matches downstream.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi b/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
index 8172d0c9c1a3..208ed466081d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
@@ -228,6 +228,7 @@ vreg_l14a_1p8: ldo14 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-system-load = <62000>;
 		};
 
 		vreg_l15a_1p8: ldo15 {
@@ -314,6 +315,7 @@ vreg_l28a_2p8: ldo28 {
 			regulator-min-microvolt = <2856000>;
 			regulator-max-microvolt = <3008000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-system-load = <100000>;
 		};
 
 		vreg_lvs1a_1p8: lvs1 {

-- 
2.40.0

