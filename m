Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C90A5E8AC7
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:29:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233590AbiIXJ3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:29:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233599AbiIXJ3O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:29:14 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 582EB13A07B
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:29:12 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 10so3707963lfy.5
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=e0x+n06hV5mMu68CdHdoiGvRmngz5GOt9vNpZJY16Rg=;
        b=A4Ia+iMkg7q1KZc0e5t3tnHCjWwXPP19hIwQGyKINHOThQuOY04Y9oEupgiP1kjfCx
         Lddaxj+ftBazMurQtdWEgQaY/PoEn1vO4J4TYD6/feGhpQaT1zkkMPpwxdTNohmLfqcE
         goCUQYKDO3phBJjEFQgSlvJyPT+f42EQIkNvpaZ8L4ydYQ5jgUSNhmPBCxPAIVdCiVcA
         U6DknBtakaukK5Vqg/dZUE9eANznmUB2xjoq8WS+H5m3zLu1fWvK9kmo3HOQaD89iY1z
         1qu0AVoAOcik6buhmWR+YbN4xqTm4mgEZgN7xvgPdxrOm4f4xgmltTR74mzzuEBCWaZg
         BEhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=e0x+n06hV5mMu68CdHdoiGvRmngz5GOt9vNpZJY16Rg=;
        b=6+dl3SkM3DuepjYRthUqJg1e3QC9utujEZQ2cLdgBKGiFaapWcgQU1yc6Zb/2YyLl3
         4mvDnNsZ1RZBnVGFkiGArNNeshPnfMnVpke3xaNZ/uBR8JmdTUoYZiCdcWDEbQviJOsE
         pgjtUXrKcfiQ9oZ5d1rsedKu7T5iZ8gsw9mxbEE+bPu0mlOagJTnoZpk5rD9MKrL8Y8L
         GFMOUXCRPDjUtwh1TpnYYiWPSJ2UoSGZn91BJfGRM5jmsamSgktQ/pyyvrvBzoA1G8t2
         QC3Kmwc/TyrcTAnKU/iUVCuMGGjh2dzWx0b4vEm1MDE4Kz7sWPivbQNjNfiUXV4p98hx
         +k2Q==
X-Gm-Message-State: ACrzQf0tk8IMUL8ptMhM+8CC1lGfimcqie5+RJRVFRrwgWlbskxXCXhW
        JP/0bBFP8h/7NNGUQ591uJkp8g==
X-Google-Smtp-Source: AMsMyM6u2fZyvcRB2sCwnQ38Ns95A5PFsTtukBYF2ddfLMppMdFmN6x0MPy+enNFQEE81mQAGyULkg==
X-Received: by 2002:a05:6512:c12:b0:49b:755d:fde9 with SMTP id z18-20020a0565120c1200b0049b755dfde9mr4656911lfu.181.1664011750727;
        Sat, 24 Sep 2022 02:29:10 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c24-20020a196558000000b0049472efaf7asm1828118lfj.244.2022.09.24.02.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 02:29:10 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH] arm64: dts: qcom: sc7280: assign DSI clocks
Date:   Sat, 24 Sep 2022 12:29:09 +0300
Message-Id: <20220924092909.175418-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

The driver (and the DT schema) requires us to assign DSI clocks in the
DT node, so that the clock tree is setup propertly.

Fixes: 43137272f0bc ("arm64: dts: qcom: sc7280: Add DSI display nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 13d7f267b289..d5c01ee1d2fa 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3636,6 +3636,10 @@ mdss_dsi: dsi@ae94000 {
 					      "iface",
 					      "bus";
 
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi_phy 0>, <&mdss_dsi_phy 1>;
+
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC7280_CX>;
 
-- 
2.35.1

