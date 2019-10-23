Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1C09EE1A99
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2019 14:34:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391489AbfJWMdt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Oct 2019 08:33:49 -0400
Received: from xavier.telenet-ops.be ([195.130.132.52]:45924 "EHLO
        xavier.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391608AbfJWMdq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Oct 2019 08:33:46 -0400
Received: from ramsan ([84.194.98.4])
        by xavier.telenet-ops.be with bizsmtp
        id H0Zk2100C05gfCL010Zk3i; Wed, 23 Oct 2019 14:33:44 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1iNFpg-0003uF-5r; Wed, 23 Oct 2019 14:33:44 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1iNFpg-0003Qf-4Y; Wed, 23 Oct 2019 14:33:44 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Magnus Damm <magnus.damm@gmail.com>
Cc:     Eugeniu Rosca <erosca@de.adit-jv.com>,
        linux-renesas-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 10/11] arm64: defconfig: Enable R8A77961 SoC
Date:   Wed, 23 Oct 2019 14:33:41 +0200
Message-Id: <20191023123342.13100-11-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023123342.13100-1-geert+renesas@glider.be>
References: <20191023123342.13100-1-geert+renesas@glider.be>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the Renesas R-Car M3-W+ (R8A77961) SoC in the ARM64 defconfig.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Tested-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by, Tested-by.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9adae41bac03e60..4a4e338c457e45db 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -745,6 +745,7 @@ CONFIG_ARCH_R8A774B1=y
 CONFIG_ARCH_R8A774C0=y
 CONFIG_ARCH_R8A7795=y
 CONFIG_ARCH_R8A7796=y
+CONFIG_ARCH_R8A77961=y
 CONFIG_ARCH_R8A77965=y
 CONFIG_ARCH_R8A77970=y
 CONFIG_ARCH_R8A77980=y
-- 
2.17.1

