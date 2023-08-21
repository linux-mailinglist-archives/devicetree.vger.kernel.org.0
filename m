Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FC21782AB7
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 15:40:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232131AbjHUNkl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 09:40:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235454AbjHUNkl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 09:40:41 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50D34106
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 06:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692625231; x=1724161231;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Z2GO+eBPSXgoFYAxiAJKKlqpyyUFKuU93VXA3otbOyo=;
  b=Dws5QeVUsX6rd6e+u6CqPLSzNFthyX7SaSB/fvQ0FebK1l8hFUUvWp46
   8TZ0q1ZzwA4Fg+iKjhLxAlOfydeOU+RazTwY65LVjDgJLx9SJ2luAyM6n
   GUL1FF12Kbi7vHcAo3iYby7TXSt7mTxc81lhOdJUiqUM2Nh1KDHtNiNiH
   XLJ2vzTAiyjI4+O+KOFhsilhgp7fNRYx3TM8D4n5FcW3nGZ+5CwEmSuzH
   S0XHYkKgksa6UV0b1tXWai2wHKQLgXGc7y2X6f0cHfljDqzjz9pOFJadD
   emcwM9fxqZZLjfsX/2ny5SCxVeAmM4iydTfAzIT7JOD1AzwjXCzbU/hRX
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,190,1684792800"; 
   d="scan'208";a="32542895"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Aug 2023 15:40:29 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 581A0280075;
        Mon, 21 Aug 2023 15:40:29 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux@ew.tq-group.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] TQMa8MxML LVDS support
Date:   Mon, 21 Aug 2023 15:40:23 +0200
Message-Id: <20230821134026.385752-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this series adds LVDS support using a standard, but exchangable, display on the
starter kit mainboard MBa8Mx. It is split into 3 patches where the 1st adds the
necessary DT nodes for LVDS while the 2nd patch adds the overlay for the actual
support for tianma tm070jvhg33 display. The last one enable the necessary
driver options in defconfig.

Thanks and best regards,
Alexander

Alexander Stein (3):
  arm64: dts: imx8mm-tqma8mqml-mba8mx: Add DSI-LVDS bridge node
  arm64: dts: imx8mm-tqma8mqml-mba8mx: Add LVDS overlay
  arm64: defconfig: Enable Samsung DSIM driver

 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../imx8mm-tqma8mqml-mba8mx-lvds.dtso         | 43 ++++++++++++
 .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 29 ++++++++
 .../boot/dts/freescale/imx8mm-tqma8mqml.dtsi  |  5 ++
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     | 68 +++++++++++++++++++
 arch/arm64/configs/defconfig                  |  2 +
 6 files changed, 151 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds.dtso

-- 
2.34.1

