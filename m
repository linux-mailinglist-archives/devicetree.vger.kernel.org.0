Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39782449BCF
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 19:42:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235794AbhKHSpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 13:45:05 -0500
Received: from mga18.intel.com ([134.134.136.126]:65325 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235770AbhKHSpE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 8 Nov 2021 13:45:04 -0500
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="219201064"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; 
   d="scan'208";a="219201064"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2021 10:42:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; 
   d="scan'208";a="503150685"
Received: from maru.jf.intel.com ([10.54.51.77])
  by orsmga008.jf.intel.com with ESMTP; 08 Nov 2021 10:42:19 -0800
From:   jae.hyun.yoo@intel.com
To:     Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net
Subject: [PATCH v3 0/6] Add LCLK control into Aspeed LPC sub drivers
Date:   Mon,  8 Nov 2021 11:01:54 -0800
Message-Id: <20211108190200.290957-1-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Hello all,

This series is for appliying below fix to all Aspped LPC sub drivers.
https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/

An LPC sub driver can be enabled without using the lpc-ctrl driver or it
can be registered ahead of lpc-ctrl depends on each system configuration and
this difference introduces that LPC can be enabled without heart beating of
LCLK so it causes improper handling on host interrupts when the host sends
interrupts in that time frame. Then kernel eventually forcibly disables the
interrupt with dumping stack and printing a 'nobody cared this irq' message
out.

To prevent this issue, all LPC sub drivers should enable LCLK individually
so this patch adds clock control logic into the remaining Aspeed LPC sub
drivers.

Please review this series.

Thanks,
Jae

Changes sinve v2:
 * Rebased it on the latest master.
 * Made dts and bindigs changes' commit message more descriptive.
 * Simplified the -EPROBE_DEFER handling using dev_err_probe().

Changes sinve v1:
 * Added 'clocks' property into ibt and kcs-bmc bindings using
   'aspeed,ast2400-ibt-bmc.txt' and 'aspeed,ast2400-kcs-bmc.yaml'
   respectively because these are not merged into 'aspeed-lpc.yaml' yet.
   The bindings merging could be done using a separate patch later.

Jae Hyun Yoo (6):
  ARM: dts: aspeed: add LCLK setting into LPC IBT node
  dt-bindings: ipmi: bt-bmc: add 'clocks' as a required property
  ipmi: bt: add clock control logic
  ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
  dt-bindings: ipmi: aspeed,kcs-bmc: add 'clocks' as a required property
  ipmi: kcs_bmc_aspeed: add clock control logic

 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt  |  2 ++
 .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml |  7 +++++
 arch/arm/boot/dts/aspeed-g4.dtsi              |  1 +
 arch/arm/boot/dts/aspeed-g5.dtsi              |  5 ++++
 arch/arm/boot/dts/aspeed-g6.dtsi              |  5 ++++
 drivers/char/ipmi/bt-bmc.c                    | 21 +++++++++++++-
 drivers/char/ipmi/kcs_bmc_aspeed.c            | 28 ++++++++++++++++---
 7 files changed, 64 insertions(+), 5 deletions(-)

-- 
2.25.1

