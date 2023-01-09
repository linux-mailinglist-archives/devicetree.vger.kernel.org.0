Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A458661BDE
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 02:22:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234003AbjAIBWh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 20:22:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231238AbjAIBWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 20:22:31 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5B5F2D45
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 17:22:30 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6F991042;
        Sun,  8 Jan 2023 17:23:11 -0800 (PST)
Received: from donnerap.cambridge.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 181833F67D;
        Sun,  8 Jan 2023 17:22:27 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Icenowy Zheng <uwu@icenowy.me>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: [PATCH v5 0/3] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date:   Mon,  9 Jan 2023 01:22:20 +0000
Message-Id: <20230109012223.4079299-1-andre.przywara@arm.com>
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

Hi,

this is a rebased version of v4[1], with no actual changes. I haven't
received any feedback on the last version, but technically this looks
mostly approved to me anyway, we just need to get around to merge it
now, I guess?

This is a spin-off of v3 of the suniv F1C100s USB support series[2], just
carrying the USB PHY bits. It's now based on top of v6.2-rc2.
The actual binding and driver changes in the first two patches are
straightforward. Since it came up in reviews, I reworked the quirk
handling in the phy-sun4i-usb.c driver, to become more maintainable and
readable, in patch 3/3. For a changelog, see below.

Cheers,
Andre

[1] https://lore.kernel.org/linux-arm-kernel/20221116151603.819533-1-andre.przywara@arm.com/
[2] https://lore.kernel.org/linux-arm-kernel/20221106154826.6687-1-andre.przywara@arm.com/

Changelog v4 ... v5:
- rebase on top of v6.2-rc2

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

