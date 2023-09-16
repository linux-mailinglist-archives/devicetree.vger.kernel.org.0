Return-Path: <devicetree+bounces-794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B217A3180
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 18:52:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18DB91C20924
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 16:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4AC18E39;
	Sat, 16 Sep 2023 16:52:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87BB14A82
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 16:52:41 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090D3CEA
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 09:52:39 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50309daf971so250049e87.3
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 09:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694883158; x=1695487958; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F2bpY1WXX/2nWx1Qdw3/a/39vkL80pHxnXkILWF5/MY=;
        b=cACWf86UGPgcbbimkpwJZIEE2bpDvpkp5kDbzjrhfIND9oJkHYuwyONY4pRhSMWK9j
         P9HkJRB8/886ZsV33U4ugrEDoQjLmkcsdvyRvraIuw9ydcl/xV0BsKixKOGLANPJApRp
         yf7dzCZDHTB4aUn9bxJYdNbNT7/bxnOtt9aOnQ+OriVgfoD75TFYbDRacXucJOXzfM+S
         PujtUTXjB9LJx6HIGEf/02OUHQYbjhPRD4zPcpUawqrjejr54ryZaVnwr5aQO/OWHnzD
         B98r92Q9HpzdgS25P0Jv+9mAyKzvyitLm3+yLxBOLVpAsFVeefdgXx4h063UrnAly0hx
         vV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694883158; x=1695487958;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2bpY1WXX/2nWx1Qdw3/a/39vkL80pHxnXkILWF5/MY=;
        b=kDnPIPFLmnMGai2AnyP06whNdNT7g+dOxyU5KlFMmLFgkrC+/sfyg/LvXuCQq5BK4+
         e495SG0j+kAgQivFNmFPdSm/b/OWYqREzS/r9vATOIkHaC3cL0ctlJRqOb9DirUGLdq5
         CGtrgwr9vshiVwBYeqT0vt7YEJqPPWlPRUTtugub9F27ndjPzg+aopDP3qzP6DHPXeAe
         +5XKEUWUfwYKqzKQ/ILdzX8SQAlMrjrPH8D9n1qB24AlRSWURmkmFUUKVwk5yHf15Pig
         r+q5J+QGWeCjgI9RsMfCK9gN9VoBrN7cXD+6Gw/KxIJqmNxV4z8h8eel42WbaHwmGl6X
         S64A==
X-Gm-Message-State: AOJu0YxNvCCq26U1b9rk77+LiPIxGHAywVjlktgcMxGA6eixL/vz+QH+
	WVDuu2OYBB8UlWqaSsrsUl0rjQ==
X-Google-Smtp-Source: AGHT+IFR7kTT8uIkQT7DDLjOQc51gZ8DjPRXcuJ6FaCW0uD/vyffgvxL7NBnwamnPN44f009BCqrVw==
X-Received: by 2002:a05:6512:3496:b0:500:c180:59ca with SMTP id v22-20020a056512349600b00500c18059camr3526140lfr.41.1694883158111;
        Sat, 16 Sep 2023 09:52:38 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id a18-20020a194f52000000b0050304a2022esm302782lfk.47.2023.09.16.09.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Sep 2023 09:52:37 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 16 Sep 2023 18:52:30 +0200
Subject: [PATCH] schemas: gpio: Add trigger-source-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230916-gpio-triggers-v1-1-6e5052bead9a@linaro.org>
X-B4-Tracking: v=1; b=H4sIAE3dBWUC/x3MQQqAIBBA0avIrBPUyKirRIvI0WajMkYE4t2Tl
 m/xf4WCTFhgFRUYHyqUYoceBJzXEQNKct1glBnVoq0MmZK8mUJALtJM6I11zs1aQ28yo6f3/21
 7ax8paX8aXwAAAA==
To: Rob Herring <robh+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>, 
 =?utf-8?q?Jan_Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>, 
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This adds trigger-source-cells to the GPIO schema,
and makes it depend on the GPIO controller also being
an interrupt controller.

This makes the most sense when reusing the
trigger-sources also for GPIO, driver bindings can
opt in by specifying the number of cells.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 dtschema/schemas/gpio/gpio.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/dtschema/schemas/gpio/gpio.yaml b/dtschema/schemas/gpio/gpio.yaml
index 87c381b2942b..0c3950d8789e 100644
--- a/dtschema/schemas/gpio/gpio.yaml
+++ b/dtschema/schemas/gpio/gpio.yaml
@@ -13,6 +13,7 @@ select: true
 
 properties:
   "#gpio-cells": true
+  "#trigger-source-cells": true
   gpio-controller:
     $ref: /schemas/types.yaml#/definitions/flag
   gpio-line-names:
@@ -36,6 +37,7 @@ properties:
 dependencies:
   gpio-controller: ['#gpio-cells']
   '#gpio-cells': [ gpio-controller ]
+  '#trigger-source-cells': [ interrupt-controller ]
   gpio-line-names: ['#gpio-cells']
   ngpios: ['#gpio-cells']
   gpio-reserved-ranges: ['#gpio-cells']

---
base-commit: 033d0b1430e0670ddeb58f60fbff0ecefccaa925
change-id: 20230916-gpio-triggers-25ef26ddd711

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


