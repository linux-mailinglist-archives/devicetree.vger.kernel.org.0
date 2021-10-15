Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DF2A42F9D3
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 19:11:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242115AbhJORNW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 13:13:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242141AbhJORNQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 13:13:16 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C323C061570
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 10:11:09 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id r18so40829520edv.12
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 10:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Edvno2sOp/O5//oFNIXgh3L32eEJg32t9M6swDx8iCI=;
        b=A3yA0lUmip7KhifwxOIt6jNKUixMdBEHMZOnTKMmMNIa/bavBSMLhSM8frc+yxmOpB
         hrj6dCtctHKvIl+hoUgPTtUazLA8852xTnlk6DjYq7qU7QvAkTFUXPbZF7vkghYrBwwV
         7O9sCQK5nA7LXrEzXFSO+SHHQII+zz6X0irWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Edvno2sOp/O5//oFNIXgh3L32eEJg32t9M6swDx8iCI=;
        b=ZFCN00zxXnkZr0Otj1U5/yJvExAcgLUOulb+6kww5/jFIZWIpYv92He8sOs/qCRWQ4
         QCWVUGjcoC/gwBAobdVxWjA60RGQH848yElk1S3A9Zw7MxeC2sPOWYRu9yyl8qB9WQZG
         IJ+yS2hLytCNsyk20uVHRbnzFy2RSng2z9hfF8XHia3EBa4PHG3KRzDEKyNXFRgIw4UE
         hQ/htDiFpjsFnijSSwzUajpmsfpXX/YH3sHy+TGQzEAupbfNH6+tgQAilOkchGGcS7Gb
         1C5jG2YahGH0we2y0hzOgGt/bEiB5jvDr7Y1hYMKfhSUpl9JrAVaqRF6TzfC5gD+Fj0D
         vfSg==
X-Gm-Message-State: AOAM533R8ET9oUTYAgEAMeLx0wXnnkLA0pblvfN9i8bVtpBqsbJHb9k9
        jxojgavsEZ2jw8rBTShZUdxlfyvi6kmZZcIY
X-Google-Smtp-Source: ABdhPJzCqhSthnvO7YJ9RVCCpqRKN4xPvUd+H0AcGReyP6GRi1ff/wPJVDOph2mS8+nQ45Du+5Bd6w==
X-Received: by 2002:a17:906:942:: with SMTP id j2mr8328367ejd.303.1634317867992;
        Fri, 15 Oct 2021 10:11:07 -0700 (PDT)
Received: from capella.. (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id jt24sm4735792ejb.59.2021.10.15.10.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 10:11:07 -0700 (PDT)
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
Cc:     =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 net-next 7/7] net: phy: realtek: add support for RTL8365MB-VC internal PHYs
Date:   Fri, 15 Oct 2021 19:10:28 +0200
Message-Id: <20211015171030.2713493-8-alvin@pqrs.dk>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015171030.2713493-1-alvin@pqrs.dk>
References: <20211015171030.2713493-1-alvin@pqrs.dk>
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

