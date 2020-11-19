Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C983F2B8C1A
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 08:14:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726354AbgKSHNj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 02:13:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725915AbgKSHNj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 02:13:39 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C129C0613D4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:13:38 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id f18so3394086pgi.8
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=268k75iGgPwajGOaY5d0Of03PhQtD6bYvRMlc9HmW4g=;
        b=G/p2/8TgOM+86w/05s8sQwFulz0SPcg1s110p4Y5VrMY53CxA7P1YrGyKhG8Hcevmo
         x9+HHdxGxVPrZLI4GxC6iCh0/mFSGTuBemeeyhMyrNbER+aYPclv7+p6GCoqJG78exmw
         PDFtAvEB39hnhS5L93Qcpd8rN78NDXuOfrhqiZ35SwzNfVlggchfM0dU32bXJqPBZ1xw
         xBBNh2DoMA7Jz/nIDF/yTCjNVpeHN1GFVV27NasRvn74NQPSUhEYLd3RHqT25M5m/5qY
         IxxklrtsQOjw5puK4oiO+NlbTzo53b/XQfORfU3bN4vppwxzT4M4uKMy6TTVLPeFzx0i
         hYQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=268k75iGgPwajGOaY5d0Of03PhQtD6bYvRMlc9HmW4g=;
        b=pwG3dAuyFcEOsVMhLpE8nN+qGVARaX85KdtaBfTl6c+9SwZL3JFqhPIlkLtPHKt0Im
         6Pz0eJdSZsqwGOYwEhe2vB8eKQBkQnePA/UyDzNqF2UI8Zx8WIH0uQ6NrUwcqgg2b3Vp
         msB6Hz4xuNwTWzIpnvFWfLs04OS98rfTQd4bDHCWJ/3KEWt3jXbi9Fq6kHgYzrTt9zUr
         PLn2eFK3N1NMn+mfkOBIKXXhYpxhIptO0UV8WjyFfOux56iMcwQhci1JYGE41H3VoVzf
         S2E4ceQ6qeRV+A4CgxBCcZDWlSodkX6/GwcOcpgHgeS7YmoPBNVPE5Pe7A16fD/jLt8K
         ieaA==
X-Gm-Message-State: AOAM531iFlZR7GFcgbeet6GiqULctqYYifNmdIXGUnu4x0SY360zXqI/
        UwOSml8cXKYJxyfcClBUCXpl
X-Google-Smtp-Source: ABdhPJy8oDTW4wlGS6Td9PK4FFriSN4iIuF7GsjvFAltMxzfxpFZExZ3OT4DANy17qtHPVOAgF/lxg==
X-Received: by 2002:aa7:9af7:0:b029:197:bfa8:abaa with SMTP id y23-20020aa79af70000b0290197bfa8abaamr646747pfp.26.1605770017530;
        Wed, 18 Nov 2020 23:13:37 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id 12sm5491577pjt.25.2020.11.18.23.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 23:13:36 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 3/4] mtd: rawnand: qcom: Add support for Qcom SMEM parser
Date:   Thu, 19 Nov 2020 12:43:07 +0530
Message-Id: <20201119071308.9292-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201119071308.9292-1-manivannan.sadhasivam@linaro.org>
References: <20201119071308.9292-1-manivannan.sadhasivam@linaro.org>
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

