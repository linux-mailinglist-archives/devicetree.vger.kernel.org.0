Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56B9962C210
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 16:16:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbiKPPQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 10:16:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233256AbiKPPQW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 10:16:22 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A207A4D5D8
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 07:16:20 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB1A41477;
        Wed, 16 Nov 2022 07:16:23 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB7953F587;
        Wed, 16 Nov 2022 07:16:13 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v4 0/3] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date:   Wed, 16 Nov 2022 15:16:00 +0000
Message-Id: <20221116151603.819533-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a spin-off of v3 of the suniv F1C100s USB support series[1], just
carrying the USB PHY bits. The H616 USB PHY support is already in
linux-phy.git/next, so this is rebased on top of that, to avoid
conflicts.
The actual binding and driver change in the first two patches is
straightforward. Since it came up in reviews, I reworked the quirk
handling in the phy-sun4i-usb.c driver, to become more maintainable and
readable, in patch 3/3. For a changelog, see below.

Cheers,
Andre

[1] https://lore.kernel.org/linux-arm-kernel/20221106154826.6687-1-andre.przywara@arm.com/

Changelog v3 ... v4:
- split off from rest of suniv F1C100s USB series
- rebase on top of H616 USB PHY patches
- drop phy2_is_hsic in favour of reusing existing hsic_index member
- add tags

Changelog v2 ... v3:
- remove redundant "Device Tree Bindings" suffix in DT binding doc title
- add BSD license to binding doc file (as per checkpatch)
- use existing PHY sun4i_a10_phy type instead of inventing new one
- add patch to clean up sunxi USB PHY driver

Changelog v1 ... v2:
- USB PHY binding: clarify the relation with other phy-sun4i-usb bindings



Andre Przywara (1):
  phy: sun4i-usb: Replace types with explicit quirk flags

Icenowy Zheng (2):
  dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
  phy: sun4i-usb: add support for the USB PHY on F1C100s SoC

 .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
 drivers/phy/allwinner/phy-sun4i-usb.c         | 59 ++++++-------
 2 files changed, 107 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml

-- 
2.25.1

