Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 01E761D0C1
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 22:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726449AbfENUk7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 16:40:59 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:42959 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726383AbfENUk5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 16:40:57 -0400
Received: by mail-pf1-f193.google.com with SMTP id 13so100040pfw.9
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 13:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZOSFwWR6X/LU0mbE+B8y1nxNZ62szs9hXxH/kMhQXpA=;
        b=aoywBB6xhd+TEBFb11h+NDf8gP2RwoXM/+RGmp2MQvrX60QVIW9ZQhwvi/GaaBIGlw
         1nceIjiuGWGD/r7uWcZZeKIQEC4CtIbBD0N/NTiO75PwRgQjtX5bg08om2TWjLdA72ze
         Wz2mH1m3xdWEN1Lbe3bPVQnp9zQXOgDS2B0wU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZOSFwWR6X/LU0mbE+B8y1nxNZ62szs9hXxH/kMhQXpA=;
        b=Cfyjhb2XbLtmiGKWQX6R6NCW+/RlpcS/qIl7Hass+RLRnD7JxdyDYtAFP7sGIZqqhy
         ZCgV9YsJ0oVjxouzz95xxlE719XgeQz8i0iYH4zZC/p83MDDCR4PM+MDZMh32xe6vkiT
         eWYjcf2Phe7bpDYYsuwY2akyAMl3ZvZyoeAK5qV6twSu7Vvg9ivhVRl4d6kpiTgd0qJF
         bCyljQwcguhE8tguKxEQB93TRCVhyl6yD88QQ6pryKRe1iGjVG9fyOAEitf4aJSc/2eO
         FMxXYJhuoHoUAY6HfMCYz/XWDetFTt8Vg65HJTEcI02TSHqijo0XSWptSPkrKRN+be0T
         T0MA==
X-Gm-Message-State: APjAAAVP65BG7Twx+C0U+SpCQYl59YFpSEHc0W+1P6OM/6bxTh0i7mQw
        hsDzNlAmtbWFLNtfo8Hp3Y76Dg==
X-Google-Smtp-Source: APXvYqykohH7nNYtYXxpXQh6fvYURqf0hwvpGbFY1xMuuDEjZn5yie249qDHWz/KB5Zp3rAJCwnVfA==
X-Received: by 2002:a62:2fc6:: with SMTP id v189mr5247034pfv.136.1557866457316;
        Tue, 14 May 2019 13:40:57 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id p2sm2137pfi.73.2019.05.14.13.40.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 May 2019 13:40:56 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Hsin-Yi Wang <hsinyi@chromium.org>
Subject: [PATCH v2 3/3] of/fdt: Mark initial_boot_params as __ro_after_init
Date:   Tue, 14 May 2019 13:40:53 -0700
Message-Id: <20190514204053.124122-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190514204053.124122-1-swboyd@chromium.org>
References: <20190514204053.124122-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The FDT pointer, i.e. initial_boot_params, shouldn't be changed after
init. It's only set by boot code and then the only user of the FDT is
the raw sysfs reading API. Mark this pointer with __ro_after_init so
that the pointer can't be changed after init.

Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 93414b89735f..f131a1b8588b 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -516,7 +516,7 @@ EXPORT_SYMBOL_GPL(of_fdt_unflatten_tree);
 int __initdata dt_root_addr_cells;
 int __initdata dt_root_size_cells;
 
-void *initial_boot_params;
+void *initial_boot_params __ro_after_init;
 
 #ifdef CONFIG_OF_EARLY_FLATTREE
 
-- 
Sent by a computer through tubes

