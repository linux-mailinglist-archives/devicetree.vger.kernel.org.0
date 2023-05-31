Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 521A971723F
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 02:03:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233828AbjEaADH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 20:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231488AbjEaADF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 20:03:05 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22F6BAA
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:03:04 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f3b39cea1eso5740449e87.3
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685491382; x=1688083382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8NJTpbaQkrMxS2HcO+vhGH2r43mf2msf3vlTqsDsrs=;
        b=CfLqFjRya6Gg0gewkoHtTOTOPWt5xFicxmeUjTWNgBK9zhjUQd3SJi9Ki3XE8EK4BH
         3JhbZQamgTZDhaPRlFk2PM54dJ5BXO8NCURL1gyo9DivOJ+CL8m+S2zfChn58cSIlzdb
         RcgxdcNjdKynQovtpAPUAtFkB9ZTgEJCbIiZ9fJXR7BaIdr1VuIVepC2AGMris0sEyT4
         li+8RvgM1FnjQ8V9X3pi79tzwZQXh335ZfQ2i67QGc/AHhlZlReM8sg2OkSioCJ1XRYC
         vp5RPV6ykaH9r59fS/4Ne4s0dKLEg7HsWCQeS1tupSPrpA3fGNMcZ56doLE2N2iWUhgJ
         CROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685491382; x=1688083382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c8NJTpbaQkrMxS2HcO+vhGH2r43mf2msf3vlTqsDsrs=;
        b=VP2pdPsYTjqkAhKRGJJ/QFs4UbN0ghGsi7f6tlWx2Uo36QH6l4pAJKR6n95GoKrERr
         PrYA+7E9MLmde7NHhJlGz6RPeVNH4stBpoekUjqdlW7AW8Y4jOfWkhNrBfN2kJY/szDq
         9+S1SUOazfcsijZQLbsmb8y4YDkeiJ0YTLvXZZ4TpBC/Q+KCKLlSG+Zw/xCQyVAjcT+Q
         psN4Vk5yMwRdVCgRPcqbVPFbzGTHyZMWoN/ej/Pwup2JwP52rCB3rKa6VUy4bMaU/Pua
         lVAVLkxiJIi9+DLNm1V/hPwVCu6QK47662Q82epn3zCXvE7s4aNKeKmfK9KufiRPq/tJ
         lmMQ==
X-Gm-Message-State: AC+VfDwYH0Z8gGvnHXpJqr8K28KpKHm3ldCcucELkAGf8sDdmVmVLg3A
        mNGFlzP9bfoQiaoyuGHFbQ4ZFw==
X-Google-Smtp-Source: ACHHUZ4csy4cdPHwFI+wHSO7+qXFUhUWtUEym1DlRU0bXVto5XpmcOoglREwyFuhg9xmS1PApDQnoQ==
X-Received: by 2002:ac2:485b:0:b0:4f3:b49b:e246 with SMTP id 27-20020ac2485b000000b004f3b49be246mr1777043lfy.5.1685491382403;
        Tue, 30 May 2023 17:03:02 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id d30-20020ac25ede000000b004f13eff5375sm490388lfq.45.2023.05.30.17.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 17:03:02 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: display: hdmi-connector: add hdmi-pwr supply
Date:   Wed, 31 May 2023 03:02:57 +0300
Message-Id: <20230531000259.3758235-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531000259.3758235-1-dmitry.baryshkov@linaro.org>
References: <20230531000259.3758235-1-dmitry.baryshkov@linaro.org>
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

Follow the dp-connector example and add hdmi-pwr supply to drive the 5V
pin of the HDMI connector (together with some simple glue logic possibly
attached to the connector).

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/connector/hdmi-connector.yaml  | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml b/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
index 83c0d008265b..3ee8f9225984 100644
--- a/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
+++ b/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
@@ -36,6 +36,9 @@ properties:
     description: GPIO signal to enable DDC bus
     maxItems: 1
 
+  hdmi-pwr-supply:
+    description: Power supply for the HDMI +5V Power pin
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description: Connection to controller providing HDMI signals
-- 
2.39.2

