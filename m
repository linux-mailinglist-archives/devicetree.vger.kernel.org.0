Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9B8965CF17
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 10:08:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234504AbjADJIx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 04:08:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234600AbjADJIv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 04:08:51 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74D1E25F0
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 01:08:49 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso19387389wms.5
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 01:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ywhy8rwxYugaCOCt736qav9wiltG83VAN5edYIDMMK0=;
        b=gigiGe5rRb34aJVuvZjpbTHFslzpbK2INEVyJg46HZdizq9iJkHqeWLrcZY53ohhlh
         fikpvJ8gRcsyuZxgSLEmhcJG+kPGas5eE3ZOrkRn2EwYTkWHR/JmKRZ97lNGxQnLX4uG
         DlNIdZFuWWoWA6HrcISfJh9C7+LFbZQWXg9mJDhkhB7ieSb2K5yjS5fqaCWu8BAOgnhZ
         pnDS8UAX9fljmbMBwsSU8AjMrFd+EghtZhCJV44K8OSvCNnAubvO7sgsMk79uYsucp0C
         vwVR8lT3MF0MF8DlhgAlczYqfETFbVYvASaAFQKXxSmGdnETbNxvVGz+MZDrZF2RxfXd
         HJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ywhy8rwxYugaCOCt736qav9wiltG83VAN5edYIDMMK0=;
        b=3ZaH98xcBI4yo6/n7ysPJrRxRPUPNY1dT882Jo8x9PgSObVN64vQ5r2aUIJ99XvbEP
         PgHPVqRLk9exWX0ELm6KJwgbxWg5Io45T7zjgWE3sx4kShqlg1Q/15Ki4ol2+7FijqOe
         8GgWyqJBZmTRZj4skJkqH5fvWIGnMcRtuVsA2gknj6CXF7GQJMgMbsTq54caoMpkqmDf
         P0YIv1Z7kto6E92t548Db3d39tqmYyAKxnRuImb3t2orxCOYxD5lfUBb6sySv5+dCsA7
         zqQixqUrgI9zvqfaMTzjBnqBz1bgU2ryq0TDwXAdEV8O1uuIw3QeKGD9RuY2yTka3mes
         zy+A==
X-Gm-Message-State: AFqh2kr4rZIODy0bjr1nOn0+MRSmlcg+5OIBBhEIdnOdIwUzyI75uIUe
        SNPNAINZwk4QyD5ddFcEPulpig==
X-Google-Smtp-Source: AMrXdXv6qX18TiGEiG+Y4uCV64Ch859OaM/nIrmW1EaY04J7vq8U2dgvbt0GY9jY+48Ed5nWeP9bkg==
X-Received: by 2002:a05:600c:254:b0:3d2:2c86:d2b2 with SMTP id 20-20020a05600c025400b003d22c86d2b2mr41360582wmj.24.1672823328004;
        Wed, 04 Jan 2023 01:08:48 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j34-20020a05600c1c2200b003d98438a43asm36124622wms.34.2023.01.04.01.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 01:08:47 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 04 Jan 2023 10:08:43 +0100
Subject: [PATCH 1/6] dt-bindings: display/msm: document the SM8550 DSI PHY
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230103-topic-sm8550-upstream-mdss-dsi-v1-1-9ccd7e652fcd@linaro.org>
References: <20230103-topic-sm8550-upstream-mdss-dsi-v1-0-9ccd7e652fcd@linaro.org>
In-Reply-To: <20230103-topic-sm8550-upstream-mdss-dsi-v1-0-9ccd7e652fcd@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Marek <jonathan@marek.ca>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the SM8550 DSI PHY which is very close from the 7nm
and 5nm DSI PHYs found in earlier platforms.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index bffd161fedfd..f72727f81076 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -15,6 +15,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - qcom,dsi-phy-4nm-8550
       - qcom,dsi-phy-5nm-8350
       - qcom,dsi-phy-5nm-8450
       - qcom,dsi-phy-7nm

-- 
2.34.1
