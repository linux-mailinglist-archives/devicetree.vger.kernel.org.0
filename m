Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B16182FF2D4
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 19:07:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729040AbhAUK2l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 05:28:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729204AbhAUK1s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 05:27:48 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 905E8C061757
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:07 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id r12so1835842ejb.9
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DfMSFudun+anv2LjcyHW76ve89ofZ9gUeHwZ5HSVpu4=;
        b=WwFE68crGt6fDZU5YL1I0ZBRRPvAgCQGHWpCLUaqbRdH81ei/1hItxNRePP6TGyTvg
         v2sV9gpjGwGtGaGzNnE2g8QGXQjkPCkaZpFRcZg1ONzDKUKvBTQGjAqHsznhvslTyNxC
         u/xHEyoiTiEqOBWYVIwr6tHoTLESfVBuSkSDHmcpOeuenodJ7LGke1qB23aqTgbCwoCX
         vvJZDSl4Lco90wosRRALcW8K9arXnlzSl9rkcl9dxu3SPg1vbmosbLOlDSsnCb5caSw8
         x6zCG+XFinS/lWBGfycY76YPQVZLa+KeqXAUPbWfR4uNdfJ5vSMVNhGWFSeo2VwWZJUr
         WxHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=DfMSFudun+anv2LjcyHW76ve89ofZ9gUeHwZ5HSVpu4=;
        b=ebMJ2PUbs/W4oYr5hJ8Cdx5/KexFp3f3sS/LG6w1DYF9nyESLaY/axx3ze3WbIQoqf
         6raZz8SMdeyCsbQ5AQbYBGW9i4ca5b5PMGhJpmKE/lCsI6lWXHmRbCIqLrPM5ZCQYrod
         rJwcuWivVt9gr6FBijgs/mvYkwg65C9B1XWxY8zLF8u79Cm/MYefPqdU7MEuvebQl6lU
         iR5Vei712LduBGnYsCAneio36sOq12JE/6VrSEv6J9hLzqNpyFrDvNc5OPTMKS8mC0v4
         Z/R3wUmun9fLVHOTvYeeSAtNpG7fPtRxVhwMPoRjudGKkUVsAwRGIRmoWlC3f6orjjlo
         qAhg==
X-Gm-Message-State: AOAM5314YpI6ClQb6J2didtgjGNwgh2ZoITFeGWwnbpu03oquPVkBqk9
        7pAFMtZf324m6418yqn7xu+8rg==
X-Google-Smtp-Source: ABdhPJzr2gLg590eajsWBEmfwiHVPih3A1AF1IxkQRSqPLyG6b1hs5iBAETcC2Rh4d2pq7UxLxMY0A==
X-Received: by 2002:a17:906:490d:: with SMTP id b13mr8882407ejq.307.1611224825792;
        Thu, 21 Jan 2021 02:27:05 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id r26sm2707738edc.95.2021.01.21.02.27.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Jan 2021 02:27:04 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/12] arm64: dts: zynqmp: DT updates to match latest drivers
Date:   Thu, 21 Jan 2021 11:26:48 +0100
Message-Id: <cover.1611224800.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
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

Changes in v2:
- Remove reset description for IPs from this patch. IPs will be enabled
  separately with DT binding update.
- Change patch subject

Michal Simek (12):
  arm64: dts: zynqmp: Fix u48 si5382 chip on zcu111
  arm64: dts: zynqmp: Add DT description for si5328 for zcu102/zcu106
  arm64: dts: zynqmp: Enable si5341 driver for zcu102/106/111
  arm64: dts: zynqmp: Enable reset controller driver
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
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        |  94 +++++-
 9 files changed, 637 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts

-- 
2.30.0

