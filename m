Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEEA541AD78
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 13:01:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240313AbhI1LCm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 07:02:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239306AbhI1LCl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 07:02:41 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E64C061604
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 04:01:00 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id g8so81614159edt.7
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 04:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SxgBSeLSd+jqYdS+GLDRsIegrzVlwIpvpWUOneWYBcU=;
        b=MKrCxK3lV42PfFAy6zUyx82/adU8BfiE1M/IDOesjC4yPS5BpJveT2vo2+zgsKJKHv
         djsTDf5TZH/Ruez0+AraOIN6+s0RCm54AgYhPO7AvHJEIHrTMrsNr+1+otFIckE3fnmQ
         8yZzo+NbF3TQtp8gDhkFGUAUV3t32qmEwTfYitEcN7vR+gVJoxMj4ATNONW8UUXD0AWL
         U+Z4+/FAQqrJ7OiWuPxknbuCoZHY96MGj7cudxjFqW9+66gYBflrLUbOq2RZTxgdy5fL
         GddEW27la6Dnzc1dx+cfSArSW9Stqe/Fu26tOha+V7in7m8T92cG3xhCC8jgjlTLdB3F
         Encw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SxgBSeLSd+jqYdS+GLDRsIegrzVlwIpvpWUOneWYBcU=;
        b=pSFP7ePtos7hldriXI/Fa+HlweBIZ0XDrJHNMAJctINgRfuQX4l894jsZLTZVDGmo2
         UIkteV9hOY3GnL3o+8Fll+Zpt+z/W2BUuMCcQ9LQfRIjoMbRnWDWGQn+xwT+dR97PuqT
         oMZnYlAAzFdBwtgPiQA/++4Uhurr4AQ3CYs73GxIVVyWyUjVQVDJ/8VBchTXDW6nl1Zt
         ONTtckdi2Pssftw5I5EvfCxVlnR8ZCEX2h3iA9eFV5Eca8Xaocjrv6uilRkzBMPBNexm
         YJWIGpZ/ErXE1u7vuTv5mBXKl1cyTeI2BOWwAwDp5FxhRg+ItdZf2wANDsEXaH4Sm/4y
         YYWA==
X-Gm-Message-State: AOAM531Jn49PMVAB8pIYF+CfUCAG556L+ZIiWC4KrfFVBRVZhBKGpufe
        cMc8F8Xun3C7z2jXp+T3sjTR2w==
X-Google-Smtp-Source: ABdhPJysRjBtMY2C3TasGZux0F3dQAGoNBplnbRTaEwbHqJLLCCY7apuClV8mRpIKahEZQ76lZfS0A==
X-Received: by 2002:a05:6402:142e:: with SMTP id c14mr6668902edx.209.1632826858962;
        Tue, 28 Sep 2021 04:00:58 -0700 (PDT)
Received: from fedora.. (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id q6sm10000938ejm.106.2021.09.28.04.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 04:00:58 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 1/2] arm64: dts: marvell: puzzle-m801: add board specific compatible
Date:   Tue, 28 Sep 2021 13:00:52 +0200
Message-Id: <20210928110053.66715-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, the Puzzle M801 board has no compatible specified for it
and just uses the generic Armada ones.
This prevents projects like OpenWrt that depend on using the compatible
on DT aware systems to actually identify the board for configuration.

So, add the vendor and board specific compatible like its common practice
with other boards.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts b/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
index dac85fa748de..a6126e4c7fbd 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dts
@@ -13,7 +13,8 @@
 
 / {
 	model = "IEI-Puzzle-M801";
-	compatible = "marvell,armada8040", "marvell,armada-ap806-quad", "marvell,armada-ap806";
+	compatible = "iei,puzzle-m801", "marvell,armada8040",
+		     "marvell,armada-ap806-quad", "marvell,armada-ap806";
 
 	aliases {
 		ethernet0 = &cp0_eth0;
-- 
2.31.1

