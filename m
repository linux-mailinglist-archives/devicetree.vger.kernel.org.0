Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59ACD6B5C67
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 14:47:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229641AbjCKNrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 08:47:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjCKNrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 08:47:15 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1753C12B3E8
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 05:47:14 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id l7-20020a05600c1d0700b003eb5e6d906bso5118882wms.5
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 05:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678542432;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZBO3idTa/21IoF+rqyI12JvXLCjDtYZ0mkiJnbS1QaQ=;
        b=l/ED1hksk6p1/Q3Me1RbvDkV0gyMZu30OHUixejio+q11rs8TDi6JMGItWmnxfb6fx
         9pDN5isrItay4UAWqy1+t28LQ9nXLH1Zu6TB6+76aRv0EziUcRAuAwNsgPb03rpjx/Jq
         vafWTHi/bvye3IdNl4boW3lHsHV8G6RYLmuQT1dJnQs7HJKV2QSaLymb5w1uaWaT/6OL
         qEmgdhI/CSTsiAka6v1XI8+SguV4WFvhb/yTlZNbXH2WVcwvA8IA7dD4ix9JQQdYlBQl
         Qv51UhIPFrC26Jiv2lUK73kFpsrHJF23dZy8NWh8zQR63aLBmIB1mEKXnvMgs+Tlz8GU
         sduw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678542432;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZBO3idTa/21IoF+rqyI12JvXLCjDtYZ0mkiJnbS1QaQ=;
        b=x5xAnTJqhcJx8W6vSDoP/NLr5Sv+D8Bw604W3s01Jg1R523IouXg5ryV1ziDvMH9g4
         x1Bcwb/FzKjDznW/8+qXdj2uYZQyL6MJgvrWylbbOrd6e5QtVm878lEC5TP7tK1dk4a9
         +Vf9McglqNWyEayhi6AX+zqJefsYbWcEBR0b37ohFU1oY3oOmO0MzaXfJIwuY2HyCQYR
         bm2NDdIrPxAgMeW23mUS/Nd82SOf0XSV5rZhCpVtEbXpY3JHY9Eug/X3Hr1RGksEzu9O
         cmAQNmb6kz9m3L9gu0jQeBSX4efYBPZZidgZrdAxFmBsCIAHznDx77UeF7Vhnf5RHEVV
         D8PA==
X-Gm-Message-State: AO0yUKWAXkqKqEMQ8YYCtXR3HlwSzVRXuVdCQn65Uxc8KCP1F9VAquy5
        nyEP+yDy0AlkdwPBjbBB5JCeP06BTnvevX9F9jo=
X-Google-Smtp-Source: AK7set/BfIdaf1Svp6WGE/8OCJBf2lTBk6zGjmBU0bzzIm/QXkFnDW2NL79iXTCHDsCdUJi9QpW4PA==
X-Received: by 2002:a05:600c:190c:b0:3e1:fc61:e0e5 with SMTP id j12-20020a05600c190c00b003e1fc61e0e5mr5638819wmq.33.1678542432561;
        Sat, 11 Mar 2023 05:47:12 -0800 (PST)
Received: from localhost.localdomain ([146.70.189.177])
        by smtp.gmail.com with ESMTPSA id n19-20020a1c7213000000b003eb39e60ec9sm2816915wmc.36.2023.03.11.05.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 05:47:11 -0800 (PST)
From:   Jan Jasper de Kroon <jajadekroon@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     Jan Jasper de Kroon <jajadekroon@gmail.com>
Subject: [PATCH] feat: Add 'hold-in-reset-in-suspend' property to goodix touchscreen binding
Date:   Sat, 11 Mar 2023 14:46:55 +0100
Message-Id: <20230311134655.486973-1-jajadekroon@gmail.com>
X-Mailer: git-send-email 2.34.3
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

This patch adds a new property, 'hold-in-reset-in-suspend', to the Goodix touchscreen
device tree binding. When set to true, the touchscreen controller will be held in
reset mode during system suspend, reducing power consumption. The property is optional
and defaults to false if not present.

I am submitting this patch to the Device Tree mailing list to add a new property to
the Goodix touchscreen device tree binding. This patch supplements a related patch
sent to the linux-input mailing list, which updates the Goodix touchscreen driver to
use this new property.
The linux-input patch can be found at:
https://lore.kernel.org/all/20230311131534.484700-1-jajadekroon@gmail.com/

Signed-off-by: Jan Jasper de Kroon <jajadekroon@gmail.com>
---
 .../devicetree/bindings/input/touchscreen/goodix.yaml    | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
index 3d016b87c8df..a7c3d6b5156a 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
@@ -56,6 +56,14 @@ properties:
   touchscreen-size-y: true
   touchscreen-swapped-x-y: true
 
+  hold-in-reset-in-suspend:
+    type: boolean
+    description: |
+      When set to true, the touchscreen controller will be held in reset mode
+      during system suspend. This can help reduce power consumption, but may
+      cause the touchscreen to take longer to resume when the system is woken
+      up from suspend. Defaults to false if not present.
+
 additionalProperties: false
 
 required:
@@ -75,6 +83,7 @@ examples:
         interrupts = <0 0>;
         irq-gpios = <&gpio1 0 0>;
         reset-gpios = <&gpio1 1 0>;
+        hold-in-reset-in-suspend = <true>;
       };
     };
 
-- 
2.34.3

