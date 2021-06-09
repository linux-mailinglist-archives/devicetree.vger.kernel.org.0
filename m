Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B602A3A1343
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239352AbhFILsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:42 -0400
Received: from mail-wr1-f46.google.com ([209.85.221.46]:35352 "EHLO
        mail-wr1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239455AbhFILs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:27 -0400
Received: by mail-wr1-f46.google.com with SMTP id m18so25147404wrv.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=se+dBkzLkPDZB3gvYNmJcBXaJIMDNQ2dYe77WcU2tYs=;
        b=J+tFMxfwWj1xdMm0Ycxr5wHDigG7e+8Qj5uh4NM9jjVXozGXjCVAwcH7CfHQjkyOtJ
         /3Rbyn3z1CenPd+LzIIbQmmT3Ysn7oDU3h545DHlEgGQjOcVWYw9Hmfbd+YeC3D/TIMj
         mmTrY2ERpil2ClCTkwDv5SanJGQOhzxhIApkaOrCneZ33MPOAsMrrqIQFYnVz4byK9+1
         5u7EDl7Aa74BFqojFDxRnbSVHiUp2K643CPmYIDvmwPXn9U/SJd42FaJBhSWyr457sk/
         Fgzg8vt16MZlZ2audXLMeRBTkFwYkVcjoGMjTzbPOLyfRkUhVFCMHOfEKvn1POdqlVNG
         Vw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=se+dBkzLkPDZB3gvYNmJcBXaJIMDNQ2dYe77WcU2tYs=;
        b=mosIuAD7fVjLaJhDin4TWRqHhsPvqvkoNK/RXk+n0DAFttxewz8fRMX8Eh0CD3gd05
         jlhy0Eh9mYKyFWNVwhrjgdvtWGRGEyrYZBS4S96/IW5N3YP9pbEP1Mpp86M4tLeGZDTr
         cea2+fCbo0Lw/89G0NYWezGjrPsjsQlBUMxxgOVc/05NyCgRq58v6GB7bHnHQQefNO2E
         pBr0XBGPLu/jMqKKFqAA5rcf5lVBB4z9WqAZReOBZVML7nIaNOUkeGIBcUJgZxXTg1R1
         vioDwvW5ezacJuZZ5PygbkTBpOkoUIEKLJSHmrdXCDslVp90LJBU3VYFIcP/KTvdOGBx
         sY+w==
X-Gm-Message-State: AOAM530e2B8gTuA0J5N/WftmhlaD/U8vm4WxdW23mAsONmFVw4T8qYIB
        PMip5wq9ZBhsBz6vcNq7KKv8Lw==
X-Google-Smtp-Source: ABdhPJwF7fBpGFpM/ENgi2PM22Vk64GidPt03UrxhwC99oMdcbMimGbBN3fkRlA1+QGeMKDOcWrdcA==
X-Received: by 2002:adf:ea49:: with SMTP id j9mr25107860wrn.366.1623239131390;
        Wed, 09 Jun 2021 04:45:31 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id w18sm22603601wrt.55.2021.06.09.04.45.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:31 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/31] arm64: zynqmp: Correct zcu111 psgtr description
Date:   Wed,  9 Jun 2021 13:44:42 +0200
Message-Id: <d47cbf374423cb71bb4be5e45e3d834da0c4673a.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DP and SATA psgtrs are swapped.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

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
2.31.1

