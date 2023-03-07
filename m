Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0B3A6AF277
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 19:53:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233428AbjCGSx2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 13:53:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233240AbjCGSwu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 13:52:50 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7852182363
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 10:41:04 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MMXDj-1ppM6Q0EfX-00Jb6w; Tue, 07 Mar 2023 19:40:25 +0100
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
Subject: [PATCH V2 9/9] ARM: dts: imx28-tx28: add SPDX-License-Identifier
Date:   Tue,  7 Mar 2023 19:40:07 +0100
Message-Id: <20230307184007.10672-10-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230307184007.10672-1-stefan.wahren@i2se.com>
References: <20230307184007.10672-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:W9DN4tOBza9WQ1i6QQtBYdRfO0YmVD1X20zQAnF2GnUu8lW8f5g
 evNSIxsNak8XrXC/keo4rx2O4qwppZt5JiKyeV1Zm78CiZNF6QcNu5voh+o671yBPyV6CQi
 t5l9/CZTZxW9YS7fySxJhyrocuJKcGexupIdOJecmqVY8ZPXxGWRwRCNOqrt1YlKoDlUuNb
 emtam8nIZdviqHdA/XJ5w==
UI-OutboundReport: notjunk:1;M01:P0:Pgie/PK5OGI=;cEJFVep3Ik40CIst5RUfqMgEKw9
 kCW+9hjFWULK2xgxvn08DbnD4DINgmYPxIvgWbFed6sPaBMHh1gqVu+0ApRolkiCg6DzGlxWP
 S3yRk4w6jzxl9luPk4XOId2HIPVoOTY7l5X/qTsmoTypQauqEfdKD72NDM2gs6HYn3zC5twaM
 Ys94ctD5+MDi4Na0PTs4pJzub37AJPHHagUTumLRIkF223Y52+Pyk9mX3NLiS59hlBGFFgQxo
 wVDrxHvEyww0Pm2AGdqMb5PWlMnYeeBwzaDhPQidrvp7tbde0eT6RP1e0jVmvNBqFU9v3EPVY
 h8MqIUT0dsQC4LYd2yrwOFV4/v/8inZGPia4YOTIlLS7RXiojG7IWeRE3rb/0M8qXCTNMVSfX
 lYwYqJ683Y9I0TNn2qWyeyhRYTLI11VOryQXDLWkbgvRrKk0nB5OHateDJ6/z8qvm/bZ3Pdti
 5uLE4a1+D/9HBCq61tO6yYo10hZRmO4GcEX2WEHSFgQiP7z7Z+SpYQvUcImLNrmCFqryHzdhm
 QKpSMzIwI8JGeeSzKiv9K6Cfp6inEsl+Vko9R91znirxgMS0+cLBZ6xteyOQME15s888TaN47
 pUZnDaTd2DWkZEV7DxYTCxMQD5Q3W5cDfc+Z//hWH/v8DLtG5MrLgUZI0Tx9E6YMM1+zdf4BM
 Aw56eWyBkfX9UN0NeSDcOQXD1YKiqHLNPDwWnF2VgA==
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
Acked-by: Lothar Waßmann <LW@KARO-electronics.de>
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

