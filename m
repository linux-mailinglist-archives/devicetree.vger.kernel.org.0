Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50C333757B2
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 17:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235352AbhEFPlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 11:41:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235559AbhEFPlG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 11:41:06 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDE07C061258
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 08:37:28 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id n2so6144677wrm.0
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 08:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oW516jzYudrgPpoHV87MKKEstdKadYWrqHFNhZ2YbXA=;
        b=IXg8o5wjRe5tnEMU6NOudBSTzNqehm2jpqFD2uSexwVdQ672TmU2uAGQncSu7UqNPg
         CrmtEvYFXjnGmexJXSdcPrvaMYM4qX+uDtCdp+LN273fLznYzyJauDUJs6JdXXOh/A1B
         D28RQVcG6mYoPM4bd1jPQY/9glaZLpZcZBBzjg3pmhTTpBtX9AnHox6ZmjmMf54Bj0Ii
         1UMpTJAw6qlB6BBe1QYcxAT0u6McMDdrxqadMq8o2OgnN47ITYFV31M0a1F8x7Ccr2y5
         52CjetHDs27ekPEpbpBuhXlxPLSzp3ER/awpJiJtAlhfBwWO1Hw5Z37t2HvpUc+jhN+i
         GaIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oW516jzYudrgPpoHV87MKKEstdKadYWrqHFNhZ2YbXA=;
        b=XcoLDCTik6ytFgYzMBlqVbr6yqc4oPfkrZtm+D3/N3qYzyXXmjoyKShu2eO50Uxhqc
         7oe32lxcI/bKnl4GDkwRALnqN6dCWhtaGpRxSJdUiQaHhSQ0Q/XeDeSzLxo3I/IhRhwW
         DbdB2uLIvv+MLx8Y7TrGudiGR3nH/vM/LZAbJRBz7hOHX4FQxZEJq8qiUTvHGAkBhm0r
         qpu7yz9zLRf/eg5NafdY95P8l93EyCXiMKSXDzW/I9HIzClbz6utdvaT7H6XpoOQr1za
         yl5nC0OuQPRh0zfxCh0hW78FqogCgOSpU9GhOHENOZYbiksFRKT9TEI9HPQlc8CQ9mHk
         O1EQ==
X-Gm-Message-State: AOAM530dSZ/cDqQ51gi8S0g4hLFDvnaCxh+0it6EHGDfirCCCNw/laxD
        uaFp60F9pM9NclrusFZkR6x2Iw==
X-Google-Smtp-Source: ABdhPJyd0JoHB9yNIkDQl4FPDKaa1IAPD7vl4654KnfHoAWsbt2C1ycq3EFe43odqrh+MHp1zRA6hw==
X-Received: by 2002:a5d:408f:: with SMTP id o15mr5845999wrp.89.1620315447483;
        Thu, 06 May 2021 08:37:27 -0700 (PDT)
Received: from groot.home ([2a01:cb19:826e:8e00:5fe0:3a70:ad4a:a29b])
        by smtp.gmail.com with ESMTPSA id o13sm3788673wmh.34.2021.05.06.08.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 08:37:27 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/3] Input: mtk-pmic-keys - use get_irq_byname() instead of index
Date:   Thu,  6 May 2021 17:37:16 +0200
Message-Id: <20210506153718.256903-2-mkorpershoek@baylibre.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210506153718.256903-1-mkorpershoek@baylibre.com>
References: <20210506153718.256903-1-mkorpershoek@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some pmics of the mt6397 family (such as MT6358), have two IRQs per
physical key: one for press event, another for release event.

The mtk-pmic-keys driver assumes that each key only has one
IRQ. The key index and the RES_IRQ resource index have a 1/1 mapping.

This won't work for MT6358, as we have multiple resources (2) for one key.

To prepare mtk-pmic-keys to support MT6358, retrieve IRQs by name
instead of by index.

Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>
---
 drivers/input/keyboard/mtk-pmic-keys.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keyboard/mtk-pmic-keys.c
index 62391d6c7da6..d1abf95d5701 100644
--- a/drivers/input/keyboard/mtk-pmic-keys.c
+++ b/drivers/input/keyboard/mtk-pmic-keys.c
@@ -241,6 +241,7 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
 	unsigned int keycount;
 	struct mt6397_chip *pmic_chip = dev_get_drvdata(pdev->dev.parent);
 	struct device_node *node = pdev->dev.of_node, *child;
+	static const char *const irqnames[] = { "powerkey", "homekey" };
 	struct mtk_pmic_keys *keys;
 	const struct mtk_pmic_regs *mtk_pmic_regs;
 	struct input_dev *input_dev;
@@ -268,7 +269,8 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
 	input_dev->id.version = 0x0001;
 
 	keycount = of_get_available_child_count(node);
-	if (keycount > MTK_PMIC_MAX_KEY_COUNT) {
+	if (keycount > MTK_PMIC_MAX_KEY_COUNT ||
+	    keycount > ARRAY_SIZE(irqnames)) {
 		dev_err(keys->dev, "too many keys defined (%d)\n", keycount);
 		return -EINVAL;
 	}
@@ -276,7 +278,8 @@ static int mtk_pmic_keys_probe(struct platform_device *pdev)
 	for_each_child_of_node(node, child) {
 		keys->keys[index].regs = &mtk_pmic_regs->keys_regs[index];
 
-		keys->keys[index].irq = platform_get_irq(pdev, index);
+		keys->keys[index].irq =
+			platform_get_irq_byname(pdev, irqnames[index]);
 		if (keys->keys[index].irq < 0) {
 			of_node_put(child);
 			return keys->keys[index].irq;
-- 
2.27.0

