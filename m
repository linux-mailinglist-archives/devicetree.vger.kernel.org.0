Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C1003A7ED6
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 15:13:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbhFONQA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 09:16:00 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:34524 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230084AbhFONQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 09:16:00 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id DE0661F42ECE
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     airlied@linux.ie, daniel@ffwll.ch, michal.simek@xilinx.com,
        alexandre.torgue@foss.st.com, laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        xuwei5@hisilicon.com, mcoquelin.stm32@gmail.com, marex@denx.de
Subject: [RESEND PATCH v4 0/3] Convert adi,adv7511.txt DT bindings to yaml
Date:   Tue, 15 Jun 2021 15:13:30 +0200
Message-Id: <20210615131333.2272473-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

I'm rescuing and resending this patch series again, as it got reviewed
but parts of it didn't make it to mainline. The previous version can be
found in
https://lore.kernel.org/linux-devicetree/20200601063308.13045-1-ricardo.canuelo@collabora.com/

This series convert the adi,adv7511.txt DT bindings to json-schema. As a
result of the conversion some dts files needed to be updated.

The changes to the dts files are of three types:

  - Reordering of the I2C slave addresses list of the ADV75xx node. The
    addresses in the 'reg' property and the matching names in
    'reg-names' for an I2C slave don't need to be in any particular
    order, but the DT schema defines these properties as a cell array
    and a string array respectively, which are ordered, so the
    definitions in the dts files must match the order in the binding.

  - Filling the minimum binding requirements. Most of the time this
    means creating a 'ports' node in the boards that don't define
    them. Note, however, that the purpose of this is simply to make the
    definition compliant with the binding. I didn't define any endpoints
    for the ports.

  - Removing unneeded properties.

About the binding conversion:

  - The original binding covered five different devices: ADV7511,
    ADV7511W, ADV7513, ADV7533 and ADV7535. They all share a common set
    of properties but ADV7533 and ADV7535 have enough differences from
    the rest to warrant their own binding file. In v1 I modelled all the
    properties constraints for all five devices in a single file but it
    turned out a bit too complex. Splitting the binding into one for
    ADV7511/11W/13 and another for ADV7533/35 makes them much easier to
    read and maintain.

Patches 1/4 to 3/4 contain the dts changes. Patch 4/4 contains the
binding conversion.

NOTE: the bindings have been tested with:

  make dt_binding_check ARCH=<arch> DT_SCHEMA_FILES=<...adi,adv7511.yaml>
  make dt_binding_check ARCH=<arch> DT_SCHEMA_FILES=<...adi,adv7533.yaml>
  make dtbs_check ARCH=<arch> DT_SCHEMA_FILES=<...adi,adv7511.yaml>
  make dtbs_check ARCH=<arch> DT_SCHEMA_FILES=<...adi,adv7533.yaml>

for <arch> = arm and arm64. dts changes haven't been tested in hardware.

Some existing DTs are expected to fail after this conversion.

Changes in v4:

  - Removed from the patch series (already in mainline):
    - arm64: dts: hisilicon: hikey: fixes to comply with adi,adv7533 DT
      binding.
  - Update binding examples to comply with the current schema checks.
  - Update the license in the binding files.

Ricardo Cañuelo (3):
  ARM: dts: zynq: add port definitions to hdmi-tx@39
  ARM: dts: stm32: make hdmi-transmitter node compliant with DT bindings
  dt-bindings: drm: bridge: adi,adv7511.txt: convert to yaml

 .../bindings/display/bridge/adi,adv7511.txt   | 143 -----------
 .../bindings/display/bridge/adi,adv7511.yaml  | 241 ++++++++++++++++++
 .../bindings/display/bridge/adi,adv7533.yaml  | 184 +++++++++++++
 .../boot/dts/stm32mp15xx-dhcor-avenger96.dtsi |   6 +-
 arch/arm/boot/dts/zynq-zc702.dts              |  10 +
 arch/arm/boot/dts/zynq-zc706.dts              |  10 +
 6 files changed, 447 insertions(+), 147 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt
 create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7511.yaml
 create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml

-- 
2.25.1

