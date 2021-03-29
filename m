Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51DA134C618
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 10:08:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231929AbhC2IE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 04:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231886AbhC2IET (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 04:04:19 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34FA0C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 01:04:19 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id f16so14916957ljm.1
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 01:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lbTjxeoxWT5PkRnNPIsg+iF2OmYYPj/AL1zeFNy9DYs=;
        b=BSV5z8YyFfytOCd8/YoqmGw1IQBJgutV9Od43r8LMWiWXSSdk56ZU015qDMBAoiMWj
         IrsqEATOF2GrLZ8v1DnlQJ37B5L52XRF8nNy9FpRXYO7YrZbczqn25wUGgW6QKgP+RjH
         cyiq4chIVWIxhuHb/6aS60B3B6GLW8Q/yY20zLGWMkhLEcQoj6COHhiL3HFIB3t4+30J
         HY8KQzbSRzhQYxXEQqFku4McwoVmckI0L6bwcu803tXDjJ63IIvgj8cEwn5n43g6i3K9
         J+MiC7iHez4NFbDbYg/LFC/HkMZjg1MLrcqtABoElQ8PTyTYkQu7ZDcRfd/zia7YsLnU
         x8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lbTjxeoxWT5PkRnNPIsg+iF2OmYYPj/AL1zeFNy9DYs=;
        b=hVNqoWU/uW2GQdyF6jSaszuIzVX75RyEMcL9CG8nABVcWcNP1lxinF9A7aGCepLIgX
         fn8q3M/yC3mVwXy7xcitimxmUF812lRf4X5KQbUAyytWyAtW0v3r1d0TSRFe+fetNHj6
         jz+wdNkkJIW3elu0C8vOTecrVT1RcHB0rae1QBJCcg+fqKjgeafE4oT2bwLMNHcJrUcH
         fU2J6dlW1oIdo8ZF9dYwVkQga1EWv7gLFRwZpKI4HBoEsIm2A/QiX+M8nrWkZIlWzbDi
         cH73jWemg8gBzWI6sTCpwq9e8aQv5bIKh0Kj1fmwcUxp0hqt3okKftu1XMlohwaYiXjC
         5y4g==
X-Gm-Message-State: AOAM530oaXTHJNZOCTaZRNeCPYAA2TeTPR+bBd03kSQKXe3Kyx3DxJeS
        +yA9kM9L+agj/uho2Qz+yd0=
X-Google-Smtp-Source: ABdhPJxy1uwP1UCeSUANkdByGInGLWGMcktjW2HnVBTFvn0+d82Y5ITPNC8ARVoSqYv8gmggeyX8vg==
X-Received: by 2002:a05:651c:386:: with SMTP id e6mr16728756ljp.468.1617005057681;
        Mon, 29 Mar 2021 01:04:17 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n11sm1748456lfe.243.2021.03.29.01.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 01:04:17 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Vivek Unune <npcomplete13@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Set Linksys EA9500 power LED
Date:   Mon, 29 Mar 2021 10:04:09 +0200
Message-Id: <20210329080409.16766-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Set Linux default trigger to default on, just like it's normally done
for power LEDs.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index 8b77efd2224e..05d4f2931772 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -75,6 +75,7 @@ usb3 {
 		power {
 			label = "bcm53xx:white:power";
 			gpios = <&chipcommon 4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
 		};
 
 		wifi-disabled {
-- 
2.26.2

