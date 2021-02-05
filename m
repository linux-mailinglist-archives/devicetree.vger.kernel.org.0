Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 592303105BE
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:21:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbhBEHUM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 02:20:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231403AbhBEHUF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 02:20:05 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3137C0617A7
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 23:18:47 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id 18so1601864pfz.3
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 23:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PpayG0fwWcWe/zBP0X3Dj60l0XxHvQg99iioDt7OmBA=;
        b=KfcdyuyYA6jzzVew83nfuESJC6ejYqO392+QLH8ookIBsE8a//uJ6shyFjIxTawSEx
         50tRzMj9BPEoFycONFDHB2hV75cXqSkuJpVQ4Yvh2LELHtxgFnMKCaBYFtmUmvvwARju
         pU2J8cTggCITiH7iFUwZg/LFWfTjNtrkKPFAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PpayG0fwWcWe/zBP0X3Dj60l0XxHvQg99iioDt7OmBA=;
        b=UEyfb7xj+UpHFuIlbVfZxxK8Glq2bGyO9kWvn3F/ydggTa4MpJyMRYr/kJk6ZhFqyx
         bTnrlVgNi7ELgW3IkbYdZDBGRVUpk+o+dDYFZEZbpfUHi2tTwmlov7L0Ruhpo5NIWje7
         VoJOZTlYUsbvn/YsXA7IympqIqRq8sJFFr0LUhV3HmZxW2ekeTrJ8Vf0pGEGro/5/NAf
         YgxzhQK3VUZm5SMsHAFCAmKleLwCXX06skV9VmHMhllZbr9DgnYfHAFscPmzv1+QXU0y
         AneBRoc1tRh73PISrJVxFjmFauJLBj6no4MbtCsiOB/QcIq++pvuNWhCYyXtyj9tbgsl
         BqAw==
X-Gm-Message-State: AOAM531s2Hx3qG7AUbLGz7nB2OjUDOGBT0mnVlOIYaqz2uUTUHc65n0H
        wcdszL1jzogeOq0yPvHBwLkfkA==
X-Google-Smtp-Source: ABdhPJxm+2WdObo4SdsQR/w/HUx4KWzdxV/x1irKXtFISDVOMtWQly0cd4rl/7cVSgi19wA3eERgEQ==
X-Received: by 2002:a63:bd4a:: with SMTP id d10mr3033211pgp.18.1612509527122;
        Thu, 04 Feb 2021 23:18:47 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ed70:6d43:9c6a:2e22])
        by smtp.gmail.com with ESMTPSA id oa10sm6292028pjb.45.2021.02.04.23.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 23:18:46 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Jassi Brar <jaswinder.singh@linaro.org>,
        Yongqiang Niu <yongqiang.niu@mediatek.com>,
        Fabien Parent <fparent@baylibre.com>,
        Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] mailbox: cmdq: add mt8192 support
Date:   Fri,  5 Feb 2021 15:18:33 +0800
Message-Id: <20210205071833.2707243-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
In-Reply-To: <20210205071833.2707243-1-hsinyi@chromium.org>
References: <20210205071833.2707243-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

add mt8192 support

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/mailbox/mtk-cmdq-mailbox.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 5665b6ea8119f..de4793ef6798a 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -36,6 +36,8 @@
 #define CMDQ_THR_WAIT_TOKEN		0x30
 #define CMDQ_THR_PRIORITY		0x40
 
+#define GCE_GCTL_VALUE			0x48
+
 #define CMDQ_THR_ACTIVE_SLOT_CYCLES	0x3200
 #define CMDQ_THR_ENABLED		0x1
 #define CMDQ_THR_DISABLED		0x0
@@ -76,11 +78,13 @@ struct cmdq {
 	struct clk		*clock;
 	bool			suspended;
 	u8			shift_pa;
+	bool			control_by_sw;
 };
 
 struct gce_plat {
 	u32 thread_nr;
 	u8 shift;
+	bool control_by_sw;
 };
 
 u8 cmdq_get_shift_pa(struct mbox_chan *chan)
@@ -121,6 +125,8 @@ static void cmdq_init(struct cmdq *cmdq)
 	int i;
 
 	WARN_ON(clk_enable(cmdq->clock) < 0);
+	if (cmdq->control_by_sw)
+		writel(0x7, cmdq->base + GCE_GCTL_VALUE);
 	writel(CMDQ_THR_ACTIVE_SLOT_CYCLES, cmdq->base + CMDQ_THR_SLOT_CYCLES);
 	for (i = 0; i <= CMDQ_MAX_EVENT; i++)
 		writel(i, cmdq->base + CMDQ_SYNC_TOKEN_UPDATE);
@@ -536,6 +542,7 @@ static int cmdq_probe(struct platform_device *pdev)
 
 	cmdq->thread_nr = plat_data->thread_nr;
 	cmdq->shift_pa = plat_data->shift;
+	cmdq->control_by_sw = plat_data->control_by_sw;
 	cmdq->irq_mask = GENMASK(cmdq->thread_nr - 1, 0);
 	err = devm_request_irq(dev, cmdq->irq, cmdq_irq_handler, IRQF_SHARED,
 			       "mtk_cmdq", cmdq);
@@ -601,11 +608,14 @@ static const struct dev_pm_ops cmdq_pm_ops = {
 static const struct gce_plat gce_plat_v2 = {.thread_nr = 16};
 static const struct gce_plat gce_plat_v3 = {.thread_nr = 24};
 static const struct gce_plat gce_plat_v4 = {.thread_nr = 24, .shift = 3};
+static const struct gce_plat gce_plat_v5 = {.thread_nr = 24, .shift = 3,
+					    .control_by_sw = true};
 
 static const struct of_device_id cmdq_of_ids[] = {
 	{.compatible = "mediatek,mt8173-gce", .data = (void *)&gce_plat_v2},
 	{.compatible = "mediatek,mt8183-gce", .data = (void *)&gce_plat_v3},
 	{.compatible = "mediatek,mt6779-gce", .data = (void *)&gce_plat_v4},
+	{.compatible = "mediatek,mt8192-gce", .data = (void *)&gce_plat_v5},
 	{}
 };
 
-- 
2.30.0.365.g02bc693789-goog

