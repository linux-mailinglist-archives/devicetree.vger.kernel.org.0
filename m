Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C688B5B3944
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 15:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231410AbiIINk6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 09:40:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbiIINkr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 09:40:47 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F36698C026
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 06:40:41 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id bz13so2827863wrb.2
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 06:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=AKU3wNQUkV39MaqMgKyQXoorxTtxfTe/CcpMDf4UXzQ=;
        b=KqyPzZ+pvlqVj7vJmstXFi9tJk/2SpDeno9AnMyuhm5U8PDILQOFCEeXa7zt8IhA7j
         zJUjUIvpGIb6LK9DjYLl/aJQyvVCQDlr/JFGmXELpQgg5jAe/DdzNye3PG9ICYNySlAz
         Nxeu/RqxRkZuKMZZKgLigQDiEM9aO9COZPqfSxOd2sf0gfe6uGq7yaF7D7o/vb/dJ9CB
         uVmVLMjJZBQk+WChxB8HH1SHmyV47Sh+ISRUGZvnJM20ZeJNl6Nuxnhkm+Pqn9XXNUEj
         LbdozLzCDMIve+tU4noWmav0bzi6DxqEnahgDz/gL2/JuIQrScnIzI7Dg6rfeXKh1Ga2
         oVyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=AKU3wNQUkV39MaqMgKyQXoorxTtxfTe/CcpMDf4UXzQ=;
        b=zfvfORyultjjSwFIAkPrmfoFR0GVhlXd3OBNoCwfROELT9/Pi0T8kqGHjZdQ061XUq
         fK4zBhEV1/ehksyVvZu1ZgutOL3tqtZdL4HP6KNaNB8EFBZCED/y6kjelYU/wfh/NmPE
         vL31vgw4aLVbU5IwMRxlk6Z4joPVwQ12VMNv8xTFcqSDBA15g52b8R0Vl0qQm83mAqef
         0/9JvCQsYHxsUkj4ZYaEszZQK6qHCVIieDGTp+3y24LSUedLjektvO11Uv7nRZglRnfd
         qxIcdornnJrAvjHRMyQjARGbAw04X4LpMqgky6YjEqOmuiLBDaE7FeBcVhmHdfWS7bld
         fTiw==
X-Gm-Message-State: ACgBeo3Mj9MqJSCCl61lQ4rXvEIXqQaiviDmbeQ3EKhQRdGCzkVTIiw6
        0KCfH6DrD+9I7+D9jGdp4iRufQ==
X-Google-Smtp-Source: AA6agR6Ta+sqTTBeefN3LdZOd0FVaexxO06PywEW8r7HI7SmR81UP8FoZNLiRFMEuemHjuMjQMTdZQ==
X-Received: by 2002:adf:df82:0:b0:228:e2cf:d20f with SMTP id z2-20020adfdf82000000b00228e2cfd20fmr8254143wrl.356.1662730840434;
        Fri, 09 Sep 2022 06:40:40 -0700 (PDT)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id q20-20020a1cf314000000b003a604a29a34sm660622wmq.35.2022.09.09.06.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:40:39 -0700 (PDT)
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
Subject: [PATCH v3 02/10] misc: fastrpc: Add reserved mem support
Date:   Fri,  9 Sep 2022 16:39:30 +0300
Message-Id: <20220909133938.3518520-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220909133938.3518520-1-abel.vesa@linaro.org>
References: <20220909133938.3518520-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The reserved mem support is needed for CMA heap support, which will be
used by AUDIOPD.

Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/misc/fastrpc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index 8bcbc560d4a7..9afc3528dab4 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -19,6 +19,7 @@
 #include <linux/slab.h>
 #include <linux/qcom_scm.h>
 #include <uapi/misc/fastrpc.h>
+#include <linux/of_reserved_mem.h>
 
 #define ADSP_DOMAIN_ID (0)
 #define MDSP_DOMAIN_ID (1)
@@ -2064,6 +2065,9 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
 		return -EINVAL;
 	}
 
+	if (of_reserved_mem_device_init_by_idx(rdev, rdev->of_node, 0))
+		dev_info(rdev, "no reserved DMA memory for FASTRPC\n");
+
 	vmcount = of_property_read_variable_u32_array(rdev->of_node,
 				"qcom,vmids", &vmids[0], 0, FASTRPC_MAX_VMIDS);
 	if (vmcount < 0)
-- 
2.34.1

