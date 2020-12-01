Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41A4C2CA433
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:47:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391251AbgLANpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:45:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391105AbgLANpM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:45:12 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE42C061A56
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:44:03 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id h7so780932pjk.1
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mfswc8PEaRtag64wvufOaanDCqQevd/LVNeXXXGVpMk=;
        b=vpT3Woau4ZWljZ1nCO99FgLu7buS9p6fLSz7J6xJT+ocVzNUie5zI31MXRs+6OCZ1R
         jV2WVqfd05kEbhnikrSi8OI0ATaYmS94opgt+7zLoS4r+gDlUtk+EA9gVLOkFBa9rsO8
         n5vU2AioWdAkQRqtivql3S5ah/G9lzjQ1eZes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mfswc8PEaRtag64wvufOaanDCqQevd/LVNeXXXGVpMk=;
        b=prXopbNsWtW2dFVH/QZ5bzWtsmBFhm/xljyTCwe7iaN4GmtLptGWaLT4cT/6AXyvya
         K4nx1pARhaQKZyLJbQMq+ZvUtCbHY7ifsmOuo68nQRPl8bJlQtC+0Fv+c9yHJlNt7R74
         0fcDgW0cSMshXpSQSpOA+kSvTJ8u6OG7TKN1qccoqYjY4BIu4QXn7e6MESED4jj2DrNK
         xb/neWsrrAyHUYjMXb8iAKBxwB5WBPE+haJAJ4OMqqL2YWJMl0YzE+hlsXW2YaQTi1YR
         mxhga+clKKzw6siOKdDk5j03Ve7mOkmlQfYpPo2hGedD7diJyOoJ1EZobagjUsDX3P7t
         Fhyg==
X-Gm-Message-State: AOAM533P8yjyz9jv+NiKBkIMKiqdCE6j50zlPRj4XCzWSmxU7GBnr1qh
        ZJG/Fj0Eiw0+827RcmaXwX47ohre491imQ==
X-Google-Smtp-Source: ABdhPJwnn6rmrGvU0u1/dzlVI7LKYNnPN9/BPUhuah7+Sf97+hAv2LvRqgmfqktN5dXOVn5IwRMcbA==
X-Received: by 2002:a17:90a:1782:: with SMTP id q2mr2835569pja.189.1606830243094;
        Tue, 01 Dec 2020 05:44:03 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id g14sm2839248pji.32.2020.12.01.05.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 05:44:02 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        robh@kernel.org, w@1wt.eu, daniel@0x0f.com
Subject: [PATCH v2 09/10] ARM: mstar: Wire up smpctrl for SSD201/SSD202D
Date:   Tue,  1 Dec 2020 22:43:29 +0900
Message-Id: <20201201134330.3037007-10-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201134330.3037007-1-daniel@0x0f.com>
References: <20201201134330.3037007-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the specific compat string for the smpctrl registers to the
SSD201/SSD202D common dtsi.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi b/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
index 0811220f0a79..7a5e28b33f96 100644
--- a/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
@@ -5,3 +5,8 @@
  */
 
 #include "mstar-infinity2m.dtsi"
+
+&smpctrl {
+	compatible = "sstar,ssd201-smpctrl", "mstar,smpctrl";
+	status = "okay";
+};
-- 
2.29.2

