Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01BC13BA176
	for <lists+devicetree@lfdr.de>; Fri,  2 Jul 2021 15:43:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232819AbhGBNp7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jul 2021 09:45:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232814AbhGBNp6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jul 2021 09:45:58 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DBD8C0613DD
        for <devicetree@vger.kernel.org>; Fri,  2 Jul 2021 06:43:26 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l1so6685845wme.4
        for <devicetree@vger.kernel.org>; Fri, 02 Jul 2021 06:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oW516jzYudrgPpoHV87MKKEstdKadYWrqHFNhZ2YbXA=;
        b=way0cvmvpUF//pESK1MSlN8gcdEsyHAj69bCaL8IEYc/LJFan9v4vW+vRFvWi/g8WP
         J7gizRBnYmsPfmvIxK2d8dYdAiE+nK4MsM0CkehKQICDARLSSkWPhMNtOrq/6sk0h411
         Tq/PqhIeQheLbehlGW03RwZhuWTFvIH6cAnHv/DcsvmgsgJsXX98CXH+Wl77SohHEXzn
         e9XGyeBgy2RwEAYENMlHA/oIzzz0Y7iBj73tYeMXYhDEp9Y8kwNspNTjN25SrY1MTZVk
         NDxg/Z1i9V44vzjr7iAxiAmP+8YOHRbl6NxRwvzY11V2AtrEQ6/QrCKqOMSzS7gNpLOp
         ivlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oW516jzYudrgPpoHV87MKKEstdKadYWrqHFNhZ2YbXA=;
        b=q6hF2IKcD+jjvL6S5PBGBriCWFSGHtsfMx5KioebmdpFODGagdsPFPkl1S3pogF+Dv
         bEmI5lq2h2dU9oGRZpoaTXvgAwElWDoItyJgqMtC5uXDE0AomWjmk5wg6F5Jcr2BIVte
         sH6UnORDzFbdQXEWXjI59iPMorfjPkVpN4PRDtfX3QlJ5ng9y9gcv8DXBPiAM9p5qLyX
         Uh40grIAaXoGd5OHi9huTL9FJj6UIv8fSdWL8k9yImLcDjQ1dh3W+hsZ/HhvbHV9ZnDr
         xIe3fPMJc1sty4CO3VGyL6djFvpgVIvjVUBJ7yQOZIXHFI8nx2UvGgZ4/uF+PXLJAV2N
         i0pA==
X-Gm-Message-State: AOAM530sqodh+UUNL7OkVv7zzJzLAgkpin0qPzAbvLAigrlgcxLOLfgz
        8II6eZJ69/07g6kvv5nJQse5hg==
X-Google-Smtp-Source: ABdhPJxnTvB/oQhCVJWoCiwXtj3UUFWvJwpbiwNjlYhBG7D/FteEWRxC1TD81lekqvYBm7ouvzta9A==
X-Received: by 2002:a7b:c3ca:: with SMTP id t10mr16781680wmj.74.1625233403909;
        Fri, 02 Jul 2021 06:43:23 -0700 (PDT)
Received: from groot.home ([2a01:cb19:826e:8e00:c5f3:6ae:eaf:87a2])
        by smtp.gmail.com with ESMTPSA id s1sm12595512wmj.8.2021.07.02.06.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jul 2021 06:43:23 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>
Subject: [PATCH v3 1/4] Input: mtk-pmic-keys - use get_irq_byname() instead of index
Date:   Fri,  2 Jul 2021 15:43:07 +0200
Message-Id: <20210702134310.3451560-2-mkorpershoek@baylibre.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210702134310.3451560-1-mkorpershoek@baylibre.com>
References: <20210702134310.3451560-1-mkorpershoek@baylibre.com>
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

