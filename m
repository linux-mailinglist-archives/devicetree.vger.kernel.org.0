Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE1094A3E6F
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 09:05:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238057AbiAaIFh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 03:05:37 -0500
Received: from cpanel.siel.si ([46.19.9.99]:55602 "EHLO cpanel.siel.si"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S241948AbiAaIFf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 03:05:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
        Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
        Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
        In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=HphOyAFuw2LvY/zJ9LAUf0ND+TCWrg7+tGhsPOPKx5o=; b=AumFwQI1e/asoCe5M79q98HRWJ
        BC33gU4L7TRmIanaQsHCa4qy876Ve8rQqcIfwhZoUGCZUUEIGb9f7816qbYS0NPVtOKEDWQWHalSG
        6DQGoyZNxJW0xu5EY+V/GzKedkWXvB9VK3EkdfRZ5Kr1ErOEEXekvYPMycAWKapnrizcKSNBJpG7m
        uvl3Z4SGmWdOJuWi/0Yc5zZjjCVTZ+GFAhCm8CREcMMoGdgcV7SES2Gm/70hN3jovtSWJXuQ8w5Kn
        KDdoWloJKDQ9EpGEerUEL/ROrnvHWORke2iS57n+Z4Y9aATU2MwBnS70lksDcear47jaQRv9Mj+5C
        s4YLe6sA==;
Received: from [89.212.21.243] (port=42748 helo=localhost.localdomain)
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1nERgi-002KmK-GQ; Mon, 31 Jan 2022 09:05:31 +0100
From:   Andrej Picej <andrej.picej@norik.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
        leoyang.li@nxp.com, krzysztof.kozlowski@canonical.com,
        festevam@gmail.com, linux@rempel-privat.de, arnd@arndb.de,
        linux-imx@nxp.com, y.bas@phytec.de
Subject: [PATCH RESEND 0/4] PHYTEC i.MX 6UL/ULL devicetree patches
Date:   Mon, 31 Jan 2022 09:05:22 +0100
Message-Id: <20220131080526.1171072-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

this patch series contains PHYTEC i.MX 6UL/ULL devicetree patches not
yet upstreamed.

First and second patch add devicetree for relatively new phyGATE
Tauri-S, which is based on i.MX 6ULL.

Third patch changes USB LDO voltage for i.MX 6UL/ULL phyCORE devices so
they match USB Full-speed compliance.

The fourth patch moves from using 2 pwm-cell to default 3 cell pwm
property.

Best regards,
Andrej


Alexander Bauer (1):
  ARM: dts: imx6ull: Add support for PHYTEC phyGATE-Tauri-S with i.MX
    6ULL

Andrej Picej (2):
  dt-bindings: arm: fsl: add PHYTEC phyGATE Tauri i.MX6 ULL
  ARM: dts: imx6ul: peb-av-02: move to 3 cell pwm

Yunus Bas (1):
  ARM: dts: imx6ul: phycore: Change USB LDO voltage for usb compliance

 .../devicetree/bindings/arm/fsl.yaml          |   9 +
 arch/arm/boot/dts/Makefile                    |   2 +
 .../boot/dts/imx6ul-phytec-phycore-som.dtsi   |   5 +
 .../dts/imx6ul-phytec-segin-peb-av-02.dtsi    |   3 +-
 .../boot/dts/imx6ull-phytec-tauri-emmc.dts    |  20 +
 .../boot/dts/imx6ull-phytec-tauri-nand.dts    |  20 +
 arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi   | 605 ++++++++++++++++++
 7 files changed, 662 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri-emmc.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri-nand.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi

-- 
2.25.1

