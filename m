Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A3D77507A7
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 14:11:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231915AbjGLMLu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 08:11:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231792AbjGLMLu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 08:11:50 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 060DAE4D
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:11:49 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b5c231c23aso110613041fa.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689163907; x=1691755907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xeo65L2NJAVXx3OSsVrW86rIAaQdgF7GM9jGTkSsIa0=;
        b=qIx+hFXzT4QUfv6gfdjTr20uOFXj7aSkZ8rt/Go/9qOK6dmFnmFK6nPI596wGQf61g
         qk2yii+ozX0XGNd4rsW2FlBLWeY41RvlHIUQkuztrAD2osxhq+pCFu631Jui0nTUO05I
         551RHHOHJfoldu5nxjLnh1/+Eusd+ugw2qOI8ZEuINhjM0NkV8vbkhzKlsqnEF3MlB0E
         vz3J5kW/JASwPbugVcZ7pYmlCMHlxwmXGolhYDV5tnQlx49sUbtCcBRghNxA+HiyzPI8
         BREhjwINwBIk8rtoigzUugMCM/FYcqOH81f6RMVVJhw4phXlGT71GidCdNv6eplCL4KW
         b6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689163907; x=1691755907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xeo65L2NJAVXx3OSsVrW86rIAaQdgF7GM9jGTkSsIa0=;
        b=KeUQJE8nuJJqZ4vLGJKC0+GHK/RR6MGeBZ95Kj0/BRrxCpsSD/a0ytAnbp1p6ZpeS0
         8RdDZ3slJc9HRLeumP9Eun4LgsRJqiFPANPMWlwaHv5BPB1TtoXWktk893l7phrO97MX
         L7FTLZ/7P0mNC+Jme6igx9YYMYovT8HwlTVcDASHZkRfFQ4tLE/2bVMVQumLa8VSXWcG
         BWy2iXvX95dxqH3mRbC66cafaobSSxnwqjGRsrcUb18ny1jUkkyxEjZTbcYFir3MnBRh
         H8Pj/awCx5wAXDZRLJF9Lap59LkDpupJsJJprkvPUyNAsTPlfR0GlOSB7ezh+zYfEl0Q
         D1ew==
X-Gm-Message-State: ABy/qLbtaw2b48mLav3O9i1QIbHly9QIV6e1KCwz43WQ5sYlky5tJ9Mb
        /2QbLToiO1Gm/h8w2Wp+tEHwOQ==
X-Google-Smtp-Source: APBJJlHX3LSxXbQZ7LzQgs1IgUmaguPDd0mcHEiDkITKFZIq0UxTRQm764sGwP/qVZFXV5DZp4MQ9w==
X-Received: by 2002:a2e:b0c7:0:b0:2b6:ec69:7c3b with SMTP id g7-20020a2eb0c7000000b002b6ec697c3bmr14812840ljl.46.1689163907276;
        Wed, 12 Jul 2023 05:11:47 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id p14-20020a2ea40e000000b002b6c8cf48bfsm913135ljn.104.2023.07.12.05.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 05:11:46 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 1/8] dt-bindings: display/msm: Add reg bus and rotator interconnects
Date:   Wed, 12 Jul 2023 15:11:38 +0300
Message-Id: <20230712121145.1994830-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712121145.1994830-1-dmitry.baryshkov@linaro.org>
References: <20230712121145.1994830-1-dmitry.baryshkov@linaro.org>
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

From: Konrad Dybcio <konrad.dybcio@linaro.org>

Apart from the already handled data bus (MAS_MDP_Pn<->DDR), there are
other connection paths:
- a path that connects rotator block to the DDR.
- a path that needs to be handled to ensure MDSS register access
  functions properly, namely the "reg bus", a.k.a the CPU-MDSS CFG
  interconnect.

Describe these paths bindings to allow using them in device trees and in
the driver

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/mdss-common.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
index ccd7d6417523..30a8aed4289a 100644
--- a/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
+++ b/Documentation/devicetree/bindings/display/msm/mdss-common.yaml
@@ -66,12 +66,14 @@ properties:
     items:
       - description: Interconnect path from mdp0 (or a single mdp) port to the data bus
       - description: Interconnect path from mdp1 port to the data bus
+      - description: Interconnect path from CPU to the reg bus
 
   interconnect-names:
     minItems: 1
     items:
       - const: mdp0-mem
       - const: mdp1-mem
+      - const: cpu-cfg
 
   resets:
     items:
-- 
2.40.1

