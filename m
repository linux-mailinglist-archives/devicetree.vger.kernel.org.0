Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6383281414
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 15:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387412AbgJBNek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 09:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBNek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 09:34:40 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 285CAC0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 06:34:40 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id x2so804298pjk.0
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 06:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kzXjI15ZtttHCXeQ3n0cYLMP2xI/9tBvTIvB8MmIIvU=;
        b=IgAPyLPh0DLJmXt5xhnfVxXCfPj6O6jmDdV42a7glMLjKv2OtUZoRUkD4tSCN83ifi
         zmRzkcWRxhFbZ3Wsy0OqmseYh9ofBJhgwS2VBztlZEe33t138l0z8l4j5qY9QnoL/34X
         Iv1Te6dkP5J11PB089qvQYskoWblvll+96a5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kzXjI15ZtttHCXeQ3n0cYLMP2xI/9tBvTIvB8MmIIvU=;
        b=FNyMXFYUrBJUJ0NqbG3zoFzxEUmoMjsN8UAU4lMNLX7KNwji+O9iaAMwSfa3FPqb9s
         RpD5w63Ntb16Otr6mRti3zozAXuawkvZtuZBwXhD+QgjNH0649/Cd+SP4HoWtG016Yj9
         peYEhoSzaoUyKcP2VYp5/Wa+EXO4HVhTJHoBIPY3syzkmfuHyd5c7AkFZ/yK2DUtbact
         n6Xy8g87OLnORDZna6YJ6d4PUwDHVEks3NpMe1ACgzdJ97IkXvKwBA1AFzBfhcZfdSCC
         GjACiHcxHog1XRFKUJEQrIb1KwYgznIH4p29p5k7DEFoYcSfZ2SkhRoYyJ+yMHDwyKkl
         FLdg==
X-Gm-Message-State: AOAM530Gn1Y5BctyfhyntXSLNfwXg1aFspIwU7ewtPWzQ1CZ3a2WR616
        CTcXaNVSMq8OKl9MVEPnPu08NA==
X-Google-Smtp-Source: ABdhPJxzY+wQTKmU2f4036sr9ZNsSKMCauT7ECH8g+qEwbrTDG7ZWCcPqqlZJuV6LMMXhPkQPjIeTA==
X-Received: by 2002:a17:90b:ecc:: with SMTP id gz12mr2723292pjb.219.1601645679700;
        Fri, 02 Oct 2020 06:34:39 -0700 (PDT)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id k14sm1708219pjd.45.2020.10.02.06.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 06:34:39 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        mark-pk.tsai@mediatek.com, arnd@arndb.de, maz@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 2/5] ARM: mstar: Add interrupt controller to base dtsi
Date:   Fri,  2 Oct 2020 22:34:15 +0900
Message-Id: <20201002133418.2250277-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201002133418.2250277-1-daniel@0x0f.com>
References: <20201002133418.2250277-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the IRQ and FIQ intc instances to the base MStar/SigmaStar v7
dtsi. All of the known SoCs have both and at the same place with
their common IPs using the same interrupt lines.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-v7.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index 3b7b9b793736..aec841b52ca4 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -85,6 +85,25 @@ reboot {
 				mask = <0x79>;
 			};
 
+			intc_fiq: interrupt-controller@201310 {
+				compatible = "mstar,mst-intc";
+				reg = <0x201310 0x40>;
+				#interrupt-cells = <3>;
+				interrupt-controller;
+				interrupt-parent = <&gic>;
+				mstar,irqs-map-range = <96 127>;
+			};
+
+			intc_irq: interrupt-controller@201350 {
+				compatible = "mstar,mst-intc";
+				reg = <0x201350 0x40>;
+				#interrupt-cells = <3>;
+				interrupt-controller;
+				interrupt-parent = <&gic>;
+				mstar,irqs-map-range = <32 95>;
+				mstar,intc-no-eoi;
+			};
+
 			l3bridge: l3bridge@204400 {
 				compatible = "mstar,l3bridge";
 				reg = <0x204400 0x200>;
-- 
2.27.0

