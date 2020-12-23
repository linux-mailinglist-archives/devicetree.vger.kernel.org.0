Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E0EC2E2154
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 21:32:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728791AbgLWUah (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 15:30:37 -0500
Received: from mout.kundenserver.de ([217.72.192.75]:48961 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728524AbgLWUah (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 15:30:37 -0500
Received: from localhost.localdomain ([37.4.249.194]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N6svJ-1jzMda1QVT-018INl; Wed, 23 Dec 2020 21:27:53 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Eric Anholt <eric@anholt.net>, Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] drm/v3d: Use platform_get_irq_optional() to get optional IRQs
Date:   Wed, 23 Dec 2020 21:27:22 +0100
Message-Id: <1608755245-18069-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
References: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:UmY82BR7rIwpmorUyFeWjROyE6WY47qOwlB8r+JVH4RCPmQCUcf
 /JAGJRQ1tV8xmoYrFUuafXTqdVrjQ9cCxvPb4ZSUL/Mq42AN8lqRPE4Sx65leZXNTl+2pbu
 QQmcwUxOscziTZqGaYEjMAodD1vdQ6GbqkTIBJKxxQGAzh55CkCcFgPE9TsM90GsXXxo0KW
 SehPGRQ+7K4fvJFfyJReg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YpfT4Hbc914=:vzmdHssbJr5JSEhdeJHnM3
 PvEO9/QH1pUQ9Pe/xXra0Ojd1XPu/bPXF0ua4n8X4PvsgAMv1QRdd8Oy++HRU7c5Y80o9oI8p
 CnWvWT92nKFGy3Ko+Gf78lQgTgLOGx6A2nqgBCQ+YZhasOQiolVi58sEgPw0drfZkut2QUoDz
 WQH8TZqc5SLA7cfRNiVTyFI8qPZqUnGGSCXUL3YeaFf0Sou7SdeILH7bvmvfac8QZpuffq9hy
 pNE2AidnNuUtUNrdPz4lEefGglvJBfUNlAFp6rJyVrOSPJVrQaIuh97Hm3gu9eI9haQmMNiVF
 L7kMCxKjofSbAkmIbwr0AXfanvhWfDMmqDReZtP759lnhagJs52yFfs0ivn1MjZ0tti6pZeK9
 xi1N9//gqZlosRMN9zQtKIJd3ZDHTPpb7odrOGNZFzyfe6+qse0DTHNxWELfhGptzs0m1Wqp5
 jVE89yAs8A==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Aside from being more correct, the non optional version of the function
prints an error when failing to find the IRQ.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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

