Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05A0969308B
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 12:51:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbjBKLvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 06:51:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230150AbjBKLvq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 06:51:46 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56BF51EBEE
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:51:45 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id fj20so7351457edb.1
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sLkh67ooWyVObn1J2I1Qu7dXdNbX+Cd0UoL9axKT34o=;
        b=oltznk2rV7cDqVbUdNVtJ8xpjZjQpPXAe0K1+3HPWxtatzOXOJU0Ubuyg6e7SUfbpl
         m1eM9ON4PETCcwFpxrE17SDiVqcgQ4qMA6ASwiLe07mpN+9d9bzDs9zATe7+Xg+3zsKY
         t/Ph1p7W2YsWJorjsNF2YGZyOGu2FKvOehd79IGioJBG2mcvMtjKBYwuAU9pZ6BzxPMO
         tSZ8wVx8O0oVWhRUREjHGe3AacbYvbdiDrqZa+MwBgKjlngPjh42cVTHezvHBh/qgw+p
         KwllStugYL60DK9XlS3dhhhxsAbOIfRRLL27sxg5Xv0eiewLUPW74JInzpF6m4/mOEdW
         +LwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sLkh67ooWyVObn1J2I1Qu7dXdNbX+Cd0UoL9axKT34o=;
        b=Q+quVG24FwQBNeAgJBRZeqlhQUmfqtpCkVyx1cCYJJ6qdoFu49Z3GKVIZO9Mnfx97g
         MhoiTkPuRKagxyKKXIJkBvPICX7k4PWSyhtiZzOgMXJHlALkvP8PwDg3WsMYkt3Zh8cv
         DSX4XI9e55Yv7D/4FM70zQ1FrXe6334QTYpCY9jV9PN7Sk46SyA+D1wznqeaCpT62E9Y
         PvfXk0d1ApEkBjZeEPr9SVJbDzz3EljIkbUrVGT+C1jdyebEeKJL9e4bZUAddl0JRHzm
         IgmGMxRDAGCM24E0wP5/bAWffE3GbwUDka+opj/AH+71nZNfxw6plrKzLeHWfhxxI/dh
         Lybg==
X-Gm-Message-State: AO0yUKW+/7Vk78+EDa2s120sOgY7sm0qT+TTAHiPpMHt77r1OYpksBJk
        UY9pUIsnb2d5Z694SUIpEGzsdA==
X-Google-Smtp-Source: AK7set+FQ8jTth7bS0gyIXngSI7gGV8x5+Sg7Jip1fRYG9F1ouZXXNdruBZInEMV8zMNS8gwStxJpQ==
X-Received: by 2002:a50:8e41:0:b0:4aa:c354:a0e7 with SMTP id 1-20020a508e41000000b004aac354a0e7mr18903423edx.25.1676116303952;
        Sat, 11 Feb 2023 03:51:43 -0800 (PST)
Received: from localhost.localdomain (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id r10-20020a50d68a000000b004aabb714230sm3636070edi.35.2023.02.11.03.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Feb 2023 03:51:43 -0800 (PST)
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
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 01/10] dt-bindings: display/msm: dsi-controller-main: Fix deprecated QCM2290 compatible
Date:   Sat, 11 Feb 2023 12:51:01 +0100
Message-Id: <20230211115110.1462920-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230211115110.1462920-1-konrad.dybcio@linaro.org>
References: <20230211115110.1462920-1-konrad.dybcio@linaro.org>
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

The qcom, prefix was missed previously. Fix it.

Fixes: 0c0f65c6dd44 ("dt-bindings: msm: dsi-controller-main: Add compatible strings for every current SoC")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index e75a3efe4dac..2494817c1bd6 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -33,7 +33,7 @@ properties:
           - const: qcom,mdss-dsi-ctrl
       - items:
           - enum:
-              - dsi-ctrl-6g-qcm2290
+              - qcom,dsi-ctrl-6g-qcm2290
           - const: qcom,mdss-dsi-ctrl
         deprecated: true
 
-- 
2.39.1

