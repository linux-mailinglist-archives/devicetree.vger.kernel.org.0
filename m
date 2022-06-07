Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77938540041
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 15:41:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231596AbiFGNlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 09:41:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244847AbiFGNlF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 09:41:05 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C51F5EDD2
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 06:41:05 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id u3so24247002wrg.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 06:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yHhpnE3ZGoGrvzDhV4NP/nzD3vM7kpqOZlaREnhoQY0=;
        b=gQAfK2ZOiazGohPpp6VRZ/kpQrAejiW+Qpq5KT1xRympXKTSMu/Xp+B3sxQ85v4e9E
         28/PIDOFbXaOS8ygg2LsA5PtOgiOLpmHGoOiDsyEAlgx/GYC97g8yDdIevpMRXkWNxwL
         tvAVKWSIw1Sz2BhzFuV/LUTGVQwqBU7rzVddCn/JmOjgBRC/p6GH5Gkole0IhAIdmdjb
         o/cxuj3mp1jzg1qN6eTE7QKTpyI5xAJ853sXNClLeEcXPN8NXCa5b00C82k/XLl3q0CT
         thbxpQlfNkL9G9nz2Xw9RuQq5Ael7ZwIs81cqoGzD1ywCHZvUo4TvirtDaMlWDUbUKtl
         QmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yHhpnE3ZGoGrvzDhV4NP/nzD3vM7kpqOZlaREnhoQY0=;
        b=n+xdQqc7DxcKJL0PK7jUtYe1G7KhL/7FMCGlbe1D5Moe5mRwNDAAKD+36fDlC5wq0r
         Zf9tS/xKQCrdL2oG+uatTpfM5V48wiDWKD1LF16VgK9SL/BflXYQQzTEzWCChQ+C9L7c
         elNY2+Aq18cDD+TmwIMua136C33VSaghTaHhwHncoXnRggAYjo82tRfjzFyxkP2vfjFz
         YUum6s2tBzDBuzz2+TiVutWEPcVHgwIIZGCZTghjoC1W6Nc3QkuPQcbzqH50pnPdLHjR
         WhPHtIZhic/kB1LTmBEqh7Mh8qrQI9BOlj9KKAtgLBpkhuMteWaLJHpCsZwYC/sx4m/l
         MRhw==
X-Gm-Message-State: AOAM533pM3mFrWsuf2T2fEeXXDUXuIiSJuywsgptWS3OOPaVLH2DFbud
        ra8BtpSger6cN2WhBF2UxmN5Yw==
X-Google-Smtp-Source: ABdhPJyP5Qh5pg6XinTmumB5XFCgRZc1lxZeylfUypDYGHsl45Fk9zqVp1OTsdQUBGWwcd3O1l+BpA==
X-Received: by 2002:adf:e9c5:0:b0:217:56ae:c661 with SMTP id l5-20020adfe9c5000000b0021756aec661mr13931983wrn.513.1654609263287;
        Tue, 07 Jun 2022 06:41:03 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k7-20020a5d6d47000000b0020e5e906e47sm17818792wri.75.2022.06.07.06.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 06:41:02 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, jacopo@jmondi.org, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, konrad.dybcio@somainline.org,
        andrey.konovalov@linaro.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 2/2] media: i2c: imx412: Add imx577 compatible string
Date:   Tue,  7 Jun 2022 14:40:57 +0100
Message-Id: <20220607134057.2427663-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220607134057.2427663-1-bryan.odonoghue@linaro.org>
References: <20220607134057.2427663-1-bryan.odonoghue@linaro.org>
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

The Sony IMX577 uses the same silicon enabling reference code from Sony in
the available examples provided.

Add an imx577 compatible string and re-use the existing imx412 code.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/i2c/imx412.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/i2c/imx412.c b/drivers/media/i2c/imx412.c
index a1394d6c1432..3b7011ab0a8f 100644
--- a/drivers/media/i2c/imx412.c
+++ b/drivers/media/i2c/imx412.c
@@ -1282,6 +1282,7 @@ static const struct dev_pm_ops imx412_pm_ops = {
 
 static const struct of_device_id imx412_of_match[] = {
 	{ .compatible = "sony,imx412" },
+	{ .compatible = "sony,imx577" },
 	{ }
 };
 
-- 
2.36.1

