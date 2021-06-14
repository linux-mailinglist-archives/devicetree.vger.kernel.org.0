Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60C343A6A07
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233006AbhFNP15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232809AbhFNP14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:27:56 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6E59C0617AF
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:25:53 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id c10so17317739eja.11
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GMnnSnHhZ+ZC8YRlb+Ztl4rSXV3VF/rNnZ8I2hpt3YY=;
        b=PsCcEZqJS+CY72hY1D8xYClmdstasqbFlYggtaq7vqqnrfTV7IzIUtDEWSx3cPapeA
         HISQQYLXvqZqTacv9ixo+S36HGtkF4pdwNhTdLEvGFKY4RqsdrDQFuIwjLs0KmgzYk+a
         UVcSU9WMT5BJFoKW8MwFa5q0+wDLRrHprccqXku6IrsgJhNsys7esfnk0Je81EYBB2CJ
         QO4e1Gr2AFyP94dd3F2MyyFJGnYBIsattv0STitJyACfRyNrOEc2EoHH1CCEXqWbqXST
         dlnij0iuapH2ZkPBJvekw3PTOS2opPkN/A+mlTi3XJoPs+D8KP7kZQ5KnS+c2LU/GLUH
         zz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=GMnnSnHhZ+ZC8YRlb+Ztl4rSXV3VF/rNnZ8I2hpt3YY=;
        b=nEj+pCDr4LQPdOj9iweATbq4QAvB65yjSnG8YxThi8eeos3gT37Abd6AGJ9vuIzpOj
         gOEO4d76MVghmnlgNG6T65ISrHzuhBQc+P2kJcvDrDieRLcdSo+1aJwBZh49Nd5F172q
         b+j0oj3fCupjDdU+gP+ICJAIlpjtZTNjwL0+DiYi4dA32A4O9I2fdeabrWLoFFo3ZAM+
         6oXf94b+9QRlkHvcB1t0J82bBDB4w66mWQSwaqgbCQxWALHBOihj4PItoIKnCcjYTYTH
         KZqCOsT0Uqdd5JDZPCESW1b8vp3ymdOZPQ7kOUXfWCBWx9sDdk0LbRWBSAYuz3fLWaP2
         HT8A==
X-Gm-Message-State: AOAM533ue7MEmOl3vzJFYRKx9AnlVFjDUmm1dshf4OVZBQV+HdEw3tyD
        jlFmHhu7mdraEQbDra7OA+XoTQ==
X-Google-Smtp-Source: ABdhPJyxGPARqvHI0C3EcGU55MM5QfBwC4fwK0GGHt/8ICyIwJn2ub8gxrYtpjZaSPIQay+RmnmZNA==
X-Received: by 2002:a17:906:e2d6:: with SMTP id gr22mr16172494ejb.514.1623684352296;
        Mon, 14 Jun 2021 08:25:52 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id f18sm4698356edu.5.2021.06.14.08.25.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:25:51 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/33] arm64: zynqmp: Correct zcu111 psgtr description
Date:   Mon, 14 Jun 2021 17:25:14 +0200
Message-Id: <d47cbf374423cb71bb4be5e45e3d834da0c4673a.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DP and SATA psgtrs are swapped.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index 2e9fe675a718..b0c2eae1b4b3 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -766,8 +766,8 @@ conf-pull-none {
 
 &psgtr {
 	status = "okay";
-	/* nc, sata, usb3, dp */
-	clocks = <&si5341 0 3>, <&si5341 0 2>, <&si5341 0 0>;
+	/* nc, dp, usb3, sata */
+	clocks = <&si5341 0 0>, <&si5341 0 2>, <&si5341 0 3>;
 	clock-names = "ref1", "ref2", "ref3";
 };
 
@@ -787,7 +787,7 @@ &sata {
 	ceva,p1-burst-params = /bits/ 8 <0x13 0x08 0x4A 0x06>;
 	ceva,p1-retry-params = /bits/ 16 <0x96A4 0x3FFC>;
 	phy-names = "sata-phy";
-	phys = <&psgtr 3 PHY_TYPE_SATA 1 1>;
+	phys = <&psgtr 3 PHY_TYPE_SATA 1 3>;
 };
 
 /* SD1 with level shifter */
-- 
2.32.0

