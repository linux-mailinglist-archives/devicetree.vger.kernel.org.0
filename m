Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FAE92D547A
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 08:24:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387808AbgLJHXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 02:23:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732927AbgLJHWn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 02:22:43 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FB94C0613CF
        for <devicetree@vger.kernel.org>; Wed,  9 Dec 2020 23:22:03 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id m19so6779783lfb.1
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 23:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KFM4aPjUm0wLH6ZvZ5tYT9bZFyoKoThwefirbnYwScE=;
        b=sJEMoUx8UdAGwQrJEEGHRBahUTjDmxcHJzMDdYW8Fof1+NRRWLsYCgJkTykE7gQ72i
         A44z1Kdf/uaZkTUXsggaKL8VzleUmmDI8FknOne/jkSUo2Kk0GawHqImbV3cc7EBGf8W
         jW+uOiCJ4Ob2T1UWx2h3F26yEcwvtsDPD7znICkxAtTOsfynIM7rJZLYChzONYFPTwD6
         8oSYoaPCZxym6L4lNl0EiwV/r5bMANtqV98SH20se+Ji3DlfICpgU/os0WAJ2DazBmyQ
         EPW/hhrNsIMYqxP0sWoQfb+94JSSKBo4kR4ScpgymJPz5o2aO8La32DU6f+PMdHq2MZx
         U0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KFM4aPjUm0wLH6ZvZ5tYT9bZFyoKoThwefirbnYwScE=;
        b=hyNyDsCntzZjTHUDPz9ehujkMfNNWys7Pr+ANAjusgD+ZGctZ6a29zTW7LIA4BIp0c
         WYbrykyFyRkDBGenzUuX/Bq+TC9UgwfAZzez7ESK5qpcjNykyM7497TpFNijU6NT8ryk
         rmZUZtp6Yd5GsLl6eU57iUPAgC714ieXfZE//IFwCa42G8dovFTIgyun6OxObZYhrV2+
         Z2Qt207ROtLifGhYry4AuFovSueXdKcSj5DMMgTgWiOqerZ6WOPe3z4fA6av+xCzmeGk
         KrS+vec0aoJTCDvty2FJFiZ0rfY+oi4n6uoLbJ4l+LFWtHuZj8XFfMUp9pkgmXfv5obv
         cLjA==
X-Gm-Message-State: AOAM531EIOqE3sJEv6Jj7JILClnKEQ0hSqM7YHQS+vLGjbjUEcbiPfxF
        SwEgFtiHbnhIFjC+Lwtpt77FiOLi7Aw=
X-Google-Smtp-Source: ABdhPJxum7w+lfcoXmNeU/L9y17XeHSwebIPOKHcaRKskz6FN1EC7H37BW14+KB4woyC70v7Jt3JMw==
X-Received: by 2002:a19:857:: with SMTP id 84mr2437905lfi.237.1607584921566;
        Wed, 09 Dec 2020 23:22:01 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id 21sm415740lfy.174.2020.12.09.23.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 23:22:01 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: describe PCIe reset controller
Date:   Thu, 10 Dec 2020 08:21:54 +0100
Message-Id: <20201210072154.20278-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This reset controller is a single register in the Broadcom's MISC block.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
This binding got documented in the commit a269adab36d7 ("reset: simple: add
BCM4908 MISC PCIe reset controller support") that sits currently in the
git://git.pengutronix.de/git/pza/linux reset/next
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 55d9b56ac749..b5b772a9a51b 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -177,6 +177,21 @@ nandcs: nandcs@0 {
 			};
 		};
 
+		misc@2600 {
+			compatible = "brcm,misc", "simple-mfd";
+			reg = <0x2600 0xe4>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x00 0x2600 0xe4>;
+
+			reset-controller@2644 {
+				compatible = "brcm,bcm4908-misc-pcie-reset";
+				reg = <0x44 0x04>;
+				#reset-cells = <1>;
+			};
+		};
+
 		reboot {
 			compatible = "syscon-reboot";
 			regmap = <&timer>;
-- 
2.26.2

