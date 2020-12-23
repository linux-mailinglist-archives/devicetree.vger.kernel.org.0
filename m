Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 201F22E2193
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 21:41:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726279AbgLWUiQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 15:38:16 -0500
Received: from mout.kundenserver.de ([212.227.126.131]:46343 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728388AbgLWUiQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 15:38:16 -0500
Received: from localhost.localdomain ([37.4.249.194]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MYvoW-1kWEA136Ui-00Ut0Z; Wed, 23 Dec 2020 21:35:33 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Eric Anholt <eric@anholt.net>, Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 1/4] drm/v3d: Use platform_get_irq_optional() to get optional IRQs
Date:   Wed, 23 Dec 2020 21:35:11 +0100
Message-Id: <1608755714-18233-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1608755714-18233-1-git-send-email-stefan.wahren@i2se.com>
References: <1608755714-18233-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:9nzyeCNrBl4880VD0YJLFgLNLN0yf1j5e9cyw4Bgg58zb9H9gt2
 TeOsVSK5gNMg5PVW72r+H4LhoU45tVt2+I03vfvJthQDCd35EMOjcN+W7TEqQ9addvV+BTP
 DoVBbybbRGaA6qINDSZSCRtvordI+Eg01u7H/12Mn1vvHbdBjyJkWT07Aah6HzT2jtp+fQq
 aO2wM+LCLLA/ZiYlpwAoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LhXh78ok1wk=:mLpuf/aIcU65/IR5dM8XXg
 pCMlEitzg8jrk5tNty6S/tODDdcqUmhvhBKMTqniMewpBA2CDpQxM7+muu0LscwgooVB5bP73
 VIW2ugVvulXAAncy5VyVHi6b8HYbQG5tWjxZ28x/fs83qJwCD6s6WxSxm8bGOmITfZOoRVeWO
 tB9/uFCZNjnfXi7nta2fYfWHluaSqXcqQAYkR3YzHB0GKa0AWtPn10M7vFhgGKBuVzUFDdNsu
 4KU+ExkuxlU9UP+7mBTixLF/D0B00Fe6peKATLzLCW9Vlg93YkwTpcrMDdpJeJtfHWTY0rw/d
 VMuu0kSTxyk4bIYOEr/lw0MOsQa1korwhFsnn8v5ZzRqpSBdVSRKFYFh8vzaqe3EMMJ30RVxc
 Zlz7a1xgZ38wU2Hif0sMO7aC98+Q6tAWkkwCB31kaGSWQ+thOD41ibCOGfGmmi7oD/+qMMfbJ
 lmPKdHr6VQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Aside from being more correct, the non optional version of the function
prints an error when failing to find the IRQ.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/gpu/drm/v3d/v3d_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/v3d/v3d_irq.c b/drivers/gpu/drm/v3d/v3d_irq.c
index c886864..0be2eb7 100644
--- a/drivers/gpu/drm/v3d/v3d_irq.c
+++ b/drivers/gpu/drm/v3d/v3d_irq.c
@@ -217,7 +217,7 @@ v3d_irq_init(struct v3d_dev *v3d)
 		V3D_CORE_WRITE(core, V3D_CTL_INT_CLR, V3D_CORE_IRQS);
 	V3D_WRITE(V3D_HUB_INT_CLR, V3D_HUB_IRQS);
 
-	irq1 = platform_get_irq(v3d_to_pdev(v3d), 1);
+	irq1 = platform_get_irq_optional(v3d_to_pdev(v3d), 1);
 	if (irq1 == -EPROBE_DEFER)
 		return irq1;
 	if (irq1 > 0) {
-- 
2.7.4

