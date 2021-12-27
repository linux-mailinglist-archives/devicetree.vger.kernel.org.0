Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDD2D47FDA3
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:36:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236914AbhL0Ngm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:36:42 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54664
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236846AbhL0NgJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:36:09 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8C7D94000D
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612168;
        bh=wO5Lw0gsdYf0zU1BO1ZHPdKqK24/sN+p7v+KigV/IZY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=ttNYqkFBOtuLXRPcedLp7tdPk+tNAr4e6wJCk8G2Q2AY8ut3D0+EBzDt6bHZjs+F1
         9SUpkgVR9YaRyiMQLgId+Jk44jKWvHY4x9R/d748pVcL0y2+asikIorpSnF+S1U26Q
         JWZMG4jmLxjfyV5Yk71ZYEi+AYPDxuosBxkBa7fy4YC5ZTQZyfqSmmGBW8aw9SjmNB
         ivPdgjqGaz30G4kgHIt21cYSnLONJqzYHHO8DJ3P7N0B35fhMNoFDvoKMP3FpklW7q
         NYlPdEB+mIgXbUzbWF3NNgPLQYFzFpR4fTnOI4M27r00qeS7Sm6H7IQIKbHMbyHvfo
         1Bts4eiMb4Ubg==
Received: by mail-lj1-f199.google.com with SMTP id j15-20020a2e6e0f000000b0022db2724332so2624910ljc.3
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:36:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wO5Lw0gsdYf0zU1BO1ZHPdKqK24/sN+p7v+KigV/IZY=;
        b=SJC+yxORjx8h6YFMgbpTW/ieRbCCKVuPXuHcdlWBTaMaw+g9WrKwPF/sB1bhrs9hnH
         q8FSOnhTkix70J9eCZ3k2rideMV7uLWo4HwsUoiCZ/CtbECtXtglrrnVFsORswVFX8Qb
         fpwSb9SWUIqjLe4uK+09nZrOZecfEP8FgBM4mlFkG6hYgt3tQXifjQy9WgAxGau1IKxr
         ANtRfOT+SnXgMzgteUf4PdBXGbjdXvGlbhM5ykIWrOUYpoDcFbaDUrIodvhXtghdG9kj
         MZrZgvjczsUhPBFEEmQYYLgG8j7dzZfu9HevAJUk0XgeCV0nZ5BkESKtI+UMBOVIlcnw
         XskQ==
X-Gm-Message-State: AOAM531IWRIsfb4XutOHRVCbaVEeyVrGgdMoAY0u0yzsZkKbjRfRFIlu
        QJvTNb5IoFGP3CP5C1z4rJg06N2rtsCffH2iTTp0fz64czDMnIV57ZLWZ25edFV3AFfGOnXxr2o
        QzuOdUmh5NOyHHDcWGtHVuqL8qYGz06D2YtWxy0o=
X-Received: by 2002:a05:6512:3a89:: with SMTP id q9mr15222452lfu.99.1640612168018;
        Mon, 27 Dec 2021 05:36:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyTp9VeB2R6gEMXKCJDcva9kYSWJaiemwA+YvDBCI/xJcOsEjKjDh0qOS8ieZg+a/fSIiIkcQ==
X-Received: by 2002:a05:6512:3a89:: with SMTP id q9mr15222433lfu.99.1640612167855;
        Mon, 27 Dec 2021 05:36:07 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id g18sm800107ljj.124.2021.12.27.05.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:36:07 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 12/19] ARM: dts: arria10: add board compatible for SoCFPGA DK
Date:   Mon, 27 Dec 2021 14:35:51 +0100
Message-Id: <20211227133558.135185-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Altera SoCFPGA Arria 10 SoC Development Kit is a board with Arria 10,
so it needs its own compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/socfpga_arria10_socdk.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10_socdk.dtsi b/arch/arm/boot/dts/socfpga_arria10_socdk.dtsi
index 7edebe20e859..ec7365444a3b 100644
--- a/arch/arm/boot/dts/socfpga_arria10_socdk.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10_socdk.dtsi
@@ -6,7 +6,7 @@
 
 / {
 	model = "Altera SOCFPGA Arria 10";
-	compatible = "altr,socfpga-arria10", "altr,socfpga";
+	compatible = "altr,socfpga-arria10-socdk", "altr,socfpga-arria10", "altr,socfpga";
 
 	aliases {
 		ethernet0 = &gmac0;
-- 
2.32.0

