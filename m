Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E89978624B
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 23:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235707AbjHWV0i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 17:26:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237679AbjHWV0J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 17:26:09 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC86F10DC
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:07 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3a7d4030621so3708197b6e.3
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692825967; x=1693430767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GmejmVLGdABaT+qnw1yy9ms9gFGtTk5UP1kBkDFPK+I=;
        b=d2f3RqB22NAUi62xj1IhlXBbeVscTUk4mFuE01G97DeFR61OachgwbNcyb2QrD88Fw
         KCbwUgGqAW6MddXUicxXx+a2Q13Bx4AsszGJXTwhUlDgiVUyLlzUDElB9wrcX5HI/9Fg
         PE353Jmf6lXiCGwQgPaSG9tWoFMpWNFDPvFf3OA1k/9SCZcU5S9ImaeAdBMx9DKv2/Sa
         Tt+e2tYh8UJxv5TUNY/xzHnpTtAO5DSLuqQxzAVbOaRFq2HZo2TkeL+Ce9i/NRMKHESt
         N5NzpxmMCEE96ycn8pOBAF04rPk+VH9zazFBLQio+PrO5EqqSfMAktj5ziQKYcxZiPam
         SmnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692825967; x=1693430767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GmejmVLGdABaT+qnw1yy9ms9gFGtTk5UP1kBkDFPK+I=;
        b=eC28Z5MeA0jiXh5Q5dP8Ji7UwoxVS6WvCwOQEZWaZq0mazPm2uqT2y7EP7u+8PGSCJ
         osyOG+G3EDkypzu5vhrpDWSFclrfpPO1ygbsMPK8VXp29FymURFttdUOWLwFLk0H0eLO
         xSFSMg8yOjgD6EiW/2zDgGoGeyW2BuzJDg3vIsj2/a3ENtQKH8mlhU+39l2oWu8tCgOF
         JBFjNSILwFbv4h9BGPJFsbkZB0S/tcvBWhI3zGIaslnUxmWNepRq/mnBCz9FEr1DcZRT
         g4GBTOda1pQ+ggDtCQtGUZgM6V5Jv5mfE/Ac3rilTmqF0X0FYmZ8v4YBe5eFq6D3NFRp
         D2FQ==
X-Gm-Message-State: AOJu0Yza55j9td4fRbcYx5mgHqiW2U5IXkTiG5YGYbjquOOj1eeoW48C
        gQDvp7r5IKm37DCy1EjTzv4=
X-Google-Smtp-Source: AGHT+IEDpfbnjWsSiMmcGkeV4ESrNAZs+pG+ch4KHURsizroCnN21aJQ24EOA3a8WAAymcRKmpsdOg==
X-Received: by 2002:aca:1b0f:0:b0:3a6:fb15:399b with SMTP id b15-20020aca1b0f000000b003a6fb15399bmr11308841oib.36.1692825967020;
        Wed, 23 Aug 2023 14:26:07 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d26-20020a05680808fa00b003a1d29f0549sm771127oic.15.2023.08.23.14.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 14:26:06 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, jagan@edgeble.ai,
        heiko@sntech.de, uwu@icenowy.me, andre.przywara@arm.com,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V3 7/8] dt-bindings: arm: sunxi: add Anbernic RG-Nano
Date:   Wed, 23 Aug 2023 16:25:53 -0500
Message-Id: <20230823212554.378403-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230823212554.378403-1-macroalpha82@gmail.com>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG-Nano is a portable handheld console from Anbernic which
uses the Allwinner V3s SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index ee8fdd2da869..806f25b561d9 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -56,6 +56,11 @@ properties:
           - const: amarula,a64-relic
           - const: allwinner,sun50i-a64
 
+      - description: Anbernic RG-Nano
+        items:
+          - const: anbernic,rg-nano
+          - const: allwinner,sun8i-v3s
+
       - description: Auxtek T003 A10s HDMI TV Stick
         items:
           - const: allwinner,auxtek-t003
-- 
2.34.1

