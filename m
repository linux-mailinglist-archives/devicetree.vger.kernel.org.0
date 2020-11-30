Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 020312C84D0
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 14:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726589AbgK3NMb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 08:12:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726631AbgK3NMa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 08:12:30 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDB91C061A4C
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:11:10 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id q3so2321564pgr.3
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:11:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6DwCQ27nNXwfD9t5ZQW62DZJZaYrd0rxE1o52EO0bsI=;
        b=fDo4Dqlk6cSZ9usHLHZ9MyE9dx8CfKFu84UXkwdop8ja/oz3xWjKNNUmuu9EnuA0Wd
         hRB9JkrFYZS3YBc1BDaDl5qevvdl2QYeOgmgLKu16qY7Epz5rJ802ry8yhyRJJZr9BtC
         3/xJdHoxUdcseH9u08NP6CCFihq6r13triKxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6DwCQ27nNXwfD9t5ZQW62DZJZaYrd0rxE1o52EO0bsI=;
        b=XkbgvS3IU907EP27PkJAGvAyGOVcRrP/zZujGUmOm6592vFgK98bXM1OrQlsvoVhBd
         unHaqiMs6Q2FR5HDXglxzdVlfreaprkB/EoshGg0x4LRVhBCIYcXMlJWJCfccOFZQ7K9
         Gy7WqL3AM9iXivkrI/6MSSWPPsYKfhuNppwDASud/Woy1gTwsv6pFPbF5uWwNYrFrxl/
         Ri7BNk/2eN919EOAFyIsZp/szwr1vR8KR3CLFpdkRzm5fDZ5bt6L4AEDVBig1M9f4MUJ
         lnhGT3YFtSjxS5d/RAkmJg4Xj7H/a0wWUHL/BnmbpcbCojhI0qcnQqCvDgIFnyJ1qj1F
         RsNA==
X-Gm-Message-State: AOAM531mL1DjQl9gBOSpzhgbtJf2XYRuukwQXDyPqqLIujquMRrxV7h1
        JZ+pXm4eBTpIKfO51k5jo0uMouWY5zht+w==
X-Google-Smtp-Source: ABdhPJxzu3kAc2adlQ9zAbnUdal6pRji36O3f80wxg/CAAXaiNfmUGxPsOYHUwTuBg6FnsdC8eztBQ==
X-Received: by 2002:a63:3708:: with SMTP id e8mr11310267pga.269.1606741869279;
        Mon, 30 Nov 2020 05:11:09 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id a4sm41757578pjq.0.2020.11.30.05.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 05:11:08 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        w@1wt.eu, daniel@0x0f.com
Subject: [PATCH 5/9] ARM: mstar: Add common dtsi for SSD201/SSD202D
Date:   Mon, 30 Nov 2020 22:10:43 +0900
Message-Id: <20201130131047.2648960-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201130131047.2648960-1-daniel@0x0f.com>
References: <20201130131047.2648960-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SSD201 and SSD202D are basically the same chip with a different DDR die
packaged (64MB DDR2 or 128MB DDR3).

This patch adds a shared dtsi for the common parts of these chips like
gpio, pinctrl etc.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi

diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi b/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
new file mode 100644
index 000000000000..0811220f0a79
--- /dev/null
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "mstar-infinity2m.dtsi"
-- 
2.29.2

