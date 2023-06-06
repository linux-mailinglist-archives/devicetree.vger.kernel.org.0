Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 911B87240B9
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 13:21:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233663AbjFFLVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 07:21:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233204AbjFFLVR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 07:21:17 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C33069E
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 04:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686050476; x=1717586476;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=SOLsS4soTnFlUoExZdkGGL8EWPpDP+dPkPZ+JsGCvDg=;
  b=SM9f6JsjzaU0jl8Z1WeSUy9/x3k0LyJJ5ZuiMvXBY4MUcCJUv5/JoHcY
   f2yBjXPTJkiZpirv7D9y7B14cQWUlLZvidcItyIf2VL+7ZFw0WSwl2tWr
   ltD6IapqTZjUJcVX2NqshDlIbn5WxJi2pS0In6IqPslHESALyOLd/FWn3
   UYH1Nb+hq//Dt77xhpGB0qZo28MP7+Yw2GjwsfyKn7nkr6xdJY07byabT
   1gPUw8gwDVKQ7o1ViM61+jNxcCXiXDGE3liJwW1JgvEx9+zASUNq9L24Q
   iPM1054me6CZz3rUHwC/DQXimeqxacy/REDo6/WZZwOnSwxMWrTGKqw+A
   w==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31301042"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 13:21:13 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 13:21:14 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 13:21:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686050474; x=1717586474;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=SOLsS4soTnFlUoExZdkGGL8EWPpDP+dPkPZ+JsGCvDg=;
  b=VRUywzZaWQ+fxqurHoHZ+N+tp8Fx8o4IkBBQG3iltRh0co2wpvrIQv9Q
   Mef7LgNU3alwyGzVxXhUo4/qAzpnTILGYTq4c3yuYcZPKsEF8xWchPyqK
   s0NhcF2fnDXCavKTQo7rDZeeBAwoJ7gp7X8LAeqDlwrTn7Ll5nmi+6UKg
   c0C8Bm7VQ84dZ5lsJH1+r7vyLYiv9TfbTauKkJGmE2BPt76xNrOWmlF2U
   cLU5kYUSl31Z5gpYWxnLAW1iBXb7Dqnpo9miWZ7Vxp7j1vkv1efiwKaxa
   wFRf4dLuV9am5l3btJ26VyrqcPt5+zxkV/Yq/QhH3xrXdoSvzGzPYTs0O
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31301041"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 13:21:13 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8F849280090;
        Tue,  6 Jun 2023 13:21:13 +0200 (CEST)
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
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux@ew.tq-group.com
Subject: [PATCH 0/3] TQMa8Xx (i.MX8XQP) support
Date:   Tue,  6 Jun 2023 13:21:05 +0200
Message-Id: <20230606112108.685885-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this series adds initial support for the TQ TQMa8Xx series, namely
TQMa8XQP (imx8qxp based).
This series depends on [1] for the PWM reference.
The device tree is split into generic mba8xx.dtsi and tqma8xx.dtsi which
can be used for both imx8qxp and (yet to be written) imx8dxp based
hardware.

Best regards,
Alexander

[1] https://lore.kernel.org/linux-arm-kernel/20230424082108.26512-1-alexander.stein@ew.tq-group.com/

Alexander Stein (3):
  dt-bindings: arm: add TQMa8Xx boards
  arm64: dts: freescale: add initial device tree for TQMa8XQP with
    i.MX8QXP
  arm64: defconfig: Enable i.MX8QXP device drivers

 .../devicetree/bindings/arm/fsl.yaml          |  17 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8qxp-tqma8xqp-mba8xx.dts |  16 +
 .../boot/dts/freescale/imx8qxp-tqma8xqp.dtsi  |  14 +
 arch/arm64/boot/dts/freescale/mba8xx.dtsi     | 485 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/tqma8xx.dtsi    | 263 ++++++++++
 arch/arm64/configs/defconfig                  |   4 +
 7 files changed, 800 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-tqma8xqp-mba8xx.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-tqma8xqp.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/mba8xx.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/tqma8xx.dtsi

-- 
2.34.1

