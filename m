Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA9E03225D2
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 07:23:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231799AbhBWGWU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 01:22:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231740AbhBWGV1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 01:21:27 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8CF3C061223
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 22:19:27 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id t5so1118222pjd.0
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 22:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SE8LvB13EoijNekrwFmw4zAb9BZgnUUKtus/CbxCO44=;
        b=Vzqnw822lH2lfVZnHFzXqgEjRR+CAv1klD1WlOha88yUivgU/HRzplnKxIRyISmh0c
         JbvmMk3JdaI2X1TDHww+2/w7j/gkEVZkZOQZS69erTcEV6JBiWyzuSXvc9JMPyGMs9Kw
         +Dn0H3PI6Wgd7h/fts19GzE8gCfBUHadG09JQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SE8LvB13EoijNekrwFmw4zAb9BZgnUUKtus/CbxCO44=;
        b=f44gOlGz7A5lVbwYJBONrFD5cn5EKHqthdov+I26LNokiEV38UY8xA6Pgj2OYaA8I6
         kRvv5A0wBenfeB9snznboBFO9B65UeZMPm0SPFzyQYAUZc5ZJbMbo+tEb0sH/uLnxrNz
         +0NPRsog+ep45NHXRcgId8+nTnH827wpfq9ilET3rnulfepYa9e6o9ofod9JlkJnw4fM
         uZuE9bfp2QacUJNuYJzRaskQgvZpb0UZtwOfD99bu2w95XgouugKjo3AAXswbtFU7nQZ
         W3qCT+W4+xcxyWMmcIuJ7dvJSbkUQxRgjDEXSefZD+758txHn85TN05NXtUun2umTn+2
         BVhQ==
X-Gm-Message-State: AOAM530asqCIdaxj6c3lCaa4RCUE/d9cLSvbYXhN2+r+f61IZbtrvyKy
        sT2CPM8XLpMVfHjltVEsCDHlbYJhvwjZ2w==
X-Google-Smtp-Source: ABdhPJzoIJDh0x+aPCJvQ3KGczLpHsrN+drRAIc5AD4BKUwfO1ZvK1x/0gzZUZpOaaY3vYvOJ8Z3MA==
X-Received: by 2002:a17:90a:1d0a:: with SMTP id c10mr28899732pjd.142.1614061167210;
        Mon, 22 Feb 2021 22:19:27 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id n10sm20135169pgk.91.2021.02.22.22.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 22:19:26 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        soc@kernel.org, sboyd@kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        w@1wt.eu, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 6/8] ARM: mstar: Add OPP table for infinity
Date:   Tue, 23 Feb 2021 15:18:28 +0900
Message-Id: <20210223061830.1913700-7-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20210223061830.1913700-1-daniel@0x0f.com>
References: <20210223061830.1913700-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an OPP table for the inifinity chips so
that cpu frequency scaling can happen.

Co-authored-by: Willy Tarreau <w@1wt.eu>
Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity.dtsi | 34 +++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity.dtsi b/arch/arm/boot/dts/mstar-infinity.dtsi
index 0bee517797f4..441a917b88ba 100644
--- a/arch/arm/boot/dts/mstar-infinity.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity.dtsi
@@ -8,6 +8,40 @@
 
 #include <dt-bindings/gpio/msc313-gpio.h>
 
+/ {
+	cpu0_opp_table: opp_table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-240000000 {
+			opp-hz = /bits/ 64 <240000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <300000>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <300000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <300000>;
+		};
+	};
+};
+
+&cpu0 {
+	operating-points-v2 = <&cpu0_opp_table>;
+};
+
 &imi {
 	reg = <0xa0000000 0x16000>;
 };
-- 
2.30.0.rc2

