Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E67433C379
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 18:08:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234063AbhCORHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 13:07:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234661AbhCORHY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 13:07:24 -0400
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E509C06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 10:07:24 -0700 (PDT)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DzjX96m28zQjnD;
        Mon, 15 Mar 2021 18:07:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1615828040;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=ogxWmH1gOXUGHnevD+bVLt2j55kjnvf9v9fVDOED+V8=;
        b=xbZzDcTl5b8JTbdonAtXl/Y9O+NR6+9ujUzSuj1UjombskW7ExrCWc4aQakQvHCNVM4BtK
        faDI9231qS8IIYQqtVZbPZ7qbU5UfDLXOv9NioTk0lztaXM7LgI04m1I7SXv3wJji9sj7w
        rqHwmSduApI1CjzDI4czAciKMsJf9pl3go00gYvrwbrhiMe2HgE16CkDY1rFYeV14Pmd6Z
        4HLeaHB7wMywF/TRLspblc6460iMKHm1asQvIJnwOJxROVFbIklgLTkaLuaMKrDso1N35B
        XDixmdZfev6lPShAcPojRi9b1P3SRqY1VPZBCR0lWnfLF3DcurnnFHgBRlprKw==
Received: from smtp1.mailbox.org ([80.241.60.240])
        by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de [80.241.56.116]) (amavisd-new, port 10030)
        with ESMTP id d6LftOmvvsCm; Mon, 15 Mar 2021 18:07:18 +0100 (CET)
From:   Hauke Mehrtens <hauke@hauke-m.de>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com,
        Hauke Mehrtens <hauke@hauke-m.de>
Subject: [PATCH 0/2] mtd: parsers: trx: Add support for Buffalo WSR-2533DHP2
Date:   Mon, 15 Mar 2021 18:07:09 +0100
Message-Id: <20210315170711.567358-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: *****
X-Rspamd-Score: 6.39 / 15.00 / 15.00
X-Rspamd-Queue-Id: B7CE617CE
X-Rspamd-UID: c2e563
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Buffalo WSR-2533DHP2 uses a Mediatek MT7622 SoC, with the TRX 
partition format with a special magic. Buffalo probably ported the code 
from their older Broadcom based devices.

Hauke Mehrtens (2):
  mtd: parsers: trx: Allow to specify trx-magic in DT
  mtd: parsers: trx: Remove dependency to BRCM architectures

 .../bindings/mtd/partitions/brcm,trx.txt      |  5 +++++
 drivers/mtd/parsers/Kconfig                   |  2 +-
 drivers/mtd/parsers/parser_trx.c              | 21 ++++++++++++++++++-
 3 files changed, 26 insertions(+), 2 deletions(-)

-- 
2.30.1

