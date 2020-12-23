Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F6CC2E2195
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 21:41:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729119AbgLWUiR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 15:38:17 -0500
Received: from mout.kundenserver.de ([212.227.126.130]:39517 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728388AbgLWUiR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 15:38:17 -0500
Received: from localhost.localdomain ([37.4.249.194]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mf0Nm-1kOtZs2s3O-00gXuX; Wed, 23 Dec 2020 21:35:34 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Eric Anholt <eric@anholt.net>, Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 3/4] drm/v3d: Don't clear MMU control bits on exception
Date:   Wed, 23 Dec 2020 21:35:13 +0100
Message-Id: <1608755714-18233-4-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1608755714-18233-1-git-send-email-stefan.wahren@i2se.com>
References: <1608755714-18233-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:tRgv/ultBc4MXu/j0X4blgyJNqQt0YNcWJ8yVfhG0vzLV4joXsS
 Eb+iyJQWf9Sp/D9uhMngCIBEmOFVfwUzaXCJGvVeVYeVWCOkp2JpO8zb0B/7xn0CcNXu9Cj
 q4rY5XawlQMwzaMvGu/o0lahtGSrkZuSQz3v5oa8zC5CFD2a1UbqpSJXqMwd7mMFniZf0w8
 m9PsW8YQly5oy0qhfaIYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pXAFZhLaO7M=:vRe77kjYN1VE9h5qs4MFEh
 LFu2J3PKvZD+/PtCB5gEE30hmW7iXxk/uCpH7ZcZgubNGbpiFBvzLExKf8HtvzQyAqo4LBvc3
 gZTSKJm1zeJWY3tWGaqzgChBTadNfbrIG8u3VEsfEkJhbTSHGTq5u7jb5nEmI7aj3zMIVUhO/
 /y4o+qXsVQcS+flvXbskOa44Q+m8yvOC0N0n1MlzWWrq7y3nQhY95YxHif8SWLs+peW1MGBhr
 7AP0lfiffsYVakdu8YHh1LVhqfDHPcgcsanZdF+bfHIHm1yE2dvQCQ0HZte2PMCoOR2zy3o3U
 RtrzwoYCu89rzO3i2BjSbZb3kobm+7+m4KhimQdwZueh80LPmIpZ8V5nK9yhRiyY7hjZVs+VP
 gftaSifqXsZgR1X6jq7RhIU8KpqIoFOqrTjbnQT/II5TQ7bjSn0OUkujqNSY0UmNtvwJkNoTz
 ToIBFlz0FQ==
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
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
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

