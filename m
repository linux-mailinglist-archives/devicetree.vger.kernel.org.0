Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DF966757A2
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 15:44:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230307AbjATOor (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 09:44:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230417AbjATOoq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 09:44:46 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A832D0DB6
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 06:44:25 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id y1so556624wru.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 06:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DI74kqIGhcvphZcqXp7Uudy88nH45WfLRZNDMde28kk=;
        b=H+K1ITtusUahctY8XWnxDrvCtyuxSsR2thgXbFkbAxu4WV90mgjTxTtscI8bJJMIof
         GmErfbhL/pqRtYfeOQBaStGLFtTMUGf8j/i4zwPsvMypjtRROJ/ZOT2jM/w1M4bbo/LV
         R/nA3elup7rBLmWIJKvDqZt53NTY8qTab7S+jZyKkXCuXOJ0A5xPlGuBtdBALBakd6Jc
         FSd6sxtT2e0+K72PGB57GA/N+WJfbD7v56PxrpzLQImX3K8l4elArqz1Drc9CB8Wn6Pw
         T9WjE/IH/XhqwbuSDEaDxdObjn2vw1z+UpLsS05Mc/pcmX56Z0WkpZgUpnwiynTlGRIq
         JyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DI74kqIGhcvphZcqXp7Uudy88nH45WfLRZNDMde28kk=;
        b=nzlLArc5Tq5C7bDJu95PYZo0wlECi76YkKC+68foCsKm92kHT2XyiLtRBgZa0CqdUz
         VHmeX7F1qe35FIcSdw/4iC4pFjjBbTkKJ45PyjrjEokxNZ285588Swbq1KdYtYiJfWJa
         gWUxb2g4mQFDC9nOJXnQ3Ug3JP70X0eCvoMvprBWgkBNXzr4pNG9HETcCZUk9w+xUubI
         +SBMpxiVTqK+oJEkpFJXyeVz75HZcnvXDvibGkf5LjJPxluXE1VWNu3E6X5Z+wLXqFfv
         UuH1FixSptDDgSnln38JwszZ5kUJbt1OzmRmylKZQyP+dIlFMt2BDtuC6hy7R5fHSHuP
         Aoiw==
X-Gm-Message-State: AFqh2kou/CG4ieqr2vkMee3Jt+HOKFAkxgBZyajEsySZ1fGsmdkVX6eo
        KCYT92nyvoNFXJejEVtMXzJchbOA4G9P3v2G
X-Google-Smtp-Source: AMrXdXshS14JEHOLp6q7yDAz3zTPa/DW8O3ydsOpzDBaHgIyGrfAgQoGm5BCJQ2o/D/4tqOc0huowQ==
X-Received: by 2002:a5d:4446:0:b0:2ba:c946:868b with SMTP id x6-20020a5d4446000000b002bac946868bmr12590447wrr.23.1674225812586;
        Fri, 20 Jan 2023 06:43:32 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q17-20020a056000137100b002be4ff0c917sm2302421wrz.84.2023.01.20.06.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jan 2023 06:43:32 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: net: asix,ax88796c: allow SPI peripheral properties
Date:   Fri, 20 Jan 2023 15:43:29 +0100
Message-Id: <20230120144329.305655-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The AX88796C device node on SPI bus can use SPI peripheral properties in
certain configurations:

  exynos3250-artik5-eval.dtb: ethernet@0: 'controller-data' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/net/asix,ax88796c.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/asix,ax88796c.yaml b/Documentation/devicetree/bindings/net/asix,ax88796c.yaml
index 699ebf452479..164d1ff9e83c 100644
--- a/Documentation/devicetree/bindings/net/asix,ax88796c.yaml
+++ b/Documentation/devicetree/bindings/net/asix,ax88796c.yaml
@@ -19,6 +19,7 @@ description: |
 
 allOf:
   - $ref: ethernet-controller.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml
 
 properties:
   compatible:
@@ -39,8 +40,8 @@ properties:
       it should be marked GPIO_ACTIVE_LOW.
     maxItems: 1
 
+  controller-data: true
   local-mac-address: true
-
   mac-address: true
 
 required:
-- 
2.34.1

