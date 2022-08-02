Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A958F588167
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 19:58:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235087AbiHBR62 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 13:58:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235027AbiHBR60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 13:58:26 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F3864F66A
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 10:58:25 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id a18-20020a05600c349200b003a30de68697so1022606wmq.0
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 10:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vuo/vfkePpTgDDEhsrHOq8e5JZuKt6L4eA032kLF7mw=;
        b=PnFR54/krkQJBd9Cf9a4Xk/Fct0bWlowlgRa8ZaGY0hDslopTBk/b9JuMhEE9wm0nj
         f9CPxt4/15USCxyOb217JyqZOsQiP71VknMujxa5tmHdA9j3grppFgZSa9oqCWasMW3X
         txoksfC18gjyehYqyKNPtqZ4iYmIzSLBx9gFa9dYdLB5kX1fLLZpG/fADDodDAvQ1PtN
         SguY7LD2ouWC1j5H065nWm5J44FSj+T9zZmpase271yDX06aSD6u2v8YGIjDyfhAX4Ap
         3QM+OZJ7Wxo1toFmslEvOmVhaDxVBB0YAAsfT0YMVsS6xXy//CvoCTVYgfPLxQuA1OmZ
         tygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vuo/vfkePpTgDDEhsrHOq8e5JZuKt6L4eA032kLF7mw=;
        b=Tk7at+PwcYK/oH1tNh5gUwHvdNGTpU2JEJ4+FoRa36j2zDOw78StRszRIms27Kz3Cd
         R8AqxSJ/IHwbe5NxChTlywlssPhGtO30KKvl0kxg53pegp431ZAae0d3KX+nBuXyzwND
         oyz4tOHLS1INS23fktgT6trTlBJD3+y/EvBueO2tYxGBZQbtRkhKKDGXJWj2+9bfdwRX
         5G4U2Ny1+P9k4D3x4v6qC0X867ObylfYfZLgOiH4AkGa3a3z6amJBuocofcKBKDRNzXp
         yK6V+ZojXySIja7Z/H0K/53VgLgudoIQAdgqfo0ypcvQCKZiFLIi98k9pfYZyQjRe3mQ
         kHXw==
X-Gm-Message-State: ACgBeo15Q3g8RJBvWRr31tmMVy7GcWUvAkJLY/N9o9tEP7CzUheQUY0/
        u73cclf9V0isLthokzOO06XFnA==
X-Google-Smtp-Source: AA6agR7fgM/0HFHd9EIUlLwNLdq6e6BT/2vkCwL/gzJY507E1BFT1d+PE2SL6vS8x8gdqvrg6ZKFTQ==
X-Received: by 2002:a05:600c:40cf:b0:3a3:1fd6:47b7 with SMTP id m15-20020a05600c40cf00b003a31fd647b7mr406810wmh.32.1659463103860;
        Tue, 02 Aug 2022 10:58:23 -0700 (PDT)
Received: from debian.office.codethink.co.uk ([2405:201:8005:8149:e5c9:c0ac:4d82:e94b])
        by smtp.gmail.com with ESMTPSA id 9-20020a05600c020900b003a3187a2d4csm23318222wmi.22.2022.08.02.10.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Aug 2022 10:58:23 -0700 (PDT)
From:   Sudip Mukherjee <sudip.mukherjee@sifive.com>
To:     Serge Semin <fancer.lancer@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     greentime.hu@sifive.com, jude.onyenegecha@sifive.com,
        william.salmon@sifive.com, adnan.chowdhury@sifive.com,
        ben.dooks@sifive.com, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeegar.lakhani@sifive.com,
        Sudip Mukherjee <sudip.mukherjee@sifive.com>
Subject: [PATCH 01/11] spi: dw: define capability for enhanced spi
Date:   Tue,  2 Aug 2022 18:57:45 +0100
Message-Id: <20220802175755.6530-2-sudip.mukherjee@sifive.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220802175755.6530-1-sudip.mukherjee@sifive.com>
References: <20220802175755.6530-1-sudip.mukherjee@sifive.com>
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

Some Synopsys SSI controllers support enhanced SPI which includes
Dual mode, Quad mode and Octal mode. Define the capability and mention
it in the controller supported modes.

Signed-off-by: Sudip Mukherjee <sudip.mukherjee@sifive.com>
---
 drivers/spi/spi-dw-core.c | 4 ++++
 drivers/spi/spi-dw.h      | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/spi/spi-dw-core.c b/drivers/spi/spi-dw-core.c
index f87d97ccd2d6..97e72da7c120 100644
--- a/drivers/spi/spi-dw-core.c
+++ b/drivers/spi/spi-dw-core.c
@@ -917,6 +917,10 @@ int dw_spi_add_host(struct device *dev, struct dw_spi *dws)
 
 	master->use_gpio_descriptors = true;
 	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP;
+	if (dws->caps & DW_SPI_CAP_EXT_SPI)
+		master->mode_bits |= SPI_TX_DUAL | SPI_RX_DUAL |
+				SPI_TX_QUAD | SPI_RX_QUAD |
+				SPI_TX_OCTAL | SPI_RX_OCTAL;
 	if (dws->caps & DW_SPI_CAP_DFS32)
 		master->bits_per_word_mask = SPI_BPW_RANGE_MASK(4, 32);
 	else
diff --git a/drivers/spi/spi-dw.h b/drivers/spi/spi-dw.h
index 9e8eb2b52d5c..71d18e9291a3 100644
--- a/drivers/spi/spi-dw.h
+++ b/drivers/spi/spi-dw.h
@@ -32,6 +32,7 @@
 /* DW SPI controller capabilities */
 #define DW_SPI_CAP_CS_OVERRIDE		BIT(0)
 #define DW_SPI_CAP_DFS32		BIT(1)
+#define DW_SPI_CAP_EXT_SPI		BIT(2)
 
 /* Register offsets (Generic for both DWC APB SSI and DWC SSI IP-cores) */
 #define DW_SPI_CTRLR0			0x00
-- 
2.30.2

