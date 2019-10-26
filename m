Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26ABCE59C0
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2019 13:03:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726233AbfJZLDU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Oct 2019 07:03:20 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:35177 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726311AbfJZLDU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Oct 2019 07:03:20 -0400
Received: by mail-pl1-f195.google.com with SMTP id c3so2794569plo.2
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2019 04:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LG1a1A4v+UDy0LaHh34rRqStYpMLpkQr762xn5ClOV4=;
        b=BStLCrRVcfc9W2U7icjoCMX1Gj2iRhLpWeDE7qvJtv6LcI9rhj70IuJbL0jmQZ3NuP
         Thp+P7E0x4aeamgW204c1aDtCszgv5gf5jDU8zIG+As1R5vO6Pgqvttvz11RxCs5eYiM
         YSJWVo0gp6EVaeN/5LeNqOF5MpAodMT00ThV4Yx8A2kM4v/FDfk78BfgqU2k5uFk9R7k
         Nu+1gfqE3TflzF8j3navuOEVe0cgZU95yYeI3V6CaHemVb6LgzUwd5jng+DST/+eK+uf
         wrhytSbHS4AHuggxdSCgeZc1knDQgChWTwclqOxabp5ZpXH1DZFUkaCKTdIEysWNrMC2
         fYzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LG1a1A4v+UDy0LaHh34rRqStYpMLpkQr762xn5ClOV4=;
        b=RWd6O5IGZ03shEwnqFw7qv86O2ZWkOKcQVU7SLseoQRD9JmQBhuRNCqbFlvN37RMdX
         1F3yzuJ+zclF9IKE84X+cUzqnF52/wzx673Hf6zpwqRtZBLJ3TvZTcViqZupRbTIWMib
         RVDpOkHWokUkS8wI5zoC8BKXLX49UErEYjF+FIXk3UCQsSWA81aZPMNTWg5V3Wcz6Kqh
         YIMNvE2t4b4czuCUp1KcemFZiFkEGK5V4bCyZ/6gfTtIZXFOuU3ARbpgfU2BAf3o0Uk3
         4cSDz8NhmxCEbS10QX60KkdqSIxWp1PipkWcd0nk28VRFke6lbjDF8t/xkzbeg/JOXBH
         /wtA==
X-Gm-Message-State: APjAAAUmXmOXHCorMzhi6aU7bFoH+SFtPENC/NESw1o55f3o7F0JNBIv
        5H5pdWczpSd+tYf3zRH2wE94
X-Google-Smtp-Source: APXvYqz1uqRPaKKF0vNoP/cKXvuFKk9g7nVxs3J+M5W2qBHBPSzRNdJaW7SN2BUOGyi9FoXo7mqZoA==
X-Received: by 2002:a17:902:700b:: with SMTP id y11mr9348966plk.29.1572087798132;
        Sat, 26 Oct 2019 04:03:18 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6214:69c4:49ad:ba3c:6f9:2d8a])
        by smtp.gmail.com with ESMTPSA id x129sm5543379pfx.14.2019.10.26.04.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2019 04:03:17 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 2/7] clk: Add clk_hw_unregister_composite helper function definition
Date:   Sat, 26 Oct 2019 16:32:48 +0530
Message-Id: <20191026110253.18426-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This function has been delcared but not defined anywhere. Hence, this
commit adds definition for it.

Fixes: 49cb392d3639 ("clk: composite: Add hw based registration APIs")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk-composite.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 28aaf4a3b28a..3e9c3e608769 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -343,3 +343,14 @@ void clk_unregister_composite(struct clk *clk)
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

