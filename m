Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA04F78624F
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 23:27:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237802AbjHWV0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 17:26:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237598AbjHWV0H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 17:26:07 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80CF110D0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:05 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3a85b9c6ccdso2596253b6e.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692825965; x=1693430765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PsnfB6igmvyfdO874DjSX4Ed+SZpuHTROoxrDZZ1WTU=;
        b=mtyq3Tr5JuVhF2NGnGE3GgbIMP0hi09mfv5fTqjet3vk4ouy2DFHTILWF++F8C5FIW
         GmFiAQLUT9n9qyozHZNZnwWtykPniXz0eupSTUQAS7ixRafibiU7+oC97tYDzh4ekrBQ
         vyvEr0HE5tY8cYJ3sZWKJOTkpOs/bi/x8cFUrbQWOHr+dMOGsnK+U1ISSAC5huvkeO8p
         JHOtcWrwz7gC1W37gk5ZI055nvehXmj0QrC31SJIVLGUMzp7b7UlRi1Z0eMWsyEm0XsE
         4W9Xe8TvoTjt9IeK99p4ZAwtv5UTqrF2RFzk1g3o20mGeex7b0CrkNvwNBZRGdiKcnHl
         cLww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692825965; x=1693430765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PsnfB6igmvyfdO874DjSX4Ed+SZpuHTROoxrDZZ1WTU=;
        b=Wq0/wYo7f+JAIFkOc7LB082ZnDPhW5MpIbrtLSagy6jtgsheGtNIZWE6B2DQ7rs50L
         QtX9Jjyj9rYAE6sh2MjDs7cF9SKCqzwmbDZJxDVX6OqmicDkKfY8gDa1MJ7S0N94Xnci
         pVKAszIHuEB+lGCqAuOutbtfwGW1l/AV8M7sPgo7vHfWRog+fhccp2f6ek55VWaqkRjY
         Jlj2loe+HVUBNxsYaQ5a66Y+g7wQhZncOMtm63iofVpncS4GwzRksUakMCeio8jU9hCm
         qqLNHookV45v88jb12QbhFBkuwmSvSkUnbJmdADSTC6gMfkDnn7iIX5Y89ropnKy2fSy
         yMlw==
X-Gm-Message-State: AOJu0YwhhD6gVDJVUdtXnX5P5DeYphJnh2bI5ER9/fjnQAURKDv/tHqX
        QSutY9TlxIRuzluV+KFbCuw=
X-Google-Smtp-Source: AGHT+IHHbeCzCfqeEkofU4A2PRzYKfZNQvQiEpNoNmmQaEX8uUW2G6tE5V/nWzoJlZDBmgDWdrF8yw==
X-Received: by 2002:a05:6808:1822:b0:3a0:3773:f294 with SMTP id bh34-20020a056808182200b003a03773f294mr21653465oib.8.1692825964773;
        Wed, 23 Aug 2023 14:26:04 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d26-20020a05680808fa00b003a1d29f0549sm771127oic.15.2023.08.23.14.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 14:26:04 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, jagan@edgeble.ai,
        heiko@sntech.de, uwu@icenowy.me, andre.przywara@arm.com,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 4/8] dt-bindings: usb: Add V3s compatible string for EHCI
Date:   Wed, 23 Aug 2023 16:25:50 -0500
Message-Id: <20230823212554.378403-5-macroalpha82@gmail.com>
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

The Allwinner V3s uses a generic EHCI and OHCI for USB host
communication and the MUSB controller for OTG mode. Add compatible
strings for the EHCI node.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/usb/generic-ehci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
index b956bb5fada7..f37191f21501 100644
--- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
@@ -38,6 +38,7 @@ properties:
               - allwinner,sun8i-a83t-ehci
               - allwinner,sun8i-h3-ehci
               - allwinner,sun8i-r40-ehci
+              - allwinner,sun8i-v3s-ehci
               - allwinner,sun9i-a80-ehci
               - allwinner,sun20i-d1-ehci
               - aspeed,ast2400-ehci
-- 
2.34.1

