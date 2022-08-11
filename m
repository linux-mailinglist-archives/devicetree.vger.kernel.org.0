Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19DC058F955
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 10:44:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234645AbiHKIn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 04:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234646AbiHKInq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 04:43:46 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 463E690C69
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 01:43:43 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id bq11so24668445lfb.5
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 01:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=sw/Zp2U6EPehLEYuRca11olFeZe1Ryu4xJbSBBkA8EE=;
        b=Z7L1kd9gpgFv39ttyPuGJdp4umPli+M8iEdQNSo8KRiRPoahtfD6WTm1U9vKjhSsVK
         qc2WxASe2mkpxa5IBGr4mq2ADulOO6aNWf9KnHJUR2bN3rC3BVKSCEjWiaUKagseypv5
         w9ux08YHtCgnt5eILPDVEVtYcmw4jmQEO+k4LXA/Rf651KBbUp5pVcney7/APKVhkwle
         r/S451tVB5aeF/Y+Gnnu0rSgSTsDiPp+d8lbg+DnYkrKmtlTgaI37hhSc38MGil5vDIJ
         6Ix61masi8BnyycliRqe3DYVIEPZnX/BW5+qFk89KVFebNgFFEESD1OXO84FIGoC7MGe
         V6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=sw/Zp2U6EPehLEYuRca11olFeZe1Ryu4xJbSBBkA8EE=;
        b=1UKPxD6l+gpnYQvy+ztV61HLm+qQGfGtgKw/t8WuqwmbtLZCr/scauPZM+iZnWKXJ4
         99vzdHUnpVjWrC+kc8maW3cISr+QDhtq7Q4A9W5iGFwoD2nrVpmLTY/NNeDlDYED9p49
         O8Jm3IfOl/tJ4s5rIwt0UCpoCc7yKBBNbz2p4U9oQhNiUVp/xJaogQv+eZrPe7YXcvIH
         C6zteCfRWzCNpUEgD2XI7a6mmXgEgA1IAGbwnVkiX4BO4NA0DcDg067FJJFdG/wJvbBg
         23aInIMpdOV/GO7V8QNi4tzC9gms1hJb9P5JALGDjwRLFuIAIf6m0G9/a29kI4blR4wH
         KYtA==
X-Gm-Message-State: ACgBeo0WPpW+Q+jwCADNw5oe/3x00GMIHvUCQIUzCM0476o95TbFmGrJ
        H56vsROWNmYd+ztv6Cehw0erHbvOKfCO+8yN
X-Google-Smtp-Source: AA6agR5gZ6FNRDo814IlIfXcQv5Zb2JwezxHt40B7pM6vK5TnwuV3MTU5Vk9+UkO1FZPkG6RxQRBJg==
X-Received: by 2002:a05:6512:230a:b0:48c:2e06:6c74 with SMTP id o10-20020a056512230a00b0048c2e066c74mr7557613lfu.358.1660207421452;
        Thu, 11 Aug 2022 01:43:41 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id f4-20020a056512360400b0048af379957asm631077lfs.72.2022.08.11.01.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 01:43:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] dt-bindings: display/msm: dpu-sc7280: add missing DPU opp-table
Date:   Thu, 11 Aug 2022 11:43:30 +0300
Message-Id: <20220811084331.83715-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220811084331.83715-1-krzysztof.kozlowski@linaro.org>
References: <20220811084331.83715-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'display-controller' child (DPU) of Display SubSystem (MDSS) uses
opp-table, so reference it which allows restricting DPU schema to fixed
list of properties.

Fixes: 57fd4f34ddac ("dt-bindings: msm: add DT bindings for sc7280")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
---
 Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
index f427eec3d3a4..5a4bec99b98a 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
@@ -72,6 +72,7 @@ patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
     description: Node containing the properties of DPU.
+    additionalProperties: false
 
     properties:
       compatible:
@@ -112,6 +113,7 @@ patternProperties:
         maxItems: 1
 
       operating-points-v2: true
+      opp-table: true
 
       ports:
         $ref: /schemas/graph.yaml#/properties/ports
-- 
2.34.1

