Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD67424D2AF
	for <lists+devicetree@lfdr.de>; Fri, 21 Aug 2020 12:37:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728679AbgHUKh2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Aug 2020 06:37:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728718AbgHUKhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Aug 2020 06:37:07 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C77EAC061346
        for <devicetree@vger.kernel.org>; Fri, 21 Aug 2020 03:37:06 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id ds1so643609pjb.1
        for <devicetree@vger.kernel.org>; Fri, 21 Aug 2020 03:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MDm/JAIM+WvFDRN3OyDY9BUKgF4PZ8nDeNpq4X68CVg=;
        b=PxPIs3H4BhTvFe8AFlmCxkrcECDo8gUsWKwdS8+LdDdjaku27RyUsQOE0Fo24PZhWF
         EZCOaOmgLOYvWYgHnf23S7DO4fMM/nDIlHvUJlGg8zKiXn8phn8TmxlgPbAkctZJhexp
         DapBRyOZqJaxfeEve/ew8PhTTz+oGlqeNHYno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MDm/JAIM+WvFDRN3OyDY9BUKgF4PZ8nDeNpq4X68CVg=;
        b=mQxioUAHCKOV+PPVQNarJAag2keIeoL7PYW1TIf10qJpLzMX7pZx2kgUQjCCSlgg4c
         SeId8WhLVLDnA8Mvy8OwI6I0Ssp3K2gA4ZVA0IIMi19pKdbdTWhWcnUtv724vhGY2PDj
         ymtQqKCJByIuMN7jQYqkFN0qkFpbVr3wlhZrzvi+m3wEM5KZLlZaIRErK+VPe1GmJvMl
         wgVwxyDA2ey0XDnSX5IveppMhH16fEYQ6ACt4hodZI4ZR0uhCFUibHvz4vp4HpMgjWRx
         NMBiPkkf7vd+pWbvqDzTzwbW5IOeEdwhlN2yByrNSOEcBKkbOAVNZCIyVAKrEqxKr2Bp
         EKYw==
X-Gm-Message-State: AOAM5306VYuO9Z/B2m97JOqjd9Su+/SMjGZkdKZ36HwvKkt8rtfJ0FB3
        Mj7LDsgjcHz3ORkQJhKlTMEXTA==
X-Google-Smtp-Source: ABdhPJzTjJvKF5N6fAdWgQQ7/mCca5C+hWBLaTZ8T3X36z0fCFC+4POQ9XFYBQQZVeEt0qff6gwWxw==
X-Received: by 2002:a17:90a:fa06:: with SMTP id cm6mr2030998pjb.129.1598006226419;
        Fri, 21 Aug 2020 03:37:06 -0700 (PDT)
Received: from acourbot.tok.corp.google.com ([2401:fa00:8f:203:eeb1:d7ff:fe57:b7e5])
        by smtp.gmail.com with ESMTPSA id y20sm2081525pfn.183.2020.08.21.03.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 03:37:05 -0700 (PDT)
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
Subject: [PATCH v4 10/17] media: mtk-vcodec: add support for MT8183 encoder
Date:   Fri, 21 Aug 2020 19:36:01 +0900
Message-Id: <20200821103608.2310097-11-acourbot@chromium.org>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
In-Reply-To: <20200821103608.2310097-1-acourbot@chromium.org>
References: <20200821103608.2310097-1-acourbot@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yunfei Dong <yunfei.dong@mediatek.com>

Now that all the supporting blocks are present, enable encoder for
MT8183.

Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
[acourbot: refactor, cleanup and split]
Co-developed-by: Alexandre Courbot <acourbot@chromium.org>
Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
Acked-by: Tiffany Lin <tiffany.lin@mediatek.com>
---
 .../platform/mtk-vcodec/mtk_vcodec_drv.h      |  1 +
 .../platform/mtk-vcodec/mtk_vcodec_enc_drv.c  | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
index ba4045d64212..3dd010cba23e 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h
@@ -302,6 +302,7 @@ struct mtk_vcodec_ctx {
 
 enum mtk_chip {
 	MTK_MT8173,
+	MTK_MT8183,
 };
 
 /**
diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c
index 569698f63515..d6438cb4eead 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c
@@ -62,6 +62,14 @@ static const struct mtk_video_fmt mtk_video_formats_capture_mt8173[] =  {
 	},
 };
 
+static const struct mtk_video_fmt mtk_video_formats_capture_mt8183[] =  {
+	{
+		.fourcc = V4L2_PIX_FMT_H264,
+		.type = MTK_FMT_ENC,
+		.num_planes = 1,
+	},
+};
+
 /* Wake up context wait_queue */
 static void wake_up_ctx(struct mtk_vcodec_ctx *ctx, unsigned int reason)
 {
@@ -430,8 +438,22 @@ static const struct mtk_vcodec_enc_pdata mt8173_pdata = {
 	.max_bitrate = 4000000,
 };
 
+static const struct mtk_vcodec_enc_pdata mt8183_pdata = {
+	.chip = MTK_MT8183,
+	.has_lt_irq = false,
+	.uses_ext = true,
+	.capture_formats = mtk_video_formats_capture_mt8183,
+	.num_capture_formats = ARRAY_SIZE(mtk_video_formats_capture_mt8183),
+	/* MT8183 supports the same output formats as MT8173 */
+	.output_formats = mtk_video_formats_output_mt8173,
+	.num_output_formats = ARRAY_SIZE(mtk_video_formats_output_mt8173),
+	.min_bitrate = 64,
+	.max_bitrate = 40000000,
+};
+
 static const struct of_device_id mtk_vcodec_enc_match[] = {
 	{.compatible = "mediatek,mt8173-vcodec-enc", .data = &mt8173_pdata},
+	{.compatible = "mediatek,mt8183-vcodec-enc", .data = &mt8183_pdata},
 	{},
 };
 MODULE_DEVICE_TABLE(of, mtk_vcodec_enc_match);
-- 
2.28.0.297.g1956fa8f8d-goog

