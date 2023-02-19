Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4976D69BE56
	for <lists+devicetree@lfdr.de>; Sun, 19 Feb 2023 04:11:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbjBSDLd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Feb 2023 22:11:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjBSDLc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Feb 2023 22:11:32 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3585C12BD0
        for <devicetree@vger.kernel.org>; Sat, 18 Feb 2023 19:11:31 -0800 (PST)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 925C6907;
        Sun, 19 Feb 2023 04:11:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1676776288;
        bh=S7J97mpNUYfpOADLR4GuOP2KIgTq8r9p0eDFf6/BTbk=;
        h=From:To:Cc:Subject:Date:From;
        b=Wvq5NQpZ7LdoGvJfB+I2BkpxgxgXTx3fv5i9xMNlDjH1zAdS3xkoiHTslsWZbidPS
         RAxzJynGFdlGcq9V+OOWhpRO+57i6Wl96k7DW1z0PennNT5VI1FAK8Lzn4A4BlRvY3
         +PM2ajBMcZlDonXKHLVhRs+rVpp++7RWrRYnMYA4=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Marco Contenti <marco.c@variscite.com>,
        Nate Drude <nate.d@variscite.com>,
        FrancescoFerraro <francesco.f@variscite.com>,
        Harshesh Valera <harshesh.v@variscite.com>
Subject: [PATCH v1 0/4] arm64: dts: freescale: Add Variscite i.MX8MP DART8MCustomBoard v2
Date:   Sun, 19 Feb 2023 05:11:22 +0200
Message-Id: <20230219031126.19372-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patch series adds support for the Variscite DART8MCustomBoard v2
carrier board with a DART-MX8M-PLUS module.

The device tree code originates from Variscite's BSP, and has been
heavily refactored to adapt to mainline DT bindings. Some features have
been left out:

- Camera: cameras should be enabled through overlays as they're not part
  of the carrier board itself. I have successfully tested both camera
  ports with modules that currently require out-of-tree drivers, so I
  haven't included them in this series.

- HDMI: I have successfully tested this with DT bindings and drivers
  that have been posted to mailing lists but not merged yet. I will
  submit a patch to enable HDMI once the dependencies will be available
  upstream.

- USB OTG: the carrier board has a PTN5150 but doesn't route its
  interrupt pin to the SoC. It should be possible to work around that in
  the driver by implementing polling, but that requires more work that I
  can perform at the moment.

- WiFi, Bluetooth and audio support: those are part of the DART SoM
  itself, for which schematics isn't available, so I can't easily
  troubleshoot them.

- PCIe: I lack test hardware for this.

The LVDS display panel is integrated in the carrier board device tree in
the BSP, I have split it out to an overlay in this series as it is
shipped with the development kit but isn't an integral part of the
carrier board.

May I tempt someone from Variscite to submit patches to enable at least
WiFi, Bluetooth, audio and PCIe ? :-)

Laurent Pinchart (4):
  dt-bindings: arm: fsl: Add Variscite DT8MCustomBoard with DART
    MX8M-PLUS
  arm64: dts: freescale: Add support for the Variscite DART-MX8M-PLUS
    SoM
  arm64: dts: freescale: Add support for the Variscite i.MX8MP
    DART8MCustomBoard
  arm64: dts: freescale: Add panel overlay for Variscite DART

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   3 +
 .../imx8mp-var-dart-dt8mcustomboard-v2.dts    | 499 ++++++++++++++++++
 .../imx8mp-var-dart-panel-gktw70sdae4se.dtso  |  99 ++++
 .../boot/dts/freescale/imx8mp-var-dart.dtsi   | 305 +++++++++++
 5 files changed, 912 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart-dt8mcustomboard-v2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart.dtsi

-- 
Regards,

Laurent Pinchart

