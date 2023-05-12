Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F5276FFE0B
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 02:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239679AbjELAcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 20:32:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239681AbjELAcp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 20:32:45 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BADA7693
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 17:32:40 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ac8d9399d5so82758671fa.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 17:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683851558; x=1686443558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WcrbCAngai1gJP+uz7CuGmMzMn9VwTBw+sIaCb/i0AQ=;
        b=XKKdhcbnjkrhqAbtx9NvFsrcaY4WDQ2nGoe6K+WcAFbSUDXEMuH4bAZSSDdIH9rPpB
         yoVpaok7gcfd3Vnzu7AsdrFKadSHy0NdheTNDWyf1DLABpvS40ALroxtmRJXs/UDzJML
         x/0zv+6icepwz5Zvlx4CRbXlWCevq1mbDaZ9YUSzvG3kCJB3IGkno7zz0G/7mFQb7uZl
         BAYH1EsHDNXXaDwBvLuRlhPd3dQavyxDDxsuOWEjW4RxNlKxyPCREkRGNjNWSikSPwcz
         p2v6wabrjomB750MV4Ww4sEsh+cbyYBhlL3zLPuaAuq2fyOi6oADD0Z/E2JSohTxez72
         qRoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683851558; x=1686443558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WcrbCAngai1gJP+uz7CuGmMzMn9VwTBw+sIaCb/i0AQ=;
        b=KTgy5+CPsBGkwNwe9HkXNqFB+iexgdlHiLqyiLmu/uUXBLMhonmoxGIHgVYR9okOEt
         Nucp8NnaacPHc+4F98VfXi273/c9HVY4ygsC+E1HnDNrZ+1J82gXyo2J5kGUrU3CZXv7
         QODanVAiE3GbSOIr2JgD/HYuIZqTByXg4yw5Id6bbla8pPeITYPku6ajY+tlIW2Kowzx
         Nr2k4qZu7heHRLrHEQs+xcnPtK487qW/9qj2nhDk2GdeLwGLMnnTg94Ujq7zHHMgbRw9
         j+DRsRxaEwwJQG8i9i+dt8DGIFki9SLq/YdwU1D3rHpyqtSvTLpU6+qGvxuobfKQRnd2
         MSmQ==
X-Gm-Message-State: AC+VfDxOyruDjT/qG1DBHw8cVuD7BDLWpKrp2qFSZdxwFG3jeXy/ifdp
        Igg7YoGsaLF5cqpQ1hX9zHSrFg==
X-Google-Smtp-Source: ACHHUZ4PkfyS2pLW+IZdpRUbfSgdVlLRsTn8CzuQwzjgVmJNhHiNkn7WbdS7K3CZl9DWdYLW73rL3g==
X-Received: by 2002:a05:6512:1024:b0:4f1:4e95:119a with SMTP id r4-20020a056512102400b004f14e95119amr3036366lfr.12.1683851558216;
        Thu, 11 May 2023 17:32:38 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i7-20020a056512006700b004f13cd61ebbsm1282708lfo.175.2023.05.11.17.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 17:32:37 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 09/10] ARM: dts: qcom-mdm9615: specify clocks for the lcc device
Date:   Fri, 12 May 2023 03:32:29 +0300
Message-Id: <20230512003230.3043284-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512003230.3043284-1-dmitry.baryshkov@linaro.org>
References: <20230512003230.3043284-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify clocks used by the LCC device on the MDM9615 platform.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-mdm9615.dtsi | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index b40c52ddf9b4..556abe90cf5b 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -39,7 +39,7 @@ cpu-pmu {
 	};
 
 	clocks {
-		cxo_board {
+		cxo_board: cxo_board {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
 			clock-frequency = <19200000>;
@@ -113,6 +113,20 @@ lcc: clock-controller@28000000 {
 			reg = <0x28000000 0x1000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
+			clocks = <&cxo_board>,
+				 <&gcc PLL4_VOTE>,
+				 <0>,
+				 <0>, <0>,
+				 <0>, <0>,
+				 <0>;
+			clock-names = "cxo",
+				      "pll4_vote",
+				      "mi2s_codec_clk",
+				      "codec_i2s_mic_codec_clk",
+				      "spare_i2s_mic_codec_clk",
+				      "codec_i2s_spkr_codec_clk",
+				      "spare_i2s_spkr_codec_clk",
+				      "pcm_codec_clk";
 		};
 
 		l2cc: clock-controller@2011000 {
-- 
2.39.2

