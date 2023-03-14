Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 282266B93FF
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 13:38:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbjCNMiK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 08:38:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbjCNMiJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 08:38:09 -0400
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 521479EF6D
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 05:37:36 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id r27so19770850lfe.10
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 05:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678797092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yeylFVo7UbFotxXKN5Jk9AW63WMsXe+ARjqLamdFW7w=;
        b=TnC/4hFGapHh68zKp4S+/zqfvQiyon/r3tWK0PyeaeGPN69yAVNeMxRTXbGtwrkICW
         F1oiW5TMWIW6yxyt27InWqWQuTXkjCDfIknY7GeL+ZE97Fow41SWnmtG3dnOAQh5ov4U
         p3Yar1GlPxlm+MgrzfmTrtmKEku6H+iZcF0Z9sBkti0BScvbkiX2xNCBUeLGM/ynymS4
         eJRhqqHU1Fiym1KK01AnUjN9c3gMIZ+2+Pp5RclvcgtLbMYTcUnuaQJMRL4ChAmTrTEX
         56F07o0VlgvUy+D2c9RW2rIJMdh0vj3qxFElIlR7rqDHyT3OfQci/DOshFKVMWhhMWO8
         uV5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678797092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yeylFVo7UbFotxXKN5Jk9AW63WMsXe+ARjqLamdFW7w=;
        b=NIRSRvI9t0Y/aLi0er8famHlBiHdGuk7J3Cczp2YqXvTXMjH7Mnl5BuHf9ginRPRzc
         hNT15L0rlpz3SwJ8NRc8zRdwIa8qBgjLLnMy9ma2gufxcNE7LuEnxOZkJbAUitH0MBHM
         a5y56cNQcNTECDI0xW2ICF0paWZ4AfhDJcYcyBlLA72I0sdesQq0GncGswHIm9mVttdm
         JV998P2neP//w19WlMqWpgVOzKvka2AY3XIOptmIp3KRpIq9VPuBaExfqRD7TdX4K1An
         axhcIim8I82b4d5PC9vHb+df4uXS48kvIdZ6cL0KLtbudTnwn2PXj3MHNKUtdRZEv5tv
         HE9g==
X-Gm-Message-State: AO0yUKXIGTSRNG9JOkjYoEY59LwK2jPNLlvQonoCJrlJ9MZywHOjlNfW
        LrbksZtOHCpsy8X1iHOk1ebf74NNIhNLsaJfnEs=
X-Google-Smtp-Source: AK7set83jGmoRhPfkqMbcEJHHm7krfEcVsYNn3fRI8hjQUMi1nyZZcK+S70SwgroH8ClftZB5Jk5Hg==
X-Received: by 2002:ac2:446d:0:b0:4e4:b9b4:bf25 with SMTP id y13-20020ac2446d000000b004e4b9b4bf25mr748332lfl.68.1678796066123;
        Tue, 14 Mar 2023 05:14:26 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id s4-20020a19ad44000000b004dda87ecae3sm379058lfd.246.2023.03.14.05.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 05:14:25 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 14 Mar 2023 13:13:48 +0100
Subject: [PATCH v4 10/10] arm64: dts: qcom: sm6115: Use the correct DSI
 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230307-topic-dsi_qcm-v4-10-54b4898189cb@linaro.org>
References: <20230307-topic-dsi_qcm-v4-0-54b4898189cb@linaro.org>
In-Reply-To: <20230307-topic-dsi_qcm-v4-0-54b4898189cb@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678796043; l=835;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=fTDJ/Pk/K83TEsz8nt+gatYoQ7InKrC5bjtKXy4Z9Sw=;
 b=HhZ4vHeSq1k1zTiLWtKr3SD+hh+THRKo/3SDYCP8seyGUW6Irn5LUOqcX+223SewxioRXEQR3Uzk
 jQn7R0qWCdG+pjWnvGDWgOMp24G1gVyrZyKTgLB39uI8m2Ev/nR7
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the non-deprecated, SoC-specific DSI compatible.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index fbd67d2c8d78..18c7eedff300 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1219,7 +1219,7 @@ opp-384000000 {
 			};
 
 			mdss_dsi0: dsi@5e94000 {
-				compatible = "qcom,dsi-ctrl-6g-qcm2290";
+				compatible = "qcom,sm6115-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0x0 0x05e94000 0x0 0x400>;
 				reg-names = "dsi_ctrl";
 

-- 
2.39.2

