Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED8F6711D4
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 04:24:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbjARDYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 22:24:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229722AbjARDYj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 22:24:39 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 259FD51C6B
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 19:24:37 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id w14so30540829edi.5
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 19:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ec+3vW1T9VybCypq+CSoRlgfeIlNrQ3oQZEGbJKYIC4=;
        b=zAHvllqq6rUVY5iYfOhH98ZC7MciV6bFnK+rqLYh4bRRJQXU97ZrWMQxORJMwyznPi
         BB35MM6SMhAXFT/BohQWOmDJyX6Wh0biF3vMkgekxW/oC/EdJP0EKlCsM0FJvBnqIUvr
         c8eVa3Ox4/7XWmuo3r8A63TuqKO8a+dApNkNlcfPDlMTtJsAwMLsGiarsiF2XfyqW4rZ
         03znCWUFoih1cXMC1gYe9Eefmg2C5HEgcZQbRj1aiExFMRMblTkfDQqYcZHOERuX4gAs
         7eKGdESU8FVWwxNLdsTWmOvS/XjtJDAQ382auxASuIWO33gyE7nCmlLPuVPceRAm544D
         p8vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ec+3vW1T9VybCypq+CSoRlgfeIlNrQ3oQZEGbJKYIC4=;
        b=f1uB7p4xSw9nkx046eEGOddzRiyj9gSVnQAds32Vqt3mFDPtv/zjwHqGv/AV9fxocj
         s8br381rTbmRanPKzkt9qhL6UjFYdJdYinYdNAk4oiyWPk9W40r0D1AbflWIcsGNPDfS
         7/8m0lZ4Xa4hCnX2UPxgg7ic7WVImUR5v5jXeCxp6B6mho08njcNuQDJnH5yb72Wrtjz
         b/vO4geQrsgfmtmtvE9p44B0wkPB6zmY5N9Wk/3ft6YhV/LSAT50FZf77HoEMGtgcl3U
         4FyC/xFQo8CEMwqTLrx3vIPZtlmM+hccXZjqJYcGKI7NSgIY9HM5COMGgm9k8a09meLL
         BhBA==
X-Gm-Message-State: AFqh2kruja6up4ziA9XZtVIBdR5KRfDDBvI+3EvhaZMgDvZnFgp/sgRD
        OpycJnXuhpNVt76w6WGCdQ1LxQ==
X-Google-Smtp-Source: AMrXdXu5gi5ru//W/fWSwPRe4S1umaY4zHYGJpQmH9GsUo17e2O3IClFpdFWvpSftRfWxpfcmdKzuQ==
X-Received: by 2002:a05:6402:2289:b0:498:f82c:7068 with SMTP id cw9-20020a056402228900b00498f82c7068mr4439994edb.35.1674012275649;
        Tue, 17 Jan 2023 19:24:35 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id f11-20020a056402194b00b0048eb0886b00sm4713829edz.42.2023.01.17.19.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 19:24:35 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 1/4] dt-bindings: display/msm: dsi-controller-main: remove #address/#size-cells
Date:   Wed, 18 Jan 2023 05:24:29 +0200
Message-Id: <20230118032432.1716616-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118032432.1716616-1-dmitry.baryshkov@linaro.org>
References: <20230118032432.1716616-1-dmitry.baryshkov@linaro.org>
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

Stop mentioning #address-cells/#size-cells which are defined in
display/dsi-controller.yaml. Use unevaluatedProperties instead of
additionalProperties to allow skipping properties defined in other
schema files.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dsi-controller-main.yaml           | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 7c326f8927fc..b07bdddc1570 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -72,10 +72,6 @@ properties:
     deprecated: true
     const: dsi
 
-  "#address-cells": true
-
-  "#size-cells": true
-
   syscon-sfpb:
     description: A phandle to mmss_sfpb syscon node (only for DSIv2).
     $ref: "/schemas/types.yaml#/definitions/phandle"
@@ -357,7 +353,7 @@ allOf:
             - const: iface
             - const: bus
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.39.0

