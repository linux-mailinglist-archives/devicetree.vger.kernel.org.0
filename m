Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6CA647FD94
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:36:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236999AbhL0Ng0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:36:26 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54762
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236958AbhL0NgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:36:18 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id F03E73FFD5
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612176;
        bh=JFavKQ4EpkcOZ7wQmRTeTvx/mZGmly/qZElot/QHLH0=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Z9U5rdJcOtHe9DMjh0otK6nZ77vPGZNAQQ15NecpofHYh+qJ796act2dZv2mc9Qbx
         iVCBrfHGutb8zATIMRwlxEVW9gAprFZ8GbsGjOqekF8MJnjJb0iuOlbjBctl622wUq
         u18x/LVEJ0KADUl7eY9n4v3IbzEwQpkTRUgFhaNVZHyyodIGPuYySo9t+eGRtYI9Vm
         bR4ALx1VygOi+jFmeZNBkGEiENovx74yetlmfZxvczSXH5vRLlbj3C0IC+PNIWgNGu
         mCD/0z/H59fmXfy8MNLQKHM9eTo4DjXPHvrZ2iac8rrMckGcyoBh35nWVlNMV7r6ST
         g59QiQL5Brl5w==
Received: by mail-lj1-f198.google.com with SMTP id b20-20020a2e9894000000b0022dc5a5f841so1944272ljj.2
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:36:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JFavKQ4EpkcOZ7wQmRTeTvx/mZGmly/qZElot/QHLH0=;
        b=0nt1wSG0Jw9YpKIMMSqpUtN61LGgjsluUD+lJJBR0OnGUwGvuqL2mtN1b1EVaQDC9K
         XED73HEJZxKzzoH1CG0ygYPper8p9KxSvn8pbxKVQDU3iSAv2sHXqR1CD1uKyhETwq4l
         LJDePQg+Qy5hTfsvMN5KwOuoP6rY9puD5Hxq+U8EPrTHYwAjVRRcrQ44WA0xcV8LhT7R
         XWkQZpgCh25qSuu0scBbLYp+23qK/ivBHT1nG+AVlzXaz+TMbuHsTvB9kpufh0I781Ug
         nNLlJY02HyaQ/IXKfHnM7KNTfoSNe4B39wFijBzKJyFGS5D1thd2LQVr9GxquqEiLQnJ
         uXeA==
X-Gm-Message-State: AOAM532hayjbFKpDMZ+FKvZgVCz7WqH3Doq0hHj8oR1zlkXJrxIRoCl7
        0BqEGwu3n/lM4ahT/2U3y4BXGOardNZbYmWEPDLJ4Wcei57FSgwHareYLCd5ISLE4lyp9hPW6p8
        0G10COVo6ySqMsIqOnahBKh1H1yuK4bK/+LskQeQ=
X-Received: by 2002:a05:651c:612:: with SMTP id k18mr14341424lje.383.1640612176049;
        Mon, 27 Dec 2021 05:36:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyigWSTBhHMTJw9c+BMRCCqABSOCIw31rtBFtt3dBgwEbcNUZTxOPbnbqo+v1WaY9WCE71FlQ==
X-Received: by 2002:a05:651c:612:: with SMTP id k18mr14341415lje.383.1640612175896;
        Mon, 27 Dec 2021 05:36:15 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id g18sm800107ljj.124.2021.12.27.05.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:36:15 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 18/19] arm64: dts: agilex: add board compatible for N5X DK
Date:   Mon, 27 Dec 2021 14:35:57 +0100
Message-Id: <20211227133558.135185-12-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Intel SoCFPGA N5X SoC Development Kit is a board with
Agilex, so it needs its own compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index f3c1310dae0a..5609d8df6729 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -6,6 +6,7 @@
 
 / {
 	model = "eASIC N5X SoCDK";
+	compatible = "intel,n5x-socdk", "intel,socfpga-agilex";
 
 	aliases {
 		serial0 = &uart0;
-- 
2.32.0

