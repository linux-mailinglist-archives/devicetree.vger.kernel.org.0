Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DFFF45A140
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 12:21:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235321AbhKWLYT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 06:24:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235207AbhKWLYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 06:24:18 -0500
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1429C06173E
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 03:21:10 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id y8so16816083plg.1
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 03:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5/NUU473gHgJJWAHyz9icycAmdo+qfzcO9MMsTUYLCA=;
        b=Ka+/WtPAVKmsC47ebx/EttMPimSyaFaQsXvSwohDRgg53jo8emMNbvUMSjBffFZJiF
         6mmEV31XO/9nn98pDJV/kWkNmFi5luffIqiHkegaqh/MUKTubaMVlPLwa07SSu/o/XsD
         8ngdYw/RZqDR/Hmx12cSy0gEWVZ3Gd2d3Mktk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5/NUU473gHgJJWAHyz9icycAmdo+qfzcO9MMsTUYLCA=;
        b=mXXQkPYSB+wq3IQl1tULgK+HGjMJ3qD+Sb+GhdthzH9pq/pW3fAcF15jqJxcit13Tv
         qc25AEelZW/WivI8J+pF+sEIc/vEnA+UOFWhss69buxbH33X8C611x1fPl1QgR5Hwoln
         7p17lzU/m1oXv3D1PRsHov+C/6uaVR7U+bmYYnmG9xQjUrUg9tWEvveXWINU7s4zS5cX
         Nncax7qWwn10+xgHozH8Cb0Qsx/7rsoZUFrNV0f3VwGL2KomvzbEWyiS48OW3xi3tGBi
         a+WP0jLTAtv3W7cf6Wic78tSd3W2o98iZDi3nuuZYdMtNJWRmEhr/fn7xf8yd14HIlyS
         1KuA==
X-Gm-Message-State: AOAM531fzhXUi8UlPsR2Nm+YtrMkUzUEczPU0pgLc1A0q929o21g5ZHK
        pJzZe8T6bS9lwMop9cVRTjJJwiJXPLP+SA==
X-Google-Smtp-Source: ABdhPJzZX7TeNDOF6tm1dgQN6UgDtm8Er0h77Xe7AqW6C2wdt/CMcVsKuhDG9eZ4EtpKo4xugVw3nw==
X-Received: by 2002:a17:902:e5ce:b0:142:780:78db with SMTP id u14-20020a170902e5ce00b00142078078dbmr5853227plf.12.1637666470227;
        Tue, 23 Nov 2021 03:21:10 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:d1ae:c331:ed2a:15e9])
        by smtp.gmail.com with ESMTPSA id 63sm11093914pfz.119.2021.11.23.03.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Nov 2021 03:21:09 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Christoph Hellwig <hch@infradead.org>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Robin Murphy <robin.murphy@arm.com>,
        iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        - <devicetree-spec@vger.kernel.org>, devicetree@vger.kernel.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, senozhatsky@chromium.org,
        tfiga@chromium.org
Subject: [PATCH 0/3] Allow restricted-dma-pool to customize IO_TLB_SEGSIZE
Date:   Tue, 23 Nov 2021 19:21:01 +0800
Message-Id: <20211123112104.3530135-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Default IO_TLB_SEGSIZE (128) slabs may be not enough for some use cases.
This series adds support to customize io_tlb_segsize for each
restricted-dma-pool.

Example use case:

mtk-isp drivers[1] are controlled by mtk-scp[2] and allocate memory through
mtk-scp. In order to use the noncontiguous DMA API[3], we need to use
the swiotlb pool. mtk-scp needs to allocate memory with 2560 slabs.
mtk-isp drivers also needs to allocate memory with 200+ slabs. Both are
larger than the default IO_TLB_SEGSIZE (128) slabs.

[1] (not in upstream) https://patchwork.kernel.org/project/linux-media/cover/20190611035344.29814-1-jungo.lin@mediatek.com/
[2] https://elixir.bootlin.com/linux/latest/source/drivers/remoteproc/mtk_scp.c
[3] https://patchwork.kernel.org/project/linux-media/cover/20210909112430.61243-1-senozhatsky@chromium.org/

Hsin-Yi Wang (3):
  dma: swiotlb: Allow restricted-dma-pool to customize IO_TLB_SEGSIZE
  dt-bindings: Add io-tlb-segsize property for restricted-dma-pool
  arm64: dts: mt8183: use restricted swiotlb for scp mem

 .../reserved-memory/shared-dma-pool.yaml      |  8 +++++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  4 +--
 include/linux/swiotlb.h                       |  1 +
 kernel/dma/swiotlb.c                          | 34 ++++++++++++++-----
 4 files changed, 37 insertions(+), 10 deletions(-)

-- 
2.34.0.rc2.393.gf8c9666880-goog

