Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A8574313B2
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 11:41:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231704AbhJRJnw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 05:43:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231732AbhJRJnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 05:43:25 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78934C061778
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 02:40:51 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id w14so68286174edv.11
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 02:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=buH7vAjMrMNiFZgCnqX8LWzTqvVQhWMwnzUc5mp4HKY=;
        b=jXJkDGVZAzJISWZM4ruartPN4Ikgw3wlZM19cVv7i30FnZlvvwYp2opQ09OhpLSZFz
         FZZt6Ih72r7DUPzs21Duruaa47EuRU7vByDoyLz7QVhgAbA2y1qhynxkq4R4LMyydirq
         RqxlNpLCeF3KV99CumSdj332ay6hi//ZHJPwM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=buH7vAjMrMNiFZgCnqX8LWzTqvVQhWMwnzUc5mp4HKY=;
        b=qfbfjhrveRJsvlLSmmOS33XMqrutQxxKXAPAJkLdvyfok+ZnZK/1EZ2HAXUo8m+nqz
         gXOZTH5nZNMM+/pHIH4KT/26mlWa39bOD9FhPvCOUPQi4eyy4yokGWEXBRQVPue71zlL
         0ScUlEw//8dkdBembbi2y8mZG0ekg2O7PF4OkKyO4w+YdcFcA9sZCznih1drxuIhoHjF
         GvYcSn59rH3N2CuNmeXFj2XAqnq4xq5UZynHV53kFQ5arce9qRrRSogFPcY/tT0xK5DB
         qg6RJscmFLPZ0hh3k6EU5oklpmpaKOEjkpEgd5R+SqHNbinjavi3B3UKous3375js7w/
         0KgA==
X-Gm-Message-State: AOAM533lWEvFpAryRWEOtgc8dpfVZHnq/of7jKJKGi3B6MrcSmQL/z+h
        p7U4jPmOURqT5P9yOxkXj22GIYDubWi2iAsL
X-Google-Smtp-Source: ABdhPJxEHSRz1cCu0m7TXyoTnaLc7pxPXQ3mL/GnGCFCTS9JN9vdq+H0L63oyvPUoLu9gnRZIxPPng==
X-Received: by 2002:a05:6402:3489:: with SMTP id v9mr43316435edc.130.1634550050056;
        Mon, 18 Oct 2021 02:40:50 -0700 (PDT)
Received: from capella.. ([80.208.66.147])
        by smtp.gmail.com with ESMTPSA id z1sm10134566edc.68.2021.10.18.02.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 02:40:49 -0700 (PDT)
From:   =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>
Cc:     arinc.unal@arinc9.com,
        =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 net-next 7/7] net: phy: realtek: add support for RTL8365MB-VC internal PHYs
Date:   Mon, 18 Oct 2021 11:38:02 +0200
Message-Id: <20211018093804.3115191-8-alvin@pqrs.dk>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018093804.3115191-1-alvin@pqrs.dk>
References: <20211018093804.3115191-1-alvin@pqrs.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alvin Šipraga <alsi@bang-olufsen.dk>

The RTL8365MB-VC ethernet switch controller has 4 internal PHYs for its
user-facing ports. All that is needed is to let the PHY driver core
pick up the IRQ made available by the switch driver.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---

v3 -> v4: no change

v2 -> v3: no change

v1 -> v2: no change

RFC -> v1: no change; collect Reviewed-by

 drivers/net/phy/realtek.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
index 11be60333fa8..a5671ab896b3 100644
--- a/drivers/net/phy/realtek.c
+++ b/drivers/net/phy/realtek.c
@@ -1023,6 +1023,14 @@ static struct phy_driver realtek_drvs[] = {
 		.resume		= genphy_resume,
 		.read_page	= rtl821x_read_page,
 		.write_page	= rtl821x_write_page,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc942),
+		.name		= "RTL8365MB-VC Gigabit Ethernet",
+		/* Interrupt handling analogous to RTL8366RB */
+		.config_intr	= genphy_no_config_intr,
+		.handle_interrupt = genphy_handle_interrupt_no_ack,
+		.suspend	= genphy_suspend,
+		.resume		= genphy_resume,
 	},
 };
 
-- 
2.32.0

