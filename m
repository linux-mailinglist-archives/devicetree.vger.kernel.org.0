Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E8594825F9
	for <lists+devicetree@lfdr.de>; Fri, 31 Dec 2021 23:01:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231817AbhLaWBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Dec 2021 17:01:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231792AbhLaWBs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Dec 2021 17:01:48 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225CDC061574
        for <devicetree@vger.kernel.org>; Fri, 31 Dec 2021 14:01:48 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id z29so112438182edl.7
        for <devicetree@vger.kernel.org>; Fri, 31 Dec 2021 14:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j+4iMBSwaeopLtgG6AD/QBPgN5+SLATiAH2c5g7+e24=;
        b=G2bDFBSvac4aYrO4gC5UJd1XVxp71KFK/nIMYBjqTDQH193yh3p3qhKaFk/1ZJbH3x
         GYOYEQOU6TiC7YNk6sZ3kq0NtnnN6wxQ6sK9DVsyVhkqdvRBdzihLpBUXfIqOwPOukg/
         Qdx2Zo5DFLsoC/KllvN4vuoe/NRhI/ppWQSCtsFrbLAAgfoXy9npj5ae1DGtzypCNVUY
         B3KbOACCRgXm6LdHjZ3eSfdLMwAr9D1+lhlfOtJnokWIqXexT+y43c2ILK77ScU5BUfd
         hBow5cSLP8P4hD1Ch08A1t2dPow4PoO/e4xdIpfgSZgEbriMmkfnf+QB+6ALbH9KISmv
         rLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j+4iMBSwaeopLtgG6AD/QBPgN5+SLATiAH2c5g7+e24=;
        b=EYKS8xlSq7Mx1PIANWLSjs2Ked4NPK/mX9AI9sYhLhC1O+I3HIEIpgZuvSi57BdeMB
         NH6BRUxWP9puLI96nxaO7SHG9GCWPqEpT06Zyirk1/Fhc0HqAmc9xKNVOM2RTUKoJB5n
         6ftqqeI2jilcsgGoRj4gQQLwBZ6yaJ8qFUv9WPWBGlbGiPGEse+4bWJxH4ZgsnZHac3s
         XlJ85eZqBV1hZ72D0YFVe6+Lmgz6e4ER7pnXdGcT61lq7Lk2bvk6Bx3+RbF8hg0M6Go9
         Ck7satOelxzR2L4wvw20+ofZOj0VysYeA+hv+8TpS9UNEU2mUXaasZeCkMOjZZ9moypz
         h8aA==
X-Gm-Message-State: AOAM530c5l7Ah1tu9PeeRIzhnvyhTMmTJDWZLKA467fn7wshAuupK49c
        CYyJPQxh9b8pnV0NNRL0Kzs=
X-Google-Smtp-Source: ABdhPJxWQE/Iogwch+ZvNF4Cv1kzo5f1LtJ8UsIRYyuYT37E6T6lITIMvng/QDXPw8kBgGwuMgrlnw==
X-Received: by 2002:a05:6402:280c:: with SMTP id h12mr23382158ede.138.1640988106512;
        Fri, 31 Dec 2021 14:01:46 -0800 (PST)
Received: from localhost.localdomain (gw1.ms-free.net. [185.243.124.10])
        by smtp.gmail.com with ESMTPSA id sh11sm8793709ejc.17.2021.12.31.14.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Dec 2021 14:01:46 -0800 (PST)
From:   Petr Vorel <petr.vorel@gmail.com>
To:     linux-aspeed@lists.ozlabs.org
Cc:     Petr Vorel <petr.vorel@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH 1/1] arm: dts: aspeed: Fix typo
Date:   Fri, 31 Dec 2021 23:01:38 +0100
Message-Id: <20211231220138.119747-1-petr.vorel@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes: 25337c735414 ("ARM: dts: aspeed: Add Inventec Lanyang BMC")

Signed-off-by: Petr Vorel <petr.vorel@gmail.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts b/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
index c0847636f20b..e72e8ef5bff2 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
@@ -52,12 +52,12 @@ hdd_fault {
 			gpios = <&gpio ASPEED_GPIO(B, 3) GPIO_ACTIVE_HIGH>;
 		};
 		bmc_err {
-			lable = "BMC_fault";
+			label = "BMC_fault";
 			gpios = <&gpio ASPEED_GPIO(H, 6) GPIO_ACTIVE_HIGH>;
 		};
 
 		sys_err {
-			lable = "Sys_fault";
+			label = "Sys_fault";
 			gpios = <&gpio ASPEED_GPIO(H, 7) GPIO_ACTIVE_HIGH>;
 		};
 	};
-- 
2.34.1

