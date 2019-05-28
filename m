Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 701632C0D7
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 10:08:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726234AbfE1IIG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 04:08:06 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:54606 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726279AbfE1IIG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 04:08:06 -0400
Received: by mail-wm1-f68.google.com with SMTP id i3so1741097wml.4
        for <devicetree@vger.kernel.org>; Tue, 28 May 2019 01:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rWm2X3Q1SHaRgDsfdal1fBD3D11iGm4q8VAE3tF/iqU=;
        b=ctHKr1LQXJ5vP+6axdeIJ+V9sZIoJ9v88fbLhQZM9CKzXmPKQkACV1zNcuL8tJ3IMJ
         Rr1DCS+lh5kGaXqFNvk4djnFFALMezxEZjRxbuIis5bBwJNUlvWtFRKK/uEn+zW4Zfac
         L/TZNlxszvAq6Jn66/fzhWOKX8AgMU/+O7Fg6qXA8O85/VeLQYdT23bxkLcEZqM9gH3Q
         YtpcVM/waV9YLR+yD5a9vPmygzJqf9NIxa0BxO6+esIKwmlSMws8naJIAxCgVGEko01O
         WuEoHz98UtI3LtPrzzfxG4Ka6p4Usy5odhD69vW4wg7uEuxnAa8uyOb+m3GqJDGe9saZ
         W8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rWm2X3Q1SHaRgDsfdal1fBD3D11iGm4q8VAE3tF/iqU=;
        b=eH9EYZtAYZ3ycvJN7jWxMAgMVtRLgYJbjRceSCCFuhpuEClmch9mBY2xcURCLNyen0
         fUN16R3dZie/z96oUcctbh71iDXg79FUQB/t6atlA5rwXxZS4ettD+3NhA2ff6YRLTON
         43eqvGxUKv7U3fSVdpK93Li6Jv1PrbjgZY8FOqVoDOAg37T6y59B9aX26zV8M9s8pDpA
         2jh7OiyrGWXAMHvCfO+XDVe5qCdhAdVDmxWbMeMaaM+dEo1WOL5NTmWlvMya5cEV7aNU
         HIESFNASpw3l8Je/dtu6Y+kzGwxcycBf61PCvQElUlgoP/bzEoCwiPOY4bUJ+aEx7ccs
         6Nmg==
X-Gm-Message-State: APjAAAWBc5DcFQMsRKqzvU2Bb5t/hO5gqI9HIqHCT7ecShOByzFp+P31
        z8UuxGc114YI+n2655FrrBfYPI7Ir3e8YQ==
X-Google-Smtp-Source: APXvYqzCHJkvZAfJYctRLpCtxU9n2375PkWPEqPrqBU3t5zIM3N2tH7wsQ+C3uBM9n1nB4lMzlNv4A==
X-Received: by 2002:a1c:2109:: with SMTP id h9mr2249738wmh.68.1559030884486;
        Tue, 28 May 2019 01:08:04 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id z74sm2456121wmc.2.2019.05.28.01.08.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 May 2019 01:08:03 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     jbrunet@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-clk@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v2 1/3] dt-bindings: clk: meson: add g12b periph clock controller bindings
Date:   Tue, 28 May 2019 10:07:56 +0200
Message-Id: <20190528080758.17079-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190528080758.17079-1-narmstrong@baylibre.com>
References: <20190528080758.17079-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the documentation to support clock driver for the Amlogic G12B SoC.

G12B clock driver is very close, the main differences are :
- the clock tree is duplicated for the both clusters, and the
  SYS_PLL are swapped between the clusters
- G12B has additional clocks like for CSI an other components

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
index 5c8b105be4d6..6eaa52092313 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
+++ b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
@@ -10,6 +10,7 @@ Required Properties:
 		"amlogic,gxl-clkc" for GXL and GXM SoC,
 		"amlogic,axg-clkc" for AXG SoC.
 		"amlogic,g12a-clkc" for G12A SoC.
+		"amlogic,g12b-clkc" for G12B SoC.
 - clocks : list of clock phandle, one for each entry clock-names.
 - clock-names : should contain the following:
   * "xtal": the platform xtal
-- 
2.21.0

