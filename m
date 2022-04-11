Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 705CA4FC55E
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 22:02:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237836AbiDKUEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 16:04:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233105AbiDKUEn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 16:04:43 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BE8B1A074
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:02:27 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M4b5s-1ndSXN0dYk-001fLo; Mon, 11 Apr 2022 22:02:03 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 0/6] ARM: dts: bcm283x: Adjust GPIO line names
Date:   Mon, 11 Apr 2022 22:01:37 +0200
Message-Id: <20220411200143.4876-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:2VCZZ8qCuFq3Tuk3kD53XiBMBxxK1OdVrlZ3ItUjepMHeo5fLie
 EFIV0qs8glF8ZAEzml6ZKFirz+s4GJ6xVrH8jRbKczSZgC590p874NJH8RkfAAvGy7bOi6E
 aGmrpNPZ6u4ZcHnNG7DK48J4E96FdLJ2CtiyItEgx9zLbFF5IwMKvlzZ3SYGY0SYaxhussH
 Yh9SCyMkMlHNeHN+ZRNQA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:FWrnJQqd6r4=:wdvzKPeeLr+VDyohieibIF
 oa9LjTBqndTksK4IggftSSTqJgJEAxmVJs2ztIp/qpioHxxdTcOWsbZi0I1fYuUKZzizdsP5w
 vkh2/3lMtRY0HpEIhtth0Ud5nseLsrZzfs2bwY/tukAMvmcTp+YkBVQTDXKic6o/BPabATSk0
 PO5YOgCLwo5YvI0RvrzDDMzYNwd9Zo9PQlmshrdgfvw/7VadebMa4Y2ngAf/x++33j9ZwmFxE
 j5tgZaBU5z5yvr1v20B+2HHQ3HUdajLq9FZ42vqrLZoaifF7XWCYXdJDg63dnvzBftj5qsDQL
 1Ly8zJUktPBHA+7u03+kq2alBBGBt+rJYR0uow51yanPzN4Ut7YX687Nc6F0iAkhnUbGUy2ws
 BjKt0wm1IiwMPGOVXdIULhlJTQFD9samaqbuLIsd+r9f+w8ppC685shDB1AcmIrmU2iMVTaj6
 TNy4dh7uQcp7orf6Lf/Sk5PaP8PsE7IuT2Y70X7XHat1mr65YzWAX4Pv2G92grHBExBl6Ljoh
 qO+ELw6kRuMC5p3ZQuBRz6gCxHOjOdiQJzryhVs3tlP9T6KoMhVipTaAxQi+d4fdQ+9cVBfvq
 jXnPZm21hCuZtyX9bFQV3HKSXuXwEPBB1UwTEI5vWNGa0Iu7HFSCQFdn7cQ/snL1FWHlksuvF
 YwJKJO3UbH2+LoeVKPHaEaSmnS7Fsaa58DcQ/8DXluSTfN0OwPDrcmY0bAq1sZ51NM7Ptt2d5
 oIp7JdE31UQB/PDc
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Recently the GPIO line names has been added to the vendor tree
DTB [1], which include some fixes (all patches except #5).

While we are at this remove those Not Connected (NC) line names.

[1] - https://github.com/raspberrypi/linux/issues/2760

Phil Elwell (4):
  ARM: dts: bcm2835-rpi-zero-w: Fix GPIO line name for Wifi/BT
  ARM: dts: bcm2837-rpi-cm3-io3: Fix GPIO line names for SMPS I2C
  ARM: dts: bcm2837-rpi-3-b-plus: Fix GPIO line name of power LED
  ARM: dts: bcm283x: Align ETH_CLK GPIO line name

Stefan Wahren (2):
  ARM: dts: bcm2835-rpi-b: Fix GPIO line names
  ARM: dts: bcm283x: Remove gpio line name NC

 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts   | 21 +++++-----
 arch/arm/boot/dts/bcm2835-rpi-a.dts        | 35 ++++++++--------
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts   | 19 ++++-----
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts   | 35 ++++++++--------
 arch/arm/boot/dts/bcm2835-rpi-b.dts        | 48 +++++++++++-----------
 arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts  |  1 -
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts   | 25 +++++------
 arch/arm/boot/dts/bcm2835-rpi-zero.dts     | 29 +++++++------
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts      |  3 +-
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts |  1 -
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts |  5 +--
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts      |  3 +-
 arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts  |  5 +--
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi     | 12 +++---
 14 files changed, 115 insertions(+), 127 deletions(-)

-- 
2.25.1

