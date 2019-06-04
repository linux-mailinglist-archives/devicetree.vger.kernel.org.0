Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B17EF33E39
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 07:13:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726531AbfFDFNX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 01:13:23 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:46659 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726465AbfFDFNX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 01:13:23 -0400
Received: by mail-pl1-f196.google.com with SMTP id e5so6111638pls.13
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 22:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=J8He96LBvzgwWKZ93ZshlZgpeoHlqzqGddbd8HI8Wh0=;
        b=qAUsYuHC1TyuYT8vc/VDT8OOQ8XdOR/3yeMoHzkv58ceZQQSMhioaRqZUo4JEQK9ov
         RIYf9+e2GO0jcMKDgjGJnCJ0zh3MSsCxsO5rmgmFtBLtiT6tdP+qsLZUbx1pmKMwa9Nk
         +xizBKCu83S9aMYD0HleOPxo51ltfBr5ZSpXrmQMNn+zWOfivwdXTrHezMdfkMpK7sXu
         M1ZLFxeApx5vvRo6AW0kCZucGIJ9uPT2znLvYtQZ2OGlLAtQIl2J/daTAubqyuSlOZOW
         JiSZ/g/uzIVZNxnmXzzF7A2pBzKfxUnTIGHzd7+WYI3jZWIPkJhPy7i1EqHo35/HX1sU
         XcbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=J8He96LBvzgwWKZ93ZshlZgpeoHlqzqGddbd8HI8Wh0=;
        b=rB+C3qb6/rvzyqS/UbN/BgE+qqux71pLHuSjvpiSDPO9Ey6kzja+0Wd7qwuRlPRT+V
         CvTo/X6m6uP4e65dWqYQxDtbBC98M/FR+GJy3kVrTiFYhfWCWizGgdss5Q+TNgaWZCOG
         7gYqnp1I9yTwBPMKFwmVjbMOEUsYKOYtOzOsDaKV8EIuYygWdEyf2mUVhzy6Um3Z9R0D
         rl3vh5OenZ1dXaSgPQAqY7n5vCL5CreLxsQCdUkTGo3Ktl3RumvqAMeZtFAW3nbJ+8M4
         KS+wGA6sCbACXPO3726h/LAncVNP8eNvUrfyVbefByIAMUwZjBrPlWeZye5OhLFpVxW9
         MCMw==
X-Gm-Message-State: APjAAAU6jJMNDcU9L5HxNRSyQ2Zolu+uaSLLd1Vjc4sgWTMPZbPSpJ7D
        K+gpDtU7pEKN8jE1j8ihYAVlog==
X-Google-Smtp-Source: APXvYqztLjDjgbpd1xVeKnc/onYmypAIczHYLsO8bl7JAmPwpELYXr1CyNGU6ZoW2TNRBtnqeWAaSQ==
X-Received: by 2002:a17:902:b204:: with SMTP id t4mr34527790plr.285.1559625203142;
        Mon, 03 Jun 2019 22:13:23 -0700 (PDT)
Received: from localhost ([121.95.100.191])
        by smtp.gmail.com with ESMTPSA id a11sm17584265pff.128.2019.06.03.22.13.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 03 Jun 2019 22:13:22 -0700 (PDT)
From:   Masahisa Kojima <masahisa.kojima@linaro.org>
To:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org
Cc:     broonie@kernel.org, geert@linux-m68k.org, tpiepho@impinj.com,
        andy.shevchenko@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, ard.biesheuvel@linaro.org,
        jaswinder.singh@linaro.org, masami.hiramatsu@linaro.org,
        okamoto.satoru@socionext.com, osaki.yoshitoyo@socionext.com,
        Masahisa Kojima <masahisa.kojima@linaro.org>
Subject: [PATCH v7 2/3] dt-bindings: spi: Add DT bindings for Synquacer
Date:   Tue,  4 Jun 2019 14:12:56 +0900
Message-Id: <20190604051257.14264-3-masahisa.kojima@linaro.org>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20190604051257.14264-1-masahisa.kojima@linaro.org>
References: <20190604051257.14264-1-masahisa.kojima@linaro.org>
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

