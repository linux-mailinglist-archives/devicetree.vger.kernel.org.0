Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B1616663A1
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 20:20:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232785AbjAKTUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 14:20:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235562AbjAKTUS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 14:20:18 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8C10164AB
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 11:20:17 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id y18so13517402ljk.11
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 11:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/6oxkO9QAPLP0YswH75g78WKyT87UeTs24N1///f/iE=;
        b=GUzn5UYzDux1UDq5x9iKZ0hwiCHxBTdC4+4a/gOGfTQatCqYzPXg1u9laL4niqclbK
         CpJy1E5vVVNKuF13JZRXJJUh+4wgxl8CiPMIneLGducXPFaV4DUEwVpbSyT6LYRotbg1
         qs5K32HRykTy7s0U3UnTXba4a5hPbct7nStNaqX/LAhglEVQFTDftauauce7v54CqYAQ
         Bg+SEBcs2EkKekeZTZYqySjuxGFAq91/qdF89m37d4l+1owcPqKaxntAEWFfigy3biut
         4/L4oA25BMO7XTIWfOpOn+IcMgITki9K24X/Lw7q2Lbelxisgs6NEBH2eKd+cOGhAJ/Q
         afbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/6oxkO9QAPLP0YswH75g78WKyT87UeTs24N1///f/iE=;
        b=vVtHMLrvFlQrPG0QN/5dW+czByWgHgIRkJoX1TI4r8vi3Fod0DV6G5KOsQljA+MNHL
         WG0fvdEuesvX8U8lyx8Rqx8amU8tGuEzdrhcSQGgniY7LZCnPgkmNbNosEjOE+4UsoGG
         JIT4ukSxFJgqVwo0n1k6bTtsEaG/mWtaFvisU3JXTKEpLA5TeieURQs2xTOaWyLX1BII
         GeqJd+ZHn8xpXA/DvQ8H2xI8+LyWNBuH5UdUEGd2at6be8M04wg0pXtnpFLUv5tGWe5j
         ENfxfFH8d8XcZVjdmVjiArj8ASh09b/5wFZ/rfUOS2kYvy+bBu4NnRwteWc99USyhZgN
         R7RA==
X-Gm-Message-State: AFqh2koVPwcoz7K3XgSvHyLy8pnDJGh/tAKLxZdCROztINxGInAIW5KP
        Y/rFM8cMhJa+9+rPnhd5y/QNJJH2j5kk3nWE
X-Google-Smtp-Source: AMrXdXvl0IM1Ir+K7DmFG3Jey9+jyD+I9e8lHBh+JSb7ZROysP5ogmll+FHtNFsKiyGgc5RwSX+hWA==
X-Received: by 2002:a2e:b5c4:0:b0:285:820a:3167 with SMTP id g4-20020a2eb5c4000000b00285820a3167mr2686929ljn.36.1673464816401;
        Wed, 11 Jan 2023 11:20:16 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id bj36-20020a2eaaa4000000b0027ff2fabcb5sm1807787ljb.104.2023.01.11.11.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 11:20:16 -0800 (PST)
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
Subject: [PATCH 13/13] arm64: dts: qcom: msm8996: support using GPLL0 as kryocc input
Date:   Wed, 11 Jan 2023 22:20:04 +0300
Message-Id: <20230111192004.2509750-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111192004.2509750-1-dmitry.baryshkov@linaro.org>
References: <20230111192004.2509750-1-dmitry.baryshkov@linaro.org>
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

In some cases the driver might need using GPLL0 to drive CPU clocks.
Bring it in through the sys_apcs_aux clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index d52023c19682..4e3068bedf4c 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2940,8 +2940,8 @@ kryocc: clock-controller@6400000 {
 			compatible = "qcom,msm8996-apcc";
 			reg = <0x06400000 0x90000>;
 
-			clock-names = "xo";
-			clocks = <&rpmcc RPM_SMD_BB_CLK1>;
+			clock-names = "xo", "sys_apcs_aux";
+			clocks = <&rpmcc RPM_SMD_BB_CLK1>, <&apcs_glb>;
 
 			#clock-cells = <1>;
 		};
-- 
2.30.2

