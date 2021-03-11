Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EAE433778D
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 16:28:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234395AbhCKP2E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 10:28:04 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:34269 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234336AbhCKP1m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 10:27:42 -0500
Received: from mail-ej1-f69.google.com ([209.85.218.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lKNDw-0005em-RE
        for devicetree@vger.kernel.org; Thu, 11 Mar 2021 15:27:40 +0000
Received: by mail-ej1-f69.google.com with SMTP id k16so8819766ejg.9
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 07:27:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lXB/iL6vA5+sCIUzf2o2vRh/ni0zGUa9h57FfrwufeA=;
        b=mmN+vNpJirgcdyamGhKd/s6RLgLTgwRK1NtCy/vvbPCPEkPIPVtKHFo1pFftuAkjlF
         3BjpI9UUvfwP5Os0WzhhCzpP/W00UXgjQ7Qi1rmLmspTBskiJbZ4iqHeICKyz8igmTE2
         5n8FYtKOilvTbG1rvusg3VYsZMueA+hXnmysuoohwvl39SrlMcCdmtaR8/WSiqvd5kIq
         M1YbG1LKB7iAtqvkX054ShkK2o1CxsZiRNYeJ8KzsvvyK4JZYjIn5JcXnJiy4OOz5QQx
         rymU9oMnH1esR8a6LTOZmFCa0ubAbs3KMJbwLJbhG93Rmow5ZOBCwAxZ3FAZ5GY/RLxo
         eKBg==
X-Gm-Message-State: AOAM531ZpySkRTVJgL1+nsYpddbzPz/oA+CUqgA0NQ7nkgDnFnmYWseg
        P7kXxPtzQkiCYM9rGof04D9TLORvTpdjQpiuuucvJuIqmWZHXK26CeBLY97BrBUv3b+Nemy7pCp
        lAdza2MzZY2J8UPejWUuLPbHiltVRadDR5rk7xL0=
X-Received: by 2002:a17:906:753:: with SMTP id z19mr3596694ejb.447.1615476460419;
        Thu, 11 Mar 2021 07:27:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwn2V3fXBoj0gUy8DLvmPZgdZVpI4oNbBPuRpgJS86sHTABegOHS6FeUR0VFJ6Dqnh8S7uUpw==
X-Received: by 2002:a17:906:753:: with SMTP id z19mr3596661ejb.447.1615476460220;
        Thu, 11 Mar 2021 07:27:40 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id g1sm1497413edh.31.2021.03.11.07.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 07:27:39 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Borislav Petkov <bp@alien8.de>,
        Tony Luck <tony.luck@intel.com>,
        James Morse <james.morse@arm.com>,
        Robert Richter <rric@kernel.org>,
        Moritz Fischer <mdf@kernel.org>, Tom Rix <trix@redhat.com>,
        Lee Jones <lee.jones@linaro.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        dmaengine@vger.kernel.org, linux-edac@vger.kernel.org,
        linux-fpga@vger.kernel.org, linux-i2c@vger.kernel.org,
        netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v3 13/15] i2c: altera: use ARCH_INTEL_SOCFPGA also for 32-bit ARM SoCs
Date:   Thu, 11 Mar 2021 16:27:38 +0100
Message-Id: <20210311152738.1318541-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210311152545.1317581-1-krzysztof.kozlowski@canonical.com>
References: <20210311152545.1317581-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ARCH_SOCFPGA is being renamed to ARCH_INTEL_SOCFPGA so adjust the
32-bit ARM drivers to rely on new symbol.

The side effect is that the I2C_ALTERA will now be available for both
32-bit and 64-bit Intel SoCFPGA, even though it is used only for 32-bit.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/i2c/busses/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 05ebf7546e3f..3eec59f1fed3 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -369,7 +369,7 @@ comment "I2C system bus drivers (mostly embedded / system-on-chip)"
 
 config I2C_ALTERA
 	tristate "Altera Soft IP I2C"
-	depends on ARCH_SOCFPGA || NIOS2 || COMPILE_TEST
+	depends on ARCH_INTEL_SOCFPGA || NIOS2 || COMPILE_TEST
 	depends on OF
 	help
 	  If you say yes to this option, support will be included for the
-- 
2.25.1

