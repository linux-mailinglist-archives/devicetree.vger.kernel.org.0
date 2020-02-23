Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9B7A5169798
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2020 14:04:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726748AbgBWNEX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Feb 2020 08:04:23 -0500
Received: from mout.kundenserver.de ([212.227.126.135]:56417 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726592AbgBWNEX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Feb 2020 08:04:23 -0500
Received: from localhost.localdomain ([37.4.249.121]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MhDEo-1jaDwE2jC6-00eMCo; Sun, 23 Feb 2020 14:04:12 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH] ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS
Date:   Sun, 23 Feb 2020 14:02:56 +0100
Message-Id: <1582462976-30646-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:CoVY1sXEwV2l9EVwIL4/vKabbkLRc6PDSydEJoCPv/DceZV9G+X
 +4Lsl2DE3ev9q4tPi8ZfMi/sOcG/535sYaOvQ8AHxonjQuQCe/C5BxhTPft9VB5KrlsG/lJ
 Z8h8KdxVCkJinnAxuTDG1iz2VQnIHWdlSxr1PA03By5GpXGJrMUbaxDYbZYp66bq833slJr
 iLFFf9mNBOocesZpllMkw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c/XCZm9674I=:VfT84tFuX8f64fMm1J1I52
 sETxGV0spQSxtdN+tGh2miB5BCFLH+o2mTomzwgHSML9CzEZI9eaz78tA5uguEJHcpKDAzZq+
 iLISvMKoMyfet3y/7h90bzjb8BdJ5pEyvi4l9pnym2U8h0UC0J0eWOLIM/gLZGzWDRtDAif4L
 gk/AP4DxHWsocnwJlx6UQaiiVoAGVwt/YlRlYqQcQz6LIN0j+95m69ISV954nqSRtH0GvbU2c
 Ta663VWP/N8kdtlurTuWGPc6HHjZzV+g6N2kWpmhWu8eqDtb2fLWLDNKMvvwKrgUOcamFciSP
 dCZMtu6YnFdS4QNNDZII7uf+99l1zxzagL376n/iNEOKPaPpdJTTu+5Bd+j5fVy1qYebg95da
 c/hMB+zc3wfj1dWrfHUmJEycA88ZEDp2Uu205mtxY+loQKGWnfeqqt6iivb0Hllynp3s04q7l
 nToDN5fxpbTdZ6/zd9UULcXp1liYXAM1QlHiQ1pYVVw6dAXWMy4msMHozTRuGUexy/IKX+6eR
 8qiv5EFabZRR7IVuAqPFSTi0w+Tu34Fmt0uuBd8F7juho2/5GlMDSMIv+hm/jYH2HctlECXK5
 Fo4k1/LBUvK3PvAQPs7sP2eTIa71Dil3Mrpm53Qw2WPtYWAPmXq4H0O1M2pMeTxXgF/buGUJJ
 lCshihATi/XM/W2/HaNKUjNwUnSNguYFO8AO+odzp3WB5hCp0VNp5clkG+fehT7Kkzd8JCNo2
 ihs7cHFL7lcPUBb900AAl5cn9rmeE4T/ODPCgBXRt/lHmoiOMjdAXrGn0x7esNvZfb9iO4NeD
 y7h42kMEwIopee0l1dxQ6mBJQZril99E0odWq4nQnRHhg8m9Ei5YYGhGNSWYQVBVKFcJ7Nr
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
accidentally dropped the DEBUG FS support in bcm2835_defconfig. So
restore the config as before the commit.

Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Fixes: 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/configs/bcm2835_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/bcm2835_defconfig b/arch/arm/configs/bcm2835_defconfig
index 3843754..8e7a3ed 100644
--- a/arch/arm/configs/bcm2835_defconfig
+++ b/arch/arm/configs/bcm2835_defconfig
@@ -183,6 +183,7 @@ CONFIG_SCHED_TRACER=y
 CONFIG_STACK_TRACER=y
 CONFIG_FUNCTION_PROFILER=y
 CONFIG_TEST_KSTRTOX=y
+CONFIG_DEBUG_FS=y
 CONFIG_KGDB=y
 CONFIG_KGDB_KDB=y
 CONFIG_STRICT_DEVMEM=y
-- 
2.7.4

