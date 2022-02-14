Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F9DE4B4404
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:24:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237360AbiBNIYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:24:37 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232778AbiBNIYf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:24:35 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A4925C41
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:24:28 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 465DC3F1D0
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644827067;
        bh=Y1pkt7sh1u4nhMjpCSj85kjYF7GKoQX1FycUfW16GNg=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=fkEPZPIqdT3xXDMbO6RyIJ/efuBDDpCqGW0Qt1NJ3rdBZLPTBfHODEymc8BuyYi4/
         jB2end4RuBgDEInZynzp1Y9vp/3AlrjBBm0JSM0JJFyx1T6FwCkw/rWBm5gESdynLN
         6BxpMlIlV2vbgfGdlV0DdInUgt4QXZ4dbfb8aBnZ/TV4gCOGninddK4zobLlmjPyUJ
         aYywAhbnCkYP++z4zTTT0Y8q1HGvO7Dk/anox08GgNZNVvi+B2F8lRsehJYYYdgo9O
         oHCS2en/cWErJ0yqJwCLgOow5Mz6p+gb2A+A4LwXIvyzbRYO4IW+y+NPWIKj48jxih
         4Phb9clk0lUCg==
Received: by mail-ej1-f70.google.com with SMTP id qa30-20020a170907869e00b006cee5e080easo446208ejc.3
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:24:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y1pkt7sh1u4nhMjpCSj85kjYF7GKoQX1FycUfW16GNg=;
        b=sL4W0CmTtZiBT5xPE/LuBJmBr2BjdvAXl/0x6d7t6bYsfoMg2Mj+ijfFGh0cTSStqA
         wxn4Oo1hQ+QzEE0i6gScWYY7XnagswzOQGT/zovFcIVpekfPP4SX1D3M1yeEhMUi80Nz
         Bvy2kE+zkC/9080vCdpxyyzto/+xwYIbgOvv2ouXHw4koJhRTUlMTFXFNyiWqXNNhFcC
         TNKyH2i7u1ZbUWVeJdj0c2/IdqFqFKeFouHdmON8qXyTedT6VbQuxpOoS6V+9YvOQNJ6
         RblRUK+ER7LcSP5aOa53dvFrQewh0oebKEaalAQ09JZX0YNA46YFaOkeXyUtHhtjLYYW
         Sd6w==
X-Gm-Message-State: AOAM531WD0T88nW9yBsdClMGHcJsGKNwUCZd6VQmUfxmd8lnyva9w8gn
        Ld9xidNStow50z6/MGiPgtJE8zEBbRwoSl8hmv1wLpgY6Y8imDG0za21FOYrtfowwmJT89yZ7H5
        UAwqnYS7jsgEtwPudf0Lk6+FeSWjyD4tXmd6yqgI=
X-Received: by 2002:aa7:c3d8:: with SMTP id l24mr9023378edr.63.1644827065917;
        Mon, 14 Feb 2022 00:24:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy3sWIkomqniJbHGA9USzgWbkd0+vKt73BSCiBXKwRHhK2HxngI2g+YQq0rzs3pSOItOjbAow==
X-Received: by 2002:aa7:c3d8:: with SMTP id l24mr9023363edr.63.1644827065698;
        Mon, 14 Feb 2022 00:24:25 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id fn5sm1363850ejc.179.2022.02.14.00.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:24:25 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pwm@vger.kernel.org
Subject: [PATCH] MAINTAINERS: sifive: drop Yash Shah
Date:   Mon, 14 Feb 2022 09:23:49 +0100
Message-Id: <20220214082349.162973-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Emails to Yash Shah bounce with "The email account that you tried to
reach does not exist.", so drop him from all maintainer entries.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/gpio/sifive,gpio.yaml     | 1 -
 Documentation/devicetree/bindings/pwm/pwm-sifive.yaml       | 1 -
 .../devicetree/bindings/riscv/sifive-l2-cache.yaml          | 1 -
 MAINTAINERS                                                 | 6 ------
 4 files changed, 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
index e04349567eeb..427c5873f96a 100644
--- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
@@ -7,7 +7,6 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: SiFive GPIO controller
 
 maintainers:
-  - Yash Shah <yash.shah@sifive.com>
   - Paul Walmsley <paul.walmsley@sifive.com>
 
 properties:
diff --git a/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml b/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
index 676b2160bada..605c1766dba8 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
@@ -8,7 +8,6 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: SiFive PWM controller
 
 maintainers:
-  - Yash Shah <yash.shah@sifive.com>
   - Sagar Kadam <sagar.kadam@sifive.com>
   - Paul Walmsley <paul.walmsley@sifive.com>
 
diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
index 2b1f91603897..e2d330bd4608 100644
--- a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
+++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
@@ -9,7 +9,6 @@ title: SiFive L2 Cache Controller
 
 maintainers:
   - Sagar Kadam <sagar.kadam@sifive.com>
-  - Yash Shah <yash.shah@sifive.com>
   - Paul Walmsley  <paul.walmsley@sifive.com>
 
 description:
diff --git a/MAINTAINERS b/MAINTAINERS
index ebf7a75a6bec..87eeac970ca2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7090,12 +7090,6 @@ L:	linux-edac@vger.kernel.org
 S:	Maintained
 F:	drivers/edac/sb_edac.c
 
-EDAC-SIFIVE
-M:	Yash Shah <yash.shah@sifive.com>
-L:	linux-edac@vger.kernel.org
-S:	Supported
-F:	drivers/edac/sifive_edac.c
-
 EDAC-SKYLAKE
 M:	Tony Luck <tony.luck@intel.com>
 L:	linux-edac@vger.kernel.org
-- 
2.32.0

