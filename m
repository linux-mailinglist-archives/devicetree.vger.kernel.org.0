Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2ABB686FB2
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 21:34:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjBAUeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 15:34:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBAUef (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 15:34:35 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BB2E728D4
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 12:34:34 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M3D7V-1pMTvZ0PF7-003gp5; Wed, 01 Feb 2023 21:34:16 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 0/9] ARM: dts: imx28: Clean up older DTS files
Date:   Wed,  1 Feb 2023 21:33:29 +0100
Message-Id: <20230201203338.9525-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:WQtKX45pduZVIA7yrgtktq72v1uutJSXvdQxjJY+itvx+OjKTHb
 1dven8imm0hVypfaGesWl4Z99PU6Twmh3qX76uU35w9k4yYgPiGOUHaPbjEhkzptsrtV8jv
 jpFexyQfBrf3UIQw1S/3K/WSl1A1S/2aDCmD1gDw6gVbBQV/S52ZsB9cOcCrHQIElNUHgmy
 4DhUALGpwx5PtMQF5GYBw==
UI-OutboundReport: notjunk:1;M01:P0:La84xuNznpM=;+xpPwmsmR5IWWAqv9x9MECkGPWK
 FjwmZLzeu/+QwbwjtFyQ9Sl2FiJzPwfsYPN7ZkuQVCjH0qg6Nh+nXWyN4SfG6CFrYIyr53a4G
 fRdYDk7cB+x4hcgoIl1SFw76XTsZfAS1BAiKnRWPAamQOa4xT8ndYCAbC6nrzeRy4WEOoUNo8
 hDKCT5/9tVISRADMg6eTgkcjaTvZBecbtobI51EP4Q6aL07eu7icNaRqNP0QLbioRtVcVsUmC
 AauK4kDGsmYwbRY6Oc19ZVDbpfbpwP1G97MnMxvfGOSWq/f2tCMLiolXOgCrd4iQnQSXDsAf3
 z8B9taERp9yLV1h5fW5MzzP6i9QsQ+QzsVI924fwwGZYyUQOrrYp4P/ytvw4sCSnc0Rsv5utp
 YLg/j5+bgVVPP9no60cEitu+nedDCZOjOBvPbY40DKrcKUi7y4UNz1DdNTAzuhG3SinWO7I77
 lEHOgxImdePeYBEmQNhUllBaLH5sUmDFD3evhYPtcjgu+5qegCwRZUHOWM6rzGZvwe5wJ1/i7
 w+v0CDpdoVzAI90BCi83GS0QNk6wLN7ZauWgzJ6okQr+k6NTmRlwiwSOQJ3JtxDGXpODo1JCH
 nIQthTc9NegyeesInR9ML2tbs6gfH83Oow/1/0dVmmUZBGoSNZuncV0H/0xYM82SqGe8j84vq
 0WWU7utIuAlAJP+rfkDIaSIUB7i/KwJiIcSXJEkqkg==
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

