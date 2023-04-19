Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2819E6E8380
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 23:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232157AbjDSVUw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 17:20:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232343AbjDSVTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 17:19:35 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 895F69020
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 14:19:20 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id b16so1733306ejz.3
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 14:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681939160; x=1684531160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EZpUWeUVKH+p0X4MguuCyyKht/jzX/fPrrtUBUOQBf0=;
        b=MNNkhDAkW76yal/Dy6RscYKx4VOnSTsP3k24rg5RWdA74Fo1UT/g16HpSQ8C8SaKN3
         sgB/VoUutgymctDUclo5htn5bcX+NVWKSOj78aIvYh9Qsb/XYTMBEbcO//RlNgjb79Ls
         1XPSVcshCUqfcAlT9OVXXGtb7WhLTY5mAF6ScPwJpOdZrlEzWi4Z6CxUoht4oEsDx+S5
         hvLXG/DClKZdgIosL/EQngwoIvHeNWjl7DxuJ/CAfP22SlnAr6wNkzlnInirqpTCbWdy
         69aPxTo1tlK3pFfCvmyGiKZc7eNX+2mNFs/qjXNun+50vauP3r4kWVwBtYfg1Adgmucp
         r6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681939160; x=1684531160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EZpUWeUVKH+p0X4MguuCyyKht/jzX/fPrrtUBUOQBf0=;
        b=DzjO1dimHpHKOm1FB02HEKtyjUUm9Ll3CK+RRfeDNDcO9EOz/WVgXra22ePolPadrH
         5uv5L0h/8eQth2U3nTn1v+Dw8+ZOoVrHbw6S9MS8uZ8dnEYSVOistKMR9fc2TV3u8zu2
         ZS3/LtQ4xU8vZgs5wVkXLS+PFoUjhiZ125xsDcUH2LROMc/EEmCNm+ga1QeiLSWkNCG3
         GXl909MFwHzVK7B19jqLtfiV3Bvf3ArYxEZirSN97k9/4e1v5+Cm5QcUoI4U0lmquWKy
         UpI+GtgZTkWJ9LNrAEtHE7q+Ajn+V7iYI5HATS9HxACEeCnkBWZqqNH9Fae0xl3MTpfo
         RjFA==
X-Gm-Message-State: AAQBX9fDlhdzx7qAH4w9BAlTAlllXwa17HjuNkK3KTaDxQRDmkNiu54Q
        cv4oIIplisITIYNq0D6HS0onWw==
X-Google-Smtp-Source: AKy350Yki2rlI0mwM0v88c/sT8/P/mTALW317G6mGzjfFHZUJNu5XVANhloAzAHnZJLDZtp+JmZ5VA==
X-Received: by 2002:a17:906:fa18:b0:93e:8791:7d8e with SMTP id lo24-20020a170906fa1800b0093e87917d8emr15199079ejb.2.1681939159885;
        Wed, 19 Apr 2023 14:19:19 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:976c:1d6c:6ed0:8935])
        by smtp.gmail.com with ESMTPSA id a12-20020a17090682cc00b0094f109a5b3asm7092739ejy.135.2023.04.19.14.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 14:19:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Todor Tomov <todor.too@gmail.com>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Luca Weiss <luca@z3ntu.xyz>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Adam Skladowski <a39.skl@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Robert Foss <rfoss@kernel.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Molly Sophia <mollysophia379@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 13/18] arm64: dts: qcom: sm8350: correct DMA controller unit address
Date:   Wed, 19 Apr 2023 23:18:51 +0200
Message-Id: <20230419211856.79332-13-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
References: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
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

Match unit-address to reg entry to fix dtbs W=1 warnings:

  Warning (simple_bus_reg): /soc@0/dma-controller@900000: simple-bus unit address format error, expected "9800000"

Fixes: bc08fbf49bc8 ("arm64: dts: qcom: sm8350: Define GPI DMA engines")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 3efdc03ed0f1..a9af730e0b1c 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -907,7 +907,7 @@ spi19: spi@894000 {
 			};
 		};
 
-		gpi_dma0: dma-controller@900000 {
+		gpi_dma0: dma-controller@9800000 {
 			compatible = "qcom,sm8350-gpi-dma", "qcom,sm6350-gpi-dma";
 			reg = <0 0x09800000 0 0x60000>;
 			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1

