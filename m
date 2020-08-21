Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E64FC24D2B9
	for <lists+devicetree@lfdr.de>; Fri, 21 Aug 2020 12:38:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727794AbgHUKiB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Aug 2020 06:38:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728778AbgHUKhb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Aug 2020 06:37:31 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C90A1C06134C
        for <devicetree@vger.kernel.org>; Fri, 21 Aug 2020 03:37:30 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id o13so822722pgf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Aug 2020 03:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p5ysidPZyRWdeECygkw5/tjlDUm7P4m3Td9H5p5iiOo=;
        b=QllXcQvafwdxZtqCOWYNuOpr5bk3EVyJhW4ve3i3V6F8CPxZfPfuCYKOpteZvfbSWQ
         jVDZ9ABjjKcr3jDHnLC+xDtUicUOM8Ld4koytB4iMeEd2VkFkAGxhoX/ZVNmFq4dX7iR
         5FEkIlSTKHlJdiaGljctSN4bguGNRwS27iCXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p5ysidPZyRWdeECygkw5/tjlDUm7P4m3Td9H5p5iiOo=;
        b=ACBoIL6RNGvLvGqqvyCjQlv20YFFUy2BCqfAFGePSB3ZyUWt/mzDw7vIfcDUoHHZ3g
         UETSMqzdwMWvyVXDi5gBqPN+KlzkzsCOQznRpHbTzPkUaqGQASC54Szqo/GNA6BPH36g
         Qov0sMIN7IYkz0Q2n+FOh+WKn9HxGUdqa48dbHSx8WX1r47qhooZjsvkp1I+zimCgVK7
         UxqzNfT3SYW67jUz8wJD4/gELRNfNsuGMZFQRJpfxUmi2AZmCpX6StXuQq//PnsdVvO0
         t9SE3rDT8zQOwETNI7VZPKMukUHl0b6IT8Lw8N0nNk2iFbZsIfo0JVQ2oY4mn8d7xBi/
         i2iA==
X-Gm-Message-State: AOAM531x52d5kft4Q9/uEocXUC67a9gQ6wdHqi5IgVkX5NC4H9UAs2Ch
        GbjwLkm9A+QnZ1+9o6C/0WTVQQ==
X-Google-Smtp-Source: ABdhPJwFeTw+XO7IIO3hIBMzDU1dUX0aLZcDBZNoCjlCGYvip1tLKkM+/8qFTxgpvgudTqGdGsdaUg==
X-Received: by 2002:a65:480a:: with SMTP id h10mr1840003pgs.304.1598006250395;
        Fri, 21 Aug 2020 03:37:30 -0700 (PDT)
Received: from acourbot.tok.corp.google.com ([2401:fa00:8f:203:eeb1:d7ff:fe57:b7e5])
        by smtp.gmail.com with ESMTPSA id y20sm2081525pfn.183.2020.08.21.03.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 03:37:29 -0700 (PDT)
From:   Alexandre Courbot <acourbot@chromium.org>
To:     Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Yunfei Dong <yunfei.dong@mediatek.com>,
        Maoguang Meng <maoguang.meng@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alexandre Courbot <acourbot@chromium.org>
Subject: [PATCH v4 17/17] media: mtk-vcodec: venc: fix invalid time per frame in S_PARM
Date:   Fri, 21 Aug 2020 19:36:08 +0900
Message-Id: <20200821103608.2310097-18-acourbot@chromium.org>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
In-Reply-To: <20200821103608.2310097-1-acourbot@chromium.org>
References: <20200821103608.2310097-1-acourbot@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v4l2-compliance expects the driver to adjust the time per frame if it is
invalid (numerator or denominator set to 0). Adjust it to the default
value in these cases.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
index 09baac2dbc36..82b04714f750 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
@@ -200,14 +200,18 @@ static int vidioc_venc_s_parm(struct file *file, void *priv,
 			      struct v4l2_streamparm *a)
 {
 	struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);
+	struct v4l2_fract *timeperframe = &a->parm.output.timeperframe;
 
 	if (a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
 		return -EINVAL;
 
-	ctx->enc_params.framerate_num =
-			a->parm.output.timeperframe.denominator;
-	ctx->enc_params.framerate_denom =
-			a->parm.output.timeperframe.numerator;
+	if (timeperframe->numerator == 0 || timeperframe->denominator == 0) {
+		timeperframe->numerator = MTK_DEFAULT_FRAMERATE_NUM;
+		timeperframe->denominator = MTK_DEFAULT_FRAMERATE_DENOM;
+	}
+
+	ctx->enc_params.framerate_num = timeperframe->denominator;
+	ctx->enc_params.framerate_denom = timeperframe->numerator;
 	ctx->param_change |= MTK_ENCODE_PARAM_FRAMERATE;
 
 	a->parm.output.capability = V4L2_CAP_TIMEPERFRAME;
-- 
2.28.0.297.g1956fa8f8d-goog

