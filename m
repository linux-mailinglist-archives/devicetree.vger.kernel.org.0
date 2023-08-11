Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05C43778948
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 10:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231201AbjHKIyH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 04:54:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234155AbjHKIyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 04:54:06 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC971E75
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 01:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1691744046; x=1723280046;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=0EVxmK6JD5Ky9l0cqgZcYysZAwgvxlK5UUXTuHEWpBU=;
  b=WXn1NvjhaA0W7yO0/LxoXE4/mP78IE9tcETkSZm4cGSJZToYIY33hi7d
   Zh5CItc09g9ug6T4LR13FKKT2wMI/9dNNszu6zjel0Oql1t5XbOcDJdS2
   1R3FgIB8kZrGsVte20B/5Fo8zdn/9QWUNJCooBSUA10KN4AFWaKreOTup
   AXApzFb4PQbxViBEPz3FVVQkg9vCnr4lbTYIQ0K3dBJWHFd/OqeuuJ3h8
   F5HL8YslZqUN6M7bIRb86w63lFCfoM2PpCcVWRNg0IZ9zWMwRCqAjCQtG
   7cvYb1UYJuOpkH9rt4CakKE3BjP0xFJc4dgAWkHz1i/jElsPe3VTDlks/
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,165,1684792800"; 
   d="scan'208";a="32408999"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 11 Aug 2023 10:54:04 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C2C2328008C;
        Fri, 11 Aug 2023 10:54:03 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] TQMa93xxCA/LA + MBa93xxCA support
Date:   Fri, 11 Aug 2023 10:53:58 +0200
Message-Id: <20230811085401.3856778-1-alexander.stein@ew.tq-group.com>
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

Hi everyone,

this series adds support for TQMa93xxCA/LA modules on MBa93xxCA carrier board.
The solder type module TQMa93xxLA can be attached on the pluggable carrier
board using an adapter.
The first two patches are two small fixes for the TQMa93xx series.
Note: Only MBa93xxCA Rev0200 is supported!

Best regards,
Alexander

Alexander Stein (3):
  arm64: dts: freescale: tqma9352: Fix gpio hog
  arm64: dts: freescale: tqma9352-mba93xxla: add 'chassis-type' property
  arm64: dts: freescale: add initial device tree for MBa93xxCA starter
    kit

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx93-tqma9352-mba93xxca.dts    | 709 ++++++++++++++++++
 .../freescale/imx93-tqma9352-mba93xxla.dts    |   1 +
 .../boot/dts/freescale/imx93-tqma9352.dtsi    |   2 +-
 4 files changed, 712 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts

-- 
2.34.1

