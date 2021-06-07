Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 383EB39DA3B
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 12:53:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231228AbhFGKym (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 06:54:42 -0400
Received: from mail-ed1-f52.google.com ([209.85.208.52]:38844 "EHLO
        mail-ed1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231239AbhFGKyk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 06:54:40 -0400
Received: by mail-ed1-f52.google.com with SMTP id d13so6231950edt.5
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 03:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zY5RLk/fd5DiVsCKJBYSJiTcCIwghmyi0mxOi7Ll8fE=;
        b=lKEgVVge16JAcUzME/1+z9dZh/fLoK2/0LoM5Qvw2COMMVYN6E+3TsSXpKY0BE4JOg
         t+J3i1PVhg+5cXE8EP2uccF8zu78kR5Z0iJTXzUvc0fz8Fg9ZOm+RuV16co5czaSWudv
         YwtP15usCs7FnR0W5yjyyJ15ORKWH2tiQvesaYVVc4qU+mi4zUXPYl0+4xdfBAyYmj+d
         Hjvrh15R8nHnm0phEvH3Urv41gBtedXJ5XHh11GJJciBZxGvfMb45FtIiv5HTE05UjdG
         FaXuYk8VzSmrMma91jx1gAn9tsGGFHvvdZlOFlI8WC5SqVlj6zB7LS8YK9nB74vJFvLb
         cwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zY5RLk/fd5DiVsCKJBYSJiTcCIwghmyi0mxOi7Ll8fE=;
        b=XHbR2kuCBSc7nG9jzo2KOym0uixag5MbKdTKRhWgSCtD8J9KHPPDyoqOkrMaTrJQQ4
         eUm049w7cmMTMTAvvLTXhlXxYLaZ0iXt564MtvOFlPpH36A/q8dichJ6oRd9ZS4dynl9
         OMrC4rfGFuxkFxejT1OkWvXcBPSEe7QPe/j0jUwi4G3ov7jm0Tv7KqUc3DXCLUhU53m+
         OuTvi8mdguYjUjeaFtxB7aErfaAG9Pqash/Ckjq1ufOZP2kOX5mMYxb8v7j1xQcy6X3M
         Uo74A406QrAMOJctG5+vGvZYrtAns1jykWTegkuJvj6sEV1sgFof6Fah/ETGsCd8kHas
         CW9A==
X-Gm-Message-State: AOAM5310bYPfZW/+O7oDhBVuxbb9hxKcUDnfRyiLCv3f+Q1Ct14olQ66
        1KACZer/FdSoz/1PbgWuBo7ZfQ==
X-Google-Smtp-Source: ABdhPJw9XIdL1bVqq3Jcj5m7KmzUJiTZnc94FSczF1v6Eu98PChOdiinE9pG25oqi/pzKwM+OF5HqQ==
X-Received: by 2002:aa7:d846:: with SMTP id f6mr19252675eds.341.1623063097976;
        Mon, 07 Jun 2021 03:51:37 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-76.xnet.hr. [88.207.96.76])
        by smtp.googlemail.com with ESMTPSA id f6sm6340003eja.108.2021.06.07.03.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 03:51:37 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, robh+dt@kernel.org, lee.jones@linaro.org,
        p.zabel@pengutronix.de, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bgolaszewski@baylibre.com
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v5 3/6] dt-bindings: reset: Add Delta TN48M
Date:   Mon,  7 Jun 2021 12:51:19 +0200
Message-Id: <20210607105122.2047212-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607105122.2047212-1-robert.marko@sartura.hr>
References: <20210607105122.2047212-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add header for the Delta TN48M CPLD provided
resets.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 include/dt-bindings/reset/delta,tn48m-reset.h | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 include/dt-bindings/reset/delta,tn48m-reset.h

diff --git a/include/dt-bindings/reset/delta,tn48m-reset.h b/include/dt-bindings/reset/delta,tn48m-reset.h
new file mode 100644
index 000000000000..659a3f6c4d47
--- /dev/null
+++ b/include/dt-bindings/reset/delta,tn48m-reset.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Delta TN48M CPLD GPIO driver
+ *
+ * Copyright 2021 Sartura Ltd
+ *
+ * Author: Robert Marko <robert.marko@sartura.hr>
+ */
+
+#ifndef _DT_BINDINGS_RESET_TN48M_H
+#define _DT_BINDINGS_RESET_TN48M_H
+
+#define CPU_88F7040_RESET	0
+#define CPU_88F6820_RESET	1
+#define MAC_98DX3265_RESET	2
+#define PHY_88E1680_RESET	3
+#define PHY_88E1512_RESET	4
+#define POE_RESET		5
+
+#endif /* _DT_BINDINGS_RESET_TN48M_H */
-- 
2.31.1

