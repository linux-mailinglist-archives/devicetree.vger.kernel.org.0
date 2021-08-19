Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F09973F18D5
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 14:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239025AbhHSML5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 08:11:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238658AbhHSML4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 08:11:56 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9033CC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 05:11:20 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id i9so12426539lfg.10
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 05:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EyGqxYx5qLCYQyAfS05dfMTqfn4b3mrDopHYtqpTIiU=;
        b=ayiaenxpxv44aisanM6IxsRxQW+Ivu17kdCS0wT8Zcpml/n3gSCPTqd3+RI8s20LrA
         ++9vPkCoZVL98VfN0XvmD0G0eM9dPJyG8r6BDu5WC7AB20d9IMUFVJ8CG1EvWgo2lWXs
         DtCRD34Qt2cTyK6j3Q2aeIqjl6aP0xF9r2UYwDAhFJ3fSxDOIwZKxoaUoeD81+TM3w96
         5OiXMSoucK9a3Yhj8rZQjWoe/83fBmw+L8AiuFKMh58ZWseVcUul+QNn/ulCUaZ+6xYq
         uECmKjF2aW1nZHqHUdSPe0dwaerz8JGEUhF8A/KCj1eSQs9tVo90rKjdYzXjhKwBke/8
         Zkfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EyGqxYx5qLCYQyAfS05dfMTqfn4b3mrDopHYtqpTIiU=;
        b=bmmRzASGFE3tS9nahKHk1u1e2Ij1mACGwvSDvndoCQigMl1DD4ttPr7ObZP0QM1vSZ
         IAjhUzMKPWu48blorMTji/gc9daux2koL+I+tHaoGcBuprj0qI8aQ71QxWxZBjXjtTZ1
         HIU2TkbeWk00+qmGsMS7mUsUfkytwOvh1wuMP1Buqvgl5Cc5DyLAACQ1tmgFgl1jy58v
         aKkhaAR234uqLdiSyT9e/W19rRinIJ6hjxvJSWhgl6FjTwEpg2DYyr5gtg7NPbhCXdeX
         IcuwBN71rIEk+7E55qTadkWAieAVfSKFgbSNdBJ0ZL2wEwhIIniYiY06pVgyMdCnOHP3
         prXg==
X-Gm-Message-State: AOAM532Gaaj79jEIYzWt5PCdjRFDNhelGfGRbZCzCELC3EBkE6HW7N/k
        ixjTkskIRQthZlSf4RzW3Rg=
X-Google-Smtp-Source: ABdhPJy51SlVkLGgCvR9us1KAgCoQkWfKDQmT3XhwsDLwD0cfaEO91h3f8uR0fyLf9wPIXWSt58wXQ==
X-Received: by 2002:a05:6512:1595:: with SMTP id bp21mr10827911lfb.394.1629375078945;
        Thu, 19 Aug 2021 05:11:18 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id u24sm288130lfc.162.2021.08.19.05.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 05:11:18 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: Fix NAND node name
Date:   Thu, 19 Aug 2021 14:11:08 +0200
Message-Id: <20210819121108.13979-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This matches nand-controller.yaml requirements.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index a5a64d17d9ea..ae91679a78b1 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -296,7 +296,7 @@ uart0: serial@640 {
 			status = "okay";
 		};
 
-		nand@1800 {
+		nand-controller@1800 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "brcm,nand-bcm63138", "brcm,brcmnand-v7.1", "brcm,brcmnand";
-- 
2.26.2

