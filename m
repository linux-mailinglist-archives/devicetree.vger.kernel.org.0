Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA03965668B
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 02:32:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232302AbiL0Bcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 20:32:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232361AbiL0Bch (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 20:32:37 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 504EF2673
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 17:32:36 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id y25so17825270lfa.9
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 17:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3TVkAZLn6xEiSVHIuCMOu53NayhUzE/k9oibYK/dDvI=;
        b=Zj6PUkuM2VItJ02WnHEi12zZkU6DpgUS5frg251XItJd8qHhZrFDlVzJeVxrcmZs9n
         goiCFvq3Ty1S3MiYA+gLbUeLS2TattTvxTfuauWXatnTbAlCP/EmaXqDJsSFvuwG2l5F
         6WlKDQy+XJncBofcJ5LzaQNleSJqIJzAolj+d5paIGD+Zg43xQlptSjLgrmsuwtdNOsv
         48u/WGS4PbwIB/7EJMgNnq+zgfbtSLJy/0gKRYJRQMNICN3koHZErN+AthYWHPlfcw+g
         muxdQYDOECLkJJR5dxdjWWqEmGrf18CZXZjOYBmIhR1EMyyPgdAXkcCynWl2nbbt1rvF
         JgXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3TVkAZLn6xEiSVHIuCMOu53NayhUzE/k9oibYK/dDvI=;
        b=BpYDj626r7BnfH4Y8gNL8OhRWzB51WiXq9BdljGZep77YDtnMGGX3PLXQlby9+sFmr
         Ej50Qo92IT2aBxW9pWK2PMKC+hSMmL+4JGFWzkZETm1SNy2aF+hs4ltiWoH6/MCOSZJa
         MkBaZuSgnIXepX+460aJ9hg8kxaSOKixCcGlwv6/S+XEoWVPd1WMT6BYeV1e1Q3tzWJD
         JZHW//xsZ6u1HObXPdrIehI4HgcOjEjpavOHL0snc4M8DdKi6INFCKDXTailSXsfhZLy
         R90kO9eP9nLZDP/jliq338w4cxMROsYN8rOyQihL5mLuUBikpa21SwfIcYvW1npQa2KU
         /zjg==
X-Gm-Message-State: AFqh2krYH8/sLP4Xuexz9V11KrmPuaBirpy7VE/ncn1yy0qquEkrMrNI
        rtKCwsyHckaZ+qBmBanFAD1ujA==
X-Google-Smtp-Source: AMrXdXvk1MzxkNutzwGZwEFM9pXsY91JAfRyuyIoaYdM7l5q4O8ZyIAaAyxpGguhE8NFB9X1tKg78g==
X-Received: by 2002:a05:6512:2a91:b0:4b5:a9ca:9725 with SMTP id dt17-20020a0565122a9100b004b5a9ca9725mr5129337lfb.28.1672104755907;
        Mon, 26 Dec 2022 17:32:35 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id v6-20020a2e87c6000000b0027fbb12aa53sm674752ljj.20.2022.12.26.17.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 17:32:35 -0800 (PST)
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
Subject: [RFC PATCH 12/12] ARM: dts: qcom: apq8084: add clocks and clock-names to gcc device
Date:   Tue, 27 Dec 2022 03:32:25 +0200
Message-Id: <20221227013225.2847382-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221227013225.2847382-1-dmitry.baryshkov@linaro.org>
References: <20221227013225.2847382-1-dmitry.baryshkov@linaro.org>
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8084.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-apq8084.dtsi b/arch/arm/boot/dts/qcom-apq8084.dtsi
index fe30abfff90a..815b6c53f7b8 100644
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
2.35.1

