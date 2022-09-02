Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58D195AB256
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 15:56:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238388AbiIBN4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 09:56:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237543AbiIBN4F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 09:56:05 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47F392CCA5
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 06:30:05 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id z14-20020a7bc7ce000000b003a5db0388a8so4394594wmk.1
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 06:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=WnO3+Tq5eMt/+enVaGVDJlIeL9+c7akKx/S/wlTJFkE=;
        b=UmXkXiwbZYjdT1WWoa7TKGadkVKY+Z0QEU4eN3/HPr+dBvch18rB7LORSO6U0qgg+1
         iv1AD9sH+8629kWvpUNRkrY61edccstQiHE1xWfotzbYsVjbK0dlOdpSZaGDxcr7NNaJ
         UszPAp4JYEnf9348BU5RfzuNr8LHRkvfbda2kTxXkTrud+6f0zIOair+yeV/5ECgbsgJ
         SblmDu6yZIDpVkfr2wsq5bINUhNNs5LyoMrH4iLlduSpXOVtep/NSjcyy+vILzZZlhpO
         nbnXF6HsBNS3OSunJ+QldSM+D5bg1bzg/lX9xNsbOh/UL8GVK0RweP/AlSvD/1hAOXZL
         U3wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=WnO3+Tq5eMt/+enVaGVDJlIeL9+c7akKx/S/wlTJFkE=;
        b=c+USgIar0m3Vv6BTqB4Ma+Sp0g8vXDCDb11BmSAGfqsnm4v3+uuf88fdjZMkfxlqMr
         ClPHW/GB3T8HUs3ltsDrZ/yAORUzmUgDywW4W+3N3ao6L0mBNDM9xVLrpJDzqLU7lSyj
         hAF5weZwXtuR/xuxP3aohK3RqKmGSqLDSGlU8b+3xFpsDMLewiQ84u4zsyzigJnpqfZ6
         SMtNl+Sq+RMlMz7ZTzNsYnhTDr/8zGnwlu/15U0abeakDhYO4rYCM5NPfQkL/zfUI49J
         n2mZzGEh4NyNQ1yVfcxDFwFEHe9Jk8Xxou/LKD9zg/NsNECXPUekJ8D6fUiYqjdFaTZV
         c0Jg==
X-Gm-Message-State: ACgBeo3w5Ii+2A6QRzfPV4CNm4F6/zGYg4Q6zqq6FOVxRIsn84oMHfA6
        3u7hMeht5w0wm9nm/INNklibJZW8uJ1FeEGa
X-Google-Smtp-Source: AA6agR4PCzGvdorz12vZVArhdEpd8kAlXYH6pzoxUJ+7Z6gc+c/oA5WHjwLjcdtwlpRE8DkJB/Yb8A==
X-Received: by 2002:a05:600c:4f43:b0:3a6:2335:f5de with SMTP id m3-20020a05600c4f4300b003a62335f5demr2880057wmq.109.1662124462878;
        Fri, 02 Sep 2022 06:14:22 -0700 (PDT)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v14-20020a5d43ce000000b002253fd19a6asm1766253wrr.18.2022.09.02.06.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 06:14:22 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorande@qti.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Ekansh Gupta <ekangupt@qti.qualcomm.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Ola Jeppsson <ola@snap.com>
Subject: [PATCH 02/14] misc: fastrpc: Don't remove map on creater_process and device_release
Date:   Fri,  2 Sep 2022 16:13:32 +0300
Message-Id: <20220902131344.3029826-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902131344.3029826-1-abel.vesa@linaro.org>
References: <20220902131344.3029826-1-abel.vesa@linaro.org>
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

Do not remove the map from the list on error path in
fastrpc_init_create_process, instead call fastrpc_map_put, to avoid
use-after-free. Do not remove it on fastrpc_device_release either,
call fastrpc_map_put instead.

The fastrpc_free_map is the only proper place to remove the map.
This is called only after the reference count is 0.

Co-developed-by: Ola Jeppsson <ola@snap.com>
Signed-off-by: Ola Jeppsson <ola@snap.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/misc/fastrpc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 0c816a11eeec..50c17f5da3a8 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -316,6 +316,13 @@ static void fastrpc_free_map(struct kref *ref)
 		dma_buf_put(map->buf);
 	}
 
+	if (map->fl) {
+		spin_lock(&map->fl->lock);
+		list_del(&map->node);
+		spin_unlock(&map->fl->lock);
+		map->fl = NULL;
+	}
+
 	kfree(map);
 }
 
@@ -1266,12 +1273,7 @@ static int fastrpc_init_create_process(struct fastrpc_user *fl,
 	fl->init_mem = NULL;
 	fastrpc_buf_free(imem);
 err_alloc:
-	if (map) {
-		spin_lock(&fl->lock);
-		list_del(&map->node);
-		spin_unlock(&fl->lock);
-		fastrpc_map_put(map);
-	}
+	fastrpc_map_put(map);
 err:
 	kfree(args);
 
@@ -1347,10 +1349,8 @@ static int fastrpc_device_release(struct inode *inode, struct file *file)
 		fastrpc_context_put(ctx);
 	}
 
-	list_for_each_entry_safe(map, m, &fl->maps, node) {
-		list_del(&map->node);
+	list_for_each_entry_safe(map, m, &fl->maps, node)
 		fastrpc_map_put(map);
-	}
 
 	list_for_each_entry_safe(buf, b, &fl->mmaps, node) {
 		list_del(&buf->node);
-- 
2.34.1

