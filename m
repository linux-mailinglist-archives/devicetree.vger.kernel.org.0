Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68FB558EDD3
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 16:04:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232845AbiHJOEE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 10:04:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232862AbiHJODv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 10:03:51 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1944B6CD35
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 07:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1660140229; x=1691676229;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6wm8qFNBUY4i8KtmlFHnTGwoCmChYaNk0zbrd4k51PQ=;
  b=t6/98NUowJVZvpMlgO30HlLiQa12CmHeitYXZ0i8TWjuRx51Emrrvk6x
   +2i3dNhi6HyfE8C3nRNbebbBNjaHjGhEy+RvWhSjORQeo/TWOQJIY1pYJ
   QJfEDhlrSAiNqupal9hQCOFSYDDkHRD7n6SJGYnRgO7IuLi/j39wGdt6s
   wwKnkl/E0uIs+Mlqfzsizhdh159eeWyBrteYOVvPqbzGF9IHxCT6EcWp2
   2orPVdcg63uKuEfqNzoqc0a4Kl+LyMVoriDcR5MGQ/J99PXOpgeyYbVo/
   vnKSmLbEfnYyAWG9o+NrrZC/kafiTiWETU8qbb7KX7PjnCAs/gxAUQmxB
   g==;
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; 
   d="scan'208";a="108427959"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 10 Aug 2022 07:03:48 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 07:03:48 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Wed, 10 Aug 2022 07:03:45 -0700
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
        Conor Dooley <conor.dooley@microchip.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>
Subject: [RESEND PATCH 1/2] MAINTAINERS: add PolarFire SoC dt bindings
Date:   Wed, 10 Aug 2022 15:02:43 +0100
Message-ID: <20220810140243.2685416-2-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220810140243.2685416-1-conor.dooley@microchip.com>
References: <20220810140243.2685416-1-conor.dooley@microchip.com>
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

So far when I added bindings for the platform I never added them to
our MAINTAINERS entry. No time like the present to improve the coverage.

CC: Mark Brown <broonie@kernel.org>
CC: Wolfram Sang <wsa@kernel.org>
CC: Thierry Reding <thierry.reding@gmail.com>
CC: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
CC: Jassi Brar <jassisinghbrar@gmail.com>
CC: Linus Walleij <linus.walleij@linaro.org>
CC: Bartosz Golaszewski <brgl@bgdev.pl>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Arnd Bergmann <arnd@arndb.de>
CC: Olof Johansson <olof@lixom.net>
CC: Michael Turquette <mturquette@baylibre.com>
CC: Stephen Boyd <sboyd@kernel.org>
Suggested-by: Mark Brown <broonie@kernel.org>
Acked-by: Marc Kleine-Budde <mkl@pengutronix.de> # for can
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 868bbf31603d..fd0f10a110e7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17512,6 +17512,15 @@ M:	Conor Dooley <conor.dooley@microchip.com>
 M:	Daire McNamara <daire.mcnamara@microchip.com>
 L:	linux-riscv@lists.infradead.org
 S:	Supported
+F:	Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
+F:	Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
+F:	Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
+F:	Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
+F:	Documentation/devicetree/bindings/net/can/microchip,mpfs-can.yaml
+F:	Documentation/devicetree/bindings/pwm/microchip,corepwm.yaml
+F:	Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml
+F:	Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
+F:	Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml
 F:	arch/riscv/boot/dts/microchip/
 F:	drivers/char/hw_random/mpfs-rng.c
 F:	drivers/clk/microchip/clk-mpfs.c
-- 
2.36.1

