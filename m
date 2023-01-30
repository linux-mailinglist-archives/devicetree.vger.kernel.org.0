Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C4A0680AC2
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 11:26:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236432AbjA3K0w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 05:26:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236429AbjA3K0o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 05:26:44 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05B812ED6E
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 02:26:40 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id bk16so10534357wrb.11
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 02:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mNpd3roa5gv6troS6TLhHBAaJw7HpklMLo5JJSNOuFM=;
        b=HvVgNisJ1GOros7sTO0b7jt6wckJtww8GE0pYFh/mdrEOLAcdKo8vPknDwup16osyM
         116amBTSkKUkZ8ekVMYLvfeqfw5qoBdXOLh4SHUHOOcBkstUcLJjw95obMk6rJSVbKjS
         jHAE6s5PzQaftkaFWBDvZ1Y32Am60WjAZ4zjvWjfB6KlK/GbXWqaBDgX+ZUj+kieeJ3N
         xlZglbm8ucQewISN4rZyw375sWGlYOOpp9mK5o81r+L+y9Nu5mUB36mXBzJdTCCW4/1Q
         NXgBjgb+wtTtDdgBkmjtDiARGJcZK4ENi17cLkZgpm92XEUBp+mW6HAo5xVLPYkbLeXk
         SXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mNpd3roa5gv6troS6TLhHBAaJw7HpklMLo5JJSNOuFM=;
        b=UVjKnuNYUzpIIZAKJg3WczAqPFIUpoFQvnz2BWcm7Ii5pMsszdU7tAE+MJJ2xqcDBO
         kph9S+ijpbCAj3lS3vmdOyu0Iz9xbswKJtvvUhteKCarlY4lGVPae+ekJKDVOKQbCFfm
         JmhqkjJ25etLFSr46J1dmi0zvrQMgQfuccTokvpqbiQkoXJqawjPMrhEhhErSObWYXhS
         0WyEBA74h4Iz1kfsI9OABWTeoE7NRWPR65YhEr2GxKps3P3xD+EC9uYp7N/XrPfpbjis
         PBYCqaUhY1GrUA7VwhPDx5++Qx75cKkGJdSDinssszOKMVWWqnTmzD3Af/qysNYu0LCc
         g71A==
X-Gm-Message-State: AO0yUKW6UfE7gcySgEa1acPos6E7/9hGLpSaaiJwqf1fjSoAnid5yAPT
        rIbiIp7/VBach2YT7a6H/l1OaQ==
X-Google-Smtp-Source: AK7set9AyBy9CX25oVJxOx8ewKugRbpLcfdp5pWqnHAyLQivzN79VIqqC6uSU+2kFVMMMrl1nKkKlA==
X-Received: by 2002:a5d:5c08:0:b0:2bf:b775:babd with SMTP id cc8-20020a5d5c08000000b002bfb775babdmr21396377wrb.28.1675074398562;
        Mon, 30 Jan 2023 02:26:38 -0800 (PST)
Received: from alex-T14.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id s5-20020a5d5105000000b002bdfcd8c77csm11426785wrt.101.2023.01.30.02.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 02:26:38 -0800 (PST)
From:   Alexandre Bailon <abailon@baylibre.com>
To:     yong.wu@mediatek.com, joro@8bytes.org, will@kernel.org
Cc:     robin.murphy@arm.com, matthias.bgg@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Alexandre Bailon <abailon@baylibre.com>
Subject: [PATCH 2/3] iommu: mediatek: Add support of unmanaged iommu domain
Date:   Mon, 30 Jan 2023 11:27:21 +0100
Message-Id: <20230130102722.133271-3-abailon@baylibre.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230130102722.133271-1-abailon@baylibre.com>
References: <20230130102722.133271-1-abailon@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, the driver can allocate an unmanaged iommu domain.
But, this only works for SoC having multiple bank or multiple iova region.
This updates the driver to also support unmanaged iommu domain if
MTK_UNMANAGED_DEVICE is set in the iommu id.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
---
 drivers/iommu/mtk_iommu.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 2badd6acfb23d..5884a1ad409a0 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -858,9 +858,15 @@ static int mtk_iommu_get_group_id(struct device *dev, const struct mtk_iommu_pla
 static struct iommu_group *mtk_iommu_device_group(struct device *dev)
 {
 	struct mtk_iommu_data *c_data = dev_iommu_priv_get(dev), *data;
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct list_head *hw_list = c_data->hw_list;
 	struct iommu_group *group;
 	int groupid;
+	int i;
+
+	for (i = 0; i < fwspec->num_ids; i++)
+		if (MTK_M4U_UNMANAGED(fwspec->ids[i]))
+			return iommu_group_alloc();
 
 	data = mtk_iommu_get_frst_data(hw_list);
 	if (!data)
-- 
2.38.2

