Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4AC15B393F
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 15:41:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231538AbiIINlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 09:41:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231531AbiIINlO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 09:41:14 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95222D740B
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 06:40:56 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id v185-20020a1cacc2000000b003b42e4f278cso1505698wme.5
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 06:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=SjnyqrKU3a4CNpCZHHyS1qgsjA3Xz0dtD141C+vhpK0=;
        b=BvCZeklMzNy4mEVQUnVSdZ4dmnKPwauLvSGOTeFCLgduVN1HgOjijfwNIjkmrfsI0A
         cuRozeXgHjsxEq5F8RXNpW8VsI8OzyOt4FNE8zZYHqC1W26kARAs9f0euTZh3YmN9Y1O
         Gf6vEtF7X3LBrlJPGV3m/WRyJ+KCoISi/mSeK21y2Cax7J8EM1j9Ug0RbzVaLBHUAmZE
         LqxEmi8tmjlEsABDyt0JaCKOnf6+oQxsIpElFHPRRL3K8z5wNNObpyq5ICQPWl6oAosC
         LgjUgJsv03aXvR+mNZ46D7ZXGTk7x2GAAs6E7vi4TlMeVaouspkj8v5uVcgFCvTfEINf
         61oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=SjnyqrKU3a4CNpCZHHyS1qgsjA3Xz0dtD141C+vhpK0=;
        b=gKWjFLgBAEYZ12yx54VsCNl566ndv/Qgzewn1BTu7Qnt/t8pFdHXIo6e8DurNTYBJI
         qbwWX1rHCPYxql5Y3vkLi2dBoNL69jxwBKIUHIAhAuULFFNlvUGUxFXc2l63ocbfMDhM
         nFyjPJA/MEEEyWYlWVv3UU+TgEhxvqM53fS+o8P60Wnr4pDGnC8z25/7C+F3lZlQp3W5
         kalcnYKlTNuqHGSxmu52D7Rfa6YoPtmaecXCQSZ2iG6NKoDDS5oTcbEs39TbbH7e5Nxf
         /UKioOGx6Uey52DvltCbbucZqjfj1t82rbGW0wTJIldwmlMw8xCiVa/r53UvhClUNFH4
         ihwA==
X-Gm-Message-State: ACgBeo1twyqxvGLgKbsQOu6W6xQuAu2hjn0yMi5H48lZOImPyU6i4/u6
        vX4apx+7O6kZyqnRaPz4jRhOzQ==
X-Google-Smtp-Source: AA6agR4ZzK1P/fT75Fob60yh43LN2tPxmqM9oJ0Olo8dNwOHVQnjMUgHzzYwLWZ3fJPI9WHVz2TXUw==
X-Received: by 2002:a05:600c:a48:b0:3b3:3256:63c with SMTP id c8-20020a05600c0a4800b003b33256063cmr4736942wmq.34.1662730854662;
        Fri, 09 Sep 2022 06:40:54 -0700 (PDT)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id q20-20020a1cf314000000b003a604a29a34sm660622wmq.35.2022.09.09.06.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:40:53 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Ekansh Gupta <ekangupt@qti.qualcomm.com>,
        Bharath Kumar <bkumar@qti.qualcomm.com>,
        Himateja Reddy <hmreddy@quicinc.com>,
        Anirudh Raghavendra <araghave@quicinc.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH v3 10/10] misc: fastrpc: Add dma_mask to fastrpc_channel_ctx
Date:   Fri,  9 Sep 2022 16:39:38 +0300
Message-Id: <20220909133938.3518520-11-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220909133938.3518520-1-abel.vesa@linaro.org>
References: <20220909133938.3518520-1-abel.vesa@linaro.org>
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
index b9d9bfad93f6..31fb1e9e3e47 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -278,6 +278,7 @@ struct fastrpc_channel_ctx {
 	struct list_head invoke_interrupted_mmaps;
 	bool secure;
 	bool unsigned_support;
+	u64 dma_mask;
 };
 
 struct fastrpc_device {
@@ -2302,6 +2303,7 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
 	kref_init(&data->refcount);
 
 	dev_set_drvdata(&rpdev->dev, data);
+	rdev->dma_mask = &data->dma_mask;
 	dma_set_mask_and_coherent(rdev, DMA_BIT_MASK(32));
 	INIT_LIST_HEAD(&data->users);
 	INIT_LIST_HEAD(&data->invoke_interrupted_mmaps);
-- 
2.34.1

