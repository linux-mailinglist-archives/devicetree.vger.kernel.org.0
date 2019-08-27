Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 666FA9DCFA
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 07:06:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729308AbfH0FGr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 01:06:47 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:46895 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729300AbfH0FGr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 01:06:47 -0400
Received: by mail-pl1-f195.google.com with SMTP id c2so11162274plz.13
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 22:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xGYf3jT/OywcihGiyF5DuZOJxtPVxDOHX/P0bgLTLJc=;
        b=bgTanDysTxIvjBPOAptfkieUGdxGxP94KRoDugwTLGzJP4TXWmq18fatIv4CJ5hkjF
         6cB1s70XskgYvExXIuFERiMKnvZz7Kmclh/GC6dS04oECEoG56Wgtmclg6T5RcHxcuQM
         nxf+xWUqVtcZeQtrpd4LYPmS2P+v1XFduGiK9o86lVazMsCy+VtVWxLDP3OA9wbruKOM
         fnXUF73OpQdJqyNo82WuTSZu+gWo7svhNl8ywdWvb259klOLtpcUKOk1SsiM++cP2s7N
         xwQzFwCURx1JBmrHrYuWvugEA9iTS5j+IOWxwAROpMjxaM36lkPuTQU8Vt5jx+fUReRC
         fCtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xGYf3jT/OywcihGiyF5DuZOJxtPVxDOHX/P0bgLTLJc=;
        b=V90OkaHF9ReFKuihgcjwHgdnAfLs/hgy5nrPYfCAB8HFomdzrV0J8562HgQzLrzKEk
         w3NUFO2Ok3HAkEX+mL9RfhFj1SRSGnTUH0w9fTcHKouTBwmhuOzw+nHYghqYWTwbDo+T
         oBXlGeguscBP0B1raG4uz/0zdBKb0MH0CCyDsXrwrFXpnvyjq8pA4tl4zsa3OK6E4fmg
         p5zmA4Tr0cUCBGdVDutf8M6ZEw2SbwkZbmVvPg8qtRd9FXBEfhgrFW/qgeUqS2FpH14m
         vx89lBxUe743HSBcb7NZBcZJDbuxq8gj0mysfI5fjTQDrHdHpZchMDolppmHLS+dtuYB
         st6A==
X-Gm-Message-State: APjAAAUP2h6fY5Z/CQhR4AgsBmz2buoe21f3excjIWBNXdDgcesdmaQ4
        RvctCtr9P/fxGpoSw8xvI1oX1w==
X-Google-Smtp-Source: APXvYqzjLiuejY0DazschLAZMfhXglu+wZbQBz00aBmRwNg7xBm8uxbhlOxf9U8si4Lr0KVQVQntcA==
X-Received: by 2002:a17:902:a714:: with SMTP id w20mr22158808plq.135.1566882406319;
        Mon, 26 Aug 2019 22:06:46 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id q8sm896414pjq.20.2019.08.26.22.06.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Aug 2019 22:06:45 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     davem@davemloft.net, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        nicolas.ferre@microchip.com, palmer@sifive.com,
        paul.walmsley@sifive.com, ynezz@true.cz, sachin.ghadi@sifive.com,
        Yash Shah <yash.shah@sifive.com>
Subject: [PATCH v2 2/2] macb: Update compatibility string for SiFive FU540-C000
Date:   Tue, 27 Aug 2019 10:36:04 +0530
Message-Id: <1566882364-23891-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
References: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the compatibility string for SiFive FU540-C000 as per the new
string updated in the binding doc.
Reference:
https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Tested-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 5ca17e6..35b59b5 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4154,7 +4154,7 @@ static int fu540_c000_init(struct platform_device *pdev)
 	{ .compatible = "cdns,emac", .data = &emac_config },
 	{ .compatible = "cdns,zynqmp-gem", .data = &zynqmp_config},
 	{ .compatible = "cdns,zynq-gem", .data = &zynq_config },
-	{ .compatible = "sifive,fu540-macb", .data = &fu540_c000_config },
+	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, macb_dt_ids);
-- 
1.9.1

