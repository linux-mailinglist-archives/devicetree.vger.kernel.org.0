Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 06CE1E98B2
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2019 10:02:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726689AbfJ3JC2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Oct 2019 05:02:28 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:33618 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726635AbfJ3JC2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Oct 2019 05:02:28 -0400
Received: by mail-pg1-f194.google.com with SMTP id u23so1064912pgo.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2019 02:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LAPsnGt1pYtfbduk+JeNTkq03C0NkkTkxfb05DzEQJ0=;
        b=OjUstP+ZDVdOGkJvM7Td/6qBjFXM/KJF6OJzUcEP7TyIJ4ZvUAn9T7yD8XjYxDNEJN
         KHjfvWijYiNtqenb9bwa4Sd1uGk/jU8FssM6dooJ4yDHUi45cn17lSpLQFbVew2amgW1
         FPa8iEp/VeagMZARlx0/Hkpd+Tt/g031BieCjXyxwn2gsco2zYNWb50cT4woJ+ovMB3Z
         fzA4VRtI6KPvbdbp/WHauQOggzc/Pzxm45n53SBGlLJ/X4cN+ny0thBTdo/0mLdX21nN
         udm+afipjTPSHKncaghH/3F0Zwzwekn1z/WYsofoSyAtuLp7QCy8b/4kPAXWhs5jUQrf
         Bfnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LAPsnGt1pYtfbduk+JeNTkq03C0NkkTkxfb05DzEQJ0=;
        b=bh7pwHjzgmIzQJP83PS+0Cudpg+dltVyFCsv4AP8JJtFwZ+KOjArIUgFrlucAnjIJy
         fjf8LpeeqDT+9fMsnSUVxJAFBsmbC/HT9d3arjPTW1onBHC88bHK2f3FWV/PpVv4g2xf
         kNfPFLETMuhN4x4SP1JDDYt5aflv+79vvSw7gG+Atwuetw+XjJ7unLBZ7VfB4s/JRt8h
         EUYkjzT3/oAU2DuBykO/3s2j2eZHDVEovyKTakAzSHlihwvFz7rOpa5MX4NBEblA6Prg
         71sYLR0RDD1VBYE1YyIj4G+/CZo3WMP9ASyNWJqKij4I4N2WrcXKlgzy1aEdwlyDhu27
         x9yA==
X-Gm-Message-State: APjAAAWBOzQbGddJmgeAccyaCSn7hj/DsfVu7RTalRO5PMoz477NRXrt
        XxdapWv9HMVuczsPchNz9X8N
X-Google-Smtp-Source: APXvYqxsyssWpqE3cm5I9+vC1DFWm8h7Zo1nOKgSKfAdxUIWWIrp9fIwVWU5LGEWc9pZGi9gWdp/CA==
X-Received: by 2002:a63:6d02:: with SMTP id i2mr33658547pgc.64.1572426146740;
        Wed, 30 Oct 2019 02:02:26 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
        by smtp.gmail.com with ESMTPSA id g24sm2070351pfi.81.2019.10.30.02.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2019 02:02:26 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        darshak.patel@einfochips.com, prajose.john@einfochips.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marek Vasut <marek.vasut@gmail.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        David Woodhouse <dwmw2@infradead.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org
Subject: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Date:   Wed, 30 Oct 2019 14:31:24 +0530
Message-Id: <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
supports dual/quad I/O mode with 512 blocks of memory organized in
64KB sectors. In addition to this, there is also small 4KB sectors
available for flexibility. The device has been validated using Thor96
board.

Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org
Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
[Mani: cleaned up for upstream]
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1d8621d43160..2c25b371d9f0 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2482,6 +2482,8 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
 			SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
 
-- 
2.17.1

