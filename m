Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D91883637E5
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 23:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231218AbhDRVq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Apr 2021 17:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbhDRVq5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Apr 2021 17:46:57 -0400
X-Greylist: delayed 17575 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 18 Apr 2021 14:46:28 PDT
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [IPv6:2001:67c:2050::465:202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF7BC06174A
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 14:46:28 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4FNk6V3tZyzQjmV;
        Sun, 18 Apr 2021 23:46:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1618782384;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=5NsPJb1vjRZMn+tgY1l6FOnMzOiGWDRA2sDyZX+K6CA=;
        b=E4eFortyCAKG3+kig/0bAJj1WbxEQZxr1xQtt0G8T67vVM44jyhYpy+5DICwNoP3BGJIKg
        UhxpvkmyxSzPbmm8W6tZWIxdkMTUjNuYSlmNSshbwuYuaVTFbuLFQNl3yYzhqhZQJIXN+2
        xyZQp4v/oslSeNi3D4LirQ2/757+URB3RYSlXAUv4k98STTsJJgTo/6YZefGSt11b01chR
        +H8Aj1imnQLzXy6+dee9k/XVbzMaFN03N+0d3ORi0RV5j+EflaMUPOBxJowKibfEH4t9Tq
        e5TR8DCDvB5/Kxjx8fGDRVglAwDkl2WNhKVLMc+FuzZyR6eEVBcDGuoyahZPRw==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de [80.241.56.115]) (amavisd-new, port 10030)
        with ESMTP id drumVTUwjMkI; Sun, 18 Apr 2021 23:46:23 +0200 (CEST)
From:   Hauke Mehrtens <hauke@hauke-m.de>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com,
        Hauke Mehrtens <hauke@hauke-m.de>
Subject: [PATCH v2 0/3] mtd: parsers: trx: Add support for Buffalo WSR-2533DHP2
Date:   Sun, 18 Apr 2021 23:46:13 +0200
Message-Id: <20210418214616.239574-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: ****
X-Rspamd-Score: 5.67 / 15.00 / 15.00
X-Rspamd-Queue-Id: 425B117EF
X-Rspamd-UID: acd552
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Buffalo WSR-2533DHP2 uses a Mediatek MT7622 SoC, with the TRX 
partition format with a special magic. Buffalo probably ported the code 
from their older Broadcom based devices.

Changes since:
v1:
 - Split dt-bindings into own patch
 - Rename trx-magic to brcm,trx-magic
 - Do not check np for NULL
 - inline parser_trx_get_magic()
 - Add depends for ARCH_MEDIATEK

Hauke Mehrtens (3):
  dt-bindings: mtd: brcm,trx: Add brcm,trx-magic
  mtd: parsers: trx: Allow to specify brcm,trx-magic in DT
  mtd: parsers: trx: Allow to use TRX parser on Mediatek SoCs

 .../devicetree/bindings/mtd/partitions/brcm,trx.txt      | 5 +++++
 drivers/mtd/parsers/Kconfig                              | 2 +-
 drivers/mtd/parsers/parser_trx.c                         | 9 ++++++++-
 3 files changed, 14 insertions(+), 2 deletions(-)

-- 
2.30.2

