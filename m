Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B96452C56A6
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 15:05:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390011AbgKZOFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 09:05:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389970AbgKZOFG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 09:05:06 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E67C0613D4
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 06:05:06 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id bo9so3028297ejb.13
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 06:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IR/x5ppg0wZJxqnSWD4QBn+IO7HGLxlSw1Ip7OHvr2U=;
        b=eSQRSkHDHxJpGRZx48zDMHSQApFE6qcCNRpRf0pE7BWtGOQCTmM4C3P0zzIY7oHk7e
         CLmsvn+WzYqU+jCO7fi3ZyDQek3W0BWW5xU7d6WKH+m8VcnFJ4eBDn8r6vPLoOc4pK62
         +TGdfGxT6y8iZ8Yb7Rtf0Sn7UJEdC5WVLezdc4qgL4YDi7Z5dqY5NuhWXYHEGL3QXV8b
         gRYuvwEepC8v3DpgLZNG7XG/FegZMMHBT2bJHoyKD0njG63oRRkax4dCyCd2Z4QNYOYa
         cxNGRycYEXaQVzcEUtf+vYbDHv7mcjvmi3DR5RbeC8WuHqBLxlbTGFdJPd7mL1CKv84n
         H/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=IR/x5ppg0wZJxqnSWD4QBn+IO7HGLxlSw1Ip7OHvr2U=;
        b=tD/6aCA4NTFfIJGzyPP3UGGKsutUfUL+FDTRlILrsXyTmscwReItBvDnC6wZmH1/F8
         /1bq29rWk/bxR/CbruEQcuOYkti9djdOMWOkKrqmLCpyDGJYFDxmF1+0HF5keQYBQV38
         wmP2GxoVd5dBBnIOTl2OMafb+Gg5nbLgx1X4Ye2JzqNhLt3q7wCQoYhyh8qiibM1E+dK
         2SN6+wzoum86KL4Y9Huej0AER7htCY4fDm3lVzUXAbGLKZtweKdhKdSsRieBVTYMVC8q
         eQkfpSa4ZehPLfrAZkk9ZDXrp8scQp9PgW/kOsU/mSM4FVBjWJIGI8YVJKqFK0zDXJjq
         Vo+A==
X-Gm-Message-State: AOAM532FzcYszW9wb7Fr2nqSDeOqm0svkdIDR1u3/OBk9eiqlgGaFLiw
        MLKMaIH+uVFmI0YylKcHA29SFQ==
X-Google-Smtp-Source: ABdhPJzSMYfd2Kmru4HnfgP50Cxw9b3MaPKHFEhAqa44DK5nvRY/yjEIqNjmvpfpr6q9nlo/Bxwb9g==
X-Received: by 2002:a17:906:a183:: with SMTP id s3mr2928234ejy.60.1606399504680;
        Thu, 26 Nov 2020 06:05:04 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id q26sm3127131ejt.73.2020.11.26.06.05.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Nov 2020 06:05:04 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: zynq: Fix incorrect reference to XM013 instead of XM011
Date:   Thu, 26 Nov 2020 15:05:02 +0100
Message-Id: <39e16e667aa8f132496092d4fa554935ddd5a55f.1606399500.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix comment about targeted extension card. It was likely just c&p error.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm/boot/dts/zynq-zc770-xm011.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/zynq-zc770-xm011.dts b/arch/arm/boot/dts/zynq-zc770-xm011.dts
index b7f65862c022..56732e8f6ca1 100644
--- a/arch/arm/boot/dts/zynq-zc770-xm011.dts
+++ b/arch/arm/boot/dts/zynq-zc770-xm011.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
- * Xilinx ZC770 XM013 board DTS
+ * Xilinx ZC770 XM011 board DTS
  *
  * Copyright (C) 2013-2018 Xilinx, Inc.
  */
-- 
2.29.2

