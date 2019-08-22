Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3933299CA9
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 19:36:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733098AbfHVRgF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 13:36:05 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:45912 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391643AbfHVRY4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 13:24:56 -0400
Received: by mail-pf1-f193.google.com with SMTP id w26so4379825pfq.12
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 10:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
        b=RX3L3NEysLNGueK8XYcm4tI5nQZ2pEFyeSxHYiObmFt8nWRtF62qzckIHmf2rpGxrP
         BLn4KXyVPFgfoviJQgPO/s2j82QZFQl96pFgqGNU4z2fsVsaxfgeFqyUhckvdrHLzqrA
         p8HLWOVvrNzJ8jujwhikFfgqm0RNuFfV4wK1Xj4qfo6pDRR2KeGAgorfqhi1U2Q1agzD
         qLOLhFMM0fBHGwattVPoacW0SA8gg+UqkAchcyWJxEspzojX5olDwPFZWk9xUAaO6LPb
         8Qp3+xNgeubaXFd3rIDxjUGNumFk054qag4X+vH9xDBisRUZi4LK940Ny0tqYab7R/zY
         5V+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
        b=Az/edlLZnXUi5Qowp87RkiGpsCFgJpA9k2sq+50py6QAnzU8v+Q8uGgatacs8SFLl0
         19vKQgN9G5dH81qAtYFnRBg0vjGHAITg9FF/fNZM1NDlnzuojIWwvtc0k2NjjEUR62Tn
         +oo3D7XELySylXQO+nEUCRmIWrTw42l7iHYVqhauMUlXAkCUruxd+L21lY3sA2KQdvy4
         MgxQzU1huCJrG5VOeOSs51F+Cwwu977ZPHjdGO4giyo8Fzgtz/SKqJrIaM7PMgwHVJPX
         nOV44gtmaSgMl3XvY0F1JVbK4HG6k0a4ky6axxFkJia/Bkpm16rvKNRQQyBgaBDUgeQJ
         GgHA==
X-Gm-Message-State: APjAAAU9Mre0lNuzL1mUE1uAVGL7/MTlBVJ8FHOBq57qfcL4hwJlr8Ik
        kUiZ+A2t7qYfuHPF3VnUdMDL
X-Google-Smtp-Source: APXvYqxXFDaJ955RJz/a34+rWtNfFOs3hBYdX2U9Etyi7MVotAVqBYvnVOl+UsQc16TjNDKQSF4Dkw==
X-Received: by 2002:a63:e20a:: with SMTP id q10mr327282pgh.24.1566494695791;
        Thu, 22 Aug 2019 10:24:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cc:5738:24ad:193e:4b59:8a76])
        by smtp.gmail.com with ESMTPSA id r12sm31705798pgb.73.2019.08.22.10.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 10:24:55 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 2/8] clk: Warn if clk_init_data is not zero initialized
Date:   Thu, 22 Aug 2019 22:54:20 +0530
Message-Id: <20190822172426.25879-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
References: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The new implementation for determining parent map uses multiple ways
to pass parent info. The order in which it gets processed depends on
the first available member. Hence, it is necessary to zero init the
clk_init_data struct so that the expected member gets processed correctly.
So, add a warning if multiple clk_init_data members are available during
clk registration.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c0990703ce54..7d6d6984c979 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3497,6 +3497,14 @@ static int clk_core_populate_parent_map(struct clk_core *core)
 	if (!num_parents)
 		return 0;
 
+	/*
+	 * Check for non-zero initialized clk_init_data struct. This is
+	 * required because, we only require one of the (parent_names/
+	 * parent_data/parent_hws) to be set at a time. Otherwise, the
+	 * current code would use first available member.
+	 */
+	WARN_ON((parent_names && parent_data) || (parent_names && parent_hws));
+
 	/*
 	 * Avoid unnecessary string look-ups of clk_core's possible parents by
 	 * having a cache of names/clk_hw pointers to clk_core pointers.
-- 
2.17.1

