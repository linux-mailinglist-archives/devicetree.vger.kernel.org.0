Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB935AEF30
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2019 18:09:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436710AbfIJQJK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Sep 2019 12:09:10 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:41929 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436679AbfIJQJJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Sep 2019 12:09:09 -0400
Received: by mail-pf1-f194.google.com with SMTP id b13so11777495pfo.8
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2019 09:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lsF1y/LAf5L+2wQLGdeHEaRtoQrXQNuhBq52QCwbapo=;
        b=mdVQsy1cW0AfygbqRfmRAt0xnJVqMTwwmQzqbSnqPGSYkZ06kclM5ECyrWQBKM25dT
         XL8xTcMiEkNA0dzblEd5R9eboXRJ4QoJnyMa6iPUIWJ03wldonWCEuP7hRY3Hr/JSrhO
         EJ+7hQx8IJ/x/dHNQIuUT96b7SjMfakjzK7co=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lsF1y/LAf5L+2wQLGdeHEaRtoQrXQNuhBq52QCwbapo=;
        b=lO+K0Yh8vBpsSrpMEEgbk16B7diJ33schrla9exNjIT1wEanA0cAA+zYYwJn0Qs/Q/
         3OjvsrGfW0TOqK61MwrhmyGUgR01EMFghlQr5iPbz4uWdRZ1wasOztJANn779VzPPUac
         Ls9+I8yPxFF01gQsSbPDKFMm7qL4NGSSvg0HI0Eh/G2h5b+VUyQSB85Xt5Ub/iFPptwF
         TBzS3MZRpsa0eFSmuRrnMYdC7QjL5NHkGTBGYnWuSMa6yW/F5RnsbCdQOTQOg9hc1IKC
         K1AlJtlygAnu5qs82kwQZ/Gq8cTg+KrJtLYEkw+M133o2M2/wIr6NjdRrMh1+KxbGe2S
         tj1w==
X-Gm-Message-State: APjAAAWiHODut3iLieJSefOXwj0wMKWLOJj7cr+N/K4cs9Gn7RcJDCgp
        5GdW9bFnTsObrf6c8WQybbKOug==
X-Google-Smtp-Source: APXvYqwMeJoUoF1ubTQIVEULDLnsWvGfVPpOgjlnCF8F46XKd3UOlxCsPsfc2H79TqI9334Revht/w==
X-Received: by 2002:a17:90a:a002:: with SMTP id q2mr257538pjp.69.1568131749136;
        Tue, 10 Sep 2019 09:09:09 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id em21sm106088pjb.31.2019.09.10.09.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 09:09:08 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Dan Williams <dan.j.williams@intel.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Will Deacon <will.deacon@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 5/5] soc: qcom: cmd-db: Map with read-only mappings
Date:   Tue, 10 Sep 2019 09:09:03 -0700
Message-Id: <20190910160903.65694-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
In-Reply-To: <20190910160903.65694-1-swboyd@chromium.org>
References: <20190910160903.65694-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The command DB is read-only already to the kernel because everything is
const marked once we map it. Let's go one step further and try to map
the memory as read-only in the page tables. This should make it harder
for random code to corrupt the database and change the contents.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/soc/qcom/cmd-db.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/cmd-db.c b/drivers/soc/qcom/cmd-db.c
index 10a34d26b753..6365e8260282 100644
--- a/drivers/soc/qcom/cmd-db.c
+++ b/drivers/soc/qcom/cmd-db.c
@@ -240,7 +240,8 @@ static int cmd_db_dev_probe(struct platform_device *pdev)
 {
 	int ret = 0;
 
-	cmd_db_header = devm_memremap_reserved_mem(&pdev->dev, MEMREMAP_WB);
+	cmd_db_header = devm_memremap_reserved_mem(&pdev->dev,
+						   MEMREMAP_RO | MEMREMAP_WB);
 	if (IS_ERR(cmd_db_header)) {
 		ret = PTR_ERR(cmd_db_header);
 		cmd_db_header = NULL;
-- 
Sent by a computer through tubes

