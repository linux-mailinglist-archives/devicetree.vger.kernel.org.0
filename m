Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B562367E31E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 12:21:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233276AbjA0LVG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 06:21:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233283AbjA0LUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 06:20:45 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E52AF7B428
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 03:19:33 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id q5so4706397wrv.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 03:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UHPOSXcl0PvUmCRJGe++fk0HPlizptRgv2FYZzA8BdM=;
        b=SZSZC43JlERBqyAp9tfew+eUJBbA43EsO5khxkd+BuRYoVSrnKE3/RcuNe6kLPBHPW
         JiL4/FbmThbpEkU7p+o4+sJXFdZwyV2rq1mEjLx6YIcjHwzGId7+sAnJRtxc/+KwaG4w
         udafqMLhPKNMTraaDLqdHzPx11rCc3EzB8i5SlzygWrkJSWHJKXMP3BYpP/Us6R73Hu/
         gSsMmlxah56UeIZu0J+lPscAiQsEza3DryaUHfJuBcd4SPOaZwzdAhcQ6z7Z9BiSfzFS
         sd8Qe78eddnxcNU9kqHlcvNwleB8CBDD+3xHxP4yho+WYTEy8Q5b0J0ZxRh6g2SOKS8h
         tD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UHPOSXcl0PvUmCRJGe++fk0HPlizptRgv2FYZzA8BdM=;
        b=o4nJa/HU+5SrRdYIMZ/Hn4MD8Llf4y/iMz0+vp6zJyzyjSMutcRMu5Vkb9mz+RyQ52
         ldW4balHk02A6zZkzTuy5gJ87XBtj5gcTx38LajXYAPGsxP3XbclttvjVVS2YshGdJEU
         YsXan9tkVSmItu6q891nZ86xl+1mVQy9f+PI7AnMe6OwxJXP/MNtEHR02i1nliFNjUFi
         SuT6wYLNFoi0sygyJlnm/P6ff/h+rvl9HsF7EybO8YLFhzs3Sj6rFizzH7P3FpSk/xa0
         LuuxN1qebAA6C5vwshrrdX8haRtyqipDp63VhScSEEsnB1oDXjsGjDnP0SCpLdLaNx9L
         88yg==
X-Gm-Message-State: AFqh2koi2X1F2JZKZkpmx48NGZcZ1SiyiMA7R8JPSlxgaZYReZtrKbZY
        kx8qsFIx5RMNJjqmckeOkpIyTw==
X-Google-Smtp-Source: AMrXdXtZvYUmimVob4GRlbfZ1q03+OU88lXorrqvQgya3LHTNzI8WFF5gCfot/o1U0GDuqK6Wh3U8w==
X-Received: by 2002:adf:e310:0:b0:2bd:d8f1:2edf with SMTP id b16-20020adfe310000000b002bdd8f12edfmr35173274wrj.49.1674818357628;
        Fri, 27 Jan 2023 03:19:17 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm4157584wrs.31.2023.01.27.03.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 03:19:17 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8550-mtp: drop incorrect vdd-l6-l16-supply
Date:   Fri, 27 Jan 2023 12:19:13 +0100
Message-Id: <20230127111913.117036-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

There is no vdd-l6-l16 supply in qcom,pm8550-rpmh-regulators.

Fixes: 71342fb91eae ("arm64: dts: qcom: Add base SM8550 MTP dts")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 725d3bc3ee72..d6ae80414654 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -47,7 +47,6 @@ regulators-0 {
 		vdd-bob2-supply = <&vph_pwr>;
 		vdd-l2-l13-l14-supply = <&vreg_bob1>;
 		vdd-l3-supply = <&vreg_s4g_1p3>;
-		vdd-l6-l16-supply = <&vreg_bob1>;
 		vdd-l6-l7-supply = <&vreg_bob1>;
 		vdd-l8-l9-supply = <&vreg_bob1>;
 		vdd-l11-supply = <&vreg_s4g_1p3>;
-- 
2.34.1

