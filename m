Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7137F6AFEEE
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 07:33:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbjCHGdN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 01:33:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbjCHGdM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 01:33:12 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D4E72799E
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 22:33:10 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id i5so16774823pla.2
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 22:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678257190;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1FYFH0DWf8n5NKIAjbDLfxRaONFbp2UCoSSzl6jRiK4=;
        b=IixCDD2dfl1SCqgVxsnbDoZSVjPW2ejJVIDUdQCGmJo8W1qqOwwnoNh06D/Gvpv8hj
         BnPLrTrOXQDgRWC0rNRKfIz/2X+dE+lSu124HfRLvNzVYJKKai+ufLFy6Q6Smom6Pldc
         c1taUqxC4BHIrbJQOf43NdXJdH0LEScHv0yOP4HK2BgAKzPrZ+lmw2BMdwfj1r29VfOy
         izteR/y/wzFsKxZr53wxwetg3CvE0bl2Lr1I4QzAkSMXqzF+tT99ESIyPp2W4CRjI9wp
         k3ZBumTvQnH1N7d+xTweYdHIxiAMCozPyaeSmSt1nDR/Z9qpVy2rLBA1QL7ZcezLIAOF
         eEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678257190;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1FYFH0DWf8n5NKIAjbDLfxRaONFbp2UCoSSzl6jRiK4=;
        b=D2PVBp5E9c9pGFcDUAPGmM+RCYLAUS25CUrFfcYQzMoRmiFkiI4NZ2S3cT9Dk0GkES
         a4hIWer+xwkHr3zrs+9Wtoo/AoDLW/NySW489v4csrdmyLx78S2cc4MfeJcKl8chaQ5C
         /sTuYh16Cgu/pKsz2MfKHWxq5wOWwFUzUWpuQ3k598OeNLMlZc+QcS5Om/OTejcv43Mt
         Cd73rdat0WsjCZuWcv58+U9AHK4U7iFFjsImH8IqDkASYNNFUoJD40nKePV/r3XOahO+
         6yH60bTe99Y190l7ViulAh5Hw+ol99zP0PIqWZSq4WjflVsj5t8i703X1jYXgzVNbYxZ
         ujTw==
X-Gm-Message-State: AO0yUKVrekkoiZUA31UJ33bZk399U+mD99tP7oV2xNoruwohwauJ3dlq
        LF64e8YL32nu5TM+HmMKMm0=
X-Google-Smtp-Source: AK7set+kB3ZyvAUuUVwOMapQnB7ISx1ZuDSffBjWmy08Byq7YRrVclCt+MYayRCvfxK5QgZddMySRw==
X-Received: by 2002:a05:6a20:1610:b0:cc:e439:bdad with SMTP id l16-20020a056a20161000b000cce439bdadmr1459282pzj.1.1678257189828;
        Tue, 07 Mar 2023 22:33:09 -0800 (PST)
Received: from anarsoul-xps15.lan ([2604:3d08:7780:e52::398])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b0061a829d2679sm5783349pfm.37.2023.03.07.22.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Mar 2023 22:33:08 -0800 (PST)
From:   Vasily Khoruzhick <anarsoul@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
        Chris Morgan <macromorgan@hotmail.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Brian Norris <briannorris@chromium.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Chukun Pan <amadeus@jmu.edu.cn>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Tianling Shen <cnsztl@gmail.com>
Cc:     Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Date:   Tue,  7 Mar 2023 22:32:39 -0800
Message-Id: <20230308063240.107178-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding documentation for the FriendlyARM NanoPi R5S.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 35f74eda30ae..0813ad22dc76 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -201,6 +201,11 @@ properties:
               - friendlyarm,nanopi-r4s-enterprise
           - const: rockchip,rk3399
 
+      - description: FriendlyElec NanoPi R5S board
+        items:
+          - const: friendlyarm,nanopi-r5s
+          - const: rockchip,rk3568
+
       - description: GeekBuying GeekBox
         items:
           - const: geekbuying,geekbox
-- 
2.39.2

