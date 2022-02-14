Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77B354B55B7
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 17:12:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356169AbiBNQLm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 11:11:42 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356205AbiBNQK3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 11:10:29 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B375C60ABA
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:10:21 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id h6so27664072wrb.9
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M82hp5dMIuVJWpsA3lI9MajB5cFJCHZXKFYo8aoIZPc=;
        b=QOkRwYBVwyu9l/gZ/H5snUJmSmCWo0z7XHye6aQ05FOTFKCBkJCHH58uIAlFJaE4Xw
         N8MXYCnIg8cRHBSQjNE/N0XvXZEg8jOL1k+ebC/jU2tVejys3zghu0JQBIUMcCMqbgoF
         cJpyy7gcNrWgKndMKwNr46UmdwAUJ8jfyPnnj8i4ORX2DP9Fp8CHBVVHmXxBcTE3fXvx
         q988fhHMfVQ8mM8B8z7ekCD+Sb6yfC5e5FFRpanBWLhBNZ6OJ16K6peN2Fipj+lgx8ZU
         ShdW2LnQRUl5yLGXB+gI7Gc4JekFSt7zbupBgPLQIRyN5clHCxuxIp10OuJODNmb3PP/
         F1Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M82hp5dMIuVJWpsA3lI9MajB5cFJCHZXKFYo8aoIZPc=;
        b=vD4iG0nlPcOAS0ER5DBPCiU9PllIZWkJeTKLM5Xa4jr06MjjuXIRlTR0xO/T7Qc6iY
         Dw1yTdM/RNxyNWzdJzbADlN5wJRuyX6yMyPCbDnIX51jPPSeQwW36mEggPTsXFl6etqw
         2xksoPAkP5ebJpez3HCqD4dWHEMNWDAlvujmzYX46SBIngV6byl8lBRoapnQJ8wZAIxN
         BU3uxSjHAcndHOQSZCnbZBrRKItJI7r7cqPz/dAu0fQRBvqA2LFnqv6TTzPmul6TxQ1t
         nCfjNbgqXK/+AB1x97wbS3Pw7RyXWesRUkp/EeMbwI5fYQaizsHvXuQPtJbMUXC592qR
         Tj0w==
X-Gm-Message-State: AOAM530/LTbMfJDBQlZp6VybYySW0hKH74c8sOaCZaDeqN1c6e+lRTKm
        Nchzt31oXDOPFxX73Qu4/AFCFg==
X-Google-Smtp-Source: ABdhPJzHJ1jdDAasQpYs0LV9TlB3ejc3g9ifEHzXBXVgT1lxV6Hlxm4GG71aJwuwJlRINhkW3wRCqg==
X-Received: by 2002:adf:e708:: with SMTP id c8mr253233wrm.653.1644855020189;
        Mon, 14 Feb 2022 08:10:20 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id k28sm13677022wms.23.2022.02.14.08.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 08:10:19 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, ekangupt@qti.qualcomm.com,
        bkumar@qti.qualcomm.com, linux-kernel@vger.kernel.org,
        srini@kernel.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org,
        Vamsi Krishna Gattupalli <quic_vgattupa@quicinc.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 10/12] misc: fastrpc: Add fdlist implementation
Date:   Mon, 14 Feb 2022 16:10:00 +0000
Message-Id: <20220214161002.6831-11-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220214161002.6831-1-srinivas.kandagatla@linaro.org>
References: <20220214161002.6831-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vamsi Krishna Gattupalli <quic_vgattupa@quicinc.com>

Add fdlist implementation to support dma handles. fdlist is populated by
DSP if any map is no longer used and it is freed during put_args.

Signed-off-by: Vamsi Krishna Gattupalli <quic_vgattupa@quicinc.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/misc/fastrpc.c | 36 ++++++++++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 1cec85e8eaa1..5015b4e7ec09 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -320,7 +320,8 @@ static void fastrpc_map_get(struct fastrpc_map *map)
 		kref_get(&map->refcount);
 }
 
-static int fastrpc_map_find(struct fastrpc_user *fl, int fd,
+
+static int fastrpc_map_lookup(struct fastrpc_user *fl, int fd,
 			    struct fastrpc_map **ppmap)
 {
 	struct fastrpc_map *map = NULL;
@@ -328,7 +329,6 @@ static int fastrpc_map_find(struct fastrpc_user *fl, int fd,
 	mutex_lock(&fl->mutex);
 	list_for_each_entry(map, &fl->maps, node) {
 		if (map->fd == fd) {
-			fastrpc_map_get(map);
 			*ppmap = map;
 			mutex_unlock(&fl->mutex);
 			return 0;
@@ -339,6 +339,17 @@ static int fastrpc_map_find(struct fastrpc_user *fl, int fd,
 	return -ENOENT;
 }
 
+static int fastrpc_map_find(struct fastrpc_user *fl, int fd,
+			    struct fastrpc_map **ppmap)
+{
+	int ret = fastrpc_map_lookup(fl, fd, ppmap);
+
+	if (!ret)
+		fastrpc_map_get(*ppmap);
+
+	return ret;
+}
+
 static void fastrpc_buf_free(struct fastrpc_buf *buf)
 {
 	dma_free_coherent(buf->dev, buf->size, buf->virt,
@@ -411,7 +422,7 @@ static void fastrpc_context_free(struct kref *ref)
 	ctx = container_of(ref, struct fastrpc_invoke_ctx, refcount);
 	cctx = ctx->cctx;
 
-	for (i = 0; i < ctx->nscalars; i++)
+	for (i = 0; i < ctx->nbufs; i++)
 		fastrpc_map_put(ctx->maps[i]);
 
 	if (ctx->buf)
@@ -969,9 +980,19 @@ static int fastrpc_put_args(struct fastrpc_invoke_ctx *ctx,
 			    u32 kernel)
 {
 	struct fastrpc_remote_arg *rpra = ctx->rpra;
-	int i, inbufs;
+	struct fastrpc_user *fl = ctx->fl;
+	struct fastrpc_map *mmap = NULL;
+	struct fastrpc_invoke_buf *list;
+	struct fastrpc_phy_page *pages;
+	u64 *fdlist;
+	int i, inbufs, outbufs, handles;
 
 	inbufs = REMOTE_SCALARS_INBUFS(ctx->sc);
+	outbufs = REMOTE_SCALARS_OUTBUFS(ctx->sc);
+	handles = REMOTE_SCALARS_INHANDLES(ctx->sc) + REMOTE_SCALARS_OUTHANDLES(ctx->sc);
+	list = fastrpc_invoke_buf_start(rpra, ctx->nscalars);
+	pages = fastrpc_phy_page_start(list, ctx->nscalars);
+	fdlist = (uint64_t *)(pages + inbufs + outbufs + handles);
 
 	for (i = inbufs; i < ctx->nbufs; ++i) {
 		if (!ctx->maps[i]) {
@@ -988,6 +1009,13 @@ static int fastrpc_put_args(struct fastrpc_invoke_ctx *ctx,
 		}
 	}
 
+	for (i = 0; i < FASTRPC_MAX_FDLIST; i++) {
+		if (!fdlist[i])
+			break;
+		if (!fastrpc_map_lookup(fl, (int)fdlist[i], &mmap))
+			fastrpc_map_put(mmap);
+	}
+
 	return 0;
 }
 
-- 
2.21.0

