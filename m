Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 785142CBF00
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 15:08:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726977AbgLBOG5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 09:06:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726828AbgLBOG5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 09:06:57 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D23DBC0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 06:06:15 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id 7so4539682ejm.0
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 06:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rst8CCeMswd6OFb0H+EI9xAylrQNNocfUKTTYNWeAps=;
        b=CzuZmV3kRKOhPhDzDqN8r0rErUShju4RgCRhZMYByzDu6k608IRhYWBe/O/8JEoBfD
         h+XbyLkEGNPQUvAZFlGFcweSPMjMNitc9x9kFIqGrQVWZabGMoLGPBhY9uyKNe6P1tMF
         59RvR7I2efdErtjvzmmzO+eVvcYd2qS9cuKj4G3qAZ0QfhaxKxjmISPAlOyoVkVZtK4+
         8PFqAZeMYBPf9BL1wbPVmMuUnSShgnsHPhTBieWPst4oN4cCOHgInC9nLhXBZE0CBod8
         p30VsilWJwftJqdhg2tYdlDmUbFx8FL+Ok5Sh1eRk49oyfvonDOOJ7HlLAyFU+2ME3/8
         IdTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=rst8CCeMswd6OFb0H+EI9xAylrQNNocfUKTTYNWeAps=;
        b=U/AWMl+ZXGFpbP0lK9lYnX0ARgs9NHjCf6jmpVT35wnJGC/XjVlFjVTi3L5AhEoQht
         cKIz+5YsXrJRcf4dLpxsCw3+TLzMRFSuKkCpX40OIVTt9Li0faxsth5ueEmUSVQ8H2mD
         i0XoYYEGNuLriSmtIsrgKJ6IDg0SpNxweVqY9jRWXq/WEaWk0CwRm6QV5AApxJAFiG7i
         dnS99S40OmPgP+1OwoGyMGnqfmTbC/ZW0njbvSPYAu3R/oHqyzY891DnzK7l0cyBBWdC
         NPaMmbVNvIasDAuFNNsUolC/T/hJ4B54o6eS8JUAEh7olyXBf+FlKogKRPWujvdRw6Bg
         XcRw==
X-Gm-Message-State: AOAM533/mA5mndIoNCe6C+aoXfTiu6ADkV9+54TDgZ0nKdglnqHMfFG/
        2LE/uDUxjQE5m2MTbf81oz2THQ==
X-Google-Smtp-Source: ABdhPJzsKOAS4SVk1z8XAB3R7M5XuoG5NY7eU75p0tN5kBgKymUiXflCRxjgtiz9B1prd/mnUBzvHg==
X-Received: by 2002:a17:907:a96:: with SMTP id by22mr2370509ejc.171.1606917974307;
        Wed, 02 Dec 2020 06:06:14 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id b14sm30807edx.0.2020.12.02.06.06.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Dec 2020 06:06:13 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Manish Narani <manish.narani@xilinx.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/12] arm64: dts: zynqmp: DT updates to match latest drivers
Date:   Wed,  2 Dec 2020 15:05:59 +0100
Message-Id: <cover.1606917949.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I am sending this series to reflect the latest drivers which have been
merged to mainline kernel. I have boot it on zcu102-rev1.0 and also
zcu104-rev1.0. That's why I have also added DT for this newer revision.

The series is based on https://github.com/Xilinx/linux-xlnx/tree/zynqmp/dt.
And mio-bank patch requires update in dt-binding which has been posted here
https://lore.kernel.org/r/5fa17dfe4b42abefd84b4cbb7b8bcd4d31398f40.1606914986.git.michal.simek@xilinx.com

Thanks,
Michal


Michal Simek (12):
  arm64: dts: zynqmp: Fix u48 si5382 chip on zcu111
  arm64: dts: zynqmp: Add DT description for si5328 for zcu102/zcu106
  arm64: dts: zynqmp: Enable si5341 driver for zcu102/106/111
  arm64: dts: zynqmp: Enable and wire reset controller
  arm64: dts: zynqmp: Enable phy driver for Sata on zcu102/zcu104/zcu106
  arm64: dts: zynqmp: Add label for zynqmp_ipi
  arm64: dts: zynqmp: Add missing mio-bank properties to sdhcis
  arm64: dts: zynqmp: Wire arasan nand controller
  arm64: dts: zynqmp: Wire zynqmp qspi controller
  arm64: dts: zynqmp: Add missing lpd watchdog node
  arm64: dts: zynqmp: Add missing iommu IDs
  arm64: dts: zynqmp: Add description for zcu104 revC

 arch/arm64/boot/dts/xilinx/Makefile           |   1 +
 .../arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi |  12 +
 .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    |   2 +
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    |  84 +++++-
 .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    |  29 ++
 .../boot/dts/xilinx/zynqmp-zcu104-revC.dts    | 282 ++++++++++++++++++
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    |  78 +++++
 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    |  59 +++-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        | 118 +++++++-
 9 files changed, 661 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts

-- 
2.29.2

