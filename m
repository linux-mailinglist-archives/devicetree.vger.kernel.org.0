Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 539592B6C3D
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 18:49:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730280AbgKQRtJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 12:49:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730253AbgKQRtJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 12:49:09 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9793C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:49:07 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id q10so17793113pfn.0
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=268k75iGgPwajGOaY5d0Of03PhQtD6bYvRMlc9HmW4g=;
        b=jfOa4AiS/tPxjopccSsFwVuEPAIEFOQvgNIDZfxXpCqZM2rBRAbMSPUGrRZCUxk9RM
         M1lSMnYTKmkr2XwSjmUTy27z01sP+vWfmEPHgxDNEejk9lIudy+tadMlhWcbHgGXGsAR
         m9Hv77MP41Mel1ZJKkB6HvxyP0sB62RPYQoM944E6Eo6+T24PBAzzub48v8+buJCMMRL
         vwM2SOKLaPLTVb64Py+CQN2TERL4pdJLcKZ9w49oof+AXLuSDSzabeXmjYwy5mLyGPi9
         ZyZVBHp4DECrukNla6p+KiGhOD3Jum1NWBvyRl7F4SiAeuW+7CxLg0w5K2zA2Rn7Xhls
         0ySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=268k75iGgPwajGOaY5d0Of03PhQtD6bYvRMlc9HmW4g=;
        b=aB6HdJSPpk4ij1rZHGx6J74iDvLg+qjx9L1B8reptToFMkBZA+BlQxf0YoJIlJZQUP
         Q765g8W51iDOCmvXPMq6tLzQd+/vGxHijlwNxX4F4euriBQsZpRzSVQrhEwiylZ7NdRh
         CjAaxDT5D7Jy3johOvaZTSW4PCi2Iu9yeW2Mvq0drC9ouVIZMRadbxjt0fMqvCdiD1mt
         EXcV3HKKxzstdvB5Lw9vW+33fIlPrMOZXLhr/8Soh0byCdr1uQO44qBpmw/lsQ6wx6kZ
         7JLE3mIv56giwjbwRtOujiSsUcU+to9xY/fNxHUnq2yl7ypXdtA6ZMZyKNWBac+S+xKk
         Kimw==
X-Gm-Message-State: AOAM5300lyT4l+bdzLd8MZlYVjLokT+blZYbq9dZmgu0HaY6OC7iWsR9
        tGsx5EGW23DR1aEyBLBXgm6y
X-Google-Smtp-Source: ABdhPJxY8KGN1ZSec/mXAFeuvkUuavubQH+z6KaVaM8f1siege4JnI9ulfj0qykscLac6PxVdm8hQg==
X-Received: by 2002:a62:e40c:0:b029:18b:ad5:18a8 with SMTP id r12-20020a62e40c0000b029018b0ad518a8mr707392pfh.16.1605635347218;
        Tue, 17 Nov 2020 09:49:07 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id 192sm22222810pfz.200.2020.11.17.09.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 09:49:06 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 3/4] mtd: rawnand: qcom: Add support for Qcom SMEM parser
Date:   Tue, 17 Nov 2020 23:18:44 +0530
Message-Id: <20201117174845.28684-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201117174845.28684-1-manivannan.sadhasivam@linaro.org>
References: <20201117174845.28684-1-manivannan.sadhasivam@linaro.org>
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

