Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 818A679336
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 20:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388193AbfG2Ska (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 14:40:30 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:34491 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388192AbfG2Ska (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 14:40:30 -0400
Received: by mail-wr1-f68.google.com with SMTP id 31so62988652wrm.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 11:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VUEntzYhcLPYeivqRWWRZYOkkzIgMjaxPulhiV5XfAs=;
        b=IUtiSH2p6Q+rkXQMIKL+C7RbvgRhr+Au5pFEpbqFZSUJUBITqHJ2GgKUwekeWKNQBb
         tzIM4u5q9Nb+RjiF/z0tmE4ehciXd++MXpGHh+pXgM2VCRW6NlT+dn7M12OZKo7oHJDt
         puMe2pUVAd5bCTRSvQDb+Wq+0EMkycajGM1c5/4xka//sLSv7P2aRF7BOgrTNbGyxENu
         Tdq8jqWjtuozujlB7RhEcbhlLECUv1n+qWtbAIOvllF6L4lY3vyApqbIDGoO683dIQf2
         ri9RqE145vPp8wvjVWVd0zW1ZEa9yz+oLt4WODkoFu2WlFQBKF6zHucfyGq/QMRwfEfG
         Rixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VUEntzYhcLPYeivqRWWRZYOkkzIgMjaxPulhiV5XfAs=;
        b=lUKxcSTSNKL5lhZIIn0NQK7y8RTL+tZNFXTGSeON6/bctG2Mfc1k21W5tvQyVXZbZ3
         +nF+tIv7wHTjg4XyFt1vLHDfBxCXT2W7waZPgDP/Xb/ab0yfiCpS36tgYKgGvFwcxkb+
         veDVriXtyiK63A0Nxu5xEqj8lp6qIPGzWtUJYIF0qwMOzM2aS7ERbrpTo48wLASXPAs+
         oDSM9kewnRAfVimItC/cB1RGiJA1SnoUx3Lbc45UJK59jwFGptZwTWrOhPVw91/ElITQ
         qUIxTJG1XV0u27J9Jk1BY39yS/Fj/swyeenLfl2ncLbiPvd14yCr1+uCM2rhSM47syPW
         YhSw==
X-Gm-Message-State: APjAAAUyRSbCkRhgwKGpJfLM3x1P+ok24m6L54oD7rLn8UjVjkEWxe7K
        d+OWaDRG4qybUdumvwHKgUsrSg==
X-Google-Smtp-Source: APXvYqwj0l/3K4qV5AKD0pPi+Kb6XwRa+C6cY/Loh9vhUu6jSxLM/mptGrUUN2IdVBQYxoUBwyV6Kg==
X-Received: by 2002:adf:deca:: with SMTP id i10mr21091707wrn.313.1564425628321;
        Mon, 29 Jul 2019 11:40:28 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.27
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 11:40:27 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH 3/5] nvmem: meson-efuse: bindings: Add secure-monitor phandle
Date:   Mon, 29 Jul 2019 19:39:39 +0100
Message-Id: <20190729183941.18164-4-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729183941.18164-1-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new property to link the nvmem driver to the secure-monitor. The
nvmem driver needs to access the secure-monitor to be able to access the
fuses.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
index 2e0723ab3384..f7b3ed74db54 100644
--- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
+++ b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
@@ -4,6 +4,7 @@ Required properties:
 - compatible: should be "amlogic,meson-gxbb-efuse"
 - clocks: phandle to the efuse peripheral clock provided by the
 	  clock controller.
+- secure-monitor: phandle to the secure-monitor node
 
 = Data cells =
 Are child nodes of eFuse, bindings of which as described in
@@ -16,6 +17,7 @@ Example:
 		clocks = <&clkc CLKID_EFUSE>;
 		#address-cells = <1>;
 		#size-cells = <1>;
+		secure-monitor = <&sm>;
 
 		sn: sn@14 {
 			reg = <0x14 0x10>;
@@ -30,6 +32,10 @@ Example:
 		};
 	};
 
+	sm: secure-monitor {
+		compatible = "amlogic,meson-gxbb-sm";
+	};
+
 = Data consumers =
 Are device nodes which consume nvmem data cells.
 
-- 
2.20.1

