Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD79D76106A
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 12:16:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232964AbjGYKQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 06:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232976AbjGYKQl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 06:16:41 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7ABC10CC
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 03:16:17 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51e2a6a3768so7932281a12.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 03:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690280176; x=1690884976;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kgjzM14QEiL69p/YLX8lqgzuetXlnguUNrcPLd50K6I=;
        b=C4czm/+Xz2UutJXlca3VkY/5VlywrDLHuMNp4CGjo7VZ0TpqzJjydvmrSDzTVSgAEt
         +K3IZtgfB7epGyj4hbxX3wdBDlHFLyGYF8k87sMiH+G1gcqAMx40aZLy7MF9s5xeQP5x
         fhnbmSwYWkAVdLsXKHBG7KQami1/9ue4beRYmJdyrSe/ka3umBmFTIAsEMhYhkmED0+n
         h/tD+XzOhnhPcv7zRtsI2fsZdxpvyQNcwnEGlJZJJczCbDOtfM40WLASHHbA4aiLIfjA
         D/rEU4Og78VLM9QbuzZ0XS+STA60ygyZjzHaQn79vehoGSKmUMX5h5wYMfmhLuvrMwXR
         vuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690280176; x=1690884976;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kgjzM14QEiL69p/YLX8lqgzuetXlnguUNrcPLd50K6I=;
        b=kW38C2G/XQ0CN6YaoQiPbnF1buOUP83I4DqKAtBIUegECGgor1P9p4aDRW5o4HYvCq
         ukgviYaK3x3riEU5vfUbW0e8O/tX86MFabeL2ZOD3fiAS4OMER8VtT0gCJSus9rXDbBb
         VPzUq0KX0ZvSsquDhMua2n91iBz4oymhRFTkVO1pStWn9gE30H1kkRxI7tr3Oqoi5BKQ
         bgDOupZgCUtg5j9OVNzE4KlRT00Eq+Shmml5kF4Inn3q6T6fp/1+EB8yqrINdGzOB9Fu
         eFnu5HnET+ZbDB90cvq5l0aJQ8NiLasn6fCmc2fMqPjLnjq0aJR3LohSXooSoT2LN5fx
         tj3Q==
X-Gm-Message-State: ABy/qLZNuiCyDQvvc12CycKhNwBGts6Yhrvl17eVe5ifUvW5FLpfiZA8
        M9tn4mpe6MD5RBsq7sZ3dNwZfw==
X-Google-Smtp-Source: APBJJlGBMU5DGuFGwk0qtfh0c2aQo1t0zRXQTiXXDi0POVtlnNNbgD2TyBllza9yPhuzHMFnWRx1Kg==
X-Received: by 2002:aa7:d410:0:b0:522:3a0d:38c2 with SMTP id z16-20020aa7d410000000b005223a0d38c2mr3214909edq.9.1690280176127;
        Tue, 25 Jul 2023 03:16:16 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id f23-20020a05640214d700b005224ec27dd7sm544171edx.66.2023.07.25.03.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 03:16:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: display: msm: sm6125-mdss: drop unneeded status from examples
Date:   Tue, 25 Jul 2023 12:16:10 +0200
Message-Id: <20230725101610.75122-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Example DTS should not have 'status' property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/msm/qcom,sm6125-mdss.yaml   | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6125-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6125-mdss.yaml
index 2525482424cb..479c82e6a0d8 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm6125-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6125-mdss.yaml
@@ -95,8 +95,6 @@ examples:
         #size-cells = <1>;
         ranges;
 
-        status = "disabled";
-
         display-controller@5e01000 {
             compatible = "qcom,sm6125-dpu";
             reg = <0x05e01000 0x83208>,
@@ -170,8 +168,6 @@ examples:
             #address-cells = <1>;
             #size-cells = <0>;
 
-            status = "disabled";
-
             ports {
                 #address-cells = <1>;
                 #size-cells = <0>;
@@ -210,8 +206,6 @@ examples:
 
             required-opps = <&rpmpd_opp_svs>;
             power-domains = <&rpmpd SM6125_VDDMX>;
-
-            status = "disabled";
         };
     };
 ...
-- 
2.34.1

