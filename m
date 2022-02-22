Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82ED04BF486
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 10:17:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230133AbiBVJQq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 04:16:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbiBVJQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 04:16:44 -0500
Received: from cpanel.siel.si (cpanel.siel.si [46.19.9.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C073A108BC5
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 01:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
        Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
        Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
        In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=Zaa97E/BCsDRn+z5f62raugnGm1+kdaJqNNht7meeCY=; b=Y+wfkBPq/TiT7ejpy800qfl7jn
        xR394hpXGOZCg0Qpf1kfKGy5c0Tmf5HBxWvYQYbQ2xyFSVx1TRZpwdtO4t/uoU9FfkeOV/Z7GDdbH
        MC9f1+9D8iETCu47tOAuuBHtsZI/qcHSvJGq8VoHzc9NzVeR6mecNHZcLbxP0HKwpQXpzawM6U2Kc
        BxWO4xz4pWa1ZJCkk+RlfKpFZenkzdt+ATnkShhOpG7cdknK4DWsWOpjg65ec0RlBEGKG4vG60vMG
        C9Esyfn2jgCnzOaxiqIE/v7ujNKxLN5BH8M1bQdTCIpqn2W061CkfKsXmIRhcG+c2lrW6VZ7ISdkf
        sCPkA4fQ==;
Received: from [89.212.21.243] (port=33310 helo=localhost.localdomain)
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1nMRH9-001d57-Vh; Tue, 22 Feb 2022 10:16:12 +0100
From:   Andrej Picej <andrej.picej@norik.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
        leoyang.li@nxp.com, krzysztof.kozlowski@canonical.com,
        festevam@gmail.com, linux@rempel-privat.de, arnd@arndb.de,
        linux-imx@nxp.com, y.bas@phytec.de
Subject: [PATCH v2 0/3] PHYTEC i.MX 6UL/ULL devicetree patches
Date:   Tue, 22 Feb 2022 10:16:03 +0100
Message-Id: <20220222091606.530581-1-andrej.picej@norik.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

this patch series contains PHYTEC i.MX 6UL/ULL devicetree patches not
yet upstreamed.

First and second patch add devicetree for relatively new phyGATE
Tauri-S, which is based on i.MX 6ULL.

The third patch moves from using 2 pwm-cell to default 3 cell pwm
property.

Changes in v2:
 - dropped the patch: "ARM: dts: imx6ul: phycore: Change USB LDO voltage
   for usb compliance" (LDO regulator shouldn't be configured as
   always-on, it should be enabled/disabled by consumer),
 - other changes are described in the corresponding patches.

Best regards,
Andrej

Alexander Bauer (1):
  ARM: dts: imx6ull: Add support for PHYTEC phyGATE-Tauri-S with i.MX
    6ULL

Andrej Picej (2):
  dt-bindings: arm: fsl: add PHYTEC phyGATE Tauri i.MX6 ULL
  ARM: dts: imx6ul: peb-av-02: move to 3 cell pwm

 .../devicetree/bindings/arm/fsl.yaml          |   9 +
 arch/arm/boot/dts/Makefile                    |   2 +
 .../dts/imx6ul-phytec-segin-peb-av-02.dtsi    |   3 +-
 .../boot/dts/imx6ull-phytec-tauri-emmc.dts    |  20 +
 .../boot/dts/imx6ull-phytec-tauri-nand.dts    |  20 +
 arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi   | 588 ++++++++++++++++++
 6 files changed, 640 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri-emmc.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri-nand.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi

-- 
2.25.1

