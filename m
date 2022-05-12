Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D3B9525899
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 01:44:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359595AbiELXoB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 19:44:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359601AbiELXny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 19:43:54 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE1F289BE4
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:43:52 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id y32so11723942lfa.6
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ypxafSXytWa1pPBeHJ41K2y3Cfr7QvnghKr6SvtMtAA=;
        b=HYYWbtOp+pyhDnTUwDvvkj8h1srbhPIfBQrtpDMd0/p71LPYf9kNeLldexP27+/IlA
         DKmuRETGMWTAzbrZXw7ckynx1W+70H39NaJvvf3MT69Hn5G51O66aJSgEGvPOCwCo8qF
         Di3kWKlEj/8J0u5nO6JkSomyt10yZY/QZ1ppBaBSlz6AGsaIV1xb6B1LEokUNgBZHD7J
         wX/bTUVuObqRSVHL8bZ/bI4jPbPt7yFJCf6WFHsZhrEx58he4AP6Dsi7KIQlhVzZ30sz
         CTfKOXYgA6Bs0sxGhywL77zjYp20skxWDiwfxpjBEZ1DD6SP2lOz9w9T39W7h6lFlF55
         POJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ypxafSXytWa1pPBeHJ41K2y3Cfr7QvnghKr6SvtMtAA=;
        b=DXqIC9fBrz+6fmlkxJt4s1W9zD4Mu/2FkBKhQ9ZLUZ9huEQ7M7BgvLatAbAbjX/lqS
         As7alt1vgUWvl87l1CPKJ3w4Nl/T8lBOsSs/800u3yOfEFyTfNbDljDNuqnqiNZV3u6z
         OJqZWiWKc6EK82+cIbFupWosnkFJ2CbJvcSgd40QrssXy3LFEtdlxJS9rmPSptBpnlv3
         Bu1UTTA3/uR++MLbFk+EzL6jWwusOk8k0bTna2NnwE+NRptc0bqrPNhLIKeCZRHTbcpb
         fcMzOqmGmf2PVz8ztVjocPfL9tzUafKLH3eR30z6P+OC6b/xWSBDR53myBiRR1W2HJ2l
         g7ZQ==
X-Gm-Message-State: AOAM53063aIbbI/orzmXGt7dbSze80hUAEg7dAblDUncbR2esBCXi8PH
        MdMIKVHafbriW52+0u/laT3I1w==
X-Google-Smtp-Source: ABdhPJzwJLrVsnKk3326SVHGPojUnjR52rHNQWh4Cw/dHGdl35TF1oIKYJTfyCkzUa59MR836Hx4hw==
X-Received: by 2002:a05:6512:22c1:b0:46b:a2b7:2edd with SMTP id g1-20020a05651222c100b0046ba2b72eddmr1501962lfu.133.1652399030979;
        Thu, 12 May 2022 16:43:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u10-20020ac248aa000000b0047255d211b8sm129976lfg.231.2022.05.12.16.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 16:43:50 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [RESEND v2 1/8] arm64: dts: qcom: sdm660: disable dsi1/dsi1_phy by default
Date:   Fri, 13 May 2022 02:43:42 +0300
Message-Id: <20220512234349.2673724-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220512234349.2673724-1-dmitry.baryshkov@linaro.org>
References: <20220512234349.2673724-1-dmitry.baryshkov@linaro.org>
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

Follow the typical practice and keep DSI1/DSI1 PHY disabled by default.
They should be enabled in the board DT files. No existing boards use
them at this moment.

Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm660.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index eccf6fde16b4..023b0ac4118c 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -192,6 +192,8 @@ dsi1: dsi@c996000 {
 		phys = <&dsi1_phy>;
 		phy-names = "dsi";
 
+		status = "disabled";
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -225,6 +227,7 @@ dsi1_phy: dsi-phy@c996400 {
 
 		clocks = <&mmcc MDSS_AHB_CLK>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
 		clock-names = "iface", "ref";
+		status = "disabled";
 	};
 };
 
-- 
2.35.1

