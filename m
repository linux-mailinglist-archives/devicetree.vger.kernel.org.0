Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 506376F9B14
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 21:07:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230231AbjEGTHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 15:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231631AbjEGTHq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 15:07:46 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D9FB35A0
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 12:07:42 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so4288816e87.3
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 12:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683486460; x=1686078460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wt+EbN0hwDOiIGnoCwwD0C5MozLHDgMBCyuph5K3wf4=;
        b=XrhwPCUVXiDVuU/7M84RcriDD+kkz65HdTllc39o/O6IRoRtUaqVF/+7t0SlXrmweS
         DY7owPJNuDzyZIXCnohLrS6jY77jSoD4eOEvFv9KLAHjwYX+znLCtRGf/+nF9+NNXnsU
         2S4gD9obfIDG0G5mVh+j1+4RZIFa8CzOKNBaMs1Dpp5WcgLPLWqrlBFxMgi8ruoqjOVM
         S+k/nZtJqKg6E+/Fb1g3h6YY/tsf/RZUb8sHn4+EQjM/ptlPVbhehP47TKgNuQMBDPld
         31ojuS4RlEMUVh67KgoO10SuRDLA3NX4flmLUSnN9gpMN7Mwmus02fdkbTb3vaVwtQ1d
         JvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683486460; x=1686078460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wt+EbN0hwDOiIGnoCwwD0C5MozLHDgMBCyuph5K3wf4=;
        b=ZGow2QouCOsHjspIh559PKJaLx/ah1kDIySYLkWYXrVQnkhts8hwAtDhaFMcLOVYHH
         iIZG6AcErIygGXAfSpKHKmfHDwxL8+nnUu0VOes+FdqwO5mykjI0D1bwiZ2s3G1CwdL9
         cKiSCsJ+1YVVtjmjh2HEMTkQlRcOjd6mRnXIAPI3PS+ftkGHWdUpjCabxixY0r6e/3qT
         jR12TPNHtyhi6DHUf4D7MMSDKWucRK2dCIwcNkcWHYEiCadFbB5qkwCVkuK1wwO2eYfn
         F/tmJ0Ev3a4pU1xIFPaJEz2kql1CZMJxjyZl0VXIVFBs77J/qkPQKyajsFMJWsIg5KMb
         cjww==
X-Gm-Message-State: AC+VfDxI2SpJAtXen+85H18db2vC32/0dx+5/Qs8eWx29z+d62C0u4V5
        hlIzjFg2L3QWs3Hd0b66V5jDWw==
X-Google-Smtp-Source: ACHHUZ4HTHySU0+5n1d7HinlNa8FFLgd4USGZRm896mhh/4Ct2YmMYGFo40o7zNESd/6HpO2yCYeIg==
X-Received: by 2002:ac2:4907:0:b0:4ee:d8f3:1398 with SMTP id n7-20020ac24907000000b004eed8f31398mr1906642lfi.68.1683486460339;
        Sun, 07 May 2023 12:07:40 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id f8-20020a19ae08000000b004f14ecc03f1sm755841lfc.100.2023.05.07.12.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 12:07:39 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 4/4] ARM: dts: qcom: apq8074-dragonboard: enable DSI panel
Date:   Sun,  7 May 2023 22:07:35 +0300
Message-Id: <20230507190735.2333145-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230507190735.2333145-1-dmitry.baryshkov@linaro.org>
References: <20230507190735.2333145-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable MDSS, GPU and DSI panel output on the APQ8074 dragonboard.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../arm/boot/dts/qcom-apq8074-dragonboard.dts | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
index c893afc00eb4..72f7e09a5bbf 100644
--- a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
@@ -48,6 +48,57 @@ eeprom: eeprom@52 {
 	};
 };
 
+&dsi0 {
+	vdda-supply = <&pm8941_l2>;
+	vdd-supply = <&pm8941_l22>;
+	vddio-supply = <&pm8941_l12>;
+
+	status = "okay";
+
+	panel: panel@0 {
+		compatible = "sharp,ls043t1le01-qhd";
+		reg = <0>;
+
+		avdd-supply = <&pm8941_l22>;
+		backlight = <&pm8941_wled>;
+		reset-gpios = <&pm8941_gpios 19 GPIO_ACTIVE_HIGH>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&dsi0_out>;
+			};
+		};
+	};
+};
+
+&dsi0_out {
+	remote-endpoint = <&panel_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&dsi0_phy {
+	status = "okay";
+
+	vddio-supply = <&pm8941_l12>;
+};
+
+&gpu {
+	status = "okay";
+};
+
+&mdss {
+	status = "okay";
+};
+
+&pm8941_wled {
+	qcom,cs-out;
+	qcom,switching-freq = <3200>;
+	qcom,ovp = <32>;
+	qcom,num-strings = <1>;
+
+	status = "okay";
+};
+
 &remoteproc_adsp {
 	cx-supply = <&pm8841_s2>;
 
-- 
2.39.2

