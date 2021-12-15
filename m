Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B22C476023
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 19:03:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245628AbhLOSCT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 13:02:19 -0500
Received: from 82-65-109-163.subs.proxad.net ([82.65.109.163]:58974 "EHLO
        luna.linkmauve.fr" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245515AbhLOSCR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 13:02:17 -0500
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
        id 6C1F8F40EBE; Wed, 15 Dec 2021 18:55:08 +0100 (CET)
From:   Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
        rw-r-r-0644 <r.r.qwertyuiop.r.r@gmail.com>,
        Ash Logan <ash@heyquark.com>,
        =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Subject: [PATCH v3 5/5] powerpc: wii_defconfig: Enable the RTC driver
Date:   Wed, 15 Dec 2021 18:55:01 +0100
Message-Id: <20211215175501.6761-6-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211215175501.6761-1-linkmauve@linkmauve.fr>
References: <20211027223516.2031-1-linkmauve@linkmauve.fr>
 <20211215175501.6761-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This selects the rtc-gamecube driver, which provides a real-time clock
on this platform.

Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
---
 arch/powerpc/configs/wii_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/configs/wii_defconfig b/arch/powerpc/configs/wii_defconfig
index 752e081d28d0..ad4302a12fd7 100644
--- a/arch/powerpc/configs/wii_defconfig
+++ b/arch/powerpc/configs/wii_defconfig
@@ -98,7 +98,7 @@ CONFIG_LEDS_TRIGGERS=y
 CONFIG_LEDS_TRIGGER_HEARTBEAT=y
 CONFIG_LEDS_TRIGGER_PANIC=y
 CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_GENERIC=y
+CONFIG_RTC_DRV_GAMECUBE=y
 CONFIG_EXT2_FS=y
 CONFIG_EXT4_FS=y
 CONFIG_FUSE_FS=m
-- 
2.34.1

