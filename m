Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6A95991251
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2019 20:37:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726502AbfHQShL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Aug 2019 14:37:11 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:33242 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726482AbfHQShL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Aug 2019 14:37:11 -0400
Received: by mail-pf1-f193.google.com with SMTP id g2so4830789pfq.0
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2019 11:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
        b=T9fyNuGo7nXkSqgRbKRXwczkyhajG9D4rCnAPsUVh/g/paIXjQTwipVm1uF/ABT2V9
         cjX/57obkUbaSbUg2sQ8coroy4v0Hgd51SHP8S9tOEXpVOuYbVtzYwtNJlPCnOktQjFf
         kOVOpXGYlxPLKVxW8k0WsCm0fid2aAyuCeLH4rsHkbgV772Ak58F7M0gCcNFFm5TLEes
         E5vxEmhWsTueRFidXcLztgrb0kAly+e8Sy/3bFx3pZ/8RWtz+SNR+zbFFMiXAp7QmObT
         0cTuFNpdDqLdAseLFnL80NXg7Cx1cbma6cPnuzGALJhT/+zYduRgU3QADv2WfG8bVBaD
         J5XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
        b=RviXwLGJ/LylyqGdKElqdNENfc740/6OGMGpoVIp9j3dMXc/CoVf1FsPeldWX0dJMl
         w39qJId0d3xwIxRle5rKcPzN1yqCksDQy6d/yo3+lCyLGcYozXQ92N6dsJsOYfslKGkP
         azq/TbwmXjiTaFow1vo3rHwaCiIADn/C7Tsg/xwknV9XrKTIMEtXzBr+xSyLBHMTIUF2
         6ZMH72UGz+UkQYTOmv4/9kCtAm7wH4v6ankb66K6uvaCnWpn1ZAlPRSAgdo9eLNnZ6i5
         Fst/Nk5Fj7gt67YOiyBsDraPEH9dtb4QtS+PgRrJJRj+tzx4M+7j99kgQqh/GRHFJnAP
         OFdQ==
X-Gm-Message-State: APjAAAXvODn3Pd6XopZ64osYjEP2h2NcWKMsD950mRzDtQJiquRTaJQn
        5IAWuSighCt4L2TF1YO4yiY8
X-Google-Smtp-Source: APXvYqysG+ORw2lSBaxTYwdL1FKWqn7EDAacICLrMuXWKnS8dBwKXrAqnklYhymDEx1/Eb48y+/nkQ==
X-Received: by 2002:a17:90a:21c1:: with SMTP id q59mr12582966pjc.6.1566067030621;
        Sat, 17 Aug 2019 11:37:10 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:909:4559:9185:a772:a21d:70ac])
        by smtp.gmail.com with ESMTPSA id 33sm8588640pgy.22.2019.08.17.11.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2019 11:37:10 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 6/7] clk: Warn if clk_init_data is not zero initialized
Date:   Sun, 18 Aug 2019 00:06:13 +0530
Message-Id: <20190817183614.8429-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
References: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
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

