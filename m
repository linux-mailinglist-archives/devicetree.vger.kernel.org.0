Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B5E6636F12
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 01:48:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbiKXAsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 19:48:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbiKXAsH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 19:48:07 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19C3D5B588
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:07 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id d1so207336wrs.12
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 16:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5tCUJCjq8zxDkfeJPGjWwU1cc4Wk9DUerQHc4fqret8=;
        b=x1l/HWq9fsM32a1Ni7NZJiVOc4jcc3tVMzxYf3aunGqOoAI9nIlj6dbaoaNcNgAA5h
         ictNhCgv2VVgmy13rgk8yyCkT4T4dQjB632s8ND1W1BZWrrz52kk230KUkSvO1ExPvYf
         ArU7EUjxILNOgiIbb3eEpTJIUW3YZkoVBphIOI8wESWjcVWH0kddpYZJSj86GOhFPpQD
         7UntJk/cWw1/husHveZHAhiAeL+IAsj8EzaPTPpq1RfU5j8W2Sr1ebVOqd9GRzElaumA
         L5aYfZgP8qngU1uloIj7EqOp+Q0fTIKznJXFtH0KRNe83LNQrbIJr68alK+2REbgTz2o
         qPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5tCUJCjq8zxDkfeJPGjWwU1cc4Wk9DUerQHc4fqret8=;
        b=Ne3uhes8hLdCAlVahy1QDW5VSTPyVu/1BlE+HFTNbdghJqY7QNyS+IaVKT/e+imut6
         ektvX5IBJS7Pqi92wUfVcEFEw3MAbJB37G1xDIPxqLwHlZGp52bZ4JZ3nIsmhM50LkdA
         fNlgH57kwbipvkLkAtFjJO5djnllpALCs1AYrJpYsl10G6V9jL7RPLZJDLZPtk02KftT
         bRE2cja/yZEjClgvMUoWUIqJkojRQlOMCYWri8Wz08Sx+FjyYHxJXF792/8w01lzEMLK
         nyDCcx2+U3OWcL5srTN0QL4V9uySEa3Jpm9kmsDxSZRab3LeClMa7CokLeEGUI0tt9vn
         b+6Q==
X-Gm-Message-State: ANoB5pkECrORqMtS2IsJiTA/L18Mxhex6n38XClvTnGJOyFBEcmHSttG
        DNXtVfWoJPMH0Iv2R7yJX84jig==
X-Google-Smtp-Source: AA0mqf5Nigw90XSlW8uMXI++F5BMgvcKeoXrByohUmBpZYHY768t7EWogcXwUHFeLF/J3Teot0s6og==
X-Received: by 2002:adf:f8d1:0:b0:241:d3e4:6517 with SMTP id f17-20020adff8d1000000b00241d3e46517mr11308540wrq.380.1669250885663;
        Wed, 23 Nov 2022 16:48:05 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n38-20020a05600c3ba600b003c6bbe910fdsm5245076wms.9.2022.11.23.16.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 16:48:05 -0800 (PST)
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
Subject: [PATCH v3 01/18] dt-bindings: msm: dsi-controller-main: Fix operating-points-v2 constraint
Date:   Thu, 24 Nov 2022 00:47:44 +0000
Message-Id: <20221124004801.361232-2-bryan.odonoghue@linaro.org>
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

The existing msm8916.dtsi does not depend on nor require operating points.

Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml     | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 7782bff89afc7..27ebfd5ffb22f 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -135,7 +135,6 @@ required:
   - assigned-clocks
   - assigned-clock-parents
   - power-domains
-  - operating-points-v2
   - ports
 
 additionalProperties: false
-- 
2.38.1

