Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F4F23225D5
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 07:23:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231808AbhBWGW0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 01:22:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231751AbhBWGVc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 01:21:32 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A7FDC0611C2
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 22:19:32 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id e9so1201756pjj.0
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 22:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aI5IVkQJA7PDNbBU/+1PZqGp3m7b3MnBtGAvzpqE9DI=;
        b=krfujBl0J3RTa+9MxhJ1pPz8nrwfBTvIuo2aMFitjGAWxGPWV7xeKZzzG+bMU+3iUy
         Mc5Us7xmjCKRjKJsudStwDXQ5GMoRh7bmyzyoFgQlsU0Or3Ww9ad+a7WksQ9IzdZLbay
         MULJZM57YvPqTgUTD2YUj/28tKRa7nzcg8ztI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aI5IVkQJA7PDNbBU/+1PZqGp3m7b3MnBtGAvzpqE9DI=;
        b=TEjv4UzrSB/jrO0HfE0Q/rPVhKZKheLqotb9ZjM2iW0WHMrk73tZ0kMbrhfG248UCX
         ft3QZQXB6UvCnGRT2isFOpUwNAkH1rg/iNY/FC85MLueEkI0Xxcb19eF7k+LBDurT5jP
         8pvuFLGjUEjWvM6TLHmGALepSmJgeDlqiiwhZXSHnrX6mtsV0tq5StTnCJ0DwiinyLcB
         NRPk6YwAEIyOvJhZEEmzs+vD/Ok93l3cVWVTjFe6RNNhqPOa/95IUsMXcfKxb8l2HsmK
         0tKIUtM4z2f7VHftybVqEjdiNtIz1cK0qUZUtva14xVy+xO/aIfNroqA4r/OjUgbnQoI
         OAAQ==
X-Gm-Message-State: AOAM533UMXKJa0cXSAMgDRF9ZGC263QmKilK5IE1IRFeVcMfEGgF+mlb
        SuVQf4uR363IU05Hwmdeef5pMxlVHK8zKg==
X-Google-Smtp-Source: ABdhPJxKcQ0XdzH66RpqYbTQ6lbBZie3kabhudXrxsFNyvw+rqjI5s3m5LdmnSloa1eUTFccWA5bRQ==
X-Received: by 2002:a17:90a:7e0a:: with SMTP id i10mr26715766pjl.152.1614061171969;
        Mon, 22 Feb 2021 22:19:31 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id n10sm20135169pgk.91.2021.02.22.22.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 22:19:31 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        soc@kernel.org, sboyd@kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        w@1wt.eu, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 8/8] ARM: mstar: Add OPP table for mercury5
Date:   Tue, 23 Feb 2021 15:18:30 +0900
Message-Id: <20210223061830.1913700-9-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20210223061830.1913700-1-daniel@0x0f.com>
References: <20210223061830.1913700-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an OPP table for mercury5 so that cpu frequency scaling can
happen.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-mercury5.dtsi | 36 +++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-mercury5.dtsi b/arch/arm/boot/dts/mstar-mercury5.dtsi
index a7d0dd9d6132..80a19bd23c9c 100644
--- a/arch/arm/boot/dts/mstar-mercury5.dtsi
+++ b/arch/arm/boot/dts/mstar-mercury5.dtsi
@@ -6,6 +6,42 @@
 
 #include "mstar-v7.dtsi"
 
+/ {
+	cpu0_opp_table: opp_table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <800000 800000 850000>;
+			clock-latency-ns = <300000>;
+		};
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <850000 850000 880000>;
+			clock-latency-ns = <300000>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <880000 880000 890000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <900000 900000 1000000>;
+			clock-latency-ns = <300000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <900000 900000 1000000>;
+			clock-latency-ns = <300000>;
+		};
+	};
+};
+
 &imi {
 	reg = <0xa0000000 0x20000>;
 };
-- 
2.30.0.rc2

