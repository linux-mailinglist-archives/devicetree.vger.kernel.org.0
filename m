Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D19B5984DF
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 21:58:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730084AbfHUT6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 15:58:18 -0400
Received: from mout.perfora.net ([74.208.4.194]:36837 "EHLO mout.perfora.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728231AbfHUT6R (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 15:58:17 -0400
Received: from towel.hsd1.wa.comcast.net ([71.197.225.149]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1MXHWM-1hkdyo2uB4-00Yg32; Wed, 21 Aug 2019 21:52:40 +0200
From:   Sunil Mohan Adapa <sunil@medhas.org>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     maxime.ripard@bootlin.com, wens@csie.org, robh+dt@kernel.org,
        mark.rutland@arm.com, Sunil Mohan Adapa <sunil@medhas.org>
Subject: [PATCH v3 0/2] arm64: dts: allwinner: a64: Add A64 OlinuXino board (with eMMC)
Date:   Wed, 21 Aug 2019 12:52:15 -0700
Message-Id: <20190821195217.4166-1-sunil@medhas.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:HGJSw9Ukbax2zFp89tWV6F6sEjTcyLgq+JTMPaTd1bp7w5Os0kN
 oYRsJ/BbtO7zJTrazKiKkQ79nDyuLoMlepVghFtNQbNrYn6la0Rio8JvK2OgKye0mK+mLSv
 AzY+8/sRYuFDiuVXttDRmUlSf6YakLOSzZS6xBJX67XpUfYB+YsaRMWboCU46pcPpJGE8dm
 p05TfOrD03ZG8flJoycaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xnbnb18epm4=:e7kSTSiqpLHrR2Av/ZQCS8
 nUz/9vADPmJsUMFA6nvlbgtzN+7PusCUX5Yu20IwEZxuDz0edyrti9gNZvv3yCf45Mn+DyKh6
 qIRk7UkoHn5hBwfyovCfteRV+by7CYCpwEssABJozB6FNAL//2m1Lu7VW5VHjEvImuT+lZ/kC
 Ma7a6x+Naw0S2QwtS8xUaU5FFtTyerMJI3opKVpso0nFn1O7vudDkBInqwG49BGSzF0gkxRkK
 +3vINZjILpIWgJeCxikE12/4NmdkehUBm8D670tA3In51QlX1cMsyvAazusD1wR25k5hdH2MK
 ScR0nlE8xEV8ocq1MS4FQSUqN0R5WEp3Y5kZkjtBMw4GGWWearXfz6dWMh7ZC5vfo0IbHEB8M
 8Chl2gBmdWba99iLFb7/Po6JX5fXXHEzg5eBfRPdcnKe+TJ2umEPOqlsOrMWOfoYdt6RxF4JR
 Q0eXc5JUqQgE7IRT/5Y/WJOBsNAeiOsqT+HzEKD5Fv5pG9pgZLL8R7hqg97zt5fJfvF4XfzSG
 SSx7J8VgTEEZqnO8IRE0hAsjwhvPq4zN88gJK7iu1TGSElV+d9p4jyhJIJJySCqRvKO8w28UI
 r/eHnXPbvLpkDLMhoM2hne/liKw2C6GbYy43NIHNDTw9JNkDaM0xGMliyU2oPoN6to0rpD/LO
 QEa4X6ZxOr+pji58+L/zZ+6YjDmQafmzGkNdxZ6uad5p2tULuMF3GZIAzyVlvpkX5DZ7Xuoj7
 MDzYRBn+Orgdmw8ODtEwefi6ffL4MdelWaywdQ==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A64 OLinuXino board from Olimex has three variants with onboard eMMC:
A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
addition, there are two variants without eMMC. One without eMMC and one with SPI
flash. This suggests the need for separate device tree for the three eMMC
variants.

Changes:

  v3: Separate dts for eMMC variants

  v2: Fix descriptions for VCC and VCCQ

Version 2 of this series already committed in linux-sunxi tree as
8d3071f3e85894be35a1b35bcf6fdef970c81018 must be reverted before applying this.

Sunil Mohan Adapa (2):
  dt-bindings: arm: sunxi: Add compatible for A64 OlinuXino with eMMC
  arm64: dts: allwinner: a64: Add A64 OlinuXino board (with eMMC)

 .../devicetree/bindings/arm/sunxi.yaml        |  5 ++++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-a64-olinuxino-emmc.dts   | 23 +++++++++++++++++++
 3 files changed, 29 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts

-- 
2.20.1

