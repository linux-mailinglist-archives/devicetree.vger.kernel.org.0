Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3C36636F17
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 01:48:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbiKXAsL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 19:48:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbiKXAsJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 19:48:09 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94EAB4A07A
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:08 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id s5so268622wru.1
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2cozmslkV1HJ5ORZW/fLPcfuOLJG0p6+yjVrLX810OU=;
        b=NCtYnaGXUXEow8dtZclqy6wSoHW85K/gfhLzqpZpmDmMdQoo/248yXtDpGkc6ehSnZ
         sMn8ivZedEl4QV1vWgjHsTIbzTlPrfYIFG8C8xPyLCp1O5t9J2846hsPEK2CO0zYeJ5z
         RGIcs3pUXwpyxo+cXWRDAtXMgWvotmj5veWReeqN0e2awrDi3TrHa9dGq2DkOte0QHt4
         G/x6xwBW2Qc/kv6S3KF3PJ1OQeCRqryE3uchHFNTWFoeKwrtmKK4bzXsSR897nA6OaEj
         ruIhzRbUAEg4/ddzeOzGO7U3aaRMEBCmbondyqFXb9zOBvEe2BrX1Fmd5G4DXCdL3TmQ
         WJjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2cozmslkV1HJ5ORZW/fLPcfuOLJG0p6+yjVrLX810OU=;
        b=W2dWyiwmLDwVGvA27TLKPYzlAqdXBGcTXH1xPeyul+2Ehz0UBXpZzvK9XdpAONgPCy
         8JGe8JIvDt1xpC0X+uo92IfpYn0BL0YGLhHO5W7+wMQkCZwGy7DIw/NPDL1BKPXf6FLc
         zgs49c7gkfcMcGARlCVufFmbYe5WFhxdIUm5BEns/86PtzzmHFpItLs7giOIhnZUw9L3
         qvRC2x+MwVo4e0/Uj1//7ykaW0Gz5vyATBbqDDCAmLc9snsdQOzsFs4EOIKb8sc4Vzvh
         8+Y8rheqtr7+vsR7jFeLGWcCMgH7y25G6BPB8NOWFowxb44BPPapWU5KfcqRn4JwmpdN
         Kaow==
X-Gm-Message-State: ANoB5pn1ckPh9tOhCgGq0uV34VU2sTFb2BW9Wfn4RfhBc5iUUM0fqaQz
        F51ilrXdpul9dbqwH4Kb4jw4Cg==
X-Google-Smtp-Source: AA0mqf7gWy9dLJkORYXwUKApzl58c0COI+hNsY1/jGFqtioTMSjLfmaAqNohwv6mu9l4g5RAZKCYNA==
X-Received: by 2002:a5d:5965:0:b0:236:7148:4b98 with SMTP id e37-20020a5d5965000000b0023671484b98mr18152044wri.229.1669250887071;
        Wed, 23 Nov 2022 16:48:07 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n38-20020a05600c3ba600b003c6bbe910fdsm5245076wms.9.2022.11.23.16.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 16:48:06 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 02/18] dt-bindings: msm: dsi-controller-main: Fix power-domain constraint
Date:   Thu, 24 Nov 2022 00:47:45 +0000
Message-Id: <20221124004801.361232-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
References: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
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

power-domain is required for the sc7180 dispcc GDSC but not every qcom SoC
has a similar dependency for example the aqp8064.

Most Qcom SoC's using mdss-dsi-ctrl seem to have the ability to
power-collapse the MDP without collapsing DSI.

For example the qcom vendor kernel commit for apq8084, msm8226, msm8916,
msm8974.

https://review.carbonrom.org/plugins/gitiles/CarbonROM/android_kernel_oneplus_msm8994/+/7b5c011a770daa2811778937ed646237a28a8694

"ARM: dts: msm: add mdss gdsc supply to dsi controller device

 It is possible for the DSI controller to be active when MDP is
 power collapsed. DSI controller needs to have it's own vote for
 mdss gdsc to ensure that gdsc remains on in such cases."

This however doesn't appear to be the case for the apq8064 so we shouldn't
be marking power-domain as required in yaml checks.

Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml     | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 27ebfd5ffb22f..cf782c5f5bdb0 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -134,7 +134,6 @@ required:
   - phys
   - assigned-clocks
   - assigned-clock-parents
-  - power-domains
   - ports
 
 additionalProperties: false
-- 
2.38.1

