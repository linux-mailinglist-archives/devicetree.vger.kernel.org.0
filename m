Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FF0833C37C
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 18:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234287AbhCORHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 13:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235284AbhCORHZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 13:07:25 -0400
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD61C06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 10:07:25 -0700 (PDT)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DzjXD0mP6zQjms;
        Mon, 15 Mar 2021 18:07:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1615828041;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=0eaSu/SYmKNsP7yOYyWinfTRZRyFZignLlbfuIu/8V8=;
        b=hF09BMz8/Ad9ATIMgag3M8SPLkVOBLTMdTJD/oX5JS8GOznwNZDoGgWYag2VkmcFyGDg1g
        X1DjgPAoZT3lZSzzTu17sxyvqsitCM+BwgjSb31EdxhiE8NkAY+TRxx70p36rwqxsh63Gt
        vmdn31XhfiE1DQPa0DjzaSZmL7bVzgLXnGbwV+batWU6ZIpGzxz268ArGr/4kN+pZoF7Bj
        YiFhJJBKLiueZhbP339nUb4GdZBeGTSXaAcWYuUZSrQKzWxHeQgEG+V4pZHgvj1q87YY8D
        4OSUoCKljQjSZ+Xd8qAAegtDQGtH3YUc2FDR75CTkyFG97lu6eKJAwcucFYkaA==
Received: from smtp1.mailbox.org ([80.241.60.240])
        by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de [80.241.56.122]) (amavisd-new, port 10030)
        with ESMTP id 5QRJIC506pe1; Mon, 15 Mar 2021 18:07:20 +0100 (CET)
From:   Hauke Mehrtens <hauke@hauke-m.de>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com,
        Hauke Mehrtens <hauke@hauke-m.de>
Subject: [PATCH 2/2] mtd: parsers: trx: Remove dependency to BRCM architectures
Date:   Mon, 15 Mar 2021 18:07:11 +0100
Message-Id: <20210315170711.567358-3-hauke@hauke-m.de>
In-Reply-To: <20210315170711.567358-1-hauke@hauke-m.de>
References: <20210315170711.567358-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: ****
X-Rspamd-Score: 4.92 / 15.00 / 15.00
X-Rspamd-Queue-Id: 48E5B179B
X-Rspamd-UID: f714d2
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Buffalo uses the TRX partition format also on Mediatek SoCs.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/mtd/parsers/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/parsers/Kconfig b/drivers/mtd/parsers/Kconfig
index d90c30229052..6242903d8844 100644
--- a/drivers/mtd/parsers/Kconfig
+++ b/drivers/mtd/parsers/Kconfig
@@ -96,7 +96,7 @@ config MTD_AFS_PARTS
 
 config MTD_PARSER_TRX
 	tristate "Parser for TRX format partitions"
-	depends on MTD && (BCM47XX || ARCH_BCM_5301X || COMPILE_TEST)
+	depends on MTD
 	help
 	  TRX is a firmware format used by Broadcom on their devices. It
 	  may contain up to 3/4 partitions (depending on the version).
-- 
2.30.1

