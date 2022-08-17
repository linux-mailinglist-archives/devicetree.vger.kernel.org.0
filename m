Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50E0D596964
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 08:21:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238691AbiHQGVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 02:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238902AbiHQGVM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 02:21:12 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A44436E8B3
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 23:21:11 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id l21so12639297ljj.2
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 23:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=RfBVYdcgWCETO8kv58T7Yvcn1ctskhunxUupScfdMTY=;
        b=ydIHGt/P/asGeUFjJaMEu5NGac9v2aGsLucz96bXjD1yaKx9KvR+Yfvki1luQfNn0x
         aMvmbYy+qahOIUDUpMP3xKoe7fYugKzwX+DWhowMROOxAsXFWLy3CdpNZLqiXX97X/HI
         V4c52jbgI9uHNcWmdVmKJgEUozgd6BTn8VW/Ab6GfDuxDBzYi9M/JpX//fQ0Bq9ttthJ
         JekkFK0SBo0wTn2gwkkyZXDU+uUpcGNnaHJUwwzGBSPtfZZQXdBII9QDCWiJfn/taK/B
         KDsIru+Lgvu+toDRx+UTfEHMbLbaG/i6Bm+4Kp4Fi7US7cKbWGC2FqvD7YqjT77aeLGG
         cH8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=RfBVYdcgWCETO8kv58T7Yvcn1ctskhunxUupScfdMTY=;
        b=LE4TTug+d59PTdQIuJocHqMIRn5sEZWsgxkM87zNr5zDU62IppIneO3F5nR9lmV1G1
         lyfZWP7p25mgGJI4p1xiY2DA0r9mcM+8KtJWmoXPlcSUNbX8OEg5qRYHGSZj9wNLtP0Q
         LX9biiGgs8GBk9TnKGERaJJDD18UfFQOCQlkI0K+yp1RjY338NcqxB36a6y6R5i69A9q
         AZCdZddClrzhxgicDyPLy8EYJkr1N9l9NpOW6CuUJyRcOFaz75ZxbhjwS45MkG1xW62I
         BtyAzmThpq5+u/9lsnlZSDMJqiBMavgvaoAsPuhTK2yqEnPpEV9YudwwrEvgP+VD+JTQ
         1ZsA==
X-Gm-Message-State: ACgBeo1MEdNsoe8/Rw+9lfUVmamun2a64JN/Yg29RB9vfSQI5iHt1AR5
        x+Qjz2QTWPl6GOiRCiy7GmwZtw==
X-Google-Smtp-Source: AA6agR4+FgNQRQuvaZE1/pe2oQDZwEobNJtZXGvgoiXBI2AAv7IjxeefZTGItBW5nCCEcgwemygMBw==
X-Received: by 2002:a2e:8092:0:b0:25f:f075:a1b1 with SMTP id i18-20020a2e8092000000b0025ff075a1b1mr6978448ljg.23.1660717270962;
        Tue, 16 Aug 2022 23:21:10 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u27-20020ac258db000000b0048b0062a14fsm1581002lfo.144.2022.08.16.23.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 23:21:10 -0700 (PDT)
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
Subject: [PATCH v2 5/5] dt-bindings: display/msm: dpu-sdm845: add missing DPU opp-table
Date:   Wed, 17 Aug 2022 09:20:59 +0300
Message-Id: <20220817062059.18640-6-krzysztof.kozlowski@linaro.org>
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

Fixes: 3d7a0dd8f39b ("dt-bindings: msm: disp: add yaml schemas for DPU bindings")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
---
 Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 2bb8896beffc..7d1037373175 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -65,6 +65,7 @@ patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
     description: Node containing the properties of DPU.
+    additionalProperties: false
 
     properties:
       compatible:
@@ -102,6 +103,9 @@ patternProperties:
         maxItems: 1
 
       operating-points-v2: true
+      opp-table:
+        type: object
+
       ports:
         $ref: /schemas/graph.yaml#/properties/ports
         description: |
-- 
2.34.1

