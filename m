Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7893028A513
	for <lists+devicetree@lfdr.de>; Sun, 11 Oct 2020 04:49:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730600AbgJKCsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Oct 2020 22:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730593AbgJKCsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Oct 2020 22:48:54 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CC22C0613D5
        for <devicetree@vger.kernel.org>; Sat, 10 Oct 2020 19:48:53 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id y14so10709233pgf.12
        for <devicetree@vger.kernel.org>; Sat, 10 Oct 2020 19:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rJcvc1wxEFUx12YJeTHq7xa7YNZGOLOFOQF9lnDCs7w=;
        b=h46K4WPXZDrLBc0f4uQ+mmjJZ5oLyMHWw2JKRUg1blaUfMCt9h0Ave03cC6+h8g6Gz
         ksLUj7M44W9vl7kjzWMNQu5fppSJ3lifKsjMxJ/HrzVail3GpsPc3N8Cj8J7Qbz7KJjK
         83bBV47Za8daVYIHiIM/0ilci+a+vfxylKyTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rJcvc1wxEFUx12YJeTHq7xa7YNZGOLOFOQF9lnDCs7w=;
        b=UhLvWUviJCAdSfmAIWIL43mQONkgeqhfokT7TaoReRxBoNwl09MXDODM2dDCdnGHhV
         yfS3nlVZGXkBUPq5cNhF+YCJpQ0+JiVfpREQGhp70RR4UfmYQaGMfu885znFXsMfx3t2
         bAL1d5PqG2/W4jI1B0KPXj712b/1Q9MNuZYvi91hSHGty0+AKrCOHFC+qsF1P0x5Khhw
         kNfgDT0L9lgYkyIUkMnTbl/z1fPar7JyCDE+a5bBvAuG0EFU51OqLTuT99mlTqSyCzPd
         NtV4LrBRieWV2/GlOtm2a75Weq9T5QJh2x9duBWF4jCV5kbHKiVZbKOP7WJ1P1VPpDYO
         jxxA==
X-Gm-Message-State: AOAM531D9BKj/C2hnyTgjbLdhCjWCUzu1HnnEtUxw3STI/EbkYxhUkKk
        uUbbjG7EEQtHsYd3q7yA36HZCGFx3bUbXw==
X-Google-Smtp-Source: ABdhPJwDWT9JEZDIZCweBSo+VTNNMrsopDB+y+M16Z8HnKrFD5Ky8LVSnfapNR1HAdV96CQa2biVIg==
X-Received: by 2002:a17:90a:f0d7:: with SMTP id fa23mr12050837pjb.108.1602384532897;
        Sat, 10 Oct 2020 19:48:52 -0700 (PDT)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id z25sm14832836pgl.6.2020.10.10.19.48.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2020 19:48:52 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-gpio@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 4/5] ARM: mstar: Add gpio controller to MStar base dtsi
Date:   Sun, 11 Oct 2020 11:48:30 +0900
Message-Id: <20201011024831.3868571-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201011024831.3868571-1-daniel@0x0f.com>
References: <20201011024831.3868571-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GPIO controller is at the same address in all of the
currently known chips so create a node for it in the base
dtsi.

Some extra properties are needed to actually use it so
disable it by default.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-v7.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index f07880561e11..669aada6f286 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -109,6 +109,13 @@ l3bridge: l3bridge@204400 {
 				reg = <0x204400 0x200>;
 			};
 
+			gpio: gpio@207800 {
+				#gpio-cells = <2>;
+				reg = <0x207800 0x200>;
+				gpio-controller;
+				status = "disabled";
+			};
+
 			pm_uart: uart@221000 {
 				compatible = "ns16550a";
 				reg = <0x221000 0x100>;
-- 
2.27.0

