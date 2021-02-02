Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9219E30B94E
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 09:14:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbhBBINg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 03:13:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231324AbhBBINZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 03:13:25 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99213C0613D6
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 00:12:45 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id q131so13799632pfq.10
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 00:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CrTdRFcnWQzuRTgnluBbuBsSEw406Rl06q57E8Rqlko=;
        b=cXgC+/ID7uN0KeiEPRB8ZyCAqF/n44TWLPfMud8lHdekuNyRfsiUfhrv8rqsQONdqL
         j53Zj4C6D1B3jspMgWZw3MrYY0ar31fWmOjdBrCFcQIsBJT1/PjFjZ79tsFNMH8G9Rnc
         xJfNxJUQ13Oj+7H4l3/YlPd6dvClk/Abu3gOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CrTdRFcnWQzuRTgnluBbuBsSEw406Rl06q57E8Rqlko=;
        b=FkwGCwWEVc8b4kiae/Ul3uiYljw/cGE3yacTAdkbuJWCmSOdB/vFTKqqa9+jmyze8D
         dTU3vqCqPvkCdlAX3vVgwF1ARXQjRmspFF/M68is8d2HRUgeZBL2SRqKurqlfHcDyR1B
         tGoDVGAXSnrIQMTPvovSlu7nSTr0ZtvTCoECVauvGW2Nl0cO1EovxFyHPpeo0jbePHHO
         fo+bQJ0xJQ/lURxteRxFGPxMnhmOlbglW7UACcmgeig2CWf6d60ipbjkPJmeY2pFWwcJ
         Qqh+anQupN87k9dCCnmXwuE4+plEQBBbxUUDJeofOOCdBNtgKZFXfzsxH98r3tsKEbx/
         jr+g==
X-Gm-Message-State: AOAM530PDkBHG32DLvI8YD68vQeFO/ClILZOXPXaW9T+6aE8Bz4YyHzG
        WLrqlZF9WEixGtXQWLxc1KPYGA==
X-Google-Smtp-Source: ABdhPJzwA6TM5xlw4fGkgp1hD5x1e44JtTKG1EamjsOqepbXH/0fOeChNqzkXLXr2SIlSCiPFNYE0g==
X-Received: by 2002:a63:ec09:: with SMTP id j9mr11561675pgh.179.1612253565186;
        Tue, 02 Feb 2021 00:12:45 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:743e:7944:50c8:ff72])
        by smtp.gmail.com with ESMTPSA id c8sm21343325pfo.148.2021.02.02.00.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 00:12:44 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v6 1/8] drm/mediatek: add component OVL_2L2
Date:   Tue,  2 Feb 2021 16:12:30 +0800
Message-Id: <20210202081237.774442-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
In-Reply-To: <20210202081237.774442-1-hsinyi@chromium.org>
References: <20210202081237.774442-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

This patch add component OVL_2L2

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 0444b429daf00..b6c4e73031ca6 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -477,6 +477,7 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_ID_MAX] = {
 	[DDP_COMPONENT_OVL1]	= { MTK_DISP_OVL,	1, &ddp_ovl },
 	[DDP_COMPONENT_OVL_2L0]	= { MTK_DISP_OVL_2L,	0, &ddp_ovl },
 	[DDP_COMPONENT_OVL_2L1]	= { MTK_DISP_OVL_2L,	1, &ddp_ovl },
+	[DDP_COMPONENT_OVL_2L2] = { MTK_DISP_OVL_2L,    2, &ddp_ovl },
 	[DDP_COMPONENT_PWM0]	= { MTK_DISP_PWM,	0, NULL },
 	[DDP_COMPONENT_PWM1]	= { MTK_DISP_PWM,	1, NULL },
 	[DDP_COMPONENT_PWM2]	= { MTK_DISP_PWM,	2, NULL },
-- 
2.30.0.365.g02bc693789-goog

