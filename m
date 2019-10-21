Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D89A1DE1E6
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2019 04:10:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726874AbfJUCKp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Oct 2019 22:10:45 -0400
Received: from mx2.suse.de ([195.135.220.15]:57632 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726866AbfJUCKo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 20 Oct 2019 22:10:44 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id 69E69B03B;
        Mon, 21 Oct 2019 02:10:43 +0000 (UTC)
From:   =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To:     linux-realtek-soc@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        devicetree@vger.kernel.org
Subject: [PATCH 0/3] ARM: Initial RTD1195 and MeLE X1000 support
Date:   Mon, 21 Oct 2019 04:10:32 +0200
Message-Id: <20191021021035.7032-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds initial support for Realtek RTD1195 SoC
and adds a Device Tree for the MeLE X1000 TV set-top-box.

More details at:
https://en.opensuse.org/HCL:Mele_X1000

Latest experimental patches at:
https://github.com/afaerber/linux/commits/rtd1295-next

Have a lot of fun!

Cheers,
Andreas

Cc: devicetree@vger.kernel.org

Andreas Färber (3):
  dt-bindings: arm: realtek: Add RTD1195 and MeLE X1000
  ARM: Prepare Realtek RTD1195
  ARM: dts: Prepare Realtek RTD1195 and MeLE X1000

 Documentation/devicetree/bindings/arm/realtek.yaml |   6 +
 arch/arm/Kconfig                                   |   2 +
 arch/arm/Makefile                                  |   1 +
 arch/arm/boot/dts/Makefile                         |   2 +
 arch/arm/boot/dts/rtd1195-mele-x1000.dts           |  30 +++++
 arch/arm/boot/dts/rtd1195.dtsi                     | 128 +++++++++++++++++++++
 arch/arm/mach-realtek/Kconfig                      |  16 +++
 7 files changed, 185 insertions(+)
 create mode 100644 arch/arm/boot/dts/rtd1195-mele-x1000.dts
 create mode 100644 arch/arm/boot/dts/rtd1195.dtsi
 create mode 100644 arch/arm/mach-realtek/Kconfig

-- 
2.16.4

