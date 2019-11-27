Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7A18710B0C0
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2019 15:00:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726990AbfK0N7j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Nov 2019 08:59:39 -0500
Received: from metis.ext.pengutronix.de ([85.220.165.71]:38635 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726537AbfK0N7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Nov 2019 08:59:39 -0500
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1iZxqv-0005PB-JT; Wed, 27 Nov 2019 14:59:33 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1iZxqv-0008Da-2w; Wed, 27 Nov 2019 14:59:33 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     bgolaszewski@baylibre.com, linus.walleij@linaro.org,
        support.opensource@diasemi.com, lee.jones@linaro.org,
        robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        stwiss.opensource@diasemi.com, Adam.Thomson.Opensource@diasemi.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@pengutronix.de
Subject: [PATCH v2 0/5] DA9062 PMIC features
Date:   Wed, 27 Nov 2019 14:59:27 +0100
Message-Id: <20191127135932.7223-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this series address all comments made on [1]. Patch "regulator: da9062:
fix suspend_enable/disable preparation" was applied mainline so I
droppped it. Patch "gpio: add support to get local gpio number" is new
and based on Linus suggestion. The v2 has no compile dependency like
[1] but you need to apply [2] else the features can't be used.

[1] https://lkml.org/lkml/2019/9/17/411
[2] https://patchwork.ozlabs.org/cover/1201549/

Marco Felsch (5):
  gpio: add support to get local gpio number
  dt-bindings: mfd: da9062: add regulator voltage selection
    documentation
  regulator: da9062: add voltage selection gpio support
  dt-bindings: mfd: da9062: add regulator gpio enable/disable
    documentation
  regulator: da9062: add gpio based regulator dis-/enable support

 .../devicetree/bindings/mfd/da9062.txt        |  17 ++
 drivers/gpio/gpiolib.c                        |   6 +
 drivers/regulator/da9062-regulator.c          | 244 ++++++++++++++++++
 include/linux/gpio/consumer.h                 |  10 +
 4 files changed, 277 insertions(+)

-- 
2.20.1

