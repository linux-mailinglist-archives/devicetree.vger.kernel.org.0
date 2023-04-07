Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEB576DACE7
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 14:59:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240523AbjDGM74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 08:59:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240528AbjDGM7p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 08:59:45 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F5F6A256
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 05:59:44 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l15-20020a05600c4f0f00b003ef6d684102so21698265wmq.3
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 05:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680872383; x=1683464383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CfcyjQNnjJKyfut48sN8/xADyro7NrSR3hTnCNZX/QE=;
        b=b2giEx0I++QT94DRuN8jH9pGk7u1tl+V39YofW83rGdzvzzmPQuh/Xyfy6OqExcl/U
         1oqYJNwW/IiFzcOUjBkHvs2IiLMUhucoWryP1tUWYhgOmmxf5pTHrsM9zmU33yc46oc6
         ZuEt9nJO9L/OzYXjIBC1H0WIu6aRRMkREJBsq/dpYsCb5mCX4bVdcj5Ko5ie/8kNAyfD
         LxsH2/ZFr2XLjuXiRFsUvtNvLvkSgbvq0f0/ngEb7JVx8HlQ1IODj7ORq75Oe86T2KzQ
         LVa0PoCW9pUFWD5+UKqr6IrGcwO0Np+TESojnZBJbV6vgw/VlAlvq2GHNiSDydP0iyq9
         brVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680872383; x=1683464383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CfcyjQNnjJKyfut48sN8/xADyro7NrSR3hTnCNZX/QE=;
        b=d8tE80SLzZI6hPKkbopZWv3TKV7Hn/4kp6FTc1b8hV1hGLpTITtZKTtd5i4ChnZR86
         G7AZSrMqXe7oJlJ/Tswl+QAG5tBaFLyjzNTGlInHXsWyN0zyIt9cx/8cp3kDdp3Q5l5Z
         ngtMH7J2Fmn7dcVuj3VsHK7D/A5K6Z7v8L2LK6x7XRZO0mWm5X5iMmTDb8HOaq6zP3Ks
         YUfqaUDDORgNg6QlBYA4sDoYeHvWhA0Ftr7i79TMvdp8XAswU4yuop0JcxoMq9CDzSic
         XhUhuA/Y0H09nvOC6v2jhIBDuozxqz8Q49+GnfMl94tj8aYcTTqJIc3hkIbWwfHx3xkO
         EpiA==
X-Gm-Message-State: AAQBX9d0OxqwuIh0P1Cqk2cJmpJ4E170qL5mPAqtnnc/0hFPcdwW1u+A
        PKYXo3porF3wb06P8KDU86IG4g==
X-Google-Smtp-Source: AKy350a0mSzUresI8Qrw6rLqP7KVvyQ/h/qTUx2AGaI8dw6HgQWcJdZC04b2dwrui04EfmC7Mbgi+A==
X-Received: by 2002:a05:600c:2183:b0:3eb:29fe:f911 with SMTP id e3-20020a05600c218300b003eb29fef911mr1329928wme.13.1680872382864;
        Fri, 07 Apr 2023 05:59:42 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id t4-20020a5d6a44000000b002e558f1c45fsm4471446wrw.69.2023.04.07.05.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 05:59:42 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Fri, 07 Apr 2023 14:59:21 +0200
Subject: [PATCH v5 02/12] arm64: defconfig: enable Mediatek PMIC key
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230203-evk-board-support-v5-2-1883c1b405ad@baylibre.com>
References: <20230203-evk-board-support-v5-0-1883c1b405ad@baylibre.com>
In-Reply-To: <20230203-evk-board-support-v5-0-1883c1b405ad@baylibre.com>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        =?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Alexandre Bailon <abailon@baylibre.com>,
        Fabien Parent <fparent@baylibre.com>,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=696; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=Y50nUyCeJOixDSHXG+mQZU/+URiR+SRJRINiChTJUZk=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkMBO6HFk1tMX573OLGmez/7zh7KzG4duai4jQcwJq
 iQGmSoOJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZDATugAKCRArRkmdfjHURSR3D/
 9mS4P2gqL8iNFNUpbPB3gvJLISPFisIppUDqged+FWNbWhqOKHqXCCB4hzCQAdGmJZPKxUrF61YlUn
 0ryu7f8FV9ww+MW54RsoIoEkG61BF6J121ZMBxbUtp9Dp4imt6n3ZaoA07PpqQV8dtBUbNqQjJERTK
 bNMY1rfljeAcxqSa9QZLkumfpZziHAa1/5Agg8fqHrRQasvpwOkP2zVW46rsU0mQeWP6XlZDXqK6CZ
 h5oGx+xVfL84uavPac65uMtIAVTJ7nbw9Ix9/EM+ahj0ckPD9bl1Ee4HrjQCJJ+oQaSGen2FKyhdRZ
 tca7dNlj+YEXIG7zD6eGCgTlIJYVpdagx+qPDBxibWPJMqEEXufu5ct7dMpzPNEfint7XldSlh5xw/
 A208sfc0mRPaUQ29Nu6J7WhUwt/alu9xDky9MSRjyN7W89BAUsM6Zu9Qm5WGvNDQwPf0mmioayZaox
 ZCcB8bi0L+vSBgezZ1PLZVfjIiAKW693h+KPsvEpd/UhdIR9VEzJcH5+Dl2ot/p0PZsvSp6qXidxG/
 ppxp4fYEg/4+4TgxjWyQpTK9n3VZdWZ+5nH+sEA6PMI3KsSExy/5YTkXEapclW1lY6LR7mmTkAxutq
 96CuLmjz3Z/t1NGKYE89mtSV81nLV06uITftJeza4r5HZbvIFLCBT64A3EUA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e4cb65889ae6..91fad635e565 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -406,9 +406,11 @@ CONFIG_MHI_WWAN_MBIM=m
 CONFIG_INPUT_EVDEV=y
 CONFIG_KEYBOARD_ADC=m
 CONFIG_KEYBOARD_GPIO=y
+CONFIG_KEYBOARD_GPIO_POLLED=m
 CONFIG_KEYBOARD_SNVS_PWRKEY=m
 CONFIG_KEYBOARD_IMX_SC_KEY=m
 CONFIG_KEYBOARD_CROS_EC=y
+CONFIG_KEYBOARD_MTK_PMIC=m
 CONFIG_MOUSE_ELAN_I2C=m
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m

-- 
2.25.1

