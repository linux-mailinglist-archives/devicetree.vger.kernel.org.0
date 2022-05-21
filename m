Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBA3652FDB1
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:21:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239211AbiEUPVJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:21:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344148AbiEUPU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:20:58 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56905B1DF
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:20:55 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id u23so18829282lfc.1
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VRcBfW2FxHKYJoVpxfrI8zGrGf9W6wst3qWpXKD9jig=;
        b=hdxnN4Cr3+qe/oZfCc6yplYDz1cgz8Nue9fMQ6/9X7NlTn2BA2eb2F73e2Ye9jksUK
         oFkask0k/FULyTIgR79lfl9fNivZt9x7rj9o7GMQ3DTAchuRgbxMDwljFRvWsq5oddxl
         zPiJV+OU8WhAqLqHXWI9XSqd3xOgBF/u5CLn3Xx6Fho/53DUf2lg3yvVr3/ub+RjiOcP
         zt470E3WXuvsXPgJ07BRamcNzMWMtlmP2+csddG0YKahEPCmtuMfVQK+sju28HM3FySh
         rtNeMlcRp+ecliqQ8zm2FZ2zOWcLT37CMBoPOjkWXQ04CaIT1obuT5H6xK0GS8xAZv2o
         ixvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VRcBfW2FxHKYJoVpxfrI8zGrGf9W6wst3qWpXKD9jig=;
        b=MxW13c3V8DjZLEkVcY4CR82wH+u7x1X7zRSTL3CLh8ycYiCaxsUvYq6PLVJ+x1CtD6
         9ftPhwOde2CB+tBQRyvvQwqouY/M5RtiDcdPH1giRi9QNdXze87ccquVcyIHYOEPUGVN
         lKXu2z3E+OWieljTHlsuBUrV0bxmjuIOzMZiV/Nxftv2RnvFA9z6kMC9OnnTrZ52U/nA
         z0Zk4Qqw+ztA/vQxlYEWJrcnlPUj9yJ9VUXLDG3onzWXpyjbo3jpcrs5vJQwKnyLlRVS
         Z7NEHH6Qcmfu7UDSJ+UTHqRsVRnrDT7tdGrjwhgAdbVzHs1kNqLFhY0ScvdLl5auAPMy
         hTzg==
X-Gm-Message-State: AOAM532SsnYutIv83KfOU94VrqyAD0P98UzooJF2XXOt7O1OLLebS7Et
        mjszDzExHF2Uf0cu/QlgmFhaq1jVDIoHRg==
X-Google-Smtp-Source: ABdhPJwHRu3YEfAl5NR2cBRHc9udMgAZp05k2dmwQrbzb9jGfi6/hgIYeDMGghZX30HGV2CUycwJgg==
X-Received: by 2002:a05:6512:3f92:b0:447:769c:1b2c with SMTP id x18-20020a0565123f9200b00447769c1b2cmr10525896lfa.387.1653146453235;
        Sat, 21 May 2022 08:20:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([94.25.229.156])
        by smtp.gmail.com with ESMTPSA id k8-20020a2e92c8000000b0024f3d1daeccsm739933ljh.84.2022.05.21.08.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 08:20:52 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH v6 01/11] arm64: dts: qcom: sdm630: disable dsi0/dsi0_phy by default
Date:   Sat, 21 May 2022 18:20:39 +0300
Message-Id: <20220521152049.1490220-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
References: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Follow the typical practice and keep DSI0/DSI0 PHY disabled by default.
They should be enabled in the board DT files. No existing boards use
them at this moment.

Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 240293592ef9..8697d40e9b74 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1559,6 +1559,8 @@ dsi0: dsi@c994000 {
 				phys = <&dsi0_phy>;
 				phy-names = "dsi";
 
+				status = "disabled";
+
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -1592,6 +1594,7 @@ dsi0_phy: dsi-phy@c994400 {
 
 				clocks = <&mmcc MDSS_AHB_CLK>, <&xo_board>;
 				clock-names = "iface", "ref";
+				status = "disabled";
 			};
 		};
 
-- 
2.35.1

