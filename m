Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21AED332DE6
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 19:12:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231983AbhCISMK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 13:12:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231410AbhCISLu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 13:11:50 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1BD2C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 10:11:49 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id k12so21901892ljg.9
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 10:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1y8kVRQ2Zs1m0Y4A+2wU81grwqKSa3r6FVIsKNvUCQE=;
        b=UUVmGyUVQHxE0yOgX+dCwOt6AmAi3MUqIHPIZeqSqB2Uf4kI3dcDlHKvCQ2mG5iVLH
         PhOgB30umylLJCKYn18uxgL5e1JuOH4qxDHrxKbkMnpue37IZwckwounoz3zhbZCrV72
         ZPEsIcUbn1vxUmCs+c7AhWYIxKPmMMuEz+Ywyr2goa6MHENmOkc5eUC17T1W3RM8ekBM
         gATQHhYpi9jo6L6Y3ZieXFvnC06EO7/vqjPYqls4E5efS1qCx5jEEvJ5AVk0BekRhCwh
         K/T61nVvAGpR8wFbcu4JDpVcCxoXd9zgRgIb+N6MM0elvxlKRod6f/Jf9b8AR64L7yQy
         LnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1y8kVRQ2Zs1m0Y4A+2wU81grwqKSa3r6FVIsKNvUCQE=;
        b=LJufMOiw64oW0lFI1GOOyZ8IwUT28Ym4xsFtqbnu7FpVz19GKGG620Hz1O2NBAB8eB
         D1p/afWWF6GY9mUZF5VxUfF1zUluRGtCOeHTBKQfyS2OCMxxlQBbFoUq70ZhCuXFLp+L
         Dgdh2tSRYBfjEoDl5gpDdvD2KnqzrBbBA6nGrtwhjnUeN0rSuBMzOlZu3NFT+/WXYDKv
         Wbw13WBvbK574koBKCXPf6oDYXNKOUBgEvxumTMxQmKj+pM4UVVT5ru36mGDN/Ang4Hd
         pdEalYtuDoAISYN8oRjyczDdPDhNTmZ891+RXgNXQRVwOOjyk76mtN2AD4vPufMhnwJR
         O+9Q==
X-Gm-Message-State: AOAM533UwVomQGHmYjgPpY2ib5BSQuaf2R5H+RJPBtjkhJrJg7WxKl55
        KlPPUj7jZZGhLQF8sHrHxXk=
X-Google-Smtp-Source: ABdhPJwYij/h39ZMosFU2tpyj+zC6L1dUa/H60d2/h/f6oq+k2bkIlY3zw6GWHi6Xv2SGV+AkYAE7g==
X-Received: by 2002:a2e:b60d:: with SMTP id r13mr18057592ljn.30.1615313508159;
        Tue, 09 Mar 2021 10:11:48 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id k6sm2007421lfm.19.2021.03.09.10.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 10:11:47 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH stblinux] arm64: dts: broadcom: bcm4908: fix USB PHY reg name typo
Date:   Tue,  9 Mar 2021 19:11:32 +0100
Message-Id: <20210309181132.23144-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

s/crtl/ctrl/

Fixes: 17aa606c5f9b ("arm64: dts: broadcom: bcm4908: describe USB PHY")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index bdbf94f3348a..c089a48aeb8a 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -123,7 +123,7 @@ enet: ethernet@2000 {
 		usb_phy: usb-phy@c200 {
 			compatible = "brcm,bcm4908-usb-phy";
 			reg = <0xc200 0x100>;
-			reg-names = "crtl";
+			reg-names = "ctrl";
 			power-domains = <&pmb BCM_PMB_HOST_USB>;
 			dr_mode = "host";
 			brcm,has-xhci;
-- 
2.26.2

