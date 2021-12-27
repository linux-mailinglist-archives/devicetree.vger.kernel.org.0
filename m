Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F82847FD8E
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:36:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236948AbhL0NgQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:36:16 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39630
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236870AbhL0NgK (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:36:10 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D00643F1F2
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612169;
        bh=2raMQbTEO7GSuDvkY6ovvPJxx8orpnvUqhVxP2Jtxb8=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=QqxrP9aLF3CkaHVaRnB4b6gz5KiA537BhdOAC0aCGFgcIZ1Fp9Wz5q2Z8bqqVg7or
         Tzqu7DPAEQv3gIM7ZUuonaeV2h5rIczORENCGzk7rfK9/cmvH7evBqqw1+yGysTq60
         8oR92jq5thvJJRVYr3ZyrogjVp8PSVDkKXs5TJLSmdnF0aacn4vhFgwwtk1p4fgHnO
         zg+BbLhzu6zduBXmH6KFicfcSjxSw0qCodRi+n0jW55GVBZ/BgY3thEGxJq/Yw6w9m
         rXVV9dsgbx+3g+PRoyZ7FyYmXyFBH3dOs5osvv3MtvAveEPYn0NZ2b9r2Blbb4b/be
         1qL0S47iroWpQ==
Received: by mail-lj1-f197.google.com with SMTP id v19-20020a2e87d3000000b0022dbe4687f1so2193676ljj.7
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:36:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2raMQbTEO7GSuDvkY6ovvPJxx8orpnvUqhVxP2Jtxb8=;
        b=rThzj189x20zNuGxlxeblLcZNm6ibdfL/IYvnQJRewXYDe3GbUXzrMmQX5DSTgWkw4
         KuONTODiUYhTGtmshQYphbi8skUsKiYL0PYU1yb7Id85YvR2W9LwEh/FPFHjR5FCLph7
         heWglrEP/nyPmRG74Ee9bLTblM+hJtt/yMt3JcS2tJRLwYpQyVqtkaNtRGR5vN2M+uBc
         WecFDQTJaOY4KpQpL1G8rMwzRDAuJh+1i1kevG4TBtd/jVR31091fiU0QYd96nG7/tyu
         cHj6IRhB8nOzZ1e5/g/kD87n9FCDaY//UP47CiW9XVYo8qqdxwSZXXM4579A2BF/bdvS
         GzKw==
X-Gm-Message-State: AOAM533K7zZdhqbqfBaVGMUDyacxTaavTsQt18ckiZVnDR4zo3sv646z
        /kc/SrleS985EOIr9TypsModanfitFkCE7l6lLyMqODYaVWux24A7YwoZTImw+riv3YUAuMU2Md
        /acqJL++/SYaD2+dDZ0XFQ21y+gTYoY8OlmO9sLo=
X-Received: by 2002:ac2:4e06:: with SMTP id e6mr14726552lfr.295.1640612169353;
        Mon, 27 Dec 2021 05:36:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw8X2sqRJEu3DvxBtUDtpU3Y5uc/tMDwNZZNmfbYtUwIkhKBrQTFmqTLlfc1ZtsOof7nER7vw==
X-Received: by 2002:ac2:4e06:: with SMTP id e6mr14726540lfr.295.1640612169204;
        Mon, 27 Dec 2021 05:36:09 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id g18sm800107ljj.124.2021.12.27.05.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:36:08 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 13/19] arm64: dts: stratix10: add board compatible for SoCFPGA DK
Date:   Mon, 27 Dec 2021 14:35:52 +0100
Message-Id: <20211227133558.135185-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Altera SoCFPGA Stratix 10 SoC Development Kit is a board with
Stratix 10, so it needs its own compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts      | 1 +
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 46e558ab7729..12392292c62c 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -7,6 +7,7 @@
 
 / {
 	model = "SoCFPGA Stratix 10 SoCDK";
+	compatible = "altr,socfpga-stratix10-socdk", "altr,socfpga-stratix10";
 
 	aliases {
 		serial0 = &uart0;
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index bbc3db42d6e8..2d53a06deab5 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -7,6 +7,7 @@
 
 / {
 	model = "SoCFPGA Stratix 10 SoCDK";
+	compatible = "altr,socfpga-stratix10-socdk", "altr,socfpga-stratix10";
 
 	aliases {
 		serial0 = &uart0;
-- 
2.32.0

