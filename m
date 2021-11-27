Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66E1D45FE69
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 13:12:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242504AbhK0MPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Nov 2021 07:15:43 -0500
Received: from mout.kundenserver.de ([212.227.126.131]:39659 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354243AbhK0MNn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Nov 2021 07:13:43 -0500
Received: from localhost.localdomain ([37.4.249.122]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MwQCb-1mavoj1X5J-00sKXL; Sat, 27 Nov 2021 13:10:16 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH] ARM: dts: bcm2711-rpi-400: Fix GPIO expander labels
Date:   Sat, 27 Nov 2021 13:09:42 +0100
Message-Id: <1638014982-4878-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:uQqM6d0BB68FYa0lHKhX0wIPpb69pYOP8KFWBf5nyTLHPnjr3ub
 zb9NlnUo/y0IDGvsSbGYbqqr1bH1LJh/AjtXXxQTDIvl3G8XC0NXEMG13kg3XmGAwOPatfY
 rL04e6GAKIG00pq3P22em0fYUjnMgdPQ/ic3N4mvsOVyNl3e0JK3k/DaFutxsrisnR8sBUH
 82Rv5+wix/bSMk2hKZEMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rCMYXyRFLXk=:R4mbl6ScX9HiXXP9HIGtEG
 wsr/JX4qOu0IaVCl3JqylL9ivA6RzMdlkeBEja2s3774PLKaTzOoU5j+AcB9bMlWCXRunf6ku
 GgfbqZrMBM8vV/XbQuBOVxmsp6+7y/7wZWMsftzSmUG8xgqkMxuN9uK8B6P3OZ1tURF/0tgKa
 dWmunYcC+vam0lnclTTOK6GKploCalz8b7a1L89q0SI3vRH5gCcVCGjlC3RkEYDO/qZSj1pxD
 SDTt0am/3s2ZJxnPBx4OEdn6Sahz6/W4UykEJuquYrD3p6vY9yLihEt9IL6F9pC4nkpvZGmqg
 jT9Pwp+G0EikWHgcg25t95fcjU5flEk8HwoNtxplH1c4uTJ2RPgvXZV/ALSIxhcHkZrgVWByF
 zuiTEpSmAR7BMycKsgeApA/WnYRF9EoRY8OtDJTvgI6NTqa05bu35vZ6MCcVGwnGrMZXL9cUX
 r8RXBcbM3ajugK4o9v+jgHKPJ2Qwh7T1om0jZO/cawdoCzLxfzqn89uv4vOWwWF+Ibc/WPkSj
 hK7nrTvgLO5WzZRALd4VF/KRPL34YwSS/5PmhyE314PjLUXVzwLkNc0RP73nOoe/9qSH0EzFG
 /mk/Z6YVldqiRg0BYQlhzQOReQGXyZw4qkUwb1TOa9wRdq6k0DOuZBGFZkwCmIXSUlQcM9Yzz
 xUCcANieiVUm0KosF/cj0h3MvMiFzlNABAz33CEyg8HJnvZFegWq2mgbt4LyigMXS82eOknCu
 npAqRo/aHIp+OUpJ
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Phil Elwell <phil@raspberrypi.com>

Recently 2 labels of the RPi 400 GPIO expander has been fixed in
the vendor tree. So upstream this change to be in sync.

Fixes: 1c701accecf2 ("ARM: dts: Add Raspberry Pi 400 support")
Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711-rpi-400.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-400.dts b/arch/arm/boot/dts/bcm2711-rpi-400.dts
index f4d2fc2..82c5ea1 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-400.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-400.dts
@@ -31,9 +31,9 @@
 			  "",
 			  "GLOBAL_RESET",
 			  "VDD_SD_IO_SEL",
-			  "CAM_GPIO",
+			  "GLOBAL_SHUTDOWN",
 			  "SD_PWR_ON",
-			  "SD_OC_N";
+			  "SHUTDOWN_REQUEST";
 };
 
 &genet_mdio {
-- 
2.7.4

