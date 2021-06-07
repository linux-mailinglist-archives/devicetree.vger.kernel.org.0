Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3F0A39DC8A
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 14:35:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230487AbhFGMgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 08:36:23 -0400
Received: from mail-ej1-f53.google.com ([209.85.218.53]:40767 "EHLO
        mail-ej1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbhFGMgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 08:36:22 -0400
Received: by mail-ej1-f53.google.com with SMTP id my49so9676743ejc.7
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 05:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qNm0L7495enYGVyN6i9GOiHWW+ICwARAIgvoyqcqdYI=;
        b=OQYSaQqXwFwjBs/3D1EGSetIjOBwMOch38hL0WOEMJ6jZG//28XSRM07Fb6G0Q86Rx
         zS5Qt7BACU+QNav2yGnX0Pn03X3vKT16PhJRxjNdWRMUBoaE1l2XFBlnAhjg/jA5Ue7D
         ciS8urjfpFjumqHFQeRpNqeXKKhJr9QaAvSjXIncczqcTjvDeub3ronZMiT/drto0r4K
         sfT9kho4nQ/bItMXrVWxzjvUl6qn/GBR/moOItP0k+dyPXnSy93LxDkKFZW2/m18OYNU
         G3AtoFRKyImxi/pwgDCy88vm3lWsRiIGn/1qAkquKDrDCG/v9GvjePKPvPmjxCoNQTIc
         kibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qNm0L7495enYGVyN6i9GOiHWW+ICwARAIgvoyqcqdYI=;
        b=KVel2wb5m14QJ6+3+cTi1SMs7hXlbPGRDzOZNzd9tSJYVXoyMXf8vxhbbFFnJ1Ri9p
         S7z1pAWtcW71VQL9ClVC6eu1Z2uDZOh3Bhjx0pCHFJN20/q/sY2mMnI5IW6AjuuD4ub1
         w7ib6BtF7kTu4p/lrkbk5mbMwrChOpZDjaB+XseP+UypbZbsAGgElWK7eOpzYEJ+dIMo
         jjgLh1ZfBePFgtioMqrYTqrC9NZd/0iMkpc9DAvTvia3ZSdJiZIQcIBuc98tETh9e84a
         Ers/N69jyotVBZ4Mj5q3yA5IWdmCvqTutU9Wx8AHdwT1JSNe+QhQp3otDfKmo3Jo7WH1
         kmOw==
X-Gm-Message-State: AOAM5319OSIuJ9hGBf9PpXNHgPnuNyfm2lx/Bm3O/yMwOWfF0DgDMk4o
        yYRv5KrkOw1ZLWyRv0SQ8MqfYA==
X-Google-Smtp-Source: ABdhPJylM2rQyHmH0zgPyfXgBHvJ17EGUPAYdH2/t597V80COMGmmaizPlRbMRvvZR0iwp+ru0Qv+w==
X-Received: by 2002:a17:906:4ad2:: with SMTP id u18mr2946329ejt.197.1623069210322;
        Mon, 07 Jun 2021 05:33:30 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-76.xnet.hr. [88.207.96.76])
        by smtp.googlemail.com with ESMTPSA id f18sm6471000ejz.119.2021.06.07.05.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 05:33:28 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, lee.jones@linaro.org, p.zabel@pengutronix.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v6 3/6] dt-bindings: reset: Add Delta TN48M
Date:   Mon,  7 Jun 2021 14:33:14 +0200
Message-Id: <20210607123317.3242031-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607123317.3242031-1-robert.marko@sartura.hr>
References: <20210607123317.3242031-1-robert.marko@sartura.hr>
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
index 000000000000..d4e9ed12de3e
--- /dev/null
+++ b/include/dt-bindings/reset/delta,tn48m-reset.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Delta TN48M CPLD GPIO driver
+ *
+ * Copyright (C) 2021 Sartura Ltd.
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

