Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 265C234165
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 10:15:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbfFDIPJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 04:15:09 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:38506 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727100AbfFDIPI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 04:15:08 -0400
Received: by mail-pg1-f193.google.com with SMTP id v11so9896051pgl.5
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 01:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=628ZQKD9jdSHtWmvRCzFbwR4o1BOUbgB+F8276Myxy8=;
        b=gzhVSfX/Bn6qb7Bn5lG6vK47YR/iVsd/HdMBg0jqihRl1oIgJUL0n2Rcr/GT6ZSNuc
         1aRUNkfNasPsc40XFopW34wVB0wEY9EGrsslh+r78Eawvrq0LxdAUUimuOx4t+msvwLO
         uBqkjXbfx5Mxq2ZNzGt1nrr5C31jEDWO0kJeY6FO2Wj6WlshAoCOuxW1W0CrPlnaO526
         4So3Zm816GJgnVCMXFd2e19o3Ri7YmIrdFWkj0M4eZv3qQDUzvU3oBm66fGUFJM2acQn
         My9WcvNPZLHe5Q0ufI3CEyUnhMO2419UK0hNaGZL5gajope7z52/G4Mpd9Wq0AWz0APz
         haGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=628ZQKD9jdSHtWmvRCzFbwR4o1BOUbgB+F8276Myxy8=;
        b=FolHSyHY5hVaUjGWYqvHxdzZ1kDUE/vB7ojYnanh8X3LFtCkOSIoOVdY3eWZi2v0Q7
         uYEi3Jy4bkBbshpPEjUEKGK6ZcMNZrCZMlP+0gDKC2PF+UWm77s1rGqTU+IxV5oHRN/9
         jk6hONBOuCuwEJcciDNJnmnuM8/uBReFdtZhYrADwNEtZHO8IvZmpwPpJO/1o1nWytJ1
         JRkDJLrumEYl2M0Dmn42DD7Ma6wgXhKJEgs5kL3cPnJY1MRl4fJQCZpYrvtYBxf0Z2uY
         wqW9E0JJaPnIuLZHEsEBfZRivpHIXrxV6Voeg5vMGc0q5tk4CYV3SwjBqUZCSVUfRnS0
         yqpw==
X-Gm-Message-State: APjAAAWtUtqRAKUqSY902zxb835j7JwpPZzSlQxQXfbdrpvBJwm+EonG
        tkra86SUrvULwA6MYajOaAJAqg==
X-Google-Smtp-Source: APXvYqwpCoCmq59wFKEjIbjrTVby8p417ikbel/eUac3GvHTET9/FMzHRuPQWLns6Pqw0rSxaIT4AQ==
X-Received: by 2002:a17:90b:d83:: with SMTP id bg3mr21126762pjb.63.1559636107639;
        Tue, 04 Jun 2019 01:15:07 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.15.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Jun 2019 01:15:06 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     adrian.hunter@intel.com, ulf.hansson@linaro.org,
        zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
Cc:     baolin.wang@linaro.org, vincent.guittot@linaro.org, arm@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 4/9] mmc: sdhci-sprd: Implement the get_max_timeout_count() interface
Date:   Tue,  4 Jun 2019 16:14:24 +0800
Message-Id: <37b15ac756f9fca7c1f9382deb57648890bb141c.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Implement the get_max_timeout_count() interface to set the Spredtrum SD
host controller actual maximum timeout count.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-sprd.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index 31ba7d6..d91281d 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -285,6 +285,12 @@ static void sdhci_sprd_hw_reset(struct sdhci_host *host)
 	usleep_range(300, 500);
 }
 
+static unsigned int sdhci_sprd_get_max_timeout_count(struct sdhci_host *host)
+{
+	/* The Spredtrum controller actual maximum timeout count is 1 << 31 */
+	return 1 << 31;
+}
+
 static struct sdhci_ops sdhci_sprd_ops = {
 	.read_l = sdhci_sprd_readl,
 	.write_l = sdhci_sprd_writel,
@@ -296,6 +302,7 @@ static void sdhci_sprd_hw_reset(struct sdhci_host *host)
 	.reset = sdhci_reset,
 	.set_uhs_signaling = sdhci_sprd_set_uhs_signaling,
 	.hw_reset = sdhci_sprd_hw_reset,
+	.get_max_timeout_count = sdhci_sprd_get_max_timeout_count,
 };
 
 static void sdhci_sprd_request(struct mmc_host *mmc, struct mmc_request *mrq)
-- 
1.7.9.5

