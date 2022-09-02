Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3D35AB602
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 17:58:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237711AbiIBP5C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 11:57:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237522AbiIBPzs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 11:55:48 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CABB443325
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 08:49:40 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id d12-20020a05600c34cc00b003a83d20812fso1663425wmq.1
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 08:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=dNkfbcn62y/NJL9U/75vFs6h+xO9hdV9lllr4bUi92w=;
        b=NnJZ209fH9ut5pCl5YNN1NS33WJYCiqoIZHZrM2MU5wnNl++2PsVmofIT6KHoHRbtt
         8T7iha/CIH3r9lXJs+XzMrghM/SsgvAwypMBBSJEgMS/yTT0QsnKluZgvfO3+pl7nhNu
         IyUJFeRwTgkE0UCP0ZBzoFTTnIAQhsTx5zavKIdveJouUOwZDj1AzD7O++JY3iDSCeBS
         UpxFfuXhH9eqwTVTz/0d905lcjAxQgJuCEpEzRP4+baek99wdQmSBIDjUNOT9xLn++f5
         WYLERK8rhPU33H9BCOA9vvtaGkleX7wb43y1Rf5BIF7Sbc+YYvARurq4dheD/cnFD7BH
         q2PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=dNkfbcn62y/NJL9U/75vFs6h+xO9hdV9lllr4bUi92w=;
        b=vyGDnUvY63ejJ/mW6NiXwX2z/DVTA2aXad99SjdPXwKwDGaPTNygL+G1BOqL9WKFEp
         mXgRqB+OdZiemGtvvn5/VqspW1gwx/Ryd0pK1QzYzCIbgfyozoj6JJJ1xOfmEuTdG971
         uY8NTgzNWpMbmkrhTaK1tH7x6eU/1piejr5JZMQxsUXKDQlzY8M8V6yAKzymtuM1WkAH
         fB+WAFeLxEcw1SsuTH+x8OKejtB9lUpppfALVX6r5X/OFMyvEEqqcacAJlUpyYLe2eCY
         BwTOv3cS0xBhO+jvS4Gznrlj4E3BjxN1XovDLyMTzbIg3iYpRR8HTEfAvfTvCejZRGqj
         t0pQ==
X-Gm-Message-State: ACgBeo2Odtan+hBKyShgYhNI7/yx+RgM0RdRIxpGd/QExQwxWWJzhPq8
        qVb2g1ay7lmRvyWXgqbLwJgzQw==
X-Google-Smtp-Source: AA6agR4xGcX2rpgiPA2NzFN1tU9fSWh3NpGn1JtYdQYDMb5QycBlV85ciadFPjVe2YH2MRJ0CHi6nQ==
X-Received: by 2002:a1c:ed0b:0:b0:3a6:30c:12f with SMTP id l11-20020a1ced0b000000b003a6030c012fmr3302745wmh.133.1662133779098;
        Fri, 02 Sep 2022 08:49:39 -0700 (PDT)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id b1-20020a05600010c100b002250f9abdefsm2046741wrx.117.2022.09.02.08.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 08:49:38 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ekansh Gupta <quic_ekagupt@quicinc.com>
Cc:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH v2 10/10] misc: fastrpc: Add dma_mask to fastrpc_channel_ctx
Date:   Fri,  2 Sep 2022 18:49:00 +0300
Message-Id: <20220902154900.3404524-11-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902154900.3404524-1-abel.vesa@linaro.org>
References: <20220902154900.3404524-1-abel.vesa@linaro.org>
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

dma_set_mask_and_coherent only updates the mask to which the device
dma_mask pointer points to. Add a dma_mask to the channel ctx and set
the device dma_mask to point to that, otherwise the dma_set_mask will
return an error and the dma_set_coherent_mask will be skipped too.

Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/misc/fastrpc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 66dc71e20e4f..ce0acc7a2986 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -278,6 +278,7 @@ struct fastrpc_channel_ctx {
 	struct list_head invoke_interrupted_mmaps;
 	bool secure;
 	bool unsigned_support;
+	u64 dma_mask;
 };
 
 struct fastrpc_device {
@@ -2309,6 +2310,7 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
 	kref_init(&data->refcount);
 
 	dev_set_drvdata(&rpdev->dev, data);
+	rdev->dma_mask = &data->dma_mask;
 	dma_set_mask_and_coherent(rdev, DMA_BIT_MASK(32));
 	INIT_LIST_HEAD(&data->users);
 	INIT_LIST_HEAD(&data->invoke_interrupted_mmaps);
-- 
2.34.1

