Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF35D4A3135
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 18:56:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352845AbiA2Rzx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 12:55:53 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:36304
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352926AbiA2Rzl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 12:55:41 -0500
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 39CED3F1C4
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643478940;
        bh=AgNSGtocgRUP9M85tHRajkcTj+/+AiFRtIAO0ZpbYhE=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=K7Z8fGpojf6VF07WkKcNBpSHVzDrAhxXo9oTx/De44XsDY9wYlYNBwG4oiHB79Igs
         +w/TZz4BedoAoeFm9nLAtMwbMGi6plvqx4Om+XqeCHFbKWm5grbmpPKdHb3pG6hH+N
         ax40EYYqJ6r0HsITH/QGoTYqxd7xc2cmxPT027L40r/mgsFea2g2h+FVf8EmyBZVIY
         mLrlWMecyk0c9MCeDxQxEnJT5S1yEhRmVV9rtoWLt0E9ZR5+DrHkjRDefGyxEA1Gjq
         5/YPnZ99SKW4AENIwR+PoNVSZhum72QVgDYgSoYkFi9Y9TqOIn6BSMxtBxefbmcDzO
         NluKYdeKrjeIQ==
Received: by mail-ej1-f69.google.com with SMTP id k16-20020a17090632d000b006ae1cdb0f07so3780791ejk.16
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 09:55:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AgNSGtocgRUP9M85tHRajkcTj+/+AiFRtIAO0ZpbYhE=;
        b=BjKZfpPHeo/Ez0+16mHDci8VTUsT/JBTD8zJVBRA9CzHMu097Ng1mBA0VoE+k0a6W6
         LnpuKQOWsxqL0mTMkIgeeyRxgN9w4uW7CbJ2GV99VW/TuyqT6L28KXtJKPu0Pil7uYUj
         urQXxZaXG8gAiVCjAWjGlKX3vGsMdV2b/6Gjv2RbAHh+2t06bfpblaWmYuHJ12DIjiqB
         d4FvM50LrPc321QEpxmmmvVffuI/Bkhr1d59R/rK/xFePkwADPFV9JxIdf8fdKKXB+3j
         9NK/iXdU9sWZ3tqfFMYScMVn7HkZTcgBwrsQ7HHjY9WdZxj/klp4jIL7qkeSLfWINEnd
         7hVg==
X-Gm-Message-State: AOAM532u1I0m4Kpr+8ygpASkqYXt1Ae5Te0DV3p66bIXt1HEnfzDoyqb
        D9D44xKI73HaczQg0hhKfP4sIbr2P6c/NdEYLnhVuu8uKfB/eRzHE/q1ZVBI1JQ3w7dXx/g2Due
        ttFKmtppYKSuwEIhV7LhuS8ihkGdy+0TP6BdPDMY=
X-Received: by 2002:a05:6402:520b:: with SMTP id s11mr13577751edd.365.1643478939981;
        Sat, 29 Jan 2022 09:55:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwQYwWSZn648i5uj6Odpjd3mwhRiFbCaAUjPpRI3J7lMN11PrtnGCUD0mEVpI32lBYCwI16hw==
X-Received: by 2002:a05:6402:520b:: with SMTP id s11mr13577740edd.365.1643478939811;
        Sat, 29 Jan 2022 09:55:39 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id oz3sm11327756ejb.206.2022.01.29.09.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 09:55:38 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/2] arm64: dts: agilex: align pl330 node name with dtschema
Date:   Sat, 29 Jan 2022 18:55:35 +0100
Message-Id: <20220129175535.299035-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129175535.299035-1-krzysztof.kozlowski@canonical.com>
References: <20220129175535.299035-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes dtbs_check warnings like:

  pdma@ffda0000: $nodename:0: 'pdma@ffda0000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 63dd4e69c962..1f4618c1062e 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -337,7 +337,7 @@ ocram: sram@ffe00000 {
 			reg = <0xffe00000 0x40000>;
 		};
 
-		pdma: pdma@ffda0000 {
+		pdma: dma-controller@ffda0000 {
 			compatible = "arm,pl330", "arm,primecell";
 			reg = <0xffda0000 0x1000>;
 			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.32.0

