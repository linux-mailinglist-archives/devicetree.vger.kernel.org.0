Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EA53337778
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 16:28:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234394AbhCKP1b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 10:27:31 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:34177 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234438AbhCKP1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 10:27:25 -0500
Received: from mail-ed1-f72.google.com ([209.85.208.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lKNCG-0004pE-8p
        for devicetree@vger.kernel.org; Thu, 11 Mar 2021 15:25:56 +0000
Received: by mail-ed1-f72.google.com with SMTP id p6so9995189edq.21
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 07:25:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=seRfZbNnrbt83A3lqfbME46rdPLUXBuaJIJzFEroJqM=;
        b=aXIApU6+bSQYeqt4g63H1DL3n7kU6XaCTHcdmmifmW/IxfNXuPPbh81a3U/DB7Ov0J
         EOVKxaRALLosVbn0mD/HA7vmQcqtdBR8EXChLVcVwI/bvAootTRBpHvAwj8leluqmR6N
         n1WlBlVV2B7MxvoOQUDS1vzwydmWHZEsYN6eU9UwtFhkb3JHr3DtonVPxQY1Z9FUBNUC
         FpMXPUfR30g0oHcr9pDjcWLTPTTbHt+AT/6y5G1iGG9CRGwtPTxJnLfEfmo4HA+PNu5N
         9fgyIRYA/uoHncu2NlF5YfX3YX9GY8cBpgrW4xHvcI4dBlh/QqZNouG2Gp8K80e8b0Z4
         u2gA==
X-Gm-Message-State: AOAM531YzaNe3P5newZIFFE2tG9Csu/HnKaOJxSFCUJpOZL2H/BPyVFN
        VjvdrXvYY6U4C4Qzw1h/JAB2cb41OOHv20UQnEz7emYxixlD52rgcblqavUgtNfBh+8qJpJkwuA
        K70ZK6SNB+TcM533nz2SPM6Z1Vfn5jgXBn6BfBBM=
X-Received: by 2002:a17:906:2c44:: with SMTP id f4mr3504717ejh.508.1615476355783;
        Thu, 11 Mar 2021 07:25:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyyTATyAQcbeENIUwKOgFEFyZfkouzkosm1a5SyTcN6wlVTiKi+ARuyDQUI5aUuLLjUtpz6tg==
X-Received: by 2002:a17:906:2c44:: with SMTP id f4mr3504683ejh.508.1615476355579;
        Thu, 11 Mar 2021 07:25:55 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id v25sm1517826edr.18.2021.03.11.07.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 07:25:55 -0800 (PST)
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
Subject: [PATCH v3 04/15] net: stmmac: merge ARCH_SOCFPGA and ARCH_STRATIX10
Date:   Thu, 11 Mar 2021 16:25:34 +0100
Message-Id: <20210311152545.1317581-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210311152545.1317581-1-krzysztof.kozlowski@canonical.com>
References: <20210311152545.1317581-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simplify 32-bit and 64-bit Intel SoCFPGA Kconfig options by having only
one for both of them.  This the common practice for other platforms.
Additionally, the ARCH_SOCFPGA is too generic as SoCFPGA designs come
from multiple vendors.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index e675ba12fde2..7737e4d0bb9e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -140,8 +140,8 @@ config DWMAC_ROCKCHIP
 
 config DWMAC_SOCFPGA
 	tristate "SOCFPGA dwmac support"
-	default (ARCH_SOCFPGA || ARCH_STRATIX10)
-	depends on OF && (ARCH_SOCFPGA || ARCH_STRATIX10 || COMPILE_TEST)
+	default ARCH_INTEL_SOCFPGA
+	depends on OF && (ARCH_INTEL_SOCFPGA || COMPILE_TEST)
 	select MFD_SYSCON
 	help
 	  Support for ethernet controller on Altera SOCFPGA
-- 
2.25.1

