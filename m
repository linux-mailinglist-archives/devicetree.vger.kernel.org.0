Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03794297089
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 15:31:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S464812AbgJWNbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 09:31:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S374502AbgJWNbh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 09:31:37 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9C3CC0613CE
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:31:35 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id q5so1578969wmq.0
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x0g5y25aamnJmaPgpvLpUPjcowdDVx0DC7LsyytrI5g=;
        b=MlR6wK4kuxU+Ax9dRf4/DR9QDEr/ma6S6Y2sM20AWbwA7RfrDwTOOLYdZaax7G0v1y
         zsFqOdkKJfXeOi3Yyhs6Zhol6iJX6NsnuMRaRnAoCfQxi4JEXtn5GNKWELkTTWb8WdHn
         ajtN6cIlBo/KjFgAgqvJLHPTaCSxPtg6NuFnBiti0+aY7y+Wnahua1t8VjnSDG5TyTLx
         L1xGw/h7u5Qp+D2SR2Y9/0TmbwOwUPdOkLI6ydPX2T/GrZA/QQDjLoEen9L6CFXZVUxy
         /N8Bwq19JrKxMCxvNX6YwY8+cSYhFxAnjWHLzaBIJHX31b0Ppkepn0BNjIrPH6qfGGsh
         CqsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x0g5y25aamnJmaPgpvLpUPjcowdDVx0DC7LsyytrI5g=;
        b=rAyXIpoe1ZHjqh062fz0KXdAeC9K+hjqXoO6uQfOtWJiBuc1m0q5a3VNhKj7P/rY/I
         2UnsJC9lhfd7GQYGzMfGh9b7ne8K5VzKdx7Nl+kQBOUduvBxJKJbrV5vqL0j2QA5OGz0
         1zLel8z12V6wDe/pT4L9QYOT9p6AqDrwHoiY9n5lYXB1Nkz3Xsbp/ZVXW9om6jx48s1B
         5KmbnyC5KmAlmH921BsYORMPDi7RGTe78pWJT1nyVXmV6Q9/UKP6eaH8BXn003gpEQRO
         wKWQ55U5iG9dUfUv/prNw1fTaPVJO4Jb4jy5Hf2GQQZGLuLvId33OObCD/+FnTfrOKEc
         imKQ==
X-Gm-Message-State: AOAM531mbgK77fZN8coHUjNeJVidXBTlyoCeknbRLCTX9/1VMTwZUFle
        SHdgzwOHyzQK+BynZAooa54Nvg==
X-Google-Smtp-Source: ABdhPJx3KXkKjPhuP5F8RgAsbrby6ayVAwe3PQJpsJ7APdCh/zspU8uMjMlSQ4RwHHypPHprj6j/XA==
X-Received: by 2002:a1c:bb84:: with SMTP id l126mr2267365wmf.141.1603459894574;
        Fri, 23 Oct 2020 06:31:34 -0700 (PDT)
Received: from localhost.localdomain (211.160.185.81.rev.sfr.net. [81.185.160.211])
        by smtp.gmail.com with ESMTPSA id f6sm3146107wru.50.2020.10.23.06.31.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 06:31:33 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, daniel@ffwll.ch,
        airlied@linux.ie, p.zabel@pengutronix.de, chunkuang.hu@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH v2 0/5] Add DRM/DSI support for MT8167 SoC
Date:   Fri, 23 Oct 2020 15:31:25 +0200
Message-Id: <20201023133130.194140-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds support for DSI on the MT8167 SoC. HDMI is not yet supported
as secondary display path.

mmsys is not supported by this series and will be sent in a seperate series
based on [0].

[0] https://patchwork.kernel.org/project/linux-mediatek/list/?series=360447

Changelog:
	V2: removed 3 patches

Fabien Parent (5):
  dt-bindings: display: mediatek: disp: add documentation for MT8167 SoC
  dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC
  drm/mediatek: add disp-color MT8167 support
  drm/mediatek: add DDP support for MT8167
  drm/mediatek: Add support for main DDP path on MT8167

 .../display/mediatek/mediatek,disp.txt        |  4 +-
 .../display/mediatek/mediatek,dsi.txt         |  4 +-
 drivers/gpu/drm/mediatek/mtk_disp_color.c     |  7 +++
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c        | 47 +++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 38 +++++++++++++++
 5 files changed, 96 insertions(+), 4 deletions(-)

-- 
2.28.0

