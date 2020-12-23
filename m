Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D7012E2156
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 21:32:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728563AbgLWUai (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 15:30:38 -0500
Received: from mout.kundenserver.de ([217.72.192.75]:50429 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727187AbgLWUai (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 15:30:38 -0500
Received: from localhost.localdomain ([37.4.249.194]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MRmo8-1kTS3U0i30-00TCnc; Wed, 23 Dec 2020 21:27:54 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Eric Anholt <eric@anholt.net>, Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.org>
Subject: [PATCH 3/4] drm/v3d: Don't clear MMU control bits on exception
Date:   Wed, 23 Dec 2020 21:27:24 +0100
Message-Id: <1608755245-18069-4-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
References: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:0tOEdDp6fR0bZbqYWT127G8PNcCAxolyfkayHeulx2DS57jbIDQ
 XlgCEGoOcHZIlmdGZG19UAOC3Q5kKIAhbXO8PxpaqyQwJzvnjDa5DG34KzCDO/LWNboNs8o
 45M4mEJ3jiN/nOzDUKkiewC/zJ7Jv9vcrxAWL5UN4L9GDbhqY37XCKp02eQ6Tq3HeWdflqw
 r4e61G4wyZpYGuPvX0pWw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8+48t7PoDdU=:qUNCbfuT6OyNheBimZ+kNu
 lRWFX8fzqYgCE+k+t+ucZvVFNWC5+iXRA/RbPxyfe18s4mpV18k4G2Ox0YHGZITIwWtjPhj1u
 1rtqam8JUcUCqwD+78W4L9Cy6QXAahBKz2bb9k38ydMQpYeaN2ZKJUSVXedU3jxGjuggk6gzy
 5nuT0MBShvVcaS52DaIx6JeTkcvgNlmz3GTui51gXS5aNbXlzfHSUsw4JFPseXSmSbik2F6Vy
 2gAoCOKhhYxq1YE+OI3D6MrGT3tdaFP0vGgf8UNoJCSd1E1wluHX0oUgG0xf3WqiY9+l6Ht8g
 IOW5GX2lfXpsW8sdiXDM/8AJyc/UEOsXS903OigOuNuDGlIVmm4iwmeEPhBzda3fBNQgVqhZ8
 WTHvq4RW3hJGV8VYNyu5cWFZ2Sw54Up6uRQT1VHF6hSjaTfsQME6nPWsvs3Y9H1wiBoo0wYHR
 wgqol2yDNA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Phil Elwell <phil@raspberrypi.org>

MMU exception conditions are reported in the V3D_MMU_CTRL register as
write-1-to-clear (W1C) bits. The MMU interrupt handling code clears any
exceptions, but does so by masking out any other bits and writing the
result back. There are some important control bits in that register,
including MMU_ENABLE, so a safer approach is to simply write back the
value just read unaltered.

Signed-off-by: Phil Elwell <phil@raspberrypi.org>
---
 drivers/gpu/drm/v3d/v3d_irq.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_irq.c b/drivers/gpu/drm/v3d/v3d_irq.c
index 0be2eb7..e714d53 100644
--- a/drivers/gpu/drm/v3d/v3d_irq.c
+++ b/drivers/gpu/drm/v3d/v3d_irq.c
@@ -178,10 +178,7 @@ v3d_hub_irq(int irq, void *arg)
 		};
 		const char *client = "?";
 
-		V3D_WRITE(V3D_MMU_CTL,
-			  V3D_READ(V3D_MMU_CTL) & (V3D_MMU_CTL_CAP_EXCEEDED |
-						   V3D_MMU_CTL_PT_INVALID |
-						   V3D_MMU_CTL_WRITE_VIOLATION));
+		V3D_WRITE(V3D_MMU_CTL, V3D_READ(V3D_MMU_CTL));
 
 		if (v3d->ver >= 41) {
 			axi_id = axi_id >> 5;
-- 
2.7.4

