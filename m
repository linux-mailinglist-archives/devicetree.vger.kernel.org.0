Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28E4031C321
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 21:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbhBOUmE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 15:42:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbhBOUmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 15:42:02 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5F3CC061786
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:21 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id m22so12540925lfg.5
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wUKkyU5+mkY7WKTP9frJ5YCLQkIQ2gAiZ5Zap8gQ9Jk=;
        b=WxLzvN9lVXaGlk8z1HzErfbuUF0rN1fYjKEjVUciacLp52wUuC2FlaDA4ejAgOjsQ4
         2IXWzVqqu8YJvIJr0hfqccQ2aVxOlmSqrVQRWTvhTZCxqWTp1kVMxJz5ifPdXTlVpJy1
         jOUFzvQBCtI+6mg4jLcbDVv/5tAvGLBnQxpZ8914TK+/BOVJ/u7Pfxr2zH974h4njDIU
         aImwOtdaidkJA2oGy6ydtEJ2XZKZNPACVXDmAUvTSBWelyEjkEZCc87cwJLFUCZbchPZ
         nhFATt4+KPEFUPYqguClvPO8GGRq0e4eYttVmzgPF3EmkMAl8JWcue2+Ub3rKeliNXli
         2qng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wUKkyU5+mkY7WKTP9frJ5YCLQkIQ2gAiZ5Zap8gQ9Jk=;
        b=cETnY9q4tvvjy0XYMeCd56D/1QPEQEnOsVyGJLIMpWeGAfcmBHqF4+UEvANcCnMWy2
         1kkhiDbg7866f+b4UNPmpk/gYC6dZl7X9dxxQd/0OtYylGTMWk2h9cZWcoP/kB6cintb
         YvRQmQo7DFpodUubuXgTnthBGc5B6mZUEqyPrOfE/jWA3q5y2ZDd1zJ7OgVanE4i0bUa
         L9ghPrbEuhUK6oD72p4JcFFwmB7/YugjSG0P5b+mJOaPFcDSM9EdUfvqPdPbiAIaDIhU
         YUF2lhvy+yN5aumt72Kc+SDfmv0GjbaWbStO3E/hX3huFHE5j0nJSj3iMQa/25POGBwf
         9spw==
X-Gm-Message-State: AOAM530SDn9x0Gaec9FJHavVIpNuRskcbkHET1qpuPGxfwrn9BEhZeAE
        4NY/LZIp91vW3Xf1l47G6HE=
X-Google-Smtp-Source: ABdhPJygXTXzKiADv7ESqqEFQldG8l4AQnxz79gGKGuhskLGseN/Q32a1ZAwBe/dxN7xhDrOEoH94Q==
X-Received: by 2002:ac2:5322:: with SMTP id f2mr9400024lfh.108.1613421680528;
        Mon, 15 Feb 2021 12:41:20 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x36sm2922841lfu.129.2021.02.15.12.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 12:41:20 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/5] arm64: dts: broadcom: bcm4908: describe Netgear R8000P switch
Date:   Mon, 15 Feb 2021 21:41:03 +0100
Message-Id: <20210215204105.27830-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210215204105.27830-1-zajec5@gmail.com>
References: <20210215204105.27830-1-zajec5@gmail.com>
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

