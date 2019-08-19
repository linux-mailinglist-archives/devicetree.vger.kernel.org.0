Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD7C092421
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 15:02:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727687AbfHSNCM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 09:02:12 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:40461 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727684AbfHSNCK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 09:02:10 -0400
Received: by mail-pf1-f196.google.com with SMTP id w16so1142092pfn.7
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 06:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
        b=VufrvbFQdUVgR2KZH4gK/w2WqrjeJ5IRBdIOof/xPx9v+wnLmRXJkXU0NZ+tQd46x/
         QgpAEI4EPbEQz98g1SdK/ngd56fWxtjMn7ufEJDKX+GpEj1LPezUmSQsZaeV6PxxCzxR
         nJuhtz/lNlyEmd9d9qRTRXbAf5mpt+YXyHIvj6DvxaAunQ5qBhuXVy2etf6D6ctX6RWg
         +MiF/EBW3q6oDQbYITP8vWkvmxXON2xA2eW2GjGWuEa8ZKIacjUMkaMIalE3Z0qGBUQI
         9hQyUjeDaJlReNycLRrCuFxmSeQlxAGBHDWJQdhwRfxfs60+zq+mEpH7JitKJWY/imGZ
         YsIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
        b=J8yZF73W8yo905v4ryn0vcu3g/al6IPEilbwPvRsMApu+XnJQWMviuf6L2qiesbvMb
         UVvZ6GpCDDadMv3oH29JAB2TF5kJIN0OHTKVaee4lb3okxbrNtG91GAs3+w7ZjindgaO
         ATq1SjDl1jFEk1cQxt94aYXbZ7IKOJ0UW4mKnHWMjVzlGZ7OYWm2yucxlexL8DNkbKC0
         3jLLBSzKUN3ZxEX01Czcc9WFefYDfW2lJSs8A5XmYbJV2gTvQCZDY09M9LME7x4D1ms7
         fU8JbxDuzbrRydfNaNED4OjfQixaa5A26Cyor+wDvgga0DaCIuYIyEPXz5l6aI/aGrvf
         WUNA==
X-Gm-Message-State: APjAAAUNIOz5vtV9/1ZLCgbqj1CiS+NnbWKHn3O+2SfLHswqOkH+pAGl
        jbZr/pmRqpVDJIIbSx07PF3P
X-Google-Smtp-Source: APXvYqza6JJp8ZlgyR1NC0a880LnvMs0ZhTG3JLB2Bu7+xPcqZur+6a4KBnvLdCe1L5p6BSFEnUraQ==
X-Received: by 2002:a65:64c4:: with SMTP id t4mr18403845pgv.298.1566219729688;
        Mon, 19 Aug 2019 06:02:09 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id l123sm20626464pfl.9.2019.08.19.06.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 06:02:09 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 3/8] clk: Add clk_hw_unregister_composite helper function definition
Date:   Mon, 19 Aug 2019 18:31:38 +0530
Message-Id: <20190819130143.18778-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
References: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This function has been delcared but not defined anywhere. Hence, this
commit adds definition for it.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk-composite.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 4d579f9d20f6..ccca58a6d271 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -344,3 +344,14 @@ void clk_unregister_composite(struct clk *clk)
 	clk_unregister(clk);
 	kfree(composite);
 }
+
+void clk_hw_unregister_composite(struct clk_hw *hw)
+{
+	struct clk_composite *composite;
+
+	composite = to_clk_composite(hw);
+
+	clk_hw_unregister(hw);
+	kfree(composite);
+}
+EXPORT_SYMBOL_GPL(clk_hw_unregister_composite);
-- 
2.17.1

