Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2624821CF51
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2020 08:10:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729294AbgGMGJm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jul 2020 02:09:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729290AbgGMGJl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jul 2020 02:09:41 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBCE6C061794
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2020 23:09:41 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id k71so5704788pje.0
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2020 23:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IcRaprGcacmXEtaZDoYaeITf2CeXezTPgbu/TUwH/wk=;
        b=Xv7zUAsfDC9egAaQ0BcClz2WM5+fh3wifI39ifJcxBbpA8Tr/TTSgpzxGJVYLaHGdo
         qZS7+EpYcY1t9audISeWq7atWgxE/xrCg0TyJ7lHPeGBthUGRHi7HFL9bpI+U1InEbYY
         CaoAO4AnZl60ZVzFyKYwEMqfAn6E4pgp4A7d8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IcRaprGcacmXEtaZDoYaeITf2CeXezTPgbu/TUwH/wk=;
        b=U6kLXC69fJiKnhY3LXsd4nSnIPnFOjsHDT35Glr3Svr6oqVZntms6zHWBSQARj5JG9
         kOsiks2ebhnR95q3mFeNKItLLc+D2SOUHFL/JbLN7z8VyWC3j6zDikLWegLrU1mPWEBS
         /X6Z8rGsGPJUkD8RtQ93meAG8jQib/AaJqAtHokWSQQCRHPuxcmJk11B52HJtvr1kBDx
         7QLH9ObovT7sFY7gMlVeqys3QBmyKj6f1yPyEuizBSDVC6t74iQYT5F3fdmmyUbgRqV3
         COxnZvSLuKf5dD9CaftHFd4JtUNLIOfnk9AQ1QKy+t2aFK0JWJxuKm+En1VUyoMHK+/s
         lQGw==
X-Gm-Message-State: AOAM5319Vnju8oIP9MNEmTDVG5+IQr3LhT5Osda/+nu6JqLovPTLmxaa
        j+ZL2b8vms4bZdRZMCU1OWeWfA==
X-Google-Smtp-Source: ABdhPJzI8PyjujMeZZ3draC5n2wfwTuhX4JPRIprJxtwpYdFMXJV6VXNh93ZIaginz3CJUCrI6A9pQ==
X-Received: by 2002:a17:902:7484:: with SMTP id h4mr26844856pll.243.1594620581371;
        Sun, 12 Jul 2020 23:09:41 -0700 (PDT)
Received: from acourbot.tok.corp.google.com ([2401:fa00:8f:203:eeb1:d7ff:fe57:b7e5])
        by smtp.gmail.com with ESMTPSA id c134sm13134934pfc.115.2020.07.12.23.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2020 23:09:40 -0700 (PDT)
From:   Alexandre Courbot <acourbot@chromium.org>
To:     Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Yunfei Dong <yunfei.dong@mediatek.com>,
        Maoguang Meng <maoguang.meng@mediatek.com>
Cc:     linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alexandre Courbot <acourbot@chromium.org>
Subject: [PATCH v3 10/16] Revert "media: mtk-vcodec: Remove extra area allocation in an input buffer on encoding"
Date:   Mon, 13 Jul 2020 15:08:36 +0900
Message-Id: <20200713060842.471356-11-acourbot@chromium.org>
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
In-Reply-To: <20200713060842.471356-1-acourbot@chromium.org>
References: <20200713060842.471356-1-acourbot@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 81735ecb62f882853a37a8c157407ec4aed44fd0.

The hardware needs data to follow the previous alignment, so this extra
space was not superfluous after all. Besides, this also made
v4l2-compliance's G_FMT and S_FMT tests regress.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
Acked-by: Tiffany Lin <tiffany.lin@mediatek.com>
---
 drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
index 05743a745a11..f2ba19c32400 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c
@@ -299,12 +299,14 @@ static int vidioc_try_fmt(struct v4l2_format *f,
 
 		pix_fmt_mp->num_planes = fmt->num_planes;
 		pix_fmt_mp->plane_fmt[0].sizeimage =
-			pix_fmt_mp->width * pix_fmt_mp->height;
+				pix_fmt_mp->width * pix_fmt_mp->height +
+				((ALIGN(pix_fmt_mp->width, 16) * 2) * 16);
 		pix_fmt_mp->plane_fmt[0].bytesperline = pix_fmt_mp->width;
 
 		if (pix_fmt_mp->num_planes == 2) {
 			pix_fmt_mp->plane_fmt[1].sizeimage =
-				(pix_fmt_mp->width * pix_fmt_mp->height) / 2;
+				(pix_fmt_mp->width * pix_fmt_mp->height) / 2 +
+				(ALIGN(pix_fmt_mp->width, 16) * 16);
 			pix_fmt_mp->plane_fmt[2].sizeimage = 0;
 			pix_fmt_mp->plane_fmt[1].bytesperline =
 							pix_fmt_mp->width;
@@ -312,7 +314,8 @@ static int vidioc_try_fmt(struct v4l2_format *f,
 		} else if (pix_fmt_mp->num_planes == 3) {
 			pix_fmt_mp->plane_fmt[1].sizeimage =
 			pix_fmt_mp->plane_fmt[2].sizeimage =
-				(pix_fmt_mp->width * pix_fmt_mp->height) / 4;
+				(pix_fmt_mp->width * pix_fmt_mp->height) / 4 +
+				((ALIGN(pix_fmt_mp->width, 16) / 2) * 16);
 			pix_fmt_mp->plane_fmt[1].bytesperline =
 				pix_fmt_mp->plane_fmt[2].bytesperline =
 				pix_fmt_mp->width / 2;
-- 
2.27.0.383.g050319c2ae-goog

