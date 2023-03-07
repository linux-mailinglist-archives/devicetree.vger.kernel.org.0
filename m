Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A58366AF27A
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 19:53:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232489AbjCGSx1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 13:53:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233178AbjCGSwt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 13:52:49 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CCD5AB080
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 10:41:03 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MGzI3-1pm2ha0hdL-00E4oY; Tue, 07 Mar 2023 19:40:21 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 0/9] ARM: dts: imx28: Clean up older DTS files
Date:   Tue,  7 Mar 2023 19:39:58 +0100
Message-Id: <20230307184007.10672-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:/3lJZZ/E33mnmLCU1BYSQWvog0gKmaKy0sBdnhUNdsfRb8ZvK19
 ss/Y1RfKouJ9FP9JKwxzHIpJBcZl05eNe34hFD3KMIbOOQm6CAWdpOTH9SeafAC2LiN/nNM
 EmE5zzg+Ty2FQ3Hr7HFUR0U/6GWp3QXBWQHXYWRUCxHWlx17xCiclLEvbu4Gp3yT4fbFNLS
 IqZ4pabeSMPuzFRI/80aA==
UI-OutboundReport: notjunk:1;M01:P0:M+9AR+U4oJs=;RG+Obzu66tHBZylmSCxcThyMYI2
 pAvM6vNfWo0hTNnKgN2MhEfR0OJ0k2QM0bNKjRCUuk5uKwP1FboYH2c0BhNnxYvG6YQ92KtS8
 W24QKtEYiK1bndcNfUB3f2DU01PyYbGge8t+7HmdPeSZ0I2ngv6waCdJOIf+qLbf9pdQUdosX
 lhaFLnaoe6+dxwNiKpU4A4wKxYm+9o3Kd3ow7g5wscTwrTopV1+hOPpO2jA2AorK5+T5w1T14
 xPLJeHinlFRzF8EISgb+qxwgvZtOec34L41irfTJsJOfc+jsL/ZYNYhviyvGIezYM0OPl+f8V
 g6KVzn8P5xqlx+p/ZnfrAcTOmUatfB2DdSb/pd4qKjICy4qH7xCMKTh7E0BYckCPcTc7g++a0
 SYQjX3fxBrBI5bSD4qlI4K+LNOFxjUxxwQJZU7Lzz0FcAipO566ZZrYnvbrrbwLT59r0Zi7FT
 8GUoP5FehfI7Qk8/31iwdYWjsnupeXu/xkd+VZg8YJT/dPJ9FCE9lwqPJPp72rsba0IvxrwpE
 q/pKUgvzhYg0NhGQoDG2pIt0+o7WZQuhgJjNiOMMi2qRMCz/0hxG5cpRBX6Oo3xz55pTBMVls
 rp9KXDLD3v5MVysCh866YkMOfhVGuQbWV7m0dbM/9JEzN6FmoegE/JIojyd6bZl4BP8l427XL
 c0uA2oO2PG41AK4jtgiiQl3oRsidFthI1Q/+iuAAGw==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the imx28 belongs to the early ARM platforms which has been
adapted to DT, a lot of these DTS files are not in the best shape.
So this series tries to address this by using label references
and SPDX tags.

Theses patches doesn't include functional changes. The resulting
DTB files has been verified with dtdiff.

Changes in V2:
- fix alphabetical order of i2c label reference in patch 1
- add Wolfgang Grandegger in Cc for patch 2
- replace Anson's address in patch 7 with linux-imx@nxp.com because
  his address isn't available anymore
- remove Cc from patch 8 because the address isn't available anymore
- add Acked-by for patch 9

Stefan Wahren (9):
  ARM: dts: imx28-apf28: Convert to use label references
  ARM: dts: imx28-m28/sps1: Convert to use label references
  ARM: dts: imx28-apx4devkit: Convert to use label references
  ARM: dts: imx28-cfa10036: Convert to use label references
  ARM: dts: imx28-duckbill: Convert to use label references
  ARM: dts: imx28-duckbill-2: Include base board
  ARM: dts: imx28-evk: Convert to use label references
  ARM: dts: imx28-ts4600: Convert to use label references
  ARM: dts: imx28-tx28: add SPDX-License-Identifier

 arch/arm/boot/dts/imx28-apf28.dts             |  96 ++--
 arch/arm/boot/dts/imx28-apf28dev.dts          | 312 ++++++------
 arch/arm/boot/dts/imx28-apx4devkit.dts        | 380 +++++++-------
 arch/arm/boot/dts/imx28-cfa10036.dts          | 193 ++++----
 arch/arm/boot/dts/imx28-cfa10049.dts          | 454 +++++++++--------
 arch/arm/boot/dts/imx28-cfa10055.dts          | 224 +++++----
 arch/arm/boot/dts/imx28-cfa10056.dts          | 146 +++---
 arch/arm/boot/dts/imx28-cfa10057.dts          | 252 +++++-----
 arch/arm/boot/dts/imx28-cfa10058.dts          | 186 ++++---
 arch/arm/boot/dts/imx28-duckbill-2-485.dts    | 174 +------
 .../arm/boot/dts/imx28-duckbill-2-enocean.dts | 198 +-------
 arch/arm/boot/dts/imx28-duckbill-2-spi.dts    | 211 ++------
 arch/arm/boot/dts/imx28-duckbill-2.dts        | 256 +++++-----
 arch/arm/boot/dts/imx28-duckbill.dts          | 196 ++++----
 arch/arm/boot/dts/imx28-evk.dts               | 462 +++++++++---------
 arch/arm/boot/dts/imx28-m28.dtsi              |  44 +-
 arch/arm/boot/dts/imx28-m28cu3.dts            | 354 +++++++-------
 arch/arm/boot/dts/imx28-m28evk.dts            | 420 ++++++++--------
 arch/arm/boot/dts/imx28-sps1.dts              | 201 ++++----
 arch/arm/boot/dts/imx28-ts4600.dts            |  80 ++-
 arch/arm/boot/dts/imx28-tx28.dts              |  38 +-
 21 files changed, 2142 insertions(+), 2735 deletions(-)

-- 
2.34.1

