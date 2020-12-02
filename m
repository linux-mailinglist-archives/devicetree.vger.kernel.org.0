Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E479A2CBF55
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 15:16:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728203AbgLBOPl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 09:15:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728197AbgLBOPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 09:15:40 -0500
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BD38C0613D6
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 06:15:00 -0800 (PST)
Received: by mail-ej1-x643.google.com with SMTP id qw4so4481319ejb.12
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 06:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+2HhTD5jTn+vklEh4aL5/wMsPXq9tv2fr1AHIakSbyA=;
        b=rblOepbVJChntb5pg5cBLGVX3v5Npt5ASjgefyud4GisFo2yFRCTCLQcnHLv57iJZy
         FZjtA/ifq/EDkjfS0l3JHXPmP2cdOXhs+QN6ZKrucHFvH2GJSJlAzf1Rwm1aqfc5zCCc
         EFzyofbZFHOb/XGKTWCoy1oj+Z6t36qZziiighBXILmtEKnXff210NjSvUZfOgLY9Acb
         mXwf8UhknA358OtTYehSJdZwuX7AFRj75iv+wdDPi7xXGWvD+NUxyftJkMqQCmlwbpIc
         FQDXqe9nJY8S0gg6I7VBEmVgYmYH1yWmE/86lDoFae28hkw97olHAQ3fZjM8bAKfWRsr
         BdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=+2HhTD5jTn+vklEh4aL5/wMsPXq9tv2fr1AHIakSbyA=;
        b=s8ohZ3yD3WQFP06pxpyoBxn3YbvNc7QEWY11jV+ZnDHbcBvH1hjBQ4Fs2I5VbkyAUH
         nrD7CdvB43/gmLrwuh+YrsBGwNhVqZOd94yKaNs97pi1n+OCQ3Rl7cR7zG7M36YsN3on
         3qMbnJGRDoBTs8gW3jZUVPRWntusxj6TwCSJeSKfun+H2QoKlM/E41ikZlILl7BuaONH
         u7yh9G4ZAIEk868mNtMcmgdKGMcGH/sJJgszufe095pTsQihom72Od9he+co7NSJEb/J
         ymr1xe7mQ7Dy6UsvYv4bsHkjeUd00yeFZviDBb0UHQdI9ojQL92srW3Heyy7PdHOFUHy
         AA5g==
X-Gm-Message-State: AOAM530/U6GIOnusK9RnnNuWVV8OyZWj8N1+xYT/BNm9v1NIMAXObBZv
        eEaVlSTqP3cCSVYWIQE5MdDwVA==
X-Google-Smtp-Source: ABdhPJxnHneDF4S7sioqi9JTCEQu+HKLJ0bOri7kp9DYkz53zZhgEMxhLu+jj3lvj4omuauMDnAt8w==
X-Received: by 2002:a17:906:22c7:: with SMTP id q7mr2526176eja.486.1606918499010;
        Wed, 02 Dec 2020 06:14:59 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id e19sm20742edr.61.2020.12.02.06.14.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Dec 2020 06:14:58 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Manish Narani <manish.narani@xilinx.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: zynqmp: Add address-cells property to interrupt controllers
Date:   Wed,  2 Dec 2020 15:14:57 +0100
Message-Id: <e4f54ddce33b79a783aa7c76e0dc6e9787933610.1606918493.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit 3eb619b2f7d8 ("scripts/dtc: Update to upstream version
v1.6.0-11-g9d7888cbf19c") updated dtc version which also contained DTC
commit
"81e0919a3e21 checks: Add interrupt provider test"
where reasons for this checking are mentioned as
"A missing #address-cells property is less critical, but creates
ambiguities when used in interrupt-map properties, so warn about this as
well now."

That's why add address-cells property to gic and gpio nodes to get rid of
this warning.

CC: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

I was grepping DTSes in the kernel and most of them list it as 0.
In gicv3 case where its node is added it needs to be filled property that's
why also non 0 values are there.
Definitely please let me know if 0 is not the right value here.

Based on https://lore.kernel.org/r/cover.1606917949.git.michal.simek@xilinx.com/

---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 14a2e69cf98b..5b2051ac6965 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -368,6 +368,7 @@ fpd_dma_chan8: dma@fd570000 {
 
 		gic: interrupt-controller@f9010000 {
 			compatible = "arm,gic-400";
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			reg = <0x0 0xf9010000 0x0 0x10000>,
 			      <0x0 0xf9020000 0x0 0x20000>,
@@ -574,6 +575,7 @@ gem3: ethernet@ff0e0000 {
 		gpio: gpio@ff0a0000 {
 			compatible = "xlnx,zynqmp-gpio-1.0";
 			status = "disabled";
+			#address-cells = <0>;
 			#gpio-cells = <0x2>;
 			gpio-controller;
 			interrupt-parent = <&gic>;
-- 
2.29.2

