Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39B9E396C60
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 06:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230326AbhFAEhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 00:37:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbhFAEhi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 00:37:38 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8D3CC061574
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 21:35:57 -0700 (PDT)
Received: from mail-internal.denx.de (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: noc@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 5B69F82EA1;
        Tue,  1 Jun 2021 06:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1622522155;
        bh=kfecTcZ55k+F78gu75sr1/SnMlo5gwjDU5bO0qrbXRo=;
        h=From:To:Cc:Subject:Date:From;
        b=OCbWXhN6egZjMP0Ou4iD7woR9HYp+pnZpPGgCixtl1HFvHWv5DppmUcdHm0lpYHtV
         TXZQ4BEJQRZFPEftpLdnIdsJVU0WFWN+LvF4HU4WORIZZyHKn7g1UIy2L3z77Fc5JA
         lPzrKbD5oMEFTxQoCYasHq2O6xrQhgymyRCu63FfyGN01hAX61c4iO+jrDw5R57EOM
         bwOXPYU2Su3Eo7zHrEj6uEesuz3UUCur7h1viY9xn/ufqtlQM/EPrCr/vRt7YlVQTK
         CwIYoyUUGB6g/NK8lFREMCnCGojVnvTdwRE0b2E2ZJg0BTmQstr2xsiRw62bKQMi10
         W59i1DzNWiNJg==
Received: from pollux.denx.de (pollux [192.168.1.1])
        by mail-internal.denx.de (Postfix) with ESMTP id 3221C184CCD;
        Tue,  1 Jun 2021 06:35:48 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 515)
        id 0BF1C1A8BB4; Tue,  1 Jun 2021 06:35:48 +0200 (CEST)
From:   Heiko Schocher <hs@denx.de>
To:     linux-mtd@lists.infradead.org
Cc:     Heiko Schocher <hs@denx.de>, Fabio Estevam <festevam@denx.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] mtd: devices: add support for microchip 48l640 EERAM
Date:   Tue,  1 Jun 2021 06:35:44 +0200
Message-Id: <20210601043546.1345704-1-hs@denx.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


add support for microchip 48l640 eeram connected via
SPI. Patch 1 introduces devicetree documentation
and patch 2 the driver.


Changes in v3:
Add Fabio to cc
drop dev_dbg() in mchp48l640_read() as not really needed to
fix warning which kernel test robot found for
config: arc-allyesconfig (attached as .config)
compiler: arceb-elf-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
add Reported-by: kernel test robot <lkp@intel.com>
add Fabio to cc

Changes in v2:
as Rob helped, fix warnings from running command
'make DT_CHECKER_FLAGS=-m dt_binding_check'
- fix build warnings
- add Fabios Tested-by

Heiko Schocher (2):
  mtd: devices: add devicetree documentation for microchip 48l640
  mtd: devices: add support for microchip 48l640 EERAM

 .../bindings/mtd/microchip,mchp48l640.yaml    |  45 +++
 drivers/mtd/devices/Kconfig                   |   6 +
 drivers/mtd/devices/Makefile                  |   1 +
 drivers/mtd/devices/mchp48l640.c              | 373 ++++++++++++++++++
 4 files changed, 425 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
 create mode 100644 drivers/mtd/devices/mchp48l640.c

-- 
2.31.1

