Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9130D99C9E
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 19:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392462AbfHVRft (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 13:35:49 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:34326 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391820AbfHVRZD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 13:25:03 -0400
Received: by mail-pl1-f195.google.com with SMTP id d3so3858002plr.1
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 10:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
        b=euLLhY+946DfyFpuvIdyFGJfMj0knyI7kYwiFDLPxTrrpqBXt30egdCgq3fEB/sL88
         GJZHY1upb9230M9+Zx2VsXWQbb6terlbASK2Y8NjIXMYqZYxmMrwPJrKbYsdrXVKdKVp
         h3oLBX6Xq2Kyr7bh2rZD1m3sNpfVxJEePoY4q7+bX1Usir70lWfAZ2Q5Wm9c3x/iC2oF
         i845R9dxFgTKai1UsSQc1aFVXhbltY2Rql4zSkj4KmwbqXDJHZOd0ZxLP53dYJHtXhvW
         PFZDbnj5L0kebFpNB0KndJJvUuR+yNkmwD89p/IsdVDOyVRCYiob6rsRKOyrv39tDlJH
         213g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
        b=TZY6+wxncPImIkmURn2q80wyhqgMzujYNiXqD7zPZelpvw+JngkqtaF4LjZMYik9yJ
         X0yy7JnDk7QuDSPNQHoUUc0t/kBczSFE4fW9qvwc4HlkwIvHKIiJGQW2vHbf0aXcUJvM
         LCe8ptZgJcRq2fc5ZfBeX4xxlgMZ1XRF8MZ817izVt4WUkT7Pzbi0hOb30phypEYHKqw
         SLP9T0SywatIYvDbYeD+2RdqlBP+MYMTd5Wi4Htk89ZygcA4Ll+qGlm4rAqabx+V8iW9
         6u6HLGqAhVGmgqWJSd+ZscthGkONUfUl24B4t7VDUNRJ4rhCJbxPWypqImpLfnIfRRAA
         dfAw==
X-Gm-Message-State: APjAAAXpsFiHLIiapnubrUZj0fN3ldyifmAwrZG37ciVwFqkOqk54FyO
        uhk83HKiapfmwhcmUxXjeomj
X-Google-Smtp-Source: APXvYqz5vFIuN706iVqol8q3EsrpnwcsQfBFEXMXn/Nwi/SX1PpPwoQhg1LPT7MBQ1EhYyTnuzzXkA==
X-Received: by 2002:a17:902:788b:: with SMTP id q11mr40640145pll.308.1566494703001;
        Thu, 22 Aug 2019 10:25:03 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cc:5738:24ad:193e:4b59:8a76])
        by smtp.gmail.com with ESMTPSA id r12sm31705798pgb.73.2019.08.22.10.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 10:25:02 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 3/8] clk: Add clk_hw_unregister_composite helper function definition
Date:   Thu, 22 Aug 2019 22:54:21 +0530
Message-Id: <20190822172426.25879-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
References: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
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

