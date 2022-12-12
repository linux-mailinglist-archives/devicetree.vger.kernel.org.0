Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1997E64A69C
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 19:09:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233139AbiLLSJS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 13:09:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233296AbiLLSIV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 13:08:21 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3420A6351
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 10:07:50 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id ay40so6225733wmb.2
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 10:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d24laJpjlPXsikI4gRgK9kB14hlb2fbIBw6BPSu32y0=;
        b=S/NpoBGjfN26KWhKFia2yEWVXzcCGLKl3iPvRqG6nMr/HeB28cb7p17Tl2Pfwe2NgI
         A49T3jsjMZClY95HnDiYC2cu9DbbHtPz2gSQAanBFThW4w+6s1IaveRwGToG+tv/OwUe
         XvwFZA7vrjpAnTPKLpwa8aJYCniJwReC5tU417cjsD4PXI8C1j0NlwQeOJyb93436odr
         gneCb8V857iG4FhAR6x2Gr1wS9kwFeK4NeqvjGBohg8TKQbBKkfTHzh2wQmUHV+oQd/c
         7knMzk+ZxQ6YxdwUUg6yVlqG77VS2pMBe8mttWMWteGvpjbDGdmBQOlWRenLOXLCiQ5/
         X/QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d24laJpjlPXsikI4gRgK9kB14hlb2fbIBw6BPSu32y0=;
        b=YEavLVe0cDsi3D+p/JMNHUk2kfshOpglW06WcMsNDXsNqEpMpkhkBC9fXUcQyEsthJ
         ITSQCrX3D/bVB0W9XjsYoqh1bvn/NEmJmbb1agY8UT1WyiUrxBxdtprEXJMQNa1n9SL/
         imXaVAOprN/k3XzqhwhWusMgTD+4o3OcJ0D2PzSU/iOC4j3Qk9IeytQVZItd8i4uYFik
         d9FM7b98HkmGHxDdB7mXeepe29neXFBL7pQdb2g9Gct6JOnOhta5XtETvLftyoaIjaGo
         jT4wlVApeYWQYO6o7L/q5oFQavosAK42R99v6G1FEs9yjX2f1U4qKdXPh8lt9y/RDC0s
         wrlA==
X-Gm-Message-State: ANoB5pkIQyYGzNKJG/iuBTlcfYhZ2ME53EKUvKVXXMMdaCBp8WSxeKHD
        z8n+Ux1wxhXQ+DSMzJe/A73LUAhUjZxuvAJw
X-Google-Smtp-Source: AA0mqf6Dwf6Ne2EGgBeVcKwYXluX5/3fmaGwz3tWfp8OG+Nmq2rXNCgTg9HSsNihd2RM2lA+MDStmw==
X-Received: by 2002:a05:600c:17d5:b0:3d1:f2de:195a with SMTP id y21-20020a05600c17d500b003d1f2de195amr12809656wmo.32.1670868468901;
        Mon, 12 Dec 2022 10:07:48 -0800 (PST)
Received: from localhost.localdomain (host-78-150-37-98.as13285.net. [78.150.37.98])
        by smtp.gmail.com with ESMTPSA id t123-20020a1c4681000000b003a3170a7af9sm10156808wma.4.2022.12.12.10.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 10:07:48 -0800 (PST)
From:   Sudip Mukherjee <sudip.mukherjee@sifive.com>
To:     Serge Semin <fancer.lancer@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     jude.onyenegecha@sifive.com, ben.dooks@sifive.com,
        jeegar.lakhani@sifive.com, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sudip Mukherjee <sudip.mukherjee@sifive.com>
Subject: [PATCH v2 08/15] spi: dw: update irq setup to use multiple handler
Date:   Mon, 12 Dec 2022 18:07:25 +0000
Message-Id: <20221212180732.79167-9-sudip.mukherjee@sifive.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221212180732.79167-1-sudip.mukherjee@sifive.com>
References: <20221212180732.79167-1-sudip.mukherjee@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current mem_ops is not using interrupt based transfer so
dw_spi_irq_setup() only has one interrput handler to handle the non
mem_ops transfers. We will use interrupt based transfers in enhanced
spi and so we need a way to specify which irq handler to use.

Signed-off-by: Sudip Mukherjee <sudip.mukherjee@sifive.com>
---
 drivers/spi/spi-dw-core.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-dw-core.c b/drivers/spi/spi-dw-core.c
index ecab0fbc847c7..f540165245a89 100644
--- a/drivers/spi/spi-dw-core.c
+++ b/drivers/spi/spi-dw-core.c
@@ -260,7 +260,8 @@ static irqreturn_t dw_spi_irq(int irq, void *dev_id)
 	if (!irq_status)
 		return IRQ_NONE;
 
-	if (!master->cur_msg) {
+	if (!master->cur_msg && dws->transfer_handler ==
+	    dw_spi_transfer_handler) {
 		dw_spi_mask_intr(dws, 0xff);
 		return IRQ_HANDLED;
 	}
@@ -380,7 +381,8 @@ void dw_spi_update_config(struct dw_spi *dws, struct spi_device *spi,
 }
 EXPORT_SYMBOL_NS_GPL(dw_spi_update_config, SPI_DW_CORE);
 
-static void dw_spi_irq_setup(struct dw_spi *dws)
+static void dw_spi_irq_setup(struct dw_spi *dws,
+			     irqreturn_t (*t_handler)(struct dw_spi *))
 {
 	u16 level;
 	u8 imask;
@@ -394,7 +396,7 @@ static void dw_spi_irq_setup(struct dw_spi *dws)
 	dw_writel(dws, DW_SPI_TXFTLR, level);
 	dw_writel(dws, DW_SPI_RXFTLR, level - 1);
 
-	dws->transfer_handler = dw_spi_transfer_handler;
+	dws->transfer_handler = t_handler;
 
 	imask = DW_SPI_INT_TXEI | DW_SPI_INT_TXOI |
 		DW_SPI_INT_RXUI | DW_SPI_INT_RXOI | DW_SPI_INT_RXFI;
@@ -486,7 +488,7 @@ static int dw_spi_transfer_one(struct spi_controller *master,
 	else if (dws->irq == IRQ_NOTCONNECTED)
 		return dw_spi_poll_transfer(dws, transfer);
 
-	dw_spi_irq_setup(dws);
+	dw_spi_irq_setup(dws, dw_spi_transfer_handler);
 
 	return 1;
 }
-- 
2.30.2

