Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66BF978B72C
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:20:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232983AbjH1SUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:20:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232992AbjH1ST5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:19:57 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FB7613D
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:55 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6bd0a0a675dso2728812a34.2
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693246794; x=1693851594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KNjQa0r2Npipwfdo98mccTbPwuwzF8+vGZNgT6+2uoA=;
        b=NA5le+V6YCsxEftnFqS6PUNX/OrsrwmbCQ11ey6cnmVHoEE3leJIruC/5Izr5t6R4D
         uC08KZ4ra2qPziIP34MDi4L5igtxY3G5PuM4NWUwipVDhwpw1YRAcs5F9siwrXzYW4kO
         qXcwgCHSgZqSz5dIuTnyoW5kvzgtkq0FGnygT1etzIJO7EByvcup19IHj+VOg3GDNG2N
         NS4tBSs9/1k90RpWXYNyfD8ZoXMC6JNkU+8t8sbywmbrpJVNbSZ6GJ+7Ii51sJ8Fp6XS
         twUsIdH5p1ST3MoFeVMX08r/vKG7PK8KtBcoAkJTEvaCIPOAAB3w6LFKKks6jPOmrAyb
         0cHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693246794; x=1693851594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KNjQa0r2Npipwfdo98mccTbPwuwzF8+vGZNgT6+2uoA=;
        b=LnngeMCADDqudqvKCsuoDGDUltbN5p6/6yDHmLVNaJ4Rmu1nDG9y5tPzh6t6VCZTc5
         W/UemV8jJcDoCJFipGStPrQJTE7kP1z/4paviOIggDXgVzjTKyYZUXWbzza670x8StXV
         o6WZEDo2dA/m2bLI8Kx58F2RbFW7okuwVP1sTPr/zGSDxSN8wXkxdYuIxX8MaKPRIhZg
         XLY7LQPLRso4Vc0fVF2JXYeRB0jN2N5GxXq9C80Cme3RFsiEaleLa0GSQtzCp3criTpo
         DrsdhmQre+zfnynubp8NqCoV8q/GbjX+9e6kjcF/4W6s2Fc/5nujh38ccu0fQ+ORbUSC
         k3jQ==
X-Gm-Message-State: AOJu0Yx6uRD9LbfHk41dV+S8HomFTgNmZvBGnpCcwihgKCMlbNzvLdOx
        rmavszOvZk+x0ZOau5n6zug=
X-Google-Smtp-Source: AGHT+IFO1QSnKPjEMtfBoLr7XMMbpaDqNcnkoNr4zQSKvDAZ781dHhwbXiklVKcXQ5HSb7ifJKxTEQ==
X-Received: by 2002:a05:6830:3a0e:b0:6b9:52cb:3adf with SMTP id di14-20020a0568303a0e00b006b952cb3adfmr14505273otb.20.1693246794447;
        Mon, 28 Aug 2023 11:19:54 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a9d620a000000b006b99f66444bsm3695927otj.71.2023.08.28.11.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 11:19:54 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, airlied@gmail.com,
        andre.przywara@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V4 4/8] dt-bindings: usb: Add V3s compatible string for EHCI
Date:   Mon, 28 Aug 2023 13:19:37 -0500
Message-Id: <20230828181941.1609894-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828181941.1609894-1-macroalpha82@gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>
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

