Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D8E96262F3
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 21:31:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233511AbiKKUbq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 15:31:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232574AbiKKUbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 15:31:45 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBF31748E9
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 12:31:43 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id n205so5954622oib.1
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 12:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVGg0nA9wNIi0Jewzc4LnXJCRV2Q026/w/hAmHhcOh8=;
        b=Q7UJA0jp6wd6TZZL7SSULID+66etZUFTtTwdlSOL5xvnu48x0MtFFcyDZa65F8AZlo
         9Q3yzyvtbdpN0BjN1vCZqK0yrm/ZoquUjN5mhmhhOfxk/LDfQ8s2BornrRyAVPULpSbv
         HvA5CzIl6+a07/LchAR05cBrEw1bktkYasX0hUjQ+h5oRTudBu7nTeki1L6+XPkvgs2h
         hr27ZD5pdClWUjbylJLzG5nF89Jmyk7D0nHzVl7Aiz1rGHRxkblGCzVqAXRO0jlBwlB5
         6WJEvBNTu8NVgiw5GxLGQm6afikolLnylNEqhPl5/iXjLzx3Z0d7UlNG/g/NywvxamB5
         LOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVGg0nA9wNIi0Jewzc4LnXJCRV2Q026/w/hAmHhcOh8=;
        b=4ov0/MlcsY6g/i9kH+xyJ8ORu7pA0Fi/peOzBMPlS8kUqMFmYLjLs6QsIkc6z/Wymp
         UxWAck7jAdLQ4JSsVjmy/IEMHwKT43gHCEIfDu1xCabcjXWyVIc+YliotQvv2WffkXZL
         bzO5FS6RtpHXckfh2crKApnPuUmW2PrveUwFgUlADH2A3pXVFczASIGSpRw+InIrFIuH
         4t/B/o20qgdds7Xq3lXbY+yFgGk6OdlDhS8fTXyUP8Rt09XiUvteUAQ0/aF+JC9mYj91
         9PduKwQkc6b+z7AhhFLLzSmZ1oRBhDXXnQz9Kt0Pe3biibFBAeVDVK5q4dpgb3bAs5Iu
         lMDQ==
X-Gm-Message-State: ANoB5pnWPpUR3FpbvGUdAwN6/ZgEH4UJ6AlGaS9qN/QBVKMlJELKPu2F
        CRdDIgxcZEVoN4vgEuHSChg=
X-Google-Smtp-Source: AA0mqf4wcEGFxyBApTMEYOtrMG6ElSUz6Oy0cPR3IbNMEyqpjhHtyoKMDQTWKzb0XvtTdb7aZCeM3g==
X-Received: by 2002:a54:4788:0:b0:359:568c:176 with SMTP id o8-20020a544788000000b00359568c0176mr1585531oic.110.1668198703316;
        Fri, 11 Nov 2022 12:31:43 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id n10-20020a056870558a00b00132f141ef2dsm1734054oao.56.2022.11.11.12.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 12:31:42 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V5 1/3] dt-bindings: vendor-prefixes: add NewVision vendor prefix
Date:   Fri, 11 Nov 2022 14:31:28 -0600
Message-Id: <20221111203130.9615-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221111203130.9615-1-macroalpha82@gmail.com>
References: <20221111203130.9615-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

NewVision (also sometimes written as New Vision) is a company based in
Shenzen that manufactures ICs for controlling LCD panels.

https://www.newvisiondisplay.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6e323a380294..c6aa7b3d1455 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -883,6 +883,8 @@ patternProperties:
     description: Shenzhen Netxeon Technology CO., LTD
   "^neweast,.*":
     description: Guangdong Neweast Optoelectronics CO., LTD
+  "^newvision,.*":
+    description: New Vision Display (Shenzhen) Co., Ltd.
   "^nexbox,.*":
     description: Nexbox
   "^nextthing,.*":
-- 
2.25.1

