Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8656F3A6A0C
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233427AbhFNP2E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233358AbhFNP2B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:01 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13CB6C061574
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:25:45 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id i13so47060505edb.9
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/nehZ9ZydCeKRlg2vLMvpSD+mPjakFShT0YfQBkuj6g=;
        b=SyUFhvvdXA5IU2Upo7nw9c2GbDMy0RJ4qm0pXO6PNRMOaOUcJyHWEjX0L8z2kfm8Ft
         o3nYSYOpBmBRnU+CNEPfT70MT1DXm5X2i1MM+bK5Xw9y+HzXKDn/b83jTpLBaOSg6N85
         Q2g2A+j+x2wA+VHmmMG5WYLfpkwshCvvcGtZrF+vQ9cZ8MbL2PH8hZErAuUPIUfwEGVY
         MqQDs9RKwY0ByxFNPYAZkipCHIC6oGYUHGPXMgrIsWsfQKEAZ/VG+fed4juUpBlNYHym
         ocLhwmyNmK5Hx//iCty7p4t4UZGqz+6sqQL5cQ8pPqTpKMJGXCfjmtodqsXlRYkdKRqN
         o1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=/nehZ9ZydCeKRlg2vLMvpSD+mPjakFShT0YfQBkuj6g=;
        b=oeE+Fnatcdcn6yqntYA7rq7RHDy8WOMVpSIlLdvwulOScLtSqSxDGHJGFw3o7F57/L
         yeXWS7KE5rGhE22TT8lWtRNSDZ6qyhulYBs5ow1wyXw0e/9imBlZY0ABQ7qyBBcO3gLl
         BYSMgkC3F3K6TU/wd0mnScvjgWimH8gJcs7XLhPoi4qK/qOG8ohvxWpIrMpMTcLjTGA/
         CNnsSVDDHvFJttPZKub08IMtubFJgPKi4BQUb36SztO3d2tR3FufgrQ7rzlA7NPDZU1Z
         wwrzZ00mLr3JfmyRgMEklSUtviDkqZVUprccOdlca9kaWnymLBIgrAZKX2YRcu8u4kTw
         bCNA==
X-Gm-Message-State: AOAM530Fr7yqrlmH2oqcLVrB7B0m810V54CpWjXJ9VuOCDsBr3Stdb0L
        T9H69rpUHRDXArECXme4BZBiCg==
X-Google-Smtp-Source: ABdhPJx8d1jB0oSwGE1d6HGo3Lch6J0bEAK0D7Buf2I3djlLebylfDqcpCQzNAFVPE00D0ZhEyDv+g==
X-Received: by 2002:aa7:c705:: with SMTP id i5mr17983480edq.222.1623684343570;
        Mon, 14 Jun 2021 08:25:43 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id f18sm4697907edu.5.2021.06.14.08.25.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:25:42 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michael Walle <michael@walle.cc>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/33] arm64: zynqmp: Extend board description
Date:   Mon, 14 Jun 2021 17:25:08 +0200
Message-Id: <cover.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

over years couple of drivers were upstream and it is time to sync it up.
On the top of it also adding new Kria boards which are using new overlay
infrastructure which check if that overlays can be applied to base DT file.

Thanks,
Michal

Changes in v2:
- Add reviewed-by from Laurent
- New patch in the series
- New patch in the series
- Use sugar syntax - reported by Geert
- Update copyright years
- Fix SD3.0 comment alignment
- Remove one newline from Makefile

Amit Kumar Mahapatra (1):
  arm64: zynqmp: Do not duplicate flash partition label property

