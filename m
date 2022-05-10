Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72A03520AE0
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234356AbiEJB5L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234363AbiEJB5I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:08 -0400
Received: from mo-csw.securemx.jp (mo-csw1116.securemx.jp [210.130.202.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F342B140863
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:11 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 24A1qkUP028672; Tue, 10 May 2022 10:52:46 +0900
X-Iguazu-Qid: 2wGrSY3sPhcGryRaXi
X-Iguazu-QSIG: v=2; s=0; t=1652147566; q=2wGrSY3sPhcGryRaXi; m=NcuPvimMIGHJ6vNLakisN12J/zUHqUuwsbDnXnR0DPI=
Received: from imx12-a.toshiba.co.jp (imx12-a.toshiba.co.jp [61.202.160.135])
        by relay.securemx.jp (mx-mr1113) id 24A1qhxk026802
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:44 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 0/9] Visconti5: Update the clock providers
Date:   Tue, 10 May 2022 10:52:20 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The common clock driver of visconti5 has been applied. This series
switches the clock source for each device to common clock.

Best regards,
  Nobuhiro

Nobuhiro Iwamatsu (9):
  arm64: dts: visconti: Update the clock providers for UART
  arm64: dts: visconti: Update the clock providers for I2C
  arm64: dts: visconti: Update the clock providers for watchdog timer
  arm64: dts: visconti: Update the clock providers for SPI
  arm64: dts: visconti: Update the clock providers for ethernet device
  arm64: dts: visconti: Update the clock providers for PCIe host controller
  dt-bindings: net: toshiba,visconti-dwmac: Update the common clock properties
  dt-bindings: watchdog: toshiba,visconti-wdt: Update the common clock properties
  dt-bindings: pci: toshiba,visconti-pcie: Update the common clock properties

 .../bindings/net/toshiba,visconti-dwmac.yaml  |  3 +-
 .../bindings/pci/toshiba,visconti-pcie.yaml   |  3 +-
 .../watchdog/toshiba,visconti-wdt.yaml        | 10 +--
 .../boot/dts/toshiba/tmpv7708-rm-mbrc.dts     |  9 --
 .../boot/dts/toshiba/tmpv7708-visrobo-vrb.dts |  6 --
 .../dts/toshiba/tmpv7708-visrobo-vrc.dtsi     |  4 -
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi     | 83 ++++++++-----------
 7 files changed, 43 insertions(+), 75 deletions(-)

-- 
2.36.0


