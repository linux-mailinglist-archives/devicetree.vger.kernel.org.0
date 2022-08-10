Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92FB958EDD2
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 16:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232420AbiHJOED (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 10:04:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232919AbiHJODv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 10:03:51 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 668B86CD37
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 07:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1660140228; x=1691676228;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=j+ubEaa4d6letw3k0c6vUxa4al5aj0IPLS7HTum/LzY=;
  b=aUi8E5FVi9zWM6i/zmLTYW+skS+rSGjyRaU6hZ3719pgzkFVPHZ9Q0jQ
   /+bkn7pJTPaP0KhmsUB+ISra+Bm5U8gKjUzRYJiUK0UFYyoXOE739yjuR
   WSeC27duvELZ6k7Xhg+r033VnjPyoZNQKeTovrZr6Nbbi7UlLSOi9/Iu/
   /uZjsqV9J0jLE0wcqoaIUKy4QQOnjGX8Vidhg9PNI+s03i5GI8qhykmK0
   UUNPewn6A6kOceLZXozE3ISGuBBWAvRCLR2qxBTIToUyqgSv6zg1h2YqB
   gNFEOH/y+1Xd86oozLctW2lC1PwerDPvb4DUvqal/u2XyNRO5tZRU9K4e
   A==;
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; 
   d="scan'208";a="175691467"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 10 Aug 2022 07:03:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Wed, 10 Aug 2022 07:03:45 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Wed, 10 Aug 2022 07:03:42 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     <soc@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>
CC:     Mark Brown <broonie@kernel.org>, Wolfram Sang <wsa@kernel.org>,
        "Thierry Reding" <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Arnd Bergmann" <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [RESEND/PULL PATCH 0/2] MAINTAINERS updates for PolarFire SoC
Date:   Wed, 10 Aug 2022 15:02:42 +0100
Message-ID: <20220810140243.2685416-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Arnd,

Could you please take the following two patches via the soc tree when
you get a chance?

The first is adding coverage for "my" dt-bindings as suggested by Mark.
I CCed all the subsystem maintainers on a V1 a week ago & I've added
them explicity to the patch text this time as CCs. Correct me if I am
wrong, but I am operating on the assumption that their Acks are not
required here. Hopefully increasing the binding coverage is non
controversial!

The second patch is a resend of a patch that was deferred to later in
the merge window avoid messing about with a 4th conflict in the entry.

Thanks,
Conor.

Conor Dooley (2):
  MAINTAINERS: add PolarFire SoC dt bindings
  MAINTAINERS: add the Polarfire SoC's i2c driver

 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)


base-commit: 4e23eeebb2e57f5a28b36221aa776b5a1122dde5
-- 
2.36.1

