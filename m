Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A5093517F9
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 19:48:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235768AbhDARnJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 13:43:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234861AbhDARk4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 13:40:56 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05C59C022582
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 08:15:41 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id l76so1719731pga.6
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 08:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ww076wtEw/l52B1eQC1HZmnMQQ8Ebtr9JfK+3ViX3so=;
        b=tF+Bf0zSHiNRZEzbvax45HKx5XasDVc4mTeR8Z3f5KOhpxLF17YeyipN6Mnk2MEho2
         dIy2iXo7LwjVg0CYNSwMxpVJMpz0INw6mgFNFWDKvTcXRhEiv6IaE/tgrRyuLuuHakLr
         9mxUK0wM+O4SVQOusVcdbIoRK689kFxwmzBSTqZmkR6XL0O/dqF0j9iga4Xh67Vj2s86
         /xsy6fLZg+0LuawDYPkxWkh0BiCSHlUhcKuW82dbBmgjOMHhjPChWXn9q7xh49G6l+ch
         aDHeoIzlmBCObxHRlsK5dxeeV4nlRtEdxcC60DDZc+FRNUAy4Bh1U67sZnjTAGYQ7YQ3
         z4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ww076wtEw/l52B1eQC1HZmnMQQ8Ebtr9JfK+3ViX3so=;
        b=uGXVhGGyfOnnaViEswXhnziTRCi57itUJM2bw1aGJrpIxy7CBArx0CYQi+ZI6nQTBc
         hRc1RMkHUOiKZmw9fRE0UGvDGM9JZdqboWE/vo1fXZLUgrEO8QUJqDGMBg38UH7GUg3A
         1CsbrElwDgIS8uchNTPGGzCyu3u4EhZFIrro9Ek6rsPoTf7xJ1tRibsya+m7RWSUd2IW
         s8zPCEVh7Cj9Tek0VnBpFKWZA3VBIpV/E8lMiE3hm7tJ4+B8u6mGt0fyKnAbfUkTk6l6
         +3/85XKfUy2rjkvaZoWc26HD8yd+6yG90r131xId7Frf9jcc5oBevAwvYFsff9X53ZBh
         /Riw==
X-Gm-Message-State: AOAM531H64RxWhJFxkmCnFR6hIpZzn4Z0TnOgeZLp6UHDakfIv2ftOEP
        gCY8J2L2OQfSWfBkwBwuC0d6
X-Google-Smtp-Source: ABdhPJy3tSsSELJHLBsot1ilaqec0UUD358hycDfpgPt8GVfk7MyEPHq1NQy/QE8vIhIyquNpGL4vw==
X-Received: by 2002:a62:27c7:0:b029:204:7b11:3222 with SMTP id n190-20020a6227c70000b02902047b113222mr7788418pfn.34.1617290140491;
        Thu, 01 Apr 2021 08:15:40 -0700 (PDT)
Received: from localhost.localdomain ([103.77.37.138])
        by smtp.gmail.com with ESMTPSA id 35sm5652769pgr.14.2021.04.01.08.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:15:40 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com, Daniele.Palmas@telit.com,
        bjorn.andersson@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v9 4/4] mtd: rawnand: qcom: Add missing nand_cleanup() in error path
Date:   Thu,  1 Apr 2021 20:45:08 +0530
Message-Id: <20210401151508.143075-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401151508.143075-1-manivannan.sadhasivam@linaro.org>
References: <20210401151508.143075-1-manivannan.sadhasivam@linaro.org>
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

