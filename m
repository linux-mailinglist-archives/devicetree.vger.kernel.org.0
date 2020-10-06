Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 673502847E4
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 09:54:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726849AbgJFHyQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 03:54:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725912AbgJFHyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 03:54:16 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06345C0613D1
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 00:54:13 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id y20so816115pll.12
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 00:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pn/wc+bv9MvSQdOJW1Jb3BA5CiEn9SyA0DgRDMi+3Ec=;
        b=jnrqiy+PEyHmqOdKQpRiNZc2B9pj0yNj+q0J+7yu6pjJe84nEEIajU6P/iv+lcG2ps
         taqxtHaEfZK3j9uFREtuzmFl9eapXiQoVBg+/2BKtvE+Jv32UnZbwSdg+tQhYilVE1pB
         N9LaZlZ+o0439ZNk6c5/WIr4MphQ9cz5+AFXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pn/wc+bv9MvSQdOJW1Jb3BA5CiEn9SyA0DgRDMi+3Ec=;
        b=OaTCElt5f4b4MO8sgnLu+/cxTahSOF26gsOId9UFN6x4siy7GQQVcufHS1kPOgpy/t
         RsyY+gly5mpzny021VYwJyPF9VUfPucDLETSFuW5OerpLQPeLTy04t2nnZj9Uk4iE0DY
         Jj57KlQrfcYQ9Uvnm0HkoXSCzsABZfDhfGLFLAXkKM7Aba9NV4BpVC33+CZ/qFSBOuX7
         9LuOhm0WPgWUY3nuD9U2LqJr2GsaHBa7/cgt8v3fW5tdOUKPTJE/3cKfEWQDjJ6t/+oJ
         MLY84xLlU6RfOOgBU4yXReIFKvAkCE0/KlVa0RZJv5bOYwXp2JB3diblghh++dsGsl6+
         GJlQ==
X-Gm-Message-State: AOAM533KJ7UDQ6tEtgFA3PSKj5Dua/5j9DOjM4kTi8AsCQoCaUZaWZlT
        TCltI8w5dFN8ehlofz8jRxXUOA==
X-Google-Smtp-Source: ABdhPJx5OPq6K6XkaaIZsYsK+H0mb4/hLwZpnh5ySm23bU5vcYbJ2YvYJEYeLvpJ7zXkxVXimWHMpw==
X-Received: by 2002:a17:90a:a101:: with SMTP id s1mr3014013pjp.220.1601970853389;
        Tue, 06 Oct 2020 00:54:13 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id r6sm2545147pfq.11.2020.10.06.00.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 00:54:12 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-mtd@lists.infradead.org
Cc:     Ikjoon Jang <ikjn@chromium.org>,
        Bayi Cheng <bayi.cheng@mediatek.com>,
        Chuanhong Guo <gch981213@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v5 0/4] spi: spi-mtk-nor: Add mt8192 support.
Date:   Tue,  6 Oct 2020 15:54:01 +0800
Message-Id: <20201006075405.11658-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.28.0.806.g8561365e88-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds 36bit dma address and power management
supports for mt8192-nor.

Changes in v5:
- Rebase from merge conflict

Changes in v4:
- Drop two patches from a list, addressed by an another series
- Fix 0-day ci 'shift-count-overflow' warning

Changes in v3:
- Fix a bugfix of v2 in checking spi memory operation.
- split read_dma function into two (normal/bounce)
- Support 7bytes generic spi xfer

Changes in v2:
- Add power management support
- Fix bugs in checking spi memory operation.
- use dma_alloc_coherent for allocating bounce buffer
- code cleanups

Ikjoon Jang (4):
  dt-bindings: spi: add mt8192-nor compatible string
  spi: spi-mtk-nor: use dma_alloc_coherent() for bounce buffer
  spi: spi-mtk-nor: support 36bit dma addressing
  spi: spi-mtk-nor: Add power management support

 .../bindings/spi/mediatek,spi-mtk-nor.yaml    |   1 +
 drivers/spi/spi-mtk-nor.c                     | 211 ++++++++++++------
 2 files changed, 148 insertions(+), 64 deletions(-)

-- 
2.28.0.806.g8561365e88-goog

