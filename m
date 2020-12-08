Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAAA32D2936
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 11:50:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726755AbgLHKul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 05:50:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726226AbgLHKul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 05:50:41 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ED17C061749
        for <devicetree@vger.kernel.org>; Tue,  8 Dec 2020 02:50:01 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id y16so18601318ljk.1
        for <devicetree@vger.kernel.org>; Tue, 08 Dec 2020 02:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p/R8Cmud8S9mk3fnYgEJ54qyfkkw76nlV01IMW2pKqQ=;
        b=Pon6yxPsPxw5ZKW18ScD0beFlawqXlzEZiFxujXtFKFFGWz2zoXCW54F0Oz3DNNMPm
         GZLHNXhWW1Fb8F5rhGB3fWtkO44ElCsMn45UPEqzOUbtcUOYo8FhkNSxh1lIktJ+pZ6/
         Uz8nxGTrEbKKmX+bJcUcFKZu1Mp3OLXyPTBWk3s5LMGb4yKOBe+/XWxHLJ+9Rp4gFyPz
         3K/pa7IiVjiRl2cBPM4rPiX9kriESrMC37mtYy68ZUu7/ZIMOQj7caUgWJHgWaJG1cQb
         3US5Umxc2aYqJxMtua6UiD2xNxFBDJHYbVCGf2lYUwYjAQaA8la5xs21pqqRlyfx05ez
         NWoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p/R8Cmud8S9mk3fnYgEJ54qyfkkw76nlV01IMW2pKqQ=;
        b=prP+TIaYy/MJgsb4urKtW97RlC9LyUOgvpk0tiOnj+MT+jUKcjCWCOi8CfwbZXEcV9
         SFuDqaJpo92PB155SQ/IM4Ah1GrkrniaLf0KrYShibCt/05JWvIsrpIXarbw3WKVvNWd
         Qk+yGVxthdNJAVvIDqwxuVIUoa1xaTBbmts8tZgFERc1zIB1JYdGBKYnY2eb4smU1iv4
         5r63+JZMmc10uGL9WpFYAKQErmeKUWvq2Z4vEbr26WyPWxk+COp4sVWQ6oMUrToK2W5T
         A916HOuSa+aozvreOo6BS8yRoSx0cMdzgODBsjadl9kXDvN3v5LOFp3OwZ+Nq7XkxHWf
         ivtA==
X-Gm-Message-State: AOAM532xqv1+iQ7zx2XOohTA9aA3IBe6C0k68r9pyzShmDIY7UoMrI5E
        XvUq1cPyjCo5pvv+uH96vZY=
X-Google-Smtp-Source: ABdhPJyrvcpCMpB0wEZASIFSl4PPtxOSYQacbj0CJlJdOOW2diZg6c91ZKWy7Or8+39TIwq4K8/joQ==
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr7594561ljc.255.1607424599665;
        Tue, 08 Dec 2020 02:49:59 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id u8sm3185943lfb.133.2020.12.08.02.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Dec 2020 02:49:59 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: use proper NAND binding
Date:   Tue,  8 Dec 2020 11:49:50 +0100
Message-Id: <20201208104950.14977-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 has controller that needs different IRQ handling just like the
BCM63138. Describe it properly.

On Linux this change fixes:
brcmstb_nand ff801800.nand: timeout waiting for command 0x9
brcmstb_nand ff801800.nand: intfc status d0000000

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index f873dc44ce9c..55d9b56ac749 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -164,7 +164,7 @@ uart0: serial@640 {
 		nand@1800 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			compatible = "brcm,brcmnand-v7.1", "brcm,brcmnand";
+			compatible = "brcm,nand-bcm63138", "brcm,brcmnand-v7.1", "brcm,brcmnand";
 			reg = <0x1800 0x600>, <0x2000 0x10>;
 			reg-names = "nand", "nand-int-base";
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.26.2

