Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64A1A24E74
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 14:00:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728045AbfEUMAi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 08:00:38 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:44391 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726705AbfEUMAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 08:00:37 -0400
Received: by mail-pf1-f193.google.com with SMTP id g9so8950860pfo.11
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 05:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=J8He96LBvzgwWKZ93ZshlZgpeoHlqzqGddbd8HI8Wh0=;
        b=MgTzd8zfTg4rDQqa+BejqDdaIPAPvAbMt6W0peADav4XRHHw6xis2XW3YWPac1+25Y
         Uw9izIAmZGjeplWWV+N1cL38v5zayPYZwAWl/6QMELf1rW5qgcZG6rv/5i+nkTvZNEsh
         1OcwvltOg9g1KLWexpXphqhoWE2B5ueGR39L4Gv8R73PqK1nmiwZsjr8lo/ZHwV/ni/a
         DLCN5avkG4y1OlvbL5GEyXH1faaB6PHGwbmnD8focTzezgnJIYLU0d1/jAJf1uDFlBAI
         INggD7MNlPrna9xjyyv0jauTtA/MdR5X4wPRcOPMFOVD20itb7WAST4UWnxLHyLGMCPo
         ym0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=J8He96LBvzgwWKZ93ZshlZgpeoHlqzqGddbd8HI8Wh0=;
        b=kQKGxHEoALQJ/d0ZLkcR9qrKrvh9P5eJX9w9tir9detufuzU9GhwoK2YjJ2hQvUBQR
         FC6LTg1OI5ceF0FJpk/zwkmm5WkY2dc1gpEuexCIjbWt5oktBkNAWHfAveyOoCTfah7j
         p4zijZixneupzSmUaVjEgAkCDgouRoy2jZTr3E875JPEiiCVYdCWUi/dybxClaO5ngPM
         8+YMly012izI+WW31nRipKtBBvQ/aGAJmNlhFDTUgQqLC2G1GXzz55Vwck/6BQuimNOp
         RY8+6rAX5ZBvlhDxG/cAjijCMgBjYLTwVN3X03g6ej75YbK5Hz99F9uKzP94K08eHUy4
         C5+w==
X-Gm-Message-State: APjAAAUFY3dGuMkH+no8Q5EmOo9la38+CblZoJkCaRIGELMcBCmbyjMO
        quiRPSWqJRMJenOAl9U63xq9Fw==
X-Google-Smtp-Source: APXvYqx1lUhSkLoBe0yCXuaekjOWbOI3JE5o0PuySW/YEQV5BuLEFHCTnnjn6h3ea06pKstIgtJFLg==
X-Received: by 2002:a62:fb18:: with SMTP id x24mr21966838pfm.76.1558440037087;
        Tue, 21 May 2019 05:00:37 -0700 (PDT)
Received: from localhost ([121.95.100.191])
        by smtp.gmail.com with ESMTPSA id r77sm28975782pgr.93.2019.05.21.05.00.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 May 2019 05:00:36 -0700 (PDT)
From:   Masahisa Kojima <masahisa.kojima@linaro.org>
To:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org
Cc:     broonie@kernel.org, geert@linux-m68k.org, tpiepho@impinj.com,
        andy.shevchenko@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, ard.biesheuvel@linaro.org,
        jaswinder.singh@linaro.org, masami.hiramatsu@linaro.org,
        okamoto.satoru@socionext.com, osaki.yoshitoyo@socionext.com,
        Masahisa Kojima <masahisa.kojima@linaro.org>
Subject: [PATCH v5 2/3] dt-bindings: spi: Add DT bindings for Synquacer
Date:   Tue, 21 May 2019 20:59:57 +0900
Message-Id: <20190521115958.22504-3-masahisa.kojima@linaro.org>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20190521115958.22504-1-masahisa.kojima@linaro.org>
References: <20190521115958.22504-1-masahisa.kojima@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds documentation for Device-Tree bindings for the
Socionext Synquacer spi driver.

Signed-off-by: Masahisa Kojima <masahisa.kojima@linaro.org>
Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/spi/spi-synquacer.txt      | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/spi-synquacer.txt

diff --git a/Documentation/devicetree/bindings/spi/spi-synquacer.txt b/Documentation/devicetree/bindings/spi/spi-synquacer.txt
new file mode 100644
index 000000000000..291dfa692d0a
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-synquacer.txt
@@ -0,0 +1,27 @@
+* Socionext Synquacer HS-SPI bindings
+
+Required Properties:
+- compatible: should be "socionext,synquacer-spi"
+- reg: physical base address of the controller and length of memory mapped
+       region.
+- interrupts: should contain the "spi_rx", "spi_tx" and "spi_fault" interrupts.
+- clocks: core clock iHCLK. Optional rate clock iPCLK (default is iHCLK)
+- clock-names: Shall be "iHCLK" and "iPCLK" respectively
+
+Optional Properties:
+- socionext,use-rtm: boolean, if required to use "retimed clock" for RX
+- socionext,set-aces: boolean, if same active clock edges field to be set.
+
+Example:
+
+	spi0: spi@ff110000 {
+		compatible = "socionext,synquacer-spi";
+		reg = <0xff110000 0x1000>;
+		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clk_hsspi>;
+		clock-names = "iHCLK";
+		socionext,use-rtm;
+		socionext,set-aces;
+	};
-- 
2.14.2

