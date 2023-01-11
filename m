Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D3B7665450
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 07:05:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231899AbjAKGFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 01:05:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235865AbjAKGEZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 01:04:25 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20FF98FE6
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 22:04:14 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id m6so21915695lfj.11
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 22:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKkWqN5cimdLBNmps+85gop0wy/2yT2a83j/RNY11uo=;
        b=Z4mCPH78OV2Aez7pGpL1IyemBBArY6Z57yS5gu7KCmYtN9XC1vm7zlA1ATLldL93YR
         rZ35ak0RVdkHPqW6cwTS41JuGnLB83tSPK+mXumqcYX4L4LfNMFolcyuvhK7NgxUT03w
         6q+5aXdmv6rpWxK/fI4P+Ny+cahuwdYOi9cOxkk7XbyT5DzamWRbTpxF8UsDDcQ9No0p
         SwY4YIk5tsrB2k/Jxtu/0eY19lyzz4k0WBiW1T3hyq7kyEKViZAT/nkqZSSncF7QwGM5
         CKaqLWlORdgo4FE40CIYfXOUMJ1G1m89Z2aNVvMwhRKVVL6Y9i/zePBQbokoIrXpKl9I
         zQkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kKkWqN5cimdLBNmps+85gop0wy/2yT2a83j/RNY11uo=;
        b=EI183uLY2ddLBqcpb67mxoBpLeJTXVX7AeFiLjpY1kG0dWx/GgkUhvYevhajeYJKPo
         rI+1VvnFH8EK2FQrxB0p8q19Drct0tQ2civp0oEmO+hKHTqSFImmfWsYHizYrH9OMYDX
         vCwEQzd7NEan+eYMaitDqNa1IXtsKFDP8LSLBoVC2/KPNGIy83H0wK0cYinr+grohTKg
         eVDZJqGr9n0Satw7Aqs9Tty7dZUlyKCnuu/MJlszYKM74sd6WJBCzd2Xq7YJPOgF4zos
         tj4hwq0rYD9RuAoCfC3u+SDx7y2xm7al3m92ugm8PaPPyDhVzXaXzEoH3k4WkZZ1aKvd
         yoiw==
X-Gm-Message-State: AFqh2koxksXMNXfhLQw1s7bOWvra6nBHVGXztBG/tLNzuvgVW9hNZoJv
        Oau2/DTVIRJpUpn8XghCq3dFxA==
X-Google-Smtp-Source: AMrXdXtq+gqLBkTkxHKvPowxUKG15WGK99D1veGqbXjZghoptgZicq3H4KykW9ICOzuF38Fc80+ccg==
X-Received: by 2002:ac2:4f0c:0:b0:4b5:2f1e:7d3b with SMTP id k12-20020ac24f0c000000b004b52f1e7d3bmr18654148lfr.33.1673417052491;
        Tue, 10 Jan 2023 22:04:12 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id b7-20020a056512070700b004cb143f7391sm2524607lfs.258.2023.01.10.22.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 22:04:12 -0800 (PST)
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
        devicetree@vger.kernel.org
Subject: [PATCH v3 12/12] ARM: dts: qcom: apq8084: add clocks and clock-names to gcc device
Date:   Wed, 11 Jan 2023 08:04:02 +0200
Message-Id: <20230111060402.1168726-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111060402.1168726-1-dmitry.baryshkov@linaro.org>
References: <20230111060402.1168726-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add clocks and clock-names nodes to the gcc device to bind clocks using
the DT links.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8084.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-apq8084.dtsi b/arch/arm/boot/dts/qcom-apq8084.dtsi
index 4b0d2b4f4b6a..4d01f0f2292e 100644
--- a/arch/arm/boot/dts/qcom-apq8084.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8084.dtsi
@@ -388,6 +388,24 @@ gcc: clock-controller@fc400000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			reg = <0xfc400000 0x4000>;
+			clocks = <&xo_board>,
+				 <&sleep_clk>,
+				 <0>, /* ufs */
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>, /* sata */
+				 <0>,
+				 <0>; /* pcie */
+			clock-names = "xo",
+				      "sleep_clk",
+				      "ufs_rx_symbol_0_clk_src",
+				      "ufs_rx_symbol_1_clk_src",
+				      "ufs_tx_symbol_0_clk_src",
+				      "ufs_tx_symbol_1_clk_src",
+				      "sata_asic0_clk",
+				      "sata_rx_clk",
+				      "pcie_pipe";
 		};
 
 		tcsr_mutex: hwlock@fd484000 {
-- 
2.39.0

