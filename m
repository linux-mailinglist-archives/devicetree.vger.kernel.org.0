Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 722E06930D8
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 13:27:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbjBKM1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 07:27:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjBKM1F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 07:27:05 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 031721EFDB
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 04:27:05 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id qb15so19801369ejc.1
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 04:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCJBJqQCcyLQd2npv843DzJ+BwQfckxzSozxdJyGi5Q=;
        b=sHWvN42dWrU/g6lxiby2XZnb861ebOkI0S9P1oAciJsf205ek1LaHUJnQxaIS0oXKY
         DeUvHlqa2U32CEO+TfcWX7yLoXFXPDAGzFjRgOAjNPjCdMNoCVEkf26GX8+X39fbYzUA
         PXgrzyTChmFpPL1Sk89eqVOxwzlLDciDB9fy35b70fn5DNAAW8OQyHFhcTAOsiB6lIr7
         azH1O8pJNC2pMsIVTB+zsv2d6LdaFh5kJ596rVpxlAmelaRN/KTUbeD0qpeDXmcyyC/7
         /xzSsTgkPw8HIpdgzy3rFrtRQpYNdgdsAAWnPIBaJkVvjk7/m/z3tG5rmlm6tEOPGkyX
         1cDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LCJBJqQCcyLQd2npv843DzJ+BwQfckxzSozxdJyGi5Q=;
        b=giBggT8rTklaV6dQCBrJ10/58TvdC9pFNVGO2j2pSXOZ/FVTS4WcOh9Sluv619oF9f
         mzZXKggZIRNSob4ccm+/FcgtjnW2ITiLM/twu3hHYFNaF25wPac3D+/7T9UM6uuqiIf/
         AMHe7KpaaHaJcYQoDMIg0ncd8lYKx1co9qNZ3vo0n1YFoGmAWW1ZUAmvI13ocKLDcQnr
         L5d2TDcgUJ0li2ajOGX4wouDgTgMx/G0C167Y6An6cblp/8kSVuXnGAjcom4i6QSZjIT
         Z6zWHBKzdQLusFIuMZ5gaduHKZR/tpvldLLU0xHqsOWhJReo0AA3PlOXTUDz32ipCK14
         KUeQ==
X-Gm-Message-State: AO0yUKVliHaE6hlZfwGnB4epxmC+UAQPEHDZAEfdOc/Yh8XnRJFeZVam
        2M3W0FBQ2VCWC02j41bEtMa7jQ==
X-Google-Smtp-Source: AK7set+bK56mjbbPp+UWSHs9x73Jo4yaH42c3isyrxt6UL0JHcFwHw/7m8zQx+6R/avr/CAh0Hxv7w==
X-Received: by 2002:a17:906:b0c3:b0:878:59b6:c194 with SMTP id bk3-20020a170906b0c300b0087859b6c194mr17624887ejb.32.1676118423428;
        Sat, 11 Feb 2023 04:27:03 -0800 (PST)
Received: from localhost.localdomain (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id mv9-20020a170907838900b0087bd2ebe474sm3767941ejc.208.2023.02.11.04.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Feb 2023 04:27:03 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 02/10] dt-bindings: display/msm: dsi-controller-main: Add SM6375
Date:   Sat, 11 Feb 2023 13:26:48 +0100
Message-Id: <20230211122656.1479141-3-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230211122656.1479141-1-konrad.dybcio@linaro.org>
References: <20230211122656.1479141-1-konrad.dybcio@linaro.org>
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

Add the DSI host found on SM6375.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 2f946bb9fe24..41cdb631d305 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -27,6 +27,7 @@ properties:
               - qcom,sdm845-dsi-ctrl
               - qcom,sm6115-dsi-ctrl
               - qcom,sm6350-dsi-ctrl
+              - qcom,sm6375-dsi-ctrl
               - qcom,sm8150-dsi-ctrl
               - qcom,sm8250-dsi-ctrl
               - qcom,sm8350-dsi-ctrl
@@ -355,6 +356,7 @@ allOf:
             enum:
               - qcom,sdm845-dsi-ctrl
               - qcom,sm6115-dsi-ctrl
+              - qcom,sm6375-dsi-ctrl
     then:
       properties:
         clocks:
-- 
2.39.1

