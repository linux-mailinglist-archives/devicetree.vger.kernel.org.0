Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5851B264046
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 10:44:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729824AbgIJIoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 04:44:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730082AbgIJInP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 04:43:15 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 442BBC061786
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 01:43:15 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id l191so3874853pgd.5
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 01:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=at8Lpvb6ZG+uuZ2zkY59uCTG2IZirlY/86zTFsOHQQ0=;
        b=OYY2o8e4CsppjSNiU2YO845RlYgH0tMoejqblRDnxLZA6lRQMhtxjsu5YaPOVhDeej
         evNxHdOKwtC7K6+cZlbGxQkM+P8ecy1CD3+rieQvYMOftEZm/q0C0azussAbkNBRGzZB
         kuOdC0yJUsq5GcBAjNodBB/2jyLOcpjtxXX+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=at8Lpvb6ZG+uuZ2zkY59uCTG2IZirlY/86zTFsOHQQ0=;
        b=fC7dw0iPtqsbSLww4W2YgtiiFBX1STt4Bp2s1ayULWCRUTUK+GC6RKMMV1eYFBQURE
         kvp3josgcT6I7JU9BlXdsJ9VLvCT0fRijh1uYG5fjILFxeVMJLW+cgOzr2k3A8Nm63pB
         roN9VWVch6zF/rZbYV8j1K9IMR9INljY0RODJ03nIJMvm1PdpKD/1pEqNhd9Ox7Zn1jc
         WSqngB72iSmPgGqjfiM4xv/VBFY3S4jq1fH+xwWAyu7NnMSvpFBn2C7R2iR70bUyQszQ
         NImiAMPSpIIfWIzR5ssij1ujh2LOvlVgZTfKOmtc0nGK9RF6D5nwBW16YdcwQvR9J7bS
         5iDQ==
X-Gm-Message-State: AOAM533bE/6KCQlZQbRwgjfRw35QLzX5Ot4PQbRo3GyIO/+Vs9XtSIFe
        aaS+3k3+fHQCSPC5OF/PAczq1w==
X-Google-Smtp-Source: ABdhPJy4i66YtpnY+rXnse34jMAcOef11wf8p8b69pJSqZSLJMzUeBVe0lcNCyOzSjqX1DdmFTLv3g==
X-Received: by 2002:a05:6a00:1507:b029:13e:d13d:a13c with SMTP id q7-20020a056a001507b029013ed13da13cmr4433394pfu.36.1599727394748;
        Thu, 10 Sep 2020 01:43:14 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id x29sm4357645pga.23.2020.09.10.01.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 01:43:14 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-mediatek@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 2/2] arm64: dts: mt8183: Set uart to mmio32 iotype
Date:   Thu, 10 Sep 2020 16:43:04 +0800
Message-Id: <20200910084304.3429494-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
In-Reply-To: <20200910084304.3429494-1-hsinyi@chromium.org>
References: <20200910084304.3429494-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set uart iotype to mmio32 to make earlycon work with stdout-path.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 102105871db25..0bda97f912789 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -374,6 +374,8 @@ uart0: serial@11002000 {
 			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&clk26m>, <&infracfg CLK_INFRA_UART0>;
 			clock-names = "baud", "bus";
+			reg-io-width = <4>;
+			reg-shift = <2>;
 			status = "disabled";
 		};
 
@@ -384,6 +386,8 @@ uart1: serial@11003000 {
 			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&clk26m>, <&infracfg CLK_INFRA_UART1>;
 			clock-names = "baud", "bus";
+			reg-io-width = <4>;
+			reg-shift = <2>;
 			status = "disabled";
 		};
 
@@ -394,6 +398,8 @@ uart2: serial@11004000 {
 			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&clk26m>, <&infracfg CLK_INFRA_UART2>;
 			clock-names = "baud", "bus";
+			reg-io-width = <4>;
+			reg-shift = <2>;
 			status = "disabled";
 		};
 
-- 
2.28.0.526.ge36021eeef-goog

