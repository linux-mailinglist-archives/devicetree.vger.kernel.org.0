Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81DD62B6C04
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 18:41:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729673AbgKQRjn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 12:39:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729026AbgKQRjm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 12:39:42 -0500
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BB65C061A04
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:39:42 -0800 (PST)
Received: by mail-pl1-x643.google.com with SMTP id j5so10614658plk.7
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=268k75iGgPwajGOaY5d0Of03PhQtD6bYvRMlc9HmW4g=;
        b=r2l/3gDmAVgeNBGWi099+PAX/sTSeFVw6c+bxA2Hxkv4fjT5HS9mpa2z7tazOtK9x3
         jDkxryWC58TOfLH4ocEeaFgAfHPtAIFdcvcfe1duzLHaTyC3uHatHSyu3Eqp9RVn+f8o
         NUFXuaelDV5NiF9kKij/jaDrloV5V2WiuFbAQ8F8Zqj+CETA2T5S0KecXLdjtBLls4XX
         +Rp5iovP8vGlci+NNz2Uhbp7NbFb19y/F+kt/KP0U+pl+JEaXUA8ApWLHow0W7gnkwnX
         +vHpA+9vRpzvfyfrxKFJpTzVtQSOaCRKba/fCYg+iBMNyrUNmj5n1FjGYzWSNbVR0EJz
         t3iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=268k75iGgPwajGOaY5d0Of03PhQtD6bYvRMlc9HmW4g=;
        b=MCtqQjEc39A03MOEg1Lk5cjU/VvBbRi/QrsETeyUrH/BV2hOkgkABMJRqxG1D1LcwM
         K0CF1trDXjEXAWUsmHPpGA1s/kT3vXOakn2apIptcG9/SAUtb/ExX/Y8hJxhhOhoAWjb
         ihscjoGjurvbUticJl87/DmkzkNNmpoucMhVrK5u2jRUmxl9Wnklyy6wb8IXYWoKM9Qy
         /DiUGPu/xB2ytlLxW6dyCQt2jwJknjpjythih/bUYgLRDrL85uONePK0NgafcjmBg+mP
         9QjZtOBh5aVwWQzJa5TsEchPBmrnJON2DY5tZ3jE6KZtXvuDynnaA2mTXJ8UeaZM79mA
         sO2w==
X-Gm-Message-State: AOAM533j2M0CqrbfSV1G9Iezsw10E1J5alLjyPMBJLKVRrIAvTqouH/n
        eBGS91krCHy9yQ8Zkm3H6Z5j
X-Google-Smtp-Source: ABdhPJytZ53nOUmuWQePziE64A8vrYNi9roIBdKD3NZkAV3H7LGnxbo3XuNI+LOsKrUygy0Fgeberw==
X-Received: by 2002:a17:90a:7647:: with SMTP id s7mr169690pjl.23.1605634781695;
        Tue, 17 Nov 2020 09:39:41 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id a21sm1751330pjq.37.2020.11.17.09.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 09:39:40 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 3/4] mtd: rawnand: qcom: Add support for Qcom SMEM parser
Date:   Tue, 17 Nov 2020 23:09:08 +0530
Message-Id: <20201117173909.23585-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201117173909.23585-1-manivannan.sadhasivam@linaro.org>
References: <20201117173909.23585-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for using Qualcomm SMEM based flash partition parser in
Qualcomm NAND controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/mtd/nand/raw/qcom_nandc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index 777fb0de0680..1b031aeac18b 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2797,6 +2797,8 @@ static int qcom_nandc_setup(struct qcom_nand_controller *nandc)
 	return 0;
 }
 
+static const char * const probes[] = { "qcomsmem", NULL };
+
 static int qcom_nand_host_init_and_register(struct qcom_nand_controller *nandc,
 					    struct qcom_nand_host *host,
 					    struct device_node *dn)
@@ -2860,7 +2862,7 @@ static int qcom_nand_host_init_and_register(struct qcom_nand_controller *nandc,
 		}
 	}
 
-	ret = mtd_device_register(mtd, NULL, 0);
+	ret = mtd_device_parse_register(mtd, probes, NULL, NULL, 0);
 	if (ret)
 		nand_cleanup(chip);
 
-- 
2.17.1

