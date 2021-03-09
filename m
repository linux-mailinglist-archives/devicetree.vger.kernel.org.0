Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51878332E76
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 19:45:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbhCISol (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 13:44:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbhCISoU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 13:44:20 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6591BC06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 10:44:20 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id m22so28798812lfg.5
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 10:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O4zdC566Ct+aKYV17URgnEJ/xHS+H2jsoqG2PinpdIs=;
        b=J0QMjarI3R+kh2ZkKEOIsW3WByX1YAiCIjfX0XhfUsfoo4Ae1pYOo1iM33sBJaQojd
         9FvE1rzAtCOGxoNeR1asiLWEemPF9su0M/s9VlC4mEyAh88e5REyqRi37EUEsW75YI9G
         mXj0A25plf9bW3Z1edSKhc2Q4a/G3eIosT6oBTbwjbGnQEZC/eCLnGMjYD6mHzOJ0on2
         zdyEsbLgMSM06BD/J1w3zLqAuRRUdyYCamoRRGQptMScrLLj7wZIHlUsIEKYeWngLgsQ
         i1b9xVxhwNckUsPFRpoi2MCCLb3DKHqhd6F3U4Cwuu8C+KCV30gCdR20IkZg+P3oYEkw
         Nl/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O4zdC566Ct+aKYV17URgnEJ/xHS+H2jsoqG2PinpdIs=;
        b=IX2tFOHcEn6wev8w/47IbKONtSJxYeAVYcwKrRcmPeC/mzpBs6MQnb6QFTN2/B9hKp
         /oV8caQFe/fgUxRrZEOYbfSGV2MVUA+vUNiIiMw+iWF47TUHnB8EMS2DN8ACPxY2kUSZ
         U3I7LdVX6uifdGzOTNetRMDQpph+3KNvp4Q4I7VQlzISpdx/b38z40xCKRAYu6ldu+ln
         kFah4V7ndforjOCGPhFM9HlY+/4HzcCZYI3TWt8U3csl7YWrzUWL+VAFZy0SfFz5UUxj
         QanDVMGYYq1RigC+9YrzTnWmlwjBi97svvMlG6Xsoz26knI01vvxJnSD9FJN+WM2I8fL
         tbVw==
X-Gm-Message-State: AOAM533ale7lURwdd/+yc5/5b/HR0osvUMA6rX5vkRiXpuG5jEGs561r
        jGHo5PITgRUFObMNT79Pd3o=
X-Google-Smtp-Source: ABdhPJwUiMCUhpQORc2QOZ0f6LrD+U4kmu3RGJCeqDsoaw06UahB/TqD3nJF2irh3p2DhgZVlDmhKQ==
X-Received: by 2002:a05:6512:230f:: with SMTP id o15mr18529446lfu.326.1615315458977;
        Tue, 09 Mar 2021 10:44:18 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id 28sm2226948ljv.125.2021.03.09.10.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 10:44:18 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: fix switch parent node name
Date:   Tue,  9 Mar 2021 19:44:09 +0100
Message-Id: <20210309184409.31409-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Ethernet switch and MDIO are grouped using "simple-bus". It's not
allowed to use "ethernet-switch" node name as it isn't a switch. Replace
it with "bus".

Fixes: 527a3ac9bdf8 ("arm64: dts: broadcom: bcm4908: describe internal switch")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index c089a48aeb8a..29fda356f730 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -156,7 +156,7 @@ xhci: usb@d000 {
 			status = "disabled";
 		};
 
-		ethernet-switch@80000 {
+		bus@80000 {
 			compatible = "simple-bus";
 			#size-cells = <1>;
 			#address-cells = <1>;
-- 
2.26.2

