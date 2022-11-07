Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43DA5620420
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 00:57:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232910AbiKGX5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 18:57:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232586AbiKGX5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 18:57:11 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63BE527930
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 15:57:04 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso6573140wms.4
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 15:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gmRVXehGl7BjVeULyOgQDE3jzh0cHlXlniJb8HTQ51k=;
        b=b9oxJUNpC76hFseEBEJhcEq0HY8cJBySOrChqrDYugbyPtlpk+wLm6oq1kfH05gF6J
         d/R+goe9J1Zko2jsaYSD9fogNuZepgTLKm6sD+mjPwKefVv3S9PLVMNUBHzDAW7ZLUkc
         GF+8r0ug21/ffp0ijykY5l1qguDPv+Dw3ebR78F5nGX6z1UNC92e6QbEK5IOXR1d4EPN
         jtp4HA/RJ463sgCzYa2k667E8EvzZjVrMF2YBzbAY5wF5pK1IOQS38dlHUt85TciJJQb
         5ionRofZELysr4Mfq6x+De1yoCfXfKQMmSGQ06i/muFRmNxS4zKOuUPam3rFzvu69X9A
         /YJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gmRVXehGl7BjVeULyOgQDE3jzh0cHlXlniJb8HTQ51k=;
        b=SDNdyq1H6RFvbQfSRZz/jIvEdqeT10NaBVI4qF4Pphreuf+sNrI3JPaJp0ztIJe2f3
         F09KwSKjjDA7esoWOQ4tRDdlXRcRPBgLB8bYyvNSn7vfjHo2VZj01FUMb7Nydd9Lw1ER
         WrpwUKJtea3zqBwVlP9TGhLjXODFoYrzIFl0KJOBal+D3NvJMKNjcz4DAQq72IYCXqbe
         Tdnh509JzQXt01lkUzweNQ79ecCQY912p7QLI9PPtWkvsPw710ntsSO4VzPupOIgAjcp
         f6ikRA4TSXkYDUXTkJ6uVEg/R2jLkAgJzaOzlsRJ5HSAwZEDAnFYupMF9ytzPT9Q+OwC
         qt0w==
X-Gm-Message-State: ANoB5plTlirpMXo3+X6F329odpzJJ80atWpkkim2zxd5Wpxy2nyt+Vj5
        RuvMCkHb9m5ukmOYbh0pk70J0A==
X-Google-Smtp-Source: AA0mqf4HO3FJtOGQ+2GOf7xGG6RzopIwB5XDIIFs67J5E0Or1hcP24cv6MjDbyT9V6+Is5ZVcJRz5w==
X-Received: by 2002:a1c:4c14:0:b0:3cf:add8:3fe5 with SMTP id z20-20020a1c4c14000000b003cfadd83fe5mr4501746wmf.55.1667865423015;
        Mon, 07 Nov 2022 15:57:03 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id b18-20020a056000055200b00236545edc91sm8386161wrf.76.2022.11.07.15.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 15:57:02 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, quic_mkrishn@quicinc.com,
        linux-arm-msm@vger.kernel.org
Cc:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/18] dt-bindings: msm: dsi-controller-main: Alphanumerically sort compatible enum
Date:   Mon,  7 Nov 2022 23:56:42 +0000
Message-Id: <20221107235654.1769462-7-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221107235654.1769462-1-bryan.odonoghue@linaro.org>
References: <20221107235654.1769462-1-bryan.odonoghue@linaro.org>
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

Sort the order of the compatible strings alphanumerically.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: freedreno@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index a607ccd4a905a..b35130a77b43e 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -15,8 +15,8 @@ allOf:
 properties:
   compatible:
     enum:
-      - qcom,mdss-dsi-ctrl
       - qcom,dsi-ctrl-6g-qcm2290
+      - qcom,mdss-dsi-ctrl
 
   reg:
     maxItems: 1
-- 
2.38.1

