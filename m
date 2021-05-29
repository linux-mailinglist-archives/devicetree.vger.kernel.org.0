Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4F1B394BA7
	for <lists+devicetree@lfdr.de>; Sat, 29 May 2021 12:27:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbhE2K3c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 May 2021 06:29:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbhE2K3b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 May 2021 06:29:31 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C16BC061574
        for <devicetree@vger.kernel.org>; Sat, 29 May 2021 03:27:55 -0700 (PDT)
Received: from mail-internal.denx.de (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: noc@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 971BA81895;
        Sat, 29 May 2021 12:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1622284072;
        bh=0K5fa1pym+uYrWwUk5lMIEsPkX2k9QBt+qQSNfxfW38=;
        h=From:To:Cc:Subject:Date:From;
        b=ruMKkzPxpjroXU5gCDSmvwVZEgEQruTUjl8wC26EEq9qDY6IZpgQzWm4BYsbN9TsE
         RjPSwJut/2fCx8bai/KBBisYQtfpfHkXZDcH3ybX38P7luTrPPATXj+sdXyTC9hufT
         3BJkpYvc7ZwvbAnTEPLPk6XEsQfYiNA2ydDXyq8hmlUu/HrsiJ04A8GuK3EM3klJoj
         eshOGBSaoImH50hrbA7wwOm2FXXL2NUqa0nqRaOPb56Siu/Kx1e4RNXYOxSm2EaUZ1
         MmJg/w3rc5CNFR+CH+G/MwRuVLSLr1ugIdHiILYNJV6MLGTJ28JnPzxXNVKxkhCg9t
         ps1JjvW0EZ3RQ==
Received: from pollux.denx.de (pollux [192.168.1.1])
        by mail-internal.denx.de (Postfix) with ESMTP id 91283182BA2;
        Sat, 29 May 2021 12:27:46 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 515)
        id 6B0D31A8BC4; Sat, 29 May 2021 12:27:46 +0200 (CEST)
From:   Heiko Schocher <hs@denx.de>
To:     linux-mtd@lists.infradead.org
Cc:     Heiko Schocher <hs@denx.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] mtd: devices: add support for microchip 48l640 EERAM
Date:   Sat, 29 May 2021 12:27:42 +0200
Message-Id: <20210529102744.1251220-1-hs@denx.de>
X-Mailer: git-send-email 2.30.2
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
 drivers/mtd/devices/mchp48l640.c              | 374 ++++++++++++++++++
 4 files changed, 426 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
 create mode 100644 drivers/mtd/devices/mchp48l640.c

-- 
2.30.2

