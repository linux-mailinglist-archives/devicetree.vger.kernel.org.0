Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AE024B3E3E
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238666AbiBMW6R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:17 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238709AbiBMW6Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:16 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 128D154BE3
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:10 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id b14so95967ede.9
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MLuhH6ONLHu6VxvLjNeF0wkcr4pEFWdl7WgU3dUjs2Q=;
        b=gHxFhbBbIairlqlrfYKyfFvzVcELELsIQoCt4ETXjEwNiEVLbYrST1s3Pt/RafI9d6
         Mq3H4mCkFfZAeKMbTiroVBs3lZZlCrfMIGPJiMBrj9HlyXfTUb1jNdfSYL4vbsZWmJWv
         uxg5aSpKZbcz90E7oNp/BelW0ZcEuDgQpYIB7fJ0CW//vixJJVQTptjwIj1u9KChQkaQ
         DbJhd6ElXnSCX0w1Zy68BgpdPXcp68NTYLwN5q18Q2qIdVhauMMO71pojViIFf55yERF
         KZbhwGzOJYquq7jG9ekymhzx1+ezUvS99YgBr5P/XdsBsFVK1ySJxZBmQDS3rLU6VyA1
         mKlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MLuhH6ONLHu6VxvLjNeF0wkcr4pEFWdl7WgU3dUjs2Q=;
        b=OfVO8CiEsEaAODk9NY/xxQnA/9ZQfWx2yCF6owiGA9pRkFyVa2Ms1Xo5MiIHEHLmha
         05tfM7fzRFz7ZlakjBlNzeMGJOHO9teWiO+cbOZe67X9pm8HLIlnIn/Epj5YmWYLyzAK
         l482gsvZM7jwtBBhcip1I2byIHjK1Fn8Urt/dBCHSBcADEwDkTl1G98s6L2sGqvM8LwH
         wEk8L3RBKnU0a9h+dq9ACnN8ogLU6dlcawoywltI8rjEeEartv12S8Lnjr+LCZIzGcN+
         vJLnFqY4/W+9hKJvr/VfiJi2xeIUNbl//DSFFTPM1zTV7Tu0oV07vmwry0Z0nPhXj5iG
         TPMw==
X-Gm-Message-State: AOAM533J2qgycvTzm9HP/CbM9BrSfIsbBVFUNg3tE3nVZsQYwtmLVUCq
        m820zte/1P6K0pGGsENEccw=
X-Google-Smtp-Source: ABdhPJxYzYpZ631OmXPjUHVbsodI7QSeEsf2iUpFjpHscHLQ7jO3sN3xxEkr/JdYmt6NU7YuAonheQ==
X-Received: by 2002:a05:6402:4ca:: with SMTP id n10mr3346276edw.248.1644793088666;
        Sun, 13 Feb 2022 14:58:08 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:08 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 09/15] soc: bcm: bcm2835-power: Bypass power_on/off() calls
Date:   Sun, 13 Feb 2022 22:56:41 +0000
Message-Id: <20220213225646.67761-10-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Bypass power_on/power_off() when running on BCM2711 as they are not
needed.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v2:
 - Correct names

 drivers/soc/bcm/bcm2835-power.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index eea31f75dc64..b65a39cc2788 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -197,6 +197,10 @@ static int bcm2835_power_power_off(struct bcm2835_power_domain *pd, u32 pm_reg)
 {
 	struct bcm2835_power *power = pd->power;
 
+	/* We don't run this on BCM2711 */
+	if (power->rpivid_asb)
+		return 0;
+
 	/* Enable functional isolation */
 	PM_WRITE(pm_reg, PM_READ(pm_reg) & ~PM_ISFUNC);
 
@@ -218,6 +222,10 @@ static int bcm2835_power_power_on(struct bcm2835_power_domain *pd, u32 pm_reg)
 	int inrush;
 	bool powok;
 
+	/* We don't run this on BCM2711 */
+	if (power->rpivid_asb)
+		return 0;
+
 	/* If it was already powered on by the fw, leave it that way. */
 	if (PM_READ(pm_reg) & PM_POWUP)
 		return 0;
-- 
2.35.1

