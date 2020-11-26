Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B369C2C522D
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 11:39:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727633AbgKZKh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 05:37:29 -0500
Received: from mga03.intel.com ([134.134.136.65]:15730 "EHLO mga03.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727251AbgKZKh3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Nov 2020 05:37:29 -0500
IronPort-SDR: 97mnkaTKXVTuK+nApd7tkJjrc7BtFb4kxX1ijhgHbqzc8fANlvPG7vowIlj60+6/MPYG4lG3zb
 IG9RONpYMtZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172366485"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; 
   d="scan'208";a="172366485"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2020 02:37:28 -0800
IronPort-SDR: 9C1p7eJE/4Hxa6v+SnrCVIo57EFJdMRa7147de06dcdevZRLMxrTMJ2PI7pHOwcb8C1dmNOJ7k
 3Q4HOYePlUew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; 
   d="scan'208";a="313341688"
Received: from ubuntu18.png.intel.com ([10.88.229.38])
  by fmsmga008.fm.intel.com with ESMTP; 26 Nov 2020 02:37:25 -0800
From:   vijayakannan.ayyathurai@intel.com
To:     daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, andriy.shevchenko@linux.intel.com,
        mgross@linux.intel.com, wan.ahmad.zainie.wan.mohamad@intel.com,
        lakshmi.bai.raja.subramanian@intel.com,
        vijayakannan.ayyathurai@intel.com
Subject: [PATCH v1 0/2] Add drivers for Intel Keem Bay SoC timer block
Date:   Thu, 26 Nov 2020 18:34:07 +0800
Message-Id: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>

Hi.

This patch set adds the driver for Intel Keem Bay SoC timer block,
which contains 32-bit general purpose timers, a 64 bit free running counter
and a random number generator.

Patch 1 holds the Device Tree binding documentation and
Patch 2 holds the Device Driver.

This driver was tested on the Keem Bay evaluation module board.

Thanks,
Vijay

Vijayakannan Ayyathurai (2):
  dt-bindings: timer: Add bindings for Intel Keem Bay SoC timer
  clocksource: Add Intel Keem Bay Timer Support

 .../bindings/timer/intel,keembay-timer.yaml   |  72 ++++++
 drivers/clocksource/Kconfig                   |  10 +
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-keembay.c           | 221 ++++++++++++++++++
 4 files changed, 304 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml
 create mode 100644 drivers/clocksource/timer-keembay.c


base-commit: 418baf2c28f3473039f2f7377760bd8f6897ae18
prerequisite-patch-id: 822987dcf4c969ef6ac70359b088af06ba39042b
prerequisite-patch-id: 0a348762b660d0d817b8e70cc71647e83173c78c
prerequisite-patch-id: 54c661a006c7362053cb7602448d6c77419d5cf9
prerequisite-patch-id: d140d8534fb828778e0652fe5fcf6282e027f985
-- 
2.17.1

