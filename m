Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C2A52E2192
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 21:41:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729121AbgLWUiQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 15:38:16 -0500
Received: from mout.kundenserver.de ([212.227.126.134]:57307 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726279AbgLWUiQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 15:38:16 -0500
Received: from localhost.localdomain ([37.4.249.194]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MmlCY-1kAYeB1PYE-00jn21; Wed, 23 Dec 2020 21:35:33 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Eric Anholt <eric@anholt.net>, Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 0/4] drm/v3d: Minor improvements
Date:   Wed, 23 Dec 2020 21:35:10 +0100
Message-Id: <1608755714-18233-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:URpAklzhvwiv5UQCitv+mQOFz4loDhGztvesCF/DrDuQf6+eo0r
 l5zIxcZtlmYjVGTgpoLoxZCuJfqY4pceee8yOba8r3SJ7B4P3ap9csRl09oEX7KFllvOWKX
 wTig/uyXpHHwvCUBNGyCcM9J4Lj2kYtPqjykIf3rZ6jLr63CQxgD4CfThQZv/VUrfcaKhPQ
 Ds5Xg19Wpm3vcgYcZVSJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9MjLoggvIl0=:qG60BlSVZzZ79/jdZhCCD+
 NhKF9CiUyN1tdfKoyI0zvbtSoYHEmjCJDeoXzjF7S6mBP63M6DVIw6Wq5aWUk9Sl4cu37w9EJ
 VScWcaLxwDDmQEuxrRJzoBEg/kOc3UnfYkqo1NZHJfaGgWBjiLVEl7+VQ8wxtYgeEI+maj0jA
 JtpRY9eFYUmqCLjkELpkF8+QPAw5fBv3Dh+82tzUhcjrmuXoTnv6MnarrTlb7sQWJiupXIS1G
 rDGGaxBbGIGeC21Il07W4D9sjItXCEP8DgLeRX9H9DhP+wC8f2pKXFlb/RuA2UDH7kkczdCzW
 2k7EBnmIgqjJ6FWqxBtNgyYOUbqRoiYCLHjfVs5j6qNTAsor8ZtCwzJdUZjvQz201b21SJDxB
 c937DPoeY3s47HxMyhouI4z94acTceRDetrl5gdVkvv/ln45H38VHNIKMvRqs0YW2xq9IRW09
 JU6ZVwoORw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This small series of v3d patches is a preparation for the upcoming bcm2711
support. The bcm2711 support will be send separate, because it involves
bigger changes.

I'm not sure that the schema conversion patch is sufficient.

Patch 2,3 are directly taken from Raspberry Pi 4 vendor tree.

Changes in V2:
- add missing sob

Nicolas Saenz Julienne (1):
  drm/v3d: Use platform_get_irq_optional() to get optional IRQs

Phil Elwell (2):
  drm/v3d: Set dma_mask as well as coherent_dma_mask
  drm/v3d: Don't clear MMU control bits on exception

Stefan Wahren (1):
  dt-bindings: gpu: Convert v3d to json-schema

 .../devicetree/bindings/gpu/brcm,bcm-v3d.txt       | 33 ----------
 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 76 ++++++++++++++++++++++
 drivers/gpu/drm/v3d/v3d_drv.c                      |  4 +-
 drivers/gpu/drm/v3d/v3d_irq.c                      |  7 +-
 4 files changed, 80 insertions(+), 40 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.txt
 create mode 100644 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml

-- 
2.7.4

