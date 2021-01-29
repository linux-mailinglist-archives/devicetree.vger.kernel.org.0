Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CB3130867D
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 08:36:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232091AbhA2Hf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 02:35:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232019AbhA2HfW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 02:35:22 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BA2BC061573
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 23:34:42 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id t29so5685732pfg.11
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 23:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2+JP5pdQIMiJpdb9A5szcfBUiP1gg4B51D5kz0l1qAg=;
        b=E09IVCDKJaw1pM4q9Xnmre77m650iwDkHBLJ3i/9bSNUoekaS/8ot9t6W56VmjAKwa
         QjiDOqS16pIL5sVYk5KttRbM8MdUaKpIQ541ryhlPLJo44VwPoArxWoB+MH/B7/QUGjU
         5V3VMnLqlD7cvK4kj/n/txS4UXBazFby9qp6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2+JP5pdQIMiJpdb9A5szcfBUiP1gg4B51D5kz0l1qAg=;
        b=SgdfpNYjmCm4YLL/uawVx6HnPxB8W6ezPMgNpd17aJ4eeTDMT9csRINXXadJR/w8f8
         gIVR9UWSToKM/1ubeEZPqJNdJJs5Im54bi4Mle405f8G6xxvKvFLyghUXa9GiMayv2He
         eNEY2VztTrf1lZ13R/k5yZSzhlvLMIOtb7EtF6pY788C6Isz0aFrr0lhD7p1o61j7jyB
         n+6QCU01Ed1yny+hHuNOwU8ngWj1unqak0pCrelcvGtYQLN9PIEoI0w0zN9DUTflY2z9
         0+XZRuelZYhG1qqhOYKuFI6ejIgDEioLucGqBa0EaAI8R7IwExJkB/1uOR6LSQ2kCdvB
         /3Cg==
X-Gm-Message-State: AOAM530DImXLq8NV+uVJA0nbarieCy8Ozcx49+4UgHvBsyjYreuTNuOv
        vNycUvLDxUltFsRQtZ1VFJcEzQ==
X-Google-Smtp-Source: ABdhPJyTJmer89hnTyIzUeFUMxU3MW8yNhou7rK4sLjU8tB7m00M0/MUS/wOTfNcVHzJo8qqSaZxiA==
X-Received: by 2002:a05:6a00:14c8:b029:1bb:8436:497c with SMTP id w8-20020a056a0014c8b02901bb8436497cmr3190934pfu.68.1611905681713;
        Thu, 28 Jan 2021 23:34:41 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:51f1:c468:a70b:7c09])
        by smtp.gmail.com with ESMTPSA id p1sm7689980pfn.21.2021.01.28.23.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 23:34:41 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v4 0/8] drm/mediatek: add support for mediatek SOC MT8192
Date:   Fri, 29 Jan 2021 15:34:28 +0800
Message-Id: <20210129073436.2429834-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series are based on kernel/git/chunkuang.hu/linux.git mediatek-drm-next
This series also depends on component support in mmsys[1]:
- [v4,06/10] soc: mediatek: mmsys: add component OVL_2L2
- [v4,07/10] soc: mediatek: mmsys: add component POSTMASK
- [v4,08/10] soc: mediatek: mmsys: add component RDMA4

[1] https://patchwork.kernel.org/project/linux-mediatek/patch/1609815993-22744-7-git-send-email-yongqiang.niu@mediatek.com/


Change since v3:
- change several function to rebase to mediatek-drm-next
- drop pm runtime patches due to it's not related to mt8192 support
- fix review comments in v3

Changes since v2:
- fix review comment in v2
- add pm runtime for gamma and color 
- move ddp path select patch to mmsys series
- remove some useless patch

Yongqiang Niu (8):
  drm/mediatek: add component OVL_2L2
  drm/mediatek: add component POSTMASK
  drm/mediatek: add component RDMA4
  drm/mediatek: enable OVL_LAYER_SMI_ID_EN for multi-layer usecase
  drm/mediatek: separate ccorr module
  drm/mediatek: add matrix bits private data for ccorr
  soc: mediatek: add mtk mutex support for MT8192
  drm/mediatek: add support for mediatek SOC MT8192

 drivers/gpu/drm/mediatek/Makefile            |   4 +-
 drivers/gpu/drm/mediatek/mtk_disp_ccorr.c    | 244 +++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_disp_drv.h      |  17 ++
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c      |  37 +++
 drivers/gpu/drm/mediatek/mtk_disp_postmask.c | 162 ++++++++++++
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c     |   6 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c  | 108 ++------
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h  |   1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c       |  52 +++-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h       |   2 +
 drivers/soc/mediatek/mtk-mutex.c             |  35 +++
 11 files changed, 572 insertions(+), 96 deletions(-)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_postmask.c

-- 
2.30.0.365.g02bc693789-goog

