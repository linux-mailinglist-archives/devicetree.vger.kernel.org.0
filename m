Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D77F784054
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 14:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234883AbjHVMIN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 08:08:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235110AbjHVMIN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 08:08:13 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7521D1
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 05:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692706091; x=1724242091;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=GU9fGpr6idgSck6MKKJjymW2M+3XP+cyiip2VU9+Z78=;
  b=KXKX84DKNdKjpYIr0EOP+6SDgJRiFA8eclYWINjOViJXrdiHM1WWaLkB
   1ElONYTq91JVvKWRFh0kWqN8SjD9cFAIVoCEXCmVOScbr2RWkjIxSLxlz
   gYDND+wOemdDPeQxxmwgiklrivN/4fx7nV6QGRCTO/VjDmgkI6MZW8lVK
   cGh1wj4umAtDhlrOXNk/1mDnQrblQZETUYFrTfMkNJRFB/T4kbfaWRTEQ
   LQhgDWD7IWpMbeUNxfAnZkagxbakKzbTZ5D9In8IjTNWDAzYEtIfM3f67
   T5h1bysRjFjn8GIKDO2cTagLmH3TPFx3gf24lUdfO7KGD24ZIMJ163pCg
   w==;
X-IronPort-AV: E=Sophos;i="6.01,193,1684792800"; 
   d="scan'208";a="32562946"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Aug 2023 14:08:09 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id CC631280075;
        Tue, 22 Aug 2023 14:08:08 +0200 (CEST)
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
Subject: [PATCH v2 0/5] TQMa8Mx/TQMa8MxML/TQMa8MxNL LVDS support
Date:   Tue, 22 Aug 2023 14:07:59 +0200
Message-Id: <20230822120804.717592-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this series adds LVDS support using a standard, but exchangable, display on the
starter kit mainboard MBa8Mx. It is split into 5 patches where the 1st adds the
necessary DT nodes for LVDS while the following 3 patches add the overlay for
the actual support for tianma tm070jvhg33 display on each platform.
The last one enable the necessary driver options in defconfig.
Thanks for the feedback on v1.

Changes in v2:
* Moved common settings to mba8mx.dtsi
* Added DT overlays for TQMa8Mx and TQMa8MxNL platforms
* Renamed DT overlay files using the panel name
* Unified commit message
* Removed tailing 0 in DT node name
* Replaced undersorces in DT node names with dashes

Thanks and best regards,
Alexander

Alexander Stein (5):
  arm64: dts: mba8mx: Add DSI-LVDS bridge nodes
  arm64: dts: imx8mm-tqma8mqml-mba8mx: Add LVDS overlay
  arm64: dts: imx8mn-tqma8mqnl-mba8mx: Add LVDS overlay
  arm64: dts: imx8mq-tqma8mq-mba8mx: Add LVDS overlay
  arm64: defconfig: Enable Samsung DSIM driver

 arch/arm64/boot/dts/freescale/Makefile        | 12 +++
 ...8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtso | 45 +++++++++
 .../boot/dts/freescale/imx8mm-tqma8mqml.dtsi  |  5 +
 ...8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso | 45 +++++++++
 .../boot/dts/freescale/imx8mn-tqma8mqnl.dtsi  |  5 +
 ...mx8mq-tqma8mq-mba8mx-lvds-tm070jvhg33.dtso | 49 ++++++++++
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     | 93 +++++++++++++++++++
 arch/arm64/configs/defconfig                  |  2 +
 8 files changed, 256 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx-lvds-tm070jvhg33.dtso

-- 
2.34.1

