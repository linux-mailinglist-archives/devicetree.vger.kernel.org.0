Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35A2A41B3DB
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 18:27:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241854AbhI1Q26 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 12:28:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241813AbhI1Q2y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 12:28:54 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5EA0C06161C
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:27:14 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id bd28so23876865edb.9
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aZK50rgSRHZQcRqY8tXdmJANbhQZl2eXtIuEyFm2xBo=;
        b=8VxXob3ZcLXiEPRJancrM4G1DNombC5ICX1ghzgpvI1+dPOH5/CY+yPX4Dl5qHtr83
         rsdK2BrXaJQFxGj5VD3V3mIEL1zpo6k41pirJf6ByPtd8aT+YA6jhxZ2Gu2LvHB+O1Ji
         GbpLF8fCaO6SiRfhZ+qmSe4nCRd4ZwzEUviLmHLEITDrepTMW/l/bUNqy8FSKjgel1Dd
         sEBCaNyJO4MCZyOGMkkgqjXU/t9f/W4Nr4RxK2oot8hE9zm4nNG2rVCUzPxSXSZBCEXP
         og5MrR6nD7erIx7erGV/1K+DELWKsBX+nXG7lWQU95JjmIFMzAPHP1qz79eXyn6AglrS
         gn6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aZK50rgSRHZQcRqY8tXdmJANbhQZl2eXtIuEyFm2xBo=;
        b=rjGrFWXgX/OnC73llPq1JoqIMjVGTzDjI+BhIw4UoUDKEQBch4shh8mvAPBkjADhiR
         mXVKIKQX9FHISb3GlblnfZS3vKGShQzX8uOPMSJbJEKHyvWYQKjG8kF1IXN9qOXCBcYz
         usWI2eWowQKJ1qHgU1SjpJtm2O8C4PO4gDPZgXTI4pkB4zHhATcgy4TpEnWhOUWuzLNH
         LvB4f0D4we5tiN/Nr/2b0GMSqBpLUKzAjTQnNKzaTxhgpE4fE0Qzarf+TeRzWzzX7KFA
         bvqqVrkw2HtoyX5t3cvafjz9dLQw82FdeI2V3JcraromWe9kpGG/zqnjStSC1zu4Tr5D
         AlLQ==
X-Gm-Message-State: AOAM530O6IjiwVSiLPPETCubqsJGUbP9UOgFHReIosIdp1PNlcjbIuAJ
        gt9L+Htb9Zgooeism/54mP6gBQ==
X-Google-Smtp-Source: ABdhPJzL9/oAR9j832jvWR3npYHEzFpq47jdRq2bhoGLOOi3OLmehlGQNvgILvork6ZIW2M1VTHGGg==
X-Received: by 2002:a05:6402:64e:: with SMTP id u14mr8855207edx.184.1632846432847;
        Tue, 28 Sep 2021 09:27:12 -0700 (PDT)
Received: from fedora.. (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id n23sm12579876edw.75.2021.09.28.09.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 09:27:12 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, pali@kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 3/3] arm64: dts: marvell: espressobin-ultra: enable front USB3 port
Date:   Tue, 28 Sep 2021 18:27:04 +0200
Message-Id: <20210928162704.687513-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210928162704.687513-1-robert.marko@sartura.hr>
References: <20210928162704.687513-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Espressobin Ultra has a front panel USB3.0 Type-A port which works
just fine so enable it.
I dont see a reason why it was disabled in the first place anyway.

Fixes: 3404fe15a60f ("arm64: dts: marvell: add DT for ESPRESSObin-Ultra")
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Add Fixes tag
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index 7c786d218f1b..070725b81be5 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -108,7 +108,6 @@ rtc@51 {
 
 &usb3 {
 	usb-phy = <&usb3_phy>;
-	status = "disabled";
 };
 
 &mdio {
-- 
2.31.1

