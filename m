Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76931596950
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 08:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232992AbiHQGVJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 02:21:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238650AbiHQGVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 02:21:08 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87BCE6DF8D
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 23:21:07 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id y23so12598169ljh.12
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 23:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=HuUejYNqu/N+TiW6kMozoGOD+NSY1oswFg6/0Xs13h4=;
        b=pJZ5DkZNYpXuOf0hXNbcS+yS5hzdq8E3G3TAJrXcHys1iE028QcgupnJeumvo9U8JT
         BIPbWlwAh8B6r4bo9HF0Q/a5z5+bqr08zPZs/1RcMJsUeAtjQv0tpwkzvVVs7YOVew+G
         Q1y1eb7JGq5dbsPsE+hN0LKyu8+zzshtmW4bnQXBXHsezunX8KcAUmMIKehQcpgQnyBt
         ek0YpOIj9eO69sx91RPaCQ2PdxOvRjAwKVwjKSsYqB/4hs8VuNqzip1NsvIjTBCw/EPz
         i0RJfcNAVTuuuww+4aief+QOlTGmup0jVvQycB1LzoVCjNAD7Kk8R/vULgNOJBzB9xPV
         /lmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=HuUejYNqu/N+TiW6kMozoGOD+NSY1oswFg6/0Xs13h4=;
        b=y4LC+553CrOBw8E3EVsU4+EkWFWKbmz62WjYTtQxr1iyHCxBjb3x/lfTE1L1jHgP0W
         HVo3ngjjj9Z8VHzAh9Why8uRHA+Padp5G0GpGo+7TR8XogrbVChEBNHH66KrK2D7pLvq
         tw+Iph62m8RcfNGul5hCIQMvuHOkZ1mZMd/Y2xM43AsZ+iaWq3MCn9qb3iaatPlfrVZJ
         fFVP0ifFgruMq7SaispaKVQKZSdMoN9lO6sM47rIdC0zwPqlqWOhjoGDNEq9BulpVZWT
         E12hQIHnOo3bdYwpWnUpB9NXiHZTdfXqZGYOp7Cpq1phijk2SzepsYZFf1b/QVbEZ4fS
         Kcew==
X-Gm-Message-State: ACgBeo2tO6v0MM0jHP1jbYh8IUtEdG/B72KB4K3fm1Q94Prfk6yoAanl
        7+lJVpKmyVyjgaz9qxxC+2iaiw==
X-Google-Smtp-Source: AA6agR6nP7zaIPS/O5c2eBWMpn2WzYmM8t4kMy8yV5jHzQmK5zD5FSzUNorUJeKyo34f7WAW0a146A==
X-Received: by 2002:a2e:904d:0:b0:25e:78dd:62f9 with SMTP id n13-20020a2e904d000000b0025e78dd62f9mr7380939ljg.122.1660717265839;
        Tue, 16 Aug 2022 23:21:05 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u27-20020ac258db000000b0048b0062a14fsm1581002lfo.144.2022.08.16.23.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 23:21:05 -0700 (PDT)
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
Subject: [PATCH v2 2/5] dt-bindings: display/msm: dpu-qcm2290: add missing DPU opp-table
Date:   Wed, 17 Aug 2022 09:20:56 +0300
Message-Id: <20220817062059.18640-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817062059.18640-1-krzysztof.kozlowski@linaro.org>
References: <20220817062059.18640-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'display-controller' child (DPU) of Display SubSystem (MDSS) uses
opp-table, so reference it which allows restricting DPU schema to fixed
list of properties.

Fixes: 164f69d9d45a ("dt-bindings: msm: disp: add yaml schemas for QCM2290 DPU bindings")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
---
 Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
index 734d14de966d..c5824e1d2382 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
@@ -74,6 +74,7 @@ patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
     description: Node containing the properties of DPU.
+    additionalProperties: false
 
     properties:
       compatible:
@@ -113,6 +114,8 @@ patternProperties:
         maxItems: 1
 
       operating-points-v2: true
+      opp-table:
+        type: object
 
       ports:
         $ref: /schemas/graph.yaml#/properties/ports
-- 
2.34.1

