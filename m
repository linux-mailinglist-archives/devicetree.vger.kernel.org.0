Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FC13372A2C
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 14:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230262AbhEDMgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 08:36:21 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:61353 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbhEDMgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 08:36:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1620131724; x=1651667724;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=a1nitKQUS0p6fOHF2j9gXuhTEOmhPEd2MRSZLBk9UVg=;
  b=JdOhfOj9LSD5FoRPAj0hvP5IEPwfn0z4c4ShAelH0IqHBEYd4/ZqYS2z
   gZ5M5XXmSdXGrAHNR6Uw0AEQNoOoJbj9GSqMrRJ6pSs2gTeOxPK3lRDFG
   Ljya1AQOiSTMuxvi82VGjj++jdVEJQfKSmbPrwhgq1KhI/rNt+d7vFaHd
   qjTN+GaMNPxK0orKiBLJ11H1nEG1xzwiDvZTBP5T1d3CAFUDzARhAl8fP
   gqmfo1zjo7QMTICooX/9gSCBr2ivFWsq+CrCTJBXCcAwM5pno/KtC7ES3
   wAdTBpv9VluF7tX8zUO6qq4ymki2R05bUc8kk44dZTvVduz6pb+n2d0bj
   Q==;
IronPort-SDR: QpJFAGoanMSF+cU8ryadsvMFnc+tiZxORoAKgaPUhZD2TjJey9KNNp5MCzv3Icqs/1xjUZHqko
 qZcQlBoLZOdgL9aF2B5kHom7CHs7KUemd7Ug2ddm4fCNtp8bwX4tbQIQdNGBCLyEythMf+y4cv
 AaxcHa2ImdA3EqEiqsh3Bhmu0zJ2HIZhtsohqw2kOakDCtlBWZ4j/MsVJ1qaHlTOE3FwPu3mAX
 oJv0FcIBTeMnVDCuOfLhEekCgk5OQhHauTm8lulprsklvYYoC78e+2vti29cXAAqBAZLtnrXRv
 mh0=
X-IronPort-AV: E=Sophos;i="5.82,272,1613458800"; 
   d="scan'208";a="118862344"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 04 May 2021 05:35:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 4 May 2021 05:35:18 -0700
Received: from daire-ubuntu.school.villiers.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Tue, 4 May 2021 05:35:16 -0700
From:   <daire.mcnamara@microchip.com>
To:     <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <linux-clk@vger.linux.org>, <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
CC:     <palmer@dabbelt.com>, <cyril.jean@microchip.com>,
        <padmarao.begari@microchip.com>, <lewis.hanly@microchip.com>,
        <conor.dooley@microchip.com>, <david.abdurachmanov@gmail.com>,
        Daire McNamara <daire.mcnamara@microchip.com>
Subject: [PATCH v5 0/2] CLK: microchip: Add clkcfg driver for Microchip PolarFire SoC
Date:   Tue, 4 May 2021 13:35:13 +0100
Message-ID: <20210504123515.916707-1-daire.mcnamara@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Daire McNamara <daire.mcnamara@microchip.com>

This patchset adds support for the Microchip PolarFire clkcfg
hardware block.

Major changes since v4:
* Adjusted license for microchip,mpfs-clock.h to match microchip,mpfs.yaml
* Corrected the number of clocks to 33 from 32

Major changes since v3:
* Patch reformatted so microchip,mpfs-clock.h is part of device-tree patch

Major changes since v2:
* In mpfs_cfg_clk_set_rate, return immediately if divider_get_val
    returns <0 
* rebased to v5.12-rc1

Major changes since v1:
 * Dependency on SOC_MICROCHIP_POLARFIRE
 * All references to PFSOC/pfsoc changed to MPFS/mpfs
 * Cleaned error handling in _probe
 * Re-ordered code to place structs et al at top

Daire McNamara (2):
  dt-bindings: clk: microchip: Add Microchip PolarFire host binding
  clk: microchip: Add driver for Microchip PolarFire SoC

 .../bindings/clock/microchip,mpfs.yaml        |  67 +++
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/Makefile                          |   2 +-
 drivers/clk/microchip/Kconfig                 |   7 +
 drivers/clk/microchip/Makefile                |   6 +-
 drivers/clk/microchip/clk-mpfs.c              | 444 ++++++++++++++++++
 .../dt-bindings/clock/microchip,mpfs-clock.h  |  45 ++
 7 files changed, 569 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
 create mode 100644 drivers/clk/microchip/Kconfig
 create mode 100644 drivers/clk/microchip/clk-mpfs.c
 create mode 100644 include/dt-bindings/clock/microchip,mpfs-clock.h


base-commit: 9f4ad9e425a1d3b6a34617b8ea226d56a119a717
prerequisite-patch-id: 6f7f70120adfa8e938b97517f0c664e43e8745a0
prerequisite-patch-id: 4ea37008d23838aa2e0658811fe15462f6cdbd87
-- 
2.25.1

