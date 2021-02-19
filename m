Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 885E831F4EB
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 06:51:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbhBSFvf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 00:51:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhBSFvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 00:51:35 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 735AAC061786
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:54 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id v6so13521065ljh.9
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wUKkyU5+mkY7WKTP9frJ5YCLQkIQ2gAiZ5Zap8gQ9Jk=;
        b=AId9BOaofwIXYGapu+QaFFGZgooCUgJrJRPNH6q5AmuAs9N7HetQldvKWQsaKORKpN
         tHskuxYZiNlvfwHA19fxTTcNZTsiaXKNarlTzWk50DR44CXUwsggM2F0OzQRw1WbHCC3
         r1Xpy+VtDaVRzKqtrXv0YcO6Nlpa6vg08U9Fa904iFNpa+ZxJBH1Jz3zNxShiQBHN4gG
         cvCyycwpHwUq8i/KDRvP7RJwVNqhsQs+5dwhVXuZQfNN4D3Wq4pZZq9CyTy1vrxUH89x
         ZIn+HqMk0NORdyhWvvnTe1yKS2bkWy8afylCK9R+uqWAiNi1wdFAGUC5tRt9EXEGTqnb
         chNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wUKkyU5+mkY7WKTP9frJ5YCLQkIQ2gAiZ5Zap8gQ9Jk=;
        b=Dl4G2ljIsE+fx/QdO9TLjurXW8OPe4mVuapenNG7bJbTimViOg7Bp5zNsd+jQBZM4P
         UxqclvoMEZjbw0+70WlyPEyo7ctkfj4bup+UUpTKbGb0Ahv7gP/2MddJZ2NfKHflG1EV
         k1+HPc4/j9CwGN+u/trZykrXRrGaQFEkHoVWkJraRICw5b+/hyjOsWJIZ9i3CdYOt4DU
         aA0UfNktvejR2lBL9Bz3aSqiXBs7lMhMD3PtY9A03FZ+gQ9ETS/2MoNABDkidiS7Bf07
         zoY4DE5G0bV5K+GL+Mq3rtSgO8kAN7fFPDlWl67IyYjvsakXqw8JToNb0P98OHSrq3B1
         uZLA==
X-Gm-Message-State: AOAM530n0Q2JFJBWSU2c8WY75g+IL2aCMQETMFGSWb1+g8W3Stk2c1t6
        RW+B0dXSFNalquFpUIo2s/M=
X-Google-Smtp-Source: ABdhPJyUleutk6KeEpB6vGW2fIbgFw0MRJV8gfl4gTyNHmLCjfvE5BQ8BxMEAB1xH7RIFh4ZDSfHZg==
X-Received: by 2002:ac2:42c7:: with SMTP id n7mr4700057lfl.268.1613713853067;
        Thu, 18 Feb 2021 21:50:53 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n8sm819712lfe.276.2021.02.18.21.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 21:50:52 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 3/5] arm64: dts: broadcom: bcm4908: describe Netgear R8000P switch
Date:   Fri, 19 Feb 2021 06:50:28 +0100
Message-Id: <20210219055030.3997-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210219055030.3997-1-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

R8000P model has 4 LAN ports and 1 WAN port.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bcm4908/bcm4906-netgear-r8000p.dts        | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
index bf0d534ace2e..af2616e82e83 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
@@ -43,6 +43,31 @@ &xhci {
 	status = "okay";
 };
 
+&ports {
+	port@0 {
+		label = "lan4";
+	};
+
+	port@1 {
+		label = "lan3";
+	};
+
+	port@2 {
+		label = "lan2";
+	};
+
+	port@3 {
+		label = "lan1";
+	};
+
+	port@7 {
+		reg = <7>;
+		phy-mode = "internal";
+		phy-handle = <&phy12>;
+		label = "wan";
+	};
+};
+
 &nandcs {
 	nand-ecc-strength = <4>;
 	nand-ecc-step-size = <512>;
-- 
2.26.2

