Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C8A721BF5
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 18:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727643AbfEQQr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 May 2019 12:47:59 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:46768 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727610AbfEQQr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 May 2019 12:47:56 -0400
Received: by mail-pl1-f196.google.com with SMTP id r18so3581688pls.13
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 09:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O42F5A4GX0eA84yy8Ef+AkKPQRwJmwFWVhtyExm+PVY=;
        b=PYP/b3+x4BUW2tXl5EeWPVhQ2Ydr9f0XlD8JFJZdeKuWGUm9x2gBEwCIanOv3mBLby
         T3lJRIqhz+aMnbrOABRtKWxma2+WZvjeN4x+PFt3loQXcwqG8h15GMZTzENSWae+cGEi
         HfbFUHK/8IaOWGApHdEcikH6nKx9xsnyyafPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O42F5A4GX0eA84yy8Ef+AkKPQRwJmwFWVhtyExm+PVY=;
        b=Fo15Le7CCjBv+M2xNna5JqOurnSY6bmFbtirlu/YYVZab6rfoWgkhAs2O9BMPiKWf1
         S6M7oATsM0DzK08iStgvRjUiKGBqSvtb3JDZ2FKjoMp4iJ6pWadyev3nVAt0TxbqEfaS
         5PFwjDojC4Y3AlqUM+2CHQTGs70dB6OGyzoDkeuFaocFWVWI83n6t9/Sc3o8swwbyBrt
         7nhxBMGk0D/sFQB77SjnpQESv8djkR0+mQwc4IX8vhWWMV4ijVTW0C/AIGXtqPOkG1n2
         TOtIw8NA92Gkd73/LvDO07vOVJvKSNNGk8l0dgoz3WDdRvDKD+frM3za/bb5jxhx0Y1x
         t8mQ==
X-Gm-Message-State: APjAAAUOmpvQPK2WpKzYfBl+aGJFZT2IoJ2hV1byUyd3ctN9JuzaMNBd
        FOD9wSsUKbnxS5EnGxcVN4x6YA==
X-Google-Smtp-Source: APXvYqz5grEEF0O5CgARwN/Kl3T5APmZtPmXKSBTqLDuepRs1NbjLFpphhsqHJa3rK39CAOOKrQTJA==
X-Received: by 2002:a17:902:968b:: with SMTP id n11mr57741397plp.118.1558111675502;
        Fri, 17 May 2019 09:47:55 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 May 2019 09:47:55 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Will Deacon <will.deacon@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Dan Williams <dan.j.williams@intel.com>
Subject: [RFC/PATCH 5/5] soc: qcom: cmd-db: Map with read-only mappings
Date:   Fri, 17 May 2019 09:47:46 -0700
Message-Id: <20190517164746.110786-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
References: <20190517164746.110786-1-swboyd@chromium.org>
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