Michal Simek (29):
  arm64: zynqmp: Disable CCI by default
  arm64: zynqmp: Enable fpd_dma for zcu104 platforms
  arm64: zynqmp: Fix irps5401 device nodes
  arm64: zynqmp: Add pinctrl description for all boards
  arm64: zynqmp: Correct zcu111 psgtr description
  arm64: zynqmp: Wire psgtr for zc1751-xm015
  arm64: zynqmp: Correct psgtr description for zcu100-revC
  arm64: zynqmp: Add phy description for usb3.0
  arm64: zynqmp: Disable WP on zcu111
  arm64: zynqmp: Add missing mio-bank properties to dc1 and dc5
  arm64: zynqmp: Wire DP and DPDMA for dc1/dc4
  arm64: zynqmp: Enable nand driver for dc2 and dc3
  arm64: zynqmp: Remove additional newline
  arm64: zynqmp: Move clock node to zynqmp-clk-ccf.dtsi
  arm64: zynqmp: Add nvmem alises for eeproms
  arm64: zynqmp: List reset property for ethernet phy
  arm64: zynqmp: Remove can aliases from zc1751
  arm64: zynqmp: Move DP nodes to the end of file on zcu106
  arm64: zynqmp: Add note about UHS mode on some boards
  arm64: zynqmp: Remove information about dma clock on zcu106
  arm64: zynqmp: Wire qspi on multiple boards
  arm64: zynqmp: Move rtc to different location on zcu104-revA
  arm64: zynqmp: Add reset description for sata
  arm64: zynqmp: Sync psgtr node location with zcu104-revA
  arm64: zynqmp: Remove description for 8T49N287 and si5382 chips
  arm64: zynqmp: Add support for zcu102-rev1.1 board
  arm64: zynqmp: Enable xlnx,zynqmp-dwc3 driver for xilinx boards
  arm64: zynqmp: Add psgtr description to zc1751 dc1 board
  arm64: zynqmp: Add support for Xilinx Kria SOM board

Mounika Grace Akula (1):
  arm64: zynqmp: Add reset-on-timeout to all boards and modify default
    timeout value

Srinivas Neeli (1):
  arm64: zynqmp: Update rtc calibration value

Stefano Stabellini (1):
  arm64: zynqmp: Add missing SMID for pcie to zynqmp.dtsi

 .../devicetree/bindings/arm/xilinx.yaml       |  32 ++
 arch/arm64/boot/dts/xilinx/Makefile           |  11 +
 .../arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi |  13 +-
 .../boot/dts/xilinx/zynqmp-sck-kv-g-revA.dts  | 335 +++++++++++++++++
 .../boot/dts/xilinx/zynqmp-sck-kv-g-revB.dts  | 318 ++++++++++++++++
 .../boot/dts/xilinx/zynqmp-sm-k26-revA.dts    | 289 +++++++++++++++
 .../boot/dts/xilinx/zynqmp-smk-k26-revA.dts   |  21 ++
 .../boot/dts/xilinx/zynqmp-zc1232-revA.dts    |  16 +-
 .../boot/dts/xilinx/zynqmp-zc1254-revA.dts    |  16 +-
 .../dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    | 298 ++++++++++++++-
 .../dts/xilinx/zynqmp-zc1751-xm016-dc2.dts    | 342 +++++++++++++++++-
 .../dts/xilinx/zynqmp-zc1751-xm017-dc3.dts    |  23 +-
 .../dts/xilinx/zynqmp-zc1751-xm018-dc4.dts    |  24 +-
 .../dts/xilinx/zynqmp-zc1751-xm019-dc5.dts    | 330 ++++++++++++++++-
 .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    | 264 +++++++++++++-
 .../boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts  |  15 +
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 321 +++++++++++++++-
 .../boot/dts/xilinx/zynqmp-zcu102-revB.dts    |   3 +-
 .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    | 292 ++++++++++++++-
 .../boot/dts/xilinx/zynqmp-zcu104-revC.dts    | 250 ++++++++++++-
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 341 ++++++++++++++++-
 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    | 275 +++++++++++++-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        |  99 +++--
 23 files changed, 3833 insertions(+), 95 deletions(-)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dts
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dts
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-smk-k26-revA.dts
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts

-- 
2.32.0

