Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2253139D384
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 05:39:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbhFGDlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Jun 2021 23:41:12 -0400
Received: from phobos.denx.de ([85.214.62.61]:58322 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230127AbhFGDlL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 6 Jun 2021 23:41:11 -0400
Received: from mail-internal.denx.de (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: noc@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6551682CE6;
        Mon,  7 Jun 2021 05:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1623037160;
        bh=eEUdIRxkR7iHc1ypAa8pccRVV0eD/Zq2w05n+e3iZ+g=;
        h=From:To:Cc:Subject:Date:From;
        b=V5S/0X8jbEZErsJjn0ZoiiTyVdDVat+J+MUuIJsIYgs6pki+CK0tyyXw9ZLky541v
         Vioy3t8c7+eeEEHIa0JZsjkrvsklYPISIJg1h9JgqHJHOBx2CqYPDFf8I4DCL25cQK
         YjTmNW5Wj+JP45hHHTI2TPRFgcC2MECJhtoB6sK0frNr2W2X1l6RK4uaXdpLPJjwQH
         2Dxjwlg3R4/a0NBk5SCp4OwtTKWRNLPewyjdQSJTPtXYh0Xw2wDDVmNCEf+iKOs7EH
         7t7HS6bUYdTLi7lbgLcrTzLV7f33v/4n9KSFQqFvHR7j+dfP1DSfNn69bAST89Meh0
         aBtpjPEp0lQ1w==
Received: from pollux.denx.de (pollux [192.168.1.1])
        by mail-internal.denx.de (Postfix) with ESMTP id AF5B01826B5;
        Mon,  7 Jun 2021 05:39:12 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 515)
        id 850991A8BB0; Mon,  7 Jun 2021 05:39:12 +0200 (CEST)
From:   Heiko Schocher <hs@denx.de>
To:     linux-mtd@lists.infradead.org
Cc:     Heiko Schocher <hs@denx.de>, Fabio Estevam <festevam@denx.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] mtd: devices: add support for microchip 48l640 EERAM
Date:   Mon,  7 Jun 2021 05:39:07 +0200
Message-Id: <20210607033909.1424605-1-hs@denx.de>
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

Any comments to driver?

Changes in v4:
- work in comments from Rob:
  - change title to
    Microchip 48l640 (and similar) serial EERAM bindings
  - rename spi-eeram to eeram
- Add Reviewed-by tag from Rob

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

