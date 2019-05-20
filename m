Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C0196230F8
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 12:12:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732388AbfETKM2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 06:12:28 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:36053 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732416AbfETKM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 06:12:27 -0400
Received: by mail-pl1-f196.google.com with SMTP id d21so6514451plr.3
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 03:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=va9J4UW4i6NFUGtzfpaY8tfEC/B62lw3LIia2oCGJ4I=;
        b=CqYTASlzHxuj19VEkiNYFaWBgj/+AcONyfvUgSBiBiQDowtzgjclMCFW17Cx6Liwr/
         yTHpl33VMY+PK1nwAw97ptE/aov9Ny5Gd9CDUPr0BmI6OPlfMVCa88nBG0nfPFrWKmc5
         4xJmj6AY4t13zS/X2WSYUqFnK48emMw1jtHxivKXmKM0FLP1o78D9881x/AX5Y5H4trs
         BR7RWlDcGDLZXJQywZ1nZaZE1slyONTDCdLubvEOiOJ43/lPQo5uRKtVdbjKNxgEFBYR
         psxab5AHlmJ1Xmw4MdgUFX5yEcnCO4VWW9lbwf2QlwniZg7uBKRAoLg1DUSzr20QZmNr
         5xsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=va9J4UW4i6NFUGtzfpaY8tfEC/B62lw3LIia2oCGJ4I=;
        b=K2RMKv3AmNF08MtwVPvjK9yvNDntBfkx7KOOXdJLouioVj4q0U7c8vryX7nWjdp4li
         /fFXYs518n6n/kt+LOemH8IT5KsfkNuq+XP4UVaoEKhA66FUeZ7PrzSujx0mwBwODVR3
         R9zp+9HF3+v2NlsHW+RnLLWyDneko6tp3Ge+mcpEHw55sktEqyrWf6C298kZphJrcUqk
         uvitQfIfjM5ALCjg5Tui3cvIgKINoRvJETqdgDmR9qL/SHmdMvsqrPTfUwJhWQXSl0iB
         wfXVzVY4kialnqxi8LByOuBFksucl9mrHdtaq1snc0X24CEKAjrLqd3IygVfYxlAyqpk
         2G4A==
X-Gm-Message-State: APjAAAVLO2c1c8LCoa8t0niyIw057uNamKGC5wdz5m7YSTuFu9XtRk6G
        NLMvsL0i6LBvRtlaP0oMsx69Gw==
X-Google-Smtp-Source: APXvYqy8HueQjfTYyMBchyG+3yVOgHldG2Viyebm4bLNlkUI6Z3Kj5vcojNZbJJuuIgiyzD8yg/meg==
X-Received: by 2002:a17:902:f212:: with SMTP id gn18mr12999942plb.106.1558347147096;
        Mon, 20 May 2019 03:12:27 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
        by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 May 2019 03:12:26 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     adrian.hunter@intel.com, ulf.hansson@linaro.org,
        zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
Cc:     baolin.wang@linaro.org, vincent.guittot@linaro.org, arm@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/9] mmc: sdhci-sprd: Check the enable clock's return value correctly
Date:   Mon, 20 May 2019 18:11:54 +0800
Message-Id: <7e4d922ba5aff5241b0186e9480a98b14693b28d.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Missed to check the enable clock's return value, fix it.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/mmc/host/sdhci-sprd.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index 9a822e2..e741491 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -368,7 +368,7 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	if (ret)
 		goto pltfm_free;
 
-	clk_prepare_enable(sprd_host->clk_enable);
+	ret = clk_prepare_enable(sprd_host->clk_enable);
 	if (ret)
 		goto clk_disable;
 
-- 
1.7.9.5

