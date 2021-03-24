Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDB2E347669
	for <lists+devicetree@lfdr.de>; Wed, 24 Mar 2021 11:44:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233465AbhCXKoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Mar 2021 06:44:20 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:37745 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233309AbhCXKoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Mar 2021 06:44:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1616582651; x=1648118651;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=wZnFSdwyHGHOlcJGEEShrRmtob3h1Vzt4KAao4S7dws=;
  b=QrXgq5IGGsWEt/+47mDLvTSgG4Ae5GEwrPdpG/BbfbCs5FgwepUOTj51
   pQEluMKDFa2M1pk0gZfuCYe3iB1sYC2MTdAbdXOobW3e/ASik3yKq6LVw
   Jwrh9cUr8Q5J67YI/Qshj+TMtmhG/1b8ZsQRLttSb6wHgUPECIjbBrVXE
   X4qEOL8LrdC+UjUKp2Yi4yb1gOggjSbzhVBWEGvRegMtfwjluHCZoiick
   qhVIFjvxwKGsBniWx2zW8VvieVBC4M6XqlE1MEU2AuzyhuvI4X4+Z94P+
   iUllzFpjkgoEbtA2AMBS/EiB4sGIHUQ/3MiaWJFwf9Juy2VGTYTNwi9lY
   A==;
IronPort-SDR: gBGfAL0utMmfpJsPM7jEJp4oFNy4L93AVTu4lbS+f3MIMNOUb9SyTj5zOpohAMdAXg6/zrwHQA
 dtigILv2rZW/lK/YzBuoPUgwXko8VYETmqZs3S+KC2WZPPTnCrgpI85Ef0xN5VBc9lgqkSuYUV
 ub60i2EDe9ljH0tf56/lZAoJZIa2X2UxRUWzh1US0opvqiEokKjLwDeD88MO920G9VPATeCcHg
 ZGmrWTSgSJrNux6wpmVzQimDWpqglxxjQ9qeskfHk0ujrhsxXnRvLOFS6T1fKqvLB2mGsXSicI
 C40=
X-IronPort-AV: E=Sophos;i="5.81,274,1610434800"; 
   d="scan'208";a="108360141"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 24 Mar 2021 03:44:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 24 Mar 2021 03:44:10 -0700
Received: from dev-powerhorse.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Wed, 24 Mar 2021 03:44:07 -0700
From:   <daire.mcnamara@microchip.com>
To:     <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <linux-clk@vger.linux.org>, <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
CC:     <cyril.jean@microchip.com>, <lewis.hanly@microchip.com>,
        <padmarao.begari@microchip.com>, <conor.dooley@microchip.com>,
        <david.abdurachmanov@gmail.com>,
        Daire McNamara <daire.mcnamara@microchip.com>
Subject: [PATCH v3 0/2] CLK: microchip: Add clkcfg driver for Microchip PolarFire SoC
Date:   Wed, 24 Mar 2021 10:43:49 +0000
Message-ID: <20210324104351.2200605-1-daire.mcnamara@microchip.com>
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

 .../bindings/clock/microchip,mpfs.yaml        |  73 +++
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/Makefile                          |   2 +-
 drivers/clk/microchip/Kconfig                 |   7 +
 drivers/clk/microchip/Makefile                |   6 +-
 drivers/clk/microchip/clk-mpfs.c              | 444 ++++++++++++++++++
 .../dt-bindings/clock/microchip,mpfs-clock.h  |  45 ++
 7 files changed, 575 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
 create mode 100644 drivers/clk/microchip/Kconfig
 create mode 100644 drivers/clk/microchip/clk-mpfs.c
 create mode 100644 include/dt-bindings/clock/microchip,mpfs-clock.h


base-commit: fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
prerequisite-patch-id: 0ac01d42578032988d5303bd123531b39b516ce9
prerequisite-patch-id: 09b6a8d6c37251e2c837343af1cb7ddfa1e4b0e5
prerequisite-patch-id: 0bdfc01ff322a5caf47dd02568d4868061bebff3
prerequisite-patch-id: 381cbe9701a0f3e0b2b48140de712e19751b1523
prerequisite-patch-id: 29ae3cfc47fe7b47a79ea9303aca265b98eba7dc
prerequisite-patch-id: d33f2f1ff57076d7845af27242d3b86d5a9e8059
prerequisite-patch-id: 00359256d60042365de15d0a92689988daec1c4d
-- 
2.25.1

