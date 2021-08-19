Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 959B93F2010
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234317AbhHSSnX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:43:23 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:36352 "EHLO
        mail-oi1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234528AbhHSSnW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 14:43:22 -0400
Received: by mail-oi1-f172.google.com with SMTP id bd1so9782864oib.3
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:42:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PL9Youq2DWomnSHhW7sKKKK7RXeFafVFmBnDw8i/OAs=;
        b=IJuMuzEbh2VgZO4TL3KGckQq/YrhuKGUW/P4TsNriFnq+fWRoMq7Slc8cDdWZCxUbp
         LHy+dQyYlFw6xekQsgK8Vq/HU6QYEl6BGd5Viff+lJf4D/EJBvVVxJ/H+uCPKQV195/f
         9RY3K57li90ulHttfjBQUKUcJ1whF+Azkt1+P5bZDlzpqxOWpBIzIViIhXF2IAeeeHds
         TTzRmRqr5z9ruehJkoPf/sCuHl5DeTsRm+VfTGyfitAy3ek/iuuAHCVvHpuTTPhO2GEr
         dPdV8HiOkgT88qd9jYZzN+ciAq/Ds33UBqFuZsJwn54hO1JYnLXCjV54hg97gYvk7BjO
         zDiw==
X-Gm-Message-State: AOAM532HAtr+90ykljwM3Nc59/Zy8cxRoVP9486I4vQQ5GrsboxNOwD3
        MEY+njPTF1bGSXOeGjqHzA==
X-Google-Smtp-Source: ABdhPJwMEnXhZ2+Kpu+isLTGhZSwseVDV3+46cMAloHN5+pYOd0DKNzQHZrz/cJEg0xgkkhYRYEt8Q==
X-Received: by 2002:aca:dfc5:: with SMTP id w188mr100719oig.51.1629398565768;
        Thu, 19 Aug 2021 11:42:45 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id v19sm796485oic.31.2021.08.19.11.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:42:45 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] arm: dts: vexpress-v2p-ca9: Fix the SMB unit-address
Date:   Thu, 19 Aug 2021 13:42:38 -0500
Message-Id: <20210819184239.1192395-5-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819184239.1192395-1-robh@kernel.org>
References: <20210819184239.1192395-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Based on 'ranges', the 'bus@4000000' node unit-address is off by 1 '0'.

Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/vexpress-v2m.dtsi    | 2 +-
 arch/arm/boot/dts/vexpress-v2p-ca9.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m.dtsi b/arch/arm/boot/dts/vexpress-v2m.dtsi
index fb8ca984ce1f..0819d112de12 100644
--- a/arch/arm/boot/dts/vexpress-v2m.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m.dtsi
@@ -19,7 +19,7 @@
  */
 
 / {
-	bus@4000000 {
+	bus@40000000 {
 		motherboard {
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca9.dts b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
index 4c5847955856..1317f0f58d53 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
@@ -295,7 +295,7 @@ power-vd10-s3 {
 		};
 	};
 
-	smb: bus@4000000 {
+	smb: bus@40000000 {
 		compatible = "simple-bus";
 
 		#address-cells = <2>;
-- 
2.30.2

