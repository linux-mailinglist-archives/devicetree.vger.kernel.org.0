Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FEF7444467
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 16:11:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231636AbhKCPOM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 11:14:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231450AbhKCPOK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 11:14:10 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BDA5C06120A
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 08:11:33 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id y8so4389654ljm.4
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 08:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nw4lw3QdWRjlNxPGRbwuhTvxj/pxfOmMSn4h4+Uf8y4=;
        b=ca8FIdWOsgZurU2wKXFP/wrDipadzFVOuQO1FksS8gQ/3KwUoo2tAL3sBBDHH31vxd
         AtcEVGDkkEmzc7VrGykHVoDcIz2+dzRKvxQGnzIrCrKBJypTGzvYet7tYVnx4Ffb1Nec
         7OtdEeOofKVwjvfqcvMSFxKIXTdeTR1cPrGctSt5E9LlWgFr5d/VZ0XdA0SZfmKjbo7c
         Le1S7vFeerX9EwUeFHJFWhnJF6G8G/j0ED60SA/aVrLdHMPRDlRjfkAfKjRTJZTIjWkK
         qUEL2jq8FQ8C2OKY83cxaBjMIE1LKdjZ+c9sQq9tPLOF7ZB0Ze0NB+j5Ahl7wEpVEANw
         fDAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nw4lw3QdWRjlNxPGRbwuhTvxj/pxfOmMSn4h4+Uf8y4=;
        b=0znTQmgy1kcGTQkOe2uykFpGmu44GUHDeBTglszY78p951rkr/XrRvFiSAlCHjA7UJ
         Gzs4RL1bYlsw8+W5iaVa0qMLu7pmOQLvoEg5j6GkNrKeSIeG9fUXIOCrp1MG9UtBEKod
         1N9mLkoIJXKdsWPRhOhkOqn3fFsHsHNtLpqJb1xScXvpeqo9yhJEf7esknrON17VtGLO
         pnWwqtMclf0Bg+XEN7+0c9oN+Ec7N4gsqfc5jcO0tOJZEV1ofpZeRYrle6Yj95Hd1qlh
         dB3Hu+s+vFKtWDCyBXrqwBiRY/AO8BtJVf9W2To+OcmEpZysBUENxcEx3xVwS/O/3MJ4
         zMpw==
X-Gm-Message-State: AOAM533QFverlDwLEWZ8CCtIofnc3gVE22vld5O0iY14WxDX+YWZMTPr
        Mt97SbfsD2KmU8vTcXcPqyg=
X-Google-Smtp-Source: ABdhPJwTpJkWvurpf4sUrvT5F7IoRvgQdE67o5LHmudIX3zYW0DieyPYt3EUzvqRNnmD+WHgo7j/ZQ==
X-Received: by 2002:a05:651c:160e:: with SMTP id f14mr42824957ljq.379.1635952291983;
        Wed, 03 Nov 2021 08:11:31 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id p3sm224107ljc.25.2021.11.03.08.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Nov 2021 08:11:31 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] mtd: rawnand: brcmnand: support "no-wp" DT property
Date:   Wed,  3 Nov 2021 16:11:17 +0100
Message-Id: <20211103151117.18690-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211103151117.18690-1-zajec5@gmail.com>
References: <20211103151117.18690-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Some boards may use WP-capable controller but still have WP not
connected. This change fixes:
[    1.175550] bcm63138_nand ff801800.nand: timeout on status poll (expected c0000040 got c00000c0)
[    1.184524] bcm63138_nand ff801800.nand: nand #WP expected on
[    1.285547] bcm63138_nand ff801800.nand: timeout on status poll (expected c0000040 got c00000c0)
[    1.294516] bcm63138_nand ff801800.nand: nand #WP expected on
[    1.395548] bcm63138_nand ff801800.nand: timeout on status poll (expected c0000040 got c00000c0)
[    1.404517] bcm63138_nand ff801800.nand: nand #WP expected on

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index f75929783b94..8b6167457f0c 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -714,7 +714,8 @@ static int brcmnand_revision_init(struct brcmnand_controller *ctrl)
 	if (ctrl->nand_version >= 0x0500)
 		ctrl->features |= BRCMNAND_HAS_1K_SECTORS;
 
-	if (ctrl->nand_version >= 0x0700)
+	if (ctrl->nand_version >= 0x0700 &&
+	    !of_property_read_bool(ctrl->dev->of_node, "no-wp"))
 		ctrl->features |= BRCMNAND_HAS_WP;
 	else if (of_property_read_bool(ctrl->dev->of_node, "brcm,nand-has-wp"))
 		ctrl->features |= BRCMNAND_HAS_WP;
-- 
2.31.1

