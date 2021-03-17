Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0E8933EB3B
	for <lists+devicetree@lfdr.de>; Wed, 17 Mar 2021 09:17:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229613AbhCQIRR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 04:17:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229703AbhCQIQ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 04:16:56 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC77CC06174A
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 01:16:55 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 18so1638938lff.6
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 01:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5dqIAMyLcjx8dwmFA+FSJJ5gvGvaqHLPf7awCgrpltY=;
        b=Rh6G6q3EUswIzLD5HKy9CxIiVvznwwusfi3TgxDQcMyTGptrXU+Z4uq5AZRxU/PUtt
         YD9SgFsXY7ITPtQoQxBjHHrd+1xKxq1Ol2OnezqRqcWuctOGrGp5aW45XE9SewFPTWLu
         6LSB0NLjtG5hHPMhW+cr1ePo+UNThVDjSfULpTURkl1bJnUpVdu/2KDw11D8E3t33aHK
         1OkbIs0EyrMkBzXX3PtppBjqsbjUfBWgbnxxYmFPTPT6+gQWj4AVDicDqfFNDSTL8KBX
         8UrJjQWtgg/pphVYG6aR3sDDvL9m7C99BqiP1Xb9gRE/3G2osZHobxpKkxBMrmsEfng1
         0w9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5dqIAMyLcjx8dwmFA+FSJJ5gvGvaqHLPf7awCgrpltY=;
        b=fTUqUVKVcmmoYsxpMzJ57liSHhwQK7s9rmqN2ojTK7WHXZXnPkrccBfuTf6R0TkW2e
         Q9ezy5Hq6oH91M4c0zgLeDPprs/6GOJSrLXwTHIa5n7ysmWihLa1oQej1g/ydP2k3R8s
         qICMx+isOH5rYGOZ06nruF8sTDDXij2KwjkhSpi8ZtprKTiW1VD6v5mUcFsaOSX9evU9
         E+6vopXnMle1FwzHudazg//8kinAKq+uezIzSZdHuJ75ckinVVeDP2CN17g+Xt4x+Mi0
         5ZhCltN3pK0nnpkblkHKw1Cf5Sf7xXwsCeOFQmgAilMlUOuakDIyWBiCNlcJllAaHhP0
         zj4w==
X-Gm-Message-State: AOAM530JEQUuDzP626Bd1jD15juBJHkkouggjq/PAHYhNh58Kexgu2Nh
        7xcj0Mnu2avGMq6sTxD+UDw=
X-Google-Smtp-Source: ABdhPJykv3XQhMM0YbFR6mlJmoA2GldWr4X4LuSfdEnhEs7epgiV7eE7jcwXrUkwYCFilSAFnm0uuw==
X-Received: by 2002:ac2:5509:: with SMTP id j9mr1687656lfk.302.1615969014524;
        Wed, 17 Mar 2021 01:16:54 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id k6sm3418610ljb.110.2021.03.17.01.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Mar 2021 01:16:53 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: add Ethernet TX irq
Date:   Wed, 17 Mar 2021 09:16:31 +0100
Message-Id: <20210317081631.22580-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This hardware supports two interrupts, one per DMA channel (RX and TX).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 29fda356f730..8060178b365d 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -116,8 +116,9 @@ enet: ethernet@2000 {
 			compatible = "brcm,bcm4908-enet";
 			reg = <0x2000 0x1000>;
 
-			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "rx";
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "rx", "tx";
 		};
 
 		usb_phy: usb-phy@c200 {
-- 
2.26.2

