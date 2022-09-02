Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4EF85AB220
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 15:52:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237834AbiIBNwG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 09:52:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236106AbiIBNve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 09:51:34 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAC96135D14
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 06:26:09 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id se27so3860449ejb.8
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 06:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=blbmrFpJ9v4eZ8XtVb/9BQ24QeOnYxz1Q7arIgGoVBE=;
        b=JkMK5OzLYFHwYGJkH+rJgVL2TXyIeszHxwCz+5aDOVBJPPpq8XrVl8OYIuQHSxSCJp
         BLEbXQX3r5/3pXknb0xdPg5cOJel8nLrsAvMuqpDIewgODYkKZWHacnjrIg3mHVOWPZq
         CivERmwWkfqGEsMo40rqUtArQztACHGG4RW6ZsInO7ONCw+m4MyEbvK6D22gYgkjfwl3
         ru1v3hjmip+LvvyOl41JtMwfGqIyk2Wzz6lCRmRl6fNZnqtljNqSvV1bR07faw2JQMxt
         XmHgO9JNrtOng4XeOCrl3Oi87G+U8JCbC1CrsswSR+wIH7tDJsKMGr0syzI0zFaBXFHx
         0l8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=blbmrFpJ9v4eZ8XtVb/9BQ24QeOnYxz1Q7arIgGoVBE=;
        b=gwb+P5uoLnmrul+VJsa28mPzFNdlU1gt7E0gDSxYr55S+goAxsclu8Q9wR2rialQmT
         ab0tBAtLlt+SF8xcB0ZPmxYwMhEcSwxy1mGJZPcg2uc1noto/YjbwAWFvodUW7k/jhXu
         ADgIWZ+/yc18+PfBL0OMclkGCchGdUCtHA/oc1jNdyfHe8zoIlv8ORXatjokET6l4zJa
         r9QrvL0ro4I6LUo7yJhTFt245EkVgGnClGwom4OZ2MMCJmDuHmRveOrve6EP187ZX5YA
         RlWgTZLxZFjTdp8HJCpLfnrazBwHTr9gielMrx2WmWPVmIe3TAaBo28FZGdewEq5esBI
         3UKA==
X-Gm-Message-State: ACgBeo348tzV39gNVKfMQjDJEACzPgAlPWqGR6FW07JifCcd68Rm+Evf
        U4mlhUiP8RMzdBEtr/nRdoM7XRkgFGeohrJj
X-Google-Smtp-Source: AA6agR635/f4JPmMaovAepr83BQhxnemnllSa7fgOEtLDvqVJBZAPT36PfDqSGdGiT/AsgWwDvBDoQ==
X-Received: by 2002:a5d:47a6:0:b0:228:473c:b84b with SMTP id 6-20020a5d47a6000000b00228473cb84bmr1178709wrb.556.1662124464603;
        Fri, 02 Sep 2022 06:14:24 -0700 (PDT)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v14-20020a5d43ce000000b002253fd19a6asm1766253wrr.18.2022.09.02.06.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 06:14:23 -0700 (PDT)
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
Subject: [PATCH 03/14] misc: fastrpc: Fix use-after-free race condition for maps
Date:   Fri,  2 Sep 2022 16:13:33 +0300
Message-Id: <20220902131344.3029826-4-abel.vesa@linaro.org>
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

From: Ola Jeppsson <ola@snap.com>

It is possible that in between calling fastrpc_map_get() until
map->fl->lock is taken in fastrpc_free_map(), another thread can call
fastrpc_map_lookup() and get a reference to a map that is about to be
deleted.

Rewrite fastrpc_map_get() to only increase the reference count of a map
if it's non-zero. Propagate this to callers so they can know if a map is
about to be deleted.

Fixes this warning:
refcount_t: addition on 0; use-after-free.
WARNING: CPU: 5 PID: 10100 at lib/refcount.c:25 refcount_warn_saturate
...
Call trace:
 refcount_warn_saturate
 [fastrpc_map_get inlined]
 [fastrpc_map_lookup inlined]
 fastrpc_map_create
 fastrpc_internal_invoke
 fastrpc_device_ioctl
 __arm64_sys_ioctl
 invoke_syscall

Signed-off-by: Ola Jeppsson <ola@snap.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/misc/fastrpc.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 50c17f5da3a8..58654d394d17 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -332,10 +332,12 @@ static void fastrpc_map_put(struct fastrpc_map *map)
 		kref_put(&map->refcount, fastrpc_free_map);
 }
 
-static void fastrpc_map_get(struct fastrpc_map *map)
+static int fastrpc_map_get(struct fastrpc_map *map)
 {
-	if (map)
-		kref_get(&map->refcount);
+	if (!map)
+		return -ENOENT;
+
+	return kref_get_unless_zero(&map->refcount) ? 0 : -ENOENT;
 }
 
 
-- 
2.34.1

