Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD7194B55D3
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 17:12:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356304AbiBNQLn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 11:11:43 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356200AbiBNQK2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 11:10:28 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FBC55F8EF
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:10:20 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id p9so7141781wra.12
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IUtpmLCf9yTc9kWokK2MlmVKVquFj/Legtc727MewIE=;
        b=btySNnlz0WTv3SxDvb6en4QwwHjfz27GoTaiu9YtS3uxm9ZHGIOM9AR+J8PnRBTTox
         0Qz5ldjUG7ILquLzkZJQAphl3v2jYP4R5Tnx4Bv3UWkMqnOgPJ/KXyGEmMXKADNA286G
         V0VYFnm3TM5Pz69zuVM443jJDh92pTsv1l35xhIf3ibXHmI8QtDcYkQwHRLcuw1x1XsI
         V484M0NSsH+wwYJo71DDd1KdEFG0JawGAINeYhgVtenlJTt+mHQDDgPz/wc9i3iZcVlz
         X9BZZzFvr0gx1pUAhMNXRlwLElg2OiC1Ocirge7zw0cVh1iouKR2naDEzIGNh1iCG05F
         mmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IUtpmLCf9yTc9kWokK2MlmVKVquFj/Legtc727MewIE=;
        b=AGzfnslhJW+xj+ciGthpidXdPPhwRixCg+FR3euzzhug70F5lZT2f8k1cnVH1gmQNI
         7NYL+wlWI1har2NaqnjpXRqx2g6OAH8HI5K67h8CqR9hw7CJoeqI2xlM+1Om4OQYoOfc
         6/Kso6dzEpmi3EZmaVm5N80snWnp/Y+xW4CdoeAl034Z6KTQu9S70QR+UghaHArJFzQI
         e6zynxmAF11TjM4XhKGQr1rnp25XJPnhh86BhUGFSF7rNxfPmkaweTSspNZyjHh5g/gh
         HzB14tIZ6OwedqBtHWN8+wT3wuku/emGxwluPvetUXUtcJokADqzoy9onLvozrPvhW1w
         HH4w==
X-Gm-Message-State: AOAM533CVY4b6JFUvvFJB1gxMnWym4Pejv3GMenV8fimUmD0Qu+TATWs
        ZR+gkR0yHXlW7b6ZIybf9X2u9g==
X-Google-Smtp-Source: ABdhPJxD9AKOFD2a5c5WIs6al1TF5dEEfngUAFPQo51nQmlCFG0MXUIfA3JITED7CRvF8qx3PLNGhQ==
X-Received: by 2002:a5d:5850:: with SMTP id i16mr297819wrf.64.1644855019003;
        Mon, 14 Feb 2022 08:10:19 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id k28sm13677022wms.23.2022.02.14.08.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 08:10:18 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, ekangupt@qti.qualcomm.com,
        bkumar@qti.qualcomm.com, linux-kernel@vger.kernel.org,
        srini@kernel.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org,
        Vamsi Krishna Gattupalli <quic_vgattupa@quicinc.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 09/12] misc: fastrpc: Add helper function to get list and page
Date:   Mon, 14 Feb 2022 16:09:59 +0000
Message-Id: <20220214161002.6831-10-srinivas.kandagatla@linaro.org>
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

Add helper functions to get invoke buffer and page start pointers.

Signed-off-by: Vamsi Krishna Gattupalli <quic_vgattupa@quicinc.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/misc/fastrpc.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index eb1e6d111c77..1cec85e8eaa1 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -833,6 +833,16 @@ static int fastrpc_create_maps(struct fastrpc_invoke_ctx *ctx)
 	return 0;
 }
 
+static struct fastrpc_invoke_buf *fastrpc_invoke_buf_start(union fastrpc_remote_arg *pra, int len)
+{
+	return (struct fastrpc_invoke_buf *)(&pra[len]);
+}
+
+static struct fastrpc_phy_page *fastrpc_phy_page_start(struct fastrpc_invoke_buf *buf, int len)
+{
+	return (struct fastrpc_phy_page *)(&buf[len]);
+}
+
 static int fastrpc_get_args(u32 kernel, struct fastrpc_invoke_ctx *ctx)
 {
 	struct device *dev = ctx->fl->sctx->dev;
@@ -860,9 +870,8 @@ static int fastrpc_get_args(u32 kernel, struct fastrpc_invoke_ctx *ctx)
 		return err;
 
 	rpra = ctx->buf->virt;
-	list = ctx->buf->virt + ctx->nscalars * sizeof(*rpra);
-	pages = ctx->buf->virt + ctx->nscalars * (sizeof(*list) +
-		sizeof(*rpra));
+	list = fastrpc_invoke_buf_start(rpra, ctx->nscalars);
+	pages = fastrpc_phy_page_start(list, ctx->nscalars);
 	args = (uintptr_t)ctx->buf->virt + metalen;
 	rlen = pkt_size - metalen;
 	ctx->rpra = rpra;
-- 
2.21.0

