Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4D632E2153
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 21:32:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728771AbgLWUah (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 15:30:37 -0500
Received: from mout.kundenserver.de ([212.227.17.13]:38093 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727187AbgLWUah (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 15:30:37 -0500
Received: from localhost.localdomain ([37.4.249.194]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MYvPq-1kWE1242ZE-00UqQg; Wed, 23 Dec 2020 21:27:53 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Eric Anholt <eric@anholt.net>, Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 0/4] drm/v3d: Minor improvements
Date:   Wed, 23 Dec 2020 21:27:21 +0100
Message-Id: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:eLT937f2cEY8ttpu9rSnMc1CBoudoq5pk7CxpZQWt6503QgiqGR
 Y1A5zf0zLI250QhlfHHGz8a+uQB+udt5k4h8ChBj9nJxevGT1Mj+a1spkazcI4nh7Wc7321
 SigWNL2G1pgO6ZdIzDMi13c0gTJ5iVdCmSP50RX3WHu3Cy2XiTF0rmGcMrhI20aVc+nMZ7M
 BXBpnvW0PfSqlAx6yu//w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jZ3+7xLXyDg=:dfshde98iD548DyrBrVlQ9
 j4lzsJLPRETIMC58GeDbEYtyKJG3duSE9tqfbR1C5nIJ6FGfHDY0wz7k1XJ5Gdn4X1SH0rwOy
 YbBn0P1UoBTNcVW8TgvntWORlVDf7zJ874nVL5LbFika06CmCW1ue2nzi5/bq2ut7cWmc9x7x
 IhSqgMXO8CWGeagFqtLvfL3k9VnJ/2tsL4fRzse/Gz+PlDSA4wI2WybDfGNlyeUfHYi41hmFk
 SUHLhkGkHM4FSjx70D52YmkSF01yXWqejiXZefTiHB12JTt5tiITO1caJjwUxVKqz5A37QgF5
 dcgfaJpbAtMZwGasVA3+JfXj1BLr6RUvqLGlBRM4RWkxitzsna7CDqbKGG7q4hVBemdZsg+5f
 2ZH7pmT4ZLGRgLVNeqQV3pDB2tSWmWbkF5Mbn/Gt5ucSMhbHBBVAF7qDeqE6NTPz81Marhssn
 4plPP7DMQQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This small series of v3d patches is a preparation for the upcoming bcm2711
support. The bcm2711 support will be send separate, because it involves
bigger changes.

I'm not sure that the schema conversion patch is sufficient.

Patch 2,3 are directly taken from Raspberry Pi 4 vendor tree.

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

