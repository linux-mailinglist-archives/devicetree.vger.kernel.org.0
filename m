Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DCC93225CD
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 07:21:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231749AbhBWGV3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 01:21:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231696AbhBWGVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 01:21:01 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80CB9C06121F
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 22:19:25 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id o6so1176123pjf.5
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 22:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d++YVA3eBO844Kl/OHoWYa8zWRWfXAymLgjqBL6Knr4=;
        b=vFAGl7k5isfUzWSj59UQ9XxA40uYRhdmVvNDxnrUzWu6FHtJTNyw0cqTm178md8yLh
         TsWHwYiOjHskw6l2yzhaeG+ZbGYvZa0EpXQq0EZx/4rJrMx5tPfnkcNq0l0o3/z67+mb
         8xVP02vET2/tQ9CnwLCfKQhhhAa5OMwo9v0pg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d++YVA3eBO844Kl/OHoWYa8zWRWfXAymLgjqBL6Knr4=;
        b=g3nXAdpcBvCy9i/Ur/2a3feE2WmslPHZXRyfJxxRIquGXOIsnFfZisBEUH0yXYo07C
         iz+qk1PcCc4hn+PIspr0aJj9FuVL23mligbvxicyyhm4gUkMGi7TlRx64Usr0gh4/wLF
         oPlQ792ivpYlR+b6K9jze2Ms4kiizwmLDl6uPYYzdm4SCiGQmUnD1E6Tr0iPPNDl1F3v
         yxP1HOVYnTjpIBE5rKE9MnPt6JBQhjOv6ugOmaIu9gpTjj4QTzU31PGl44ztttHFuJHD
         OLCsKEMyhuzvE7webZ+W9gUTb7XoEzRHzKg1wvPbUJiRyIii5QMXy5Jxc/4hEA4svZoe
         ggcw==
X-Gm-Message-State: AOAM532zGCEPxxa3BwmBCCfUYIo+YGYvGuHksp8IClNwtArFzAs+BqlQ
        ACSxdaj6IomS4E4CMRFtkH2zgkL1xIGCEQ==
X-Google-Smtp-Source: ABdhPJwBsHIBaGuLGftBLh9hMsJ/IeKYQPrHF8GpHwdEz++2TYtHeK9N5CQJHYgT51bxWKcaM54eIg==
X-Received: by 2002:a17:90a:1b4b:: with SMTP id q69mr25034810pjq.108.1614061164948;
        Mon, 22 Feb 2021 22:19:24 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id n10sm20135169pgk.91.2021.02.22.22.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 22:19:24 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        soc@kernel.org, sboyd@kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        w@1wt.eu, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 5/8] ARM: mstar: Link cpupll to second core
Date:   Tue, 23 Feb 2021 15:18:27 +0900
Message-Id: <20210223061830.1913700-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20210223061830.1913700-1-daniel@0x0f.com>
References: <20210223061830.1913700-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The second core also sources it's clock from the CPU PLL.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity2m.dtsi b/arch/arm/boot/dts/mstar-infinity2m.dtsi
index 6d4d1d224e96..dc339cd29778 100644
--- a/arch/arm/boot/dts/mstar-infinity2m.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity2m.dtsi
@@ -11,6 +11,8 @@ cpu1: cpu@1 {
 		device_type = "cpu";
 		compatible = "arm,cortex-a7";
 		reg = <0x1>;
+		clocks = <&cpupll>;
+		clock-names = "cpuclk";
 	};
 };
 
-- 
2.30.0.rc2

