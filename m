Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDB35635AD1
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:58:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236260AbiKWK4F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:56:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236328AbiKWKzX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:55:23 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1ADE2729
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:44:48 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id be13so27579497lfb.4
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BZqwSsUL+ERMj/YRxLvgc19HO/tKKIYJN0Ik3nuPdfk=;
        b=QgovQ2rk35SL5nPJOLJdNMyGzOLIR6k38vxoAbX12yZ+s7BSrY+WJ5lyqfJ/7oI0Bq
         gYTYTXxOng4msb5IEhChmwm8t4o7rndARpmei0uIYmX6ItJ0PcF0Q5M9fCUNNwog39IO
         idW8NmN1mxQPIPcVQQO5HBRh6KSwzcs64O5jaBRG1wH34KQGUwf6Iej15eoXFXIcGRyf
         jF357Iobqgra9a4/coSMWK67oDMGEkiyV0yg3GdtIiwyILzZUcnArrHk7HzzjVo6tw49
         27LGT3F0wHvsGiBckO059I7nRFM9MBJ5ljf9MPzcKe1ZWp8nAlWBa93hoSy8s5t7K/za
         Pr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BZqwSsUL+ERMj/YRxLvgc19HO/tKKIYJN0Ik3nuPdfk=;
        b=IDDOn0hEy9HTwxjEI7jhl05hIlhCHbidI0HrcdaRj2QL6qAYXGDC+OzZW5RdUpFhMv
         c/88YVjgf52tKUPvlAzrF8hd0i4pqz1BG8GKaDiTvxqbA4HcMRQZ3hoq3D8i8jMxYgqA
         gTdaZd5pGYp+SKJwV8fLwy/a40TZlkI9vRJG5wClAROwI6z2cCdE7wW+WOtyjAv3gYPe
         wEmAdqoLPwy4Enh6E/+mEQF9aLj7dXbEBkDM72FEOm7vo2AJr+XN2qXMuTwocXr1UolX
         mdKgWL3kBYPTqrKYr2f3rFLa4NDAzt40bAO+fNhV19RKtJqvfMDnaeFiyRpq4tCQU837
         RNVg==
X-Gm-Message-State: ANoB5plo4NITrCn7tQ9cprMEj7lq3clG0C8+1cytOzAxFqlWtKG4NrOa
        R0ndY6JiZPX1MpD8YHRay6G8zQ==
X-Google-Smtp-Source: AA0mqf5RIDe4HX4rkFZ+er8WRhzzIbPIQEuuizkIy43aNNZunXbjhlx1KrkcIvfemtapD5ORPOpg6g==
X-Received: by 2002:a05:6512:2c85:b0:4a2:5937:e9b with SMTP id dw5-20020a0565122c8500b004a259370e9bmr8783104lfb.11.1669200287236;
        Wed, 23 Nov 2022 02:44:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id be34-20020a056512252200b0049e9122bd1bsm2869082lfb.164.2022.11.23.02.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:44:46 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johan Hovold <johan@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v9 3/4] arm64: dts: qcom: sm8450: fix gcc clocks order to follow the schema
Date:   Wed, 23 Nov 2022 12:44:42 +0200
Message-Id: <20221123104443.3415267-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
References: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
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

Move the sleep_clk to make sure the gcc device node follows the schema.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index d32f08df743d..efb01fefe9c7 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -720,13 +720,13 @@ gcc: clock-controller@100000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&sleep_clk>,
 				 <&pcie0_lane>,
-				 <&pcie1_lane>,
-				 <&sleep_clk>;
+				 <&pcie1_lane>;
 			clock-names = "bi_tcxo",
+				      "sleep_clk",
 				      "pcie_0_pipe_clk",
-				      "pcie_1_pipe_clk",
-				      "sleep_clk";
+				      "pcie_1_pipe_clk";
 		};
 
 		gpi_dma2: dma-controller@800000 {
-- 
2.35.1

