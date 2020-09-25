Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 752FF2780EC
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 08:54:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727204AbgIYGyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 02:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727164AbgIYGyY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Sep 2020 02:54:24 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E94EDC0613D4
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 23:54:23 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id g29so1742760pgl.2
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 23:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vw1KoQ4s8DeBpjj9MyCO9ispMM5JjMGFm+aZoaWCoVI=;
        b=buj5lWW/a+hMjzNtcF/uMLSF78MUB7xqm+T2nNX04mS+0nYwnCiB3E3vUa5Dd5jiNj
         i36ji4XPTi6D0JoZkkMNBs31NHdmTWkPUc8AwirL2lf/k3cOryvCDvXcYn9xjj5CV4EY
         lOdRjxs4FSfryaOXZ3QyOkaIa7Nbgrcw044Nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vw1KoQ4s8DeBpjj9MyCO9ispMM5JjMGFm+aZoaWCoVI=;
        b=s9FlRD9tqPOZ5nyMYkxtm3rjgdN0Z2A+aGNYevxNHYPT8eLuKUDYSRULh5xlXggEIK
         E0yAJFCFXdjnbvswi8G6Hi+tF3bBB+cLQ2MBux85IpOhiSBpOCdwPZ/E4MirDqDp2ogb
         6kcchcvlFI4GM5AKfBkoLNiYOTb+soqU3oMCSLKeGpRhgAOJDE8Oyz9St4hgCA715CUX
         1oN9APuYsNTrARyTNQHIX9sAFj316a/daym7B+V7XE46Tq8W5YYrkB2uttBACpqRtyIb
         iJL529jIrw7tQc7jVL9q5HXxcp7Ror+56l+u2SGYZGe0i8sR1QbJ3TmIp/OdST5jQf5Y
         KpIg==
X-Gm-Message-State: AOAM5335KkMSZBP5/bT8uyBJVD7GalsfcwbyC2/a/WNpU7k5ramkDNBg
        F+03Q7WVlbqXp/QetfCB9ek4uQ==
X-Google-Smtp-Source: ABdhPJxgajGnraK24ZhbVuK9fVP7hcc5f5AZ8YpbNmdibOe6j74I/hhduxVUpobEzgb6A2dXHC7BZA==
X-Received: by 2002:aa7:85d4:0:b029:142:440b:fcd7 with SMTP id z20-20020aa785d40000b0290142440bfcd7mr2754055pfn.36.1601016863314;
        Thu, 24 Sep 2020 23:54:23 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id x27sm1549612pfp.128.2020.09.24.23.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 23:54:22 -0700 (PDT)
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
Subject: [PATCH v3 0/6] spi: spi-mtk-nor: Add mt8192 support
Date:   Fri, 25 Sep 2020 14:54:11 +0800
Message-Id: <20200925065418.1077472-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds 36bit dma address and power management
supports for mt8192-nor.

Changes in v3:
- Fix a bugfix of v2 in checking spi memory operation.
- split read_dma function into two (normal/bounce)
- Support 7bytes generic spi xfer

Changes in v2:
- Add power management support
- Fix bugs in checking spi memory operation.
- use dma_alloc_coherent for allocating bounce buffer
- code cleanups

Ikjoon Jang (6):
  dt-bindings: spi: add mt8192-nor compatible string
  spi: spi-mtk-nor: fix mishandled logics in checking SPI memory
    operation
  spi: spi-mtk-nor: support 7 bytes transfer of generic spi
  spi: spi-mtk-nor: use dma_alloc_coherent() for bounce buffer
  spi: spi-mtk-nor: support 36bit dma addressing
  spi: spi-mtk-nor: Add power management support

 .../bindings/spi/mediatek,spi-mtk-nor.yaml    |   1 +
 drivers/spi/spi-mtk-nor.c                     | 333 ++++++++++++------
 2 files changed, 230 insertions(+), 104 deletions(-)

-- 
2.28.0.681.g6f77f65b4e-goog

