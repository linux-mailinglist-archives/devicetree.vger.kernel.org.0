Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD12662BD8B
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 13:21:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232197AbiKPMVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 07:21:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233185AbiKPMUi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 07:20:38 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9A4EDD8
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 04:18:25 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id a14so29637010wru.5
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 04:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0720H8kB4HUgr4EFjiQxs7KXJ+uOQn0Rzyj9NCfE628=;
        b=fI22dHdKLv9JyW7/VgthqSLtKlqYizA4Msm4NhUsun1GO/pfzcdeMO3IsTw8hIDfct
         v7NFXmE3xiZFfLHBqFKEFo5Spfpd6nO8EOVLpIa4Fdf2ZnsAH2Z7hp73+WBVJZdCGC+Z
         cobWAtBp7/EVuAcZCHKzdqGy9SyIh40mWgDYXJel5vjz4KDE/0NmwAYK24CPNoayo6BD
         GXffwmGvL3HiQlMUS70BFwnYrTlPHh4YpcjxFL9STD7BLvZoXYDOLX3kdGG7qNOaizIC
         aJV2Y4gzUCVDafKYk85OhRNHDI7Xyz+EkEzHQhZPseI2H5FMaiteFs1zA3Ada2RZBvsO
         Mjjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0720H8kB4HUgr4EFjiQxs7KXJ+uOQn0Rzyj9NCfE628=;
        b=0xuZKUbZSn0L8AK3C2rwaF2xy9EwaW8as5olN9SoT5D4Rr9Rri8onuySR3gAy5xUHv
         1MYn7adNZldIVGq5H9RSSAaxNV8GfcYppPTMQHKGROnO/rSNEzGRJNllf95VplxXH9h+
         iQQkTFnjwbvhn+RDGy1HG6ljufDu/9ip5W+Ykfwed74F4Y91kjwItFNgGs17GgdFXKA6
         GVDdl+vy9OFc7b8OeuLS2FxAM4zJzhiGdikIUtTQ+mcQ1cg9VBh9vLtSOjqHYsioDyTZ
         ilquyGXPuPpj695GQNFhyzaBNZnZA4CtfwYonNVfU4Xg3X9tVnOT9RwE5u6yKarmAfdY
         5ISQ==
X-Gm-Message-State: ANoB5pk18uELew3jaDz5fB7qbdZ2ISY6cJFOnEYpU3ntqzYYiaUMs5+T
        urt6PN3KKwhrbzEAgTNbEcJd4A==
X-Google-Smtp-Source: AA0mqf6Xjq77isX0OSA6cTSNyDOjZgzdFN26bNo8NgWlBcprOGnbw/lKgn9inpIsk0gJsTtBbGOLgA==
X-Received: by 2002:adf:e812:0:b0:241:7277:990b with SMTP id o18-20020adfe812000000b002417277990bmr13853507wrm.672.1668601103912;
        Wed, 16 Nov 2022 04:18:23 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t14-20020a5d42ce000000b00241a8a5bc11sm1090359wrr.80.2022.11.16.04.18.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 04:18:23 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: [PATCH 1/2] ufs: host: ufs-qcom: Clear qunipro_g4_sel for HW version major 5
Date:   Wed, 16 Nov 2022 14:17:31 +0200
Message-Id: <20221116121732.2731448-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116121732.2731448-1-abel.vesa@linaro.org>
References: <20221116121732.2731448-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On SM8550, depending on the Qunipro, we can run with G5 or G4.
For now, when the major version is 5 or above, we go with G5.
Therefore, we need to specifically tell UFS HC that.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 4 ++++
 drivers/ufs/host/ufs-qcom.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index ca60a5b0292b..72334aefe81c 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -227,6 +227,10 @@ static void ufs_qcom_select_unipro_mode(struct ufs_qcom_host *host)
 	ufshcd_rmwl(host->hba, QUNIPRO_SEL,
 		   ufs_qcom_cap_qunipro(host) ? QUNIPRO_SEL : 0,
 		   REG_UFS_CFG1);
+
+	if (host->hw_ver.major == 0x05)
+		ufshcd_rmwl(host->hba, QUNIPRO_G4_SEL, 0, REG_UFS_CFG0);
+
 	/* make sure above configuration is applied before we return */
 	mb();
 }
diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 751ded3e3531..10621055bf7f 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -36,6 +36,7 @@ enum {
 	/* On older UFS revisions, this register is called "RETRY_TIMER_REG" */
 	REG_UFS_PARAM0                      = 0xD0,
 	REG_UFS_PA_LINK_STARTUP_TIMER       = 0xD8,
+	REG_UFS_CFG0                        = 0xD8,
 	REG_UFS_CFG1                        = 0xDC,
 	REG_UFS_CFG2                        = 0xE0,
 	REG_UFS_HW_VERSION                  = 0xE4,
@@ -75,6 +76,7 @@ enum {
 
 /* bit definitions for REG_UFS_CFG1 register */
 #define QUNIPRO_SEL		BIT(0)
+#define QUNIPRO_G4_SEL		BIT(5)
 #define UFS_PHY_SOFT_RESET	BIT(1)
 #define UTP_DBG_RAMS_EN		BIT(17)
 #define TEST_BUS_EN		BIT(18)
-- 
2.34.1

