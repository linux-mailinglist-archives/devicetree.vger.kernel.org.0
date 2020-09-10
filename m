Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BD5F263BC0
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 06:11:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725771AbgIJELT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 00:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725830AbgIJELN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 00:11:13 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F4167C061757
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 21:11:12 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id k13so270117plk.3
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 21:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SjTp1hGds9ZwoOkcpeoGQakZnJuh6PzHnYd7zFegRU8=;
        b=NRiAcWHkL9seEwOjmyIZa3MCaZMmxBU6gYtM36EnQkvpXPeKcxLiCF/OKJTBvSJ+e9
         Jk44zmGowKGaPR4fIlaRKZhunvN6QMSFIzxG0PZ74x8bt2El2eBZRz7pVHbyykM5Acow
         vDBOeXBT0yHaRFahCLTwhTSWPFU+gcQiUKzBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SjTp1hGds9ZwoOkcpeoGQakZnJuh6PzHnYd7zFegRU8=;
        b=Ka5P82wyIaCIUgsWcCZAmyZpglqUCnnD8ITz36NNqpPc3Yu7y2JN0Oiyb1QvqFTIGY
         gzQ5oc9deNGLCiyWv2CQxfGra1vbjVRkqpJGWxtYdBK2Qo+u25WOZSVvUyUb+/TY30+y
         RPH/v8kuDs+0RTlp1CiBFCX/cwpqImulyqeH6N2BTnj0qApSl8eXp529ZOZKkfusfFwO
         TgfeRMwSU4/AOJ9vgDH9dBcIqgKQy4w8XZm0Kk9Jy19n2FnbvRVc6C7bsuqX1gqJaBe/
         IJDUYAn2Q9BcdB+zAGZhQwz6iC5/K5/DAkG19d7ynVupXl8BtHiYtHqwRu3xOGTEsm7h
         gLQQ==
X-Gm-Message-State: AOAM532I2Ic2ulSJ4W+bkFntbEQcs/N6EtobH9nd4LyFU8V9jiKS4i3u
        zpjiVulhIbCB0Gm6PvoQrHIePw==
X-Google-Smtp-Source: ABdhPJy/kt256pAD+9kwVUTT8gpc//AaRJDaKiqodWQDyyYH+29li3hwTA00uoaR3VXRStW5UdRJ1g==
X-Received: by 2002:a17:90a:8593:: with SMTP id m19mr3592561pjn.104.1599711068389;
        Wed, 09 Sep 2020 21:11:08 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id z11sm4266169pfc.181.2020.09.09.21.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 21:11:07 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Ikjoon Jang <ikjn@chromium.org>,
        Bayi Cheng <bayi.cheng@mediatek.com>,
        Chuanhong Guo <gch981213@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 0/2] Add 36bit dma support to mediatek spi-nor controller.
Date:   Thu, 10 Sep 2020 12:10:59 +0800
Message-Id: <20200910041101.1695195-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mt8192-nor has 36bit addressing support, this patch adds 36bit address
handlings to spi-mtk-nor.

Ikjoon Jang (2):
  dt-bindings: spi: add mt8192-nor compatible string
  spi: spi-mtk-nor: support 36bit dma addressing to mediatek spi-nor

 .../bindings/spi/mediatek,spi-mtk-nor.yaml    |  1 +
 drivers/spi/spi-mtk-nor.c                     | 19 ++++++++++++++++++-
 2 files changed, 19 insertions(+), 1 deletion(-)

-- 
2.28.0.526.ge36021eeef-goog

