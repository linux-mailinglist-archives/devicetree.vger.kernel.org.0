Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFF42686FB4
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 21:34:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229642AbjBAUei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 15:34:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBAUeh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 15:34:37 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03C53728FB
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 12:34:35 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MWRmF-1p7ccC2Iwt-00XqzB; Wed, 01 Feb 2023 21:34:19 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        =?UTF-8?q?Lothar=20Wa=C3=9Fmann?= <LW@KARO-electronics.de>
Subject: [PATCH 9/9] ARM: dts: imx28-tx28: add SPDX-License-Identifier
Date:   Wed,  1 Feb 2023 21:33:38 +0100
Message-Id: <20230201203338.9525-10-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201203338.9525-1-stefan.wahren@i2se.com>
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:AykHRuHczXaNY3mgNRe5rMv5f0T+XlZkJTVdoUAMvKsnGuE9S1/
 GaVviedT2S/A5eLFhGFavsLE2/tq1dkBRqUODRwwj9DHqXYU5Jr8PmuOc3mDeob9Qin9cNH
 LXK0SKOWtijnmIGFA1MptEy0HgCNko6jFu2yKBJXag+Ir+JDnlQGaSSsvz21N4sbJiKw3iy
 nMM0j7p65LsWx3pbizFUw==
UI-OutboundReport: notjunk:1;M01:P0:akj7BSGqfp8=;wdZBHmcKPwyRYdM/wVf+A19DAsJ
 P/FveEq2fbVfuyguYKXmaLc0/21JPnA4yDHlIoHf/I8jQR6gyDJCHPSydcfbvQLBd4PEkfgBT
 SpFk1EH6THDTzfaIOe7AtQ9frzcQbleoFVE/1XLQ6D4Lq7E/pJhmGRyMkufo76BbV7TGQBwMV
 k144n+rk4Ht2Duw0/FATpUl9BWCjhkQQl5rElMBB6xiRecZbgxHLC3BnK+Wqzc7vTGchJA3pe
 OHwyKpDnWsptNtXm2iI7oJpGdDRakfl+c3OG1uS/gyDp66l/MmmjvhxL5QVrW1+u05czY93E9
 P8lfs2n1xKD9tw5X4SAO3cwoPy4s/x+3tY7ogq0wd2U7o+5m6dKfXYUQQJz4LVHxBbpAwYDrg
 pZKUSNkQ0s3DYCjY4w49hQN/r7Z5NvJutzhMZa4Bso6iZiqNlSLt8OjM4sTLh8nJ5MVwRLifm
 mF0g+LG9mPQK1xdIv14guXk77aLc3jXdTCw+Twg0MHg0Cgz+CQw8GY5FMB+Tfmfq+579tYoum
 OALnoQpdTzsnxJYA0QYXwfskCvMKLCsXIKquMJcrjP4OjYxt5qtYQkI8y9TrNA3aikfbq/6qa
 rZxtg9bglXxskHoJXoUfE4yf+dIKkqvhs+wGdtJgCTKG8U/U6GXtDg9kRIXUjqRwbo2HY5Qsm
 VlqhJ3ZaYpkEyz69MLe0TWoPUuV8kXdlOsH5NM2x6A==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace the license blob by a clean SPDX-License-Identifier with GPL2
or MIT even if X11 is specified in the original blob since the actual
license text corresponds to a MIT license.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Lothar Waßmann <LW@KARO-electronics.de>
---
 arch/arm/boot/dts/imx28-tx28.dts | 38 +-------------------------------
 1 file changed, 1 insertion(+), 37 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-tx28.dts b/arch/arm/boot/dts/imx28-tx28.dts
index 096f246032c6..ffe58c7093e1 100644
--- a/arch/arm/boot/dts/imx28-tx28.dts
+++ b/arch/arm/boot/dts/imx28-tx28.dts
@@ -1,43 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 /*
  * Copyright 2012 Shawn Guo <shawn.guo@linaro.org>
  * Copyright 2013-2017 Lothar Waßmann <LW@KARO-electronics.de>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License
- *     version 2 as published by the Free Software Foundation.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 /dts-v1/;
-- 
2.34.1

