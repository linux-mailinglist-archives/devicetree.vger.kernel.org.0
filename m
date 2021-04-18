Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2577B3637E8
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 23:46:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232073AbhDRVrA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Apr 2021 17:47:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbhDRVq7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Apr 2021 17:46:59 -0400
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050::465:201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0FB8C061760
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 14:46:30 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4FNk6Y3SshzQk27;
        Sun, 18 Apr 2021 23:46:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1618782387;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=60Hu/ihLA/Vo2zmCFPe7L+SwDq4PXw+pQ1W3kQj9vVY=;
        b=fNQj1tBsWj+qeFKp5Fqwb/sp/oLDk2UJU6Ui3pdOnA8EILw5zAtnxJKeTxSRbKAq4w09t8
        QiHauL+LkMgP5A+83/MtCGH+RmuQNxeKgKKGKda531GKTD1e5hBSOJvZO/ygSRM5ayJwMP
        +hQdKAfw9aaDlyJTNjAfHGNlMczWda4MTHfTfW5Sa7Ttu46jjnkevVlkrdKjnHR7yC5i6w
        tnIW5ndISCbKxKeeTUNagga1tKFLuthS/6WfhOuTUALSFa15prDkfMOX+6Ky9A04yjxlNU
        H8HlzoWxdLUWZxuvYG/hv25U47Afyy2Zigf8aE+/hUh6KtX11116JS6663Z8UQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de [80.241.56.116]) (amavisd-new, port 10030)
        with ESMTP id ej-Is6lpX3Qk; Sun, 18 Apr 2021 23:46:26 +0200 (CEST)
From:   Hauke Mehrtens <hauke@hauke-m.de>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com,
        Hauke Mehrtens <hauke@hauke-m.de>
Subject: [PATCH v2 3/3] mtd: parsers: trx: Allow to use TRX parser on Mediatek SoCs
Date:   Sun, 18 Apr 2021 23:46:16 +0200
Message-Id: <20210418214616.239574-4-hauke@hauke-m.de>
In-Reply-To: <20210418214616.239574-1-hauke@hauke-m.de>
References: <20210418214616.239574-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: ****
X-Rspamd-Score: 5.57 / 15.00 / 15.00
X-Rspamd-Queue-Id: 7068417FE
X-Rspamd-UID: 184466
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Buffalo uses the TRX partition format also on Mediatek MT7622 SoCs.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/mtd/parsers/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/parsers/Kconfig b/drivers/mtd/parsers/Kconfig
index d90c30229052..c2af062fdca7 100644
--- a/drivers/mtd/parsers/Kconfig
+++ b/drivers/mtd/parsers/Kconfig
@@ -96,7 +96,7 @@ config MTD_AFS_PARTS
 
 config MTD_PARSER_TRX
 	tristate "Parser for TRX format partitions"
-	depends on MTD && (BCM47XX || ARCH_BCM_5301X || COMPILE_TEST)
+	depends on MTD && (BCM47XX || ARCH_BCM_5301X || ARCH_MEDIATEK || COMPILE_TEST)
 	help
 	  TRX is a firmware format used by Broadcom on their devices. It
 	  may contain up to 3/4 partitions (depending on the version).
-- 
2.30.2

