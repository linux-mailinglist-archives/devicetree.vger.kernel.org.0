Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6330351DD7
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:52:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235101AbhDAScN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 14:32:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234720AbhDASVF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 14:21:05 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC71BC022595
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 08:20:26 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id l1so1168600plg.12
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 08:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ww076wtEw/l52B1eQC1HZmnMQQ8Ebtr9JfK+3ViX3so=;
        b=KiGvVnSH66DmF8HdRytw6CJzuJoS03Rgw4NS/QOUBG/qyDfowjfjPJb4Uk9rl3tzSl
         FrtcqDfXNAt03yv2ZbMWSkUtZVxgRqCp/FxjadzOmk0LdPRI0xK8SS0cmsm50tBLUV8D
         LT2bSRIZNrc7c9mY8GZxdhUIy6Sv/F6+JsIxaTreMmGzoIVgcnJMnqibzvnhl7vEeCSS
         l+h74kxjQjZ+K2aItGMz6rzYzSTuvOU31WEx5Tonk1xxdAIDZpUuj/fNFiz29q66gypd
         vbgOy/k/jbxvAJwSS59FAbQ0k7tPzSO6eZoOEiGcRgHuJj++WFr95/LbkGkaTmvTBXB+
         F9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ww076wtEw/l52B1eQC1HZmnMQQ8Ebtr9JfK+3ViX3so=;
        b=hLf1gxYmRsXSBggh4XM8Rea1aOBq3mIZ1/v9TW1NP8pGyowCuKhlGEPp19s4IRQ/M/
         KED7GcogskRlrAmTLlUhiMPVJHWUZTJQC6ZJ5px+Vqcw3nSVaIq9bcbclN8qbiKSQWNq
         d6THkO4RvvTTbfsXSEclPNiPG0joOw4rzxJI697Rf3cLdMYZc4H5/ItZFFplKZgNHyY7
         671ZCzH12noAi+2gY7Ixik+yfVENdS74CQZNgNVIkov0mxX7HE1O9/sRkCYAfUgy5ceL
         9G/rJwS8QO0++ovbyUQ6pu7aVkdxd+FYAI0Tr4aq0hOyyxGUhhgDsaTH4RFggnzqJfNf
         ecXA==
X-Gm-Message-State: AOAM530AaErEyj7Sw8yvRximzhsRt9U97+E+NjGq4VgGywrtrJgSaGcE
        RxjW29IQMWm0QEFUymhf9LEV
X-Google-Smtp-Source: ABdhPJxAqh+RohpPAzLbk35v/zOJ3CC1I1F2tWRwN3E0X6lfjAeYaDbNp7Smee2wXabf5ZYkF4rWoQ==
X-Received: by 2002:a17:902:c14c:b029:e5:cd82:a0b with SMTP id 12-20020a170902c14cb02900e5cd820a0bmr8410255plj.34.1617290426225;
        Thu, 01 Apr 2021 08:20:26 -0700 (PDT)
Received: from localhost.localdomain ([103.77.37.138])
        by smtp.gmail.com with ESMTPSA id l22sm6500919pjl.14.2021.04.01.08.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:20:25 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com, Daniele.Palmas@telit.com,
        bjorn.andersson@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v10 4/4] mtd: rawnand: qcom: Add missing nand_cleanup() in error path
Date:   Thu,  1 Apr 2021 20:49:55 +0530
Message-Id: <20210401151955.143817-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401151955.143817-1-manivannan.sadhasivam@linaro.org>
References: <20210401151955.143817-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing nand_cleanup() in the alloc_bam_transaction() error path
to cleanup the resources properly.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/mtd/nand/raw/qcom_nandc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index 87c23bb320bf..fe74cf3aece5 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2882,6 +2882,7 @@ static int qcom_nand_host_init_and_register(struct qcom_nand_controller *nandc,
 		if (!nandc->bam_txn) {
 			dev_err(nandc->dev,
 				"failed to allocate bam transaction\n");
+			nand_cleanup(chip);
 			return -ENOMEM;
 		}
 	}
-- 
2.25.1

