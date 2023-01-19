Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCFD8673ECF
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 17:29:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230323AbjASQ3N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 11:29:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230186AbjASQ3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 11:29:02 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32E3B460B5
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 08:29:00 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id t5so2422536wrq.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 08:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1V+AlAQyMB4Uszzz/3gFiK+c3DQOnNxo0R2UN0oOwaA=;
        b=1Ii3UICPWS2xk2szN6TKxNtVqLxXZpXAyWJe4bS/rXv8cLPHGvbHaQzOUnUh3Lzbt8
         i7YVIBNfBGGGHisVBzp91eiLHjEorjIYfxIvxen4O6YtGtSglKYnpD+QeXdX5tJDdGOU
         W0SQ4HjqbOP6VFjjxdzGMHuKth2IEb1qPpZJ/+qTsQZufHnsLBhsLZUqHzNYHWTsegkn
         qhLdJMHLeT23BOgcm8b9IPTJcp88V1e8LLqkQaEe7LKeNqxnxbDVqB7AB8KfQXI/Y8sZ
         WWqLe3JaPHlVGyBrfsPDLDkDhhLqUkPMyukhTwrcH17yKCjv1f5QfhEJAyZ5iXcL1xhE
         7tMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1V+AlAQyMB4Uszzz/3gFiK+c3DQOnNxo0R2UN0oOwaA=;
        b=3wq+6l/CtOsXoSDbU4X6wzjla99EVva0ssR/9jPgO8T2VeUY18fdp7vBN/vm1oX2LQ
         F1r1Bwcf3S4puk+rTA6RJ2uV5L3steO6CdojrgHxtngJycJFFfT24IDDc5kXjs5jtzqX
         IQlDhEXubFfe07p/V2ZCZC8g2GgBJLoWCC4VARVIdWnMjTTRtvQA93VxnfXy+0OcqGZO
         hXGV4c3OtihpN3oLLtnAZwziwUvX/yR1q2bQxhX5kmSYhZSXcUCPg+5FPrP8kQLT5Ieb
         ztFGuVHYjdnbviS4aAMkRFHrJ8K6zW/fPFXBzcTCp8OrJnzgmkDbbyROBYlm/9695ZOU
         R1vA==
X-Gm-Message-State: AFqh2kpdXoOUdU7NXSLpDmaoa5ifC30mongQWxhHsPr2PaksI2XUPpRU
        QoUFmorNXok0Hmm48DVlHTdNNQ==
X-Google-Smtp-Source: AMrXdXsYJzDdhNIBBTnTZ+uBJMO11spDqDrXzN/K1DBeCx5SVzKoxdoPDU4KVOop7H0asFznIl+KFQ==
X-Received: by 2002:a05:6000:3c2:b0:2bd:beff:9c47 with SMTP id b2-20020a05600003c200b002bdbeff9c47mr11873335wrg.67.1674145738767;
        Thu, 19 Jan 2023 08:28:58 -0800 (PST)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f7-20020a5d6647000000b002bbeb700c38sm29008771wrw.91.2023.01.19.08.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 08:28:58 -0800 (PST)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Thu, 19 Jan 2023 17:28:50 +0100
Subject: [PATCH 2/2] spi: spidev: add new mediatek support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20230118-mt8365-spi-support-v1-2-842a21e50494@baylibre.com>
References: <20230118-mt8365-spi-support-v1-0-842a21e50494@baylibre.com>
In-Reply-To: <20230118-mt8365-spi-support-v1-0-842a21e50494@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        Alexandre Mergnat <amergnat@baylibre.com>,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1039; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=jaqhN6R1aKzEEALosy8O3LyQm4i6Ldhz0IJK2z+QDNY=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBjyW/GtkBwodHdGFmD9EQ72UZXLlxvUINHBPmmk0JC
 B+idxumJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCY8lvxgAKCRArRkmdfjHURdICD/
 9F9RCFLu01N7iObG0wc8Tgvr5yA0aeHOWo2PIKNnIBPbNRGJo2GxkqaMVB/N4zsqUTyTbkZGeehH5f
 VbjrNWVxt8+z0YswLnMqAW/z5ENprKNWCRVYJ1h11Zs0EoOGJuH6YqlxqRf68Rnhg6cmIz4RNvxJYL
 vo+JgnI0jjNzSIgTD7hBxJ2g36GAXmUiZSHpy1JphA5cwICG1HXyhZtEbXFPusY7PAMLypd3fpC2O6
 rPUXwaXMorjnQ31ggwFU52/6ttIIfTs2j+UkrYGijX+SWGJ26kc2KHk9GATC4x0AfiJFge/hKmlHOV
 NXgmZ/Xer7iVmC7KByc+Q7RXWJPX1WThxL5jKUaOKJ0bhI2l7KHmY8atkfagQEVE8icPHwbwXqyrKH
 tXj4/hHHMrtdzK4ClyxLro3M7Vp03EZbQHT5Xt4gRauxQmz4eAyBaFy9t5ufMTiuykTunPUM4PXe2S
 oO5IYllFbAsyvws5IsWV5bvX40KwhtaYFXk7f68WqFY9repyroyxJlMYW+z7tiSBgxvRYPxiHh8EJX
 2an0sHMp3l9BOItxi1zUkjz5Wy48aEsYg/lm9P0I1ZtnaS0k/Wu/eJRbZ5C2C/W/TzGvFT6VFm3Cax
 f3oCaF6jsSD6Nvly3kvqP+sbaCX8xg91a6zvWkBv6ABz6VV1+RxmB/0V5seQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the "mediatek,genio" compatible string to support Mediatek
SPI controller on the genio boards.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/spi/spidev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/spi/spidev.c b/drivers/spi/spidev.c
index 6313e7d0cdf8..e23b825b8d30 100644
--- a/drivers/spi/spidev.c
+++ b/drivers/spi/spidev.c
@@ -702,6 +702,7 @@ static const struct spi_device_id spidev_spi_ids[] = {
 	{ .name = "m53cpld" },
 	{ .name = "spi-petra" },
 	{ .name = "spi-authenta" },
+	{ .name = "genio" },
 	{},
 };
 MODULE_DEVICE_TABLE(spi, spidev_spi_ids);
@@ -728,6 +729,7 @@ static const struct of_device_id spidev_dt_ids[] = {
 	{ .compatible = "menlo,m53cpld", .data = &spidev_of_check },
 	{ .compatible = "cisco,spi-petra", .data = &spidev_of_check },
 	{ .compatible = "micron,spi-authenta", .data = &spidev_of_check },
+	{ .compatible = "mediatek,genio", .data = &spidev_of_check },
 	{},
 };
 MODULE_DEVICE_TABLE(of, spidev_dt_ids);

-- 
b4 0.10.1
