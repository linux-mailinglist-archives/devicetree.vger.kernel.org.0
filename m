Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23A6F2FB2F8
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 08:30:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726296AbhASH1u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 02:27:50 -0500
Received: from mail-ej1-f43.google.com ([209.85.218.43]:46855 "EHLO
        mail-ej1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728280AbhASH1i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 02:27:38 -0500
Received: by mail-ej1-f43.google.com with SMTP id rv9so8274530ejb.13
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 23:27:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=njM+r5739maNvAMaKSZAfi4YYRGmoIe8sXQDSd2vGS4=;
        b=maeRLknnPpL8kosbLm+vHwsHFHGtGg4Lr1jGHKdaxeoGVoXcvQqi47EEcTHbPAG5lT
         Jl45/qgOWUXQXNr9IsWsL3HbhkkkJi5qFSusMH2nmpVVve/HhMSvnfTEKiNIVIlXwd2/
         hHzT2pTEU6tGf7eAvMif/hTDQVBysE6W3u5T+RFHk6bF0AfvwGHSKHTYzBLYX0gqDlZv
         GobIEYF7XhUtf9QbciCIkcs3aJKYDpK+7Kw8ETacLhHdtuHHaoNl0CI3HGfD70Y24kAe
         OBrdULidgFN9b/6iWIiVFWnacn3cyDE2KPC0SyHt8jdd3RSQh5/O6+m2Au9KEDm2uKmn
         9ORA==
X-Gm-Message-State: AOAM532JTcWiYh+ra6Wfw/aQK1JgwXDjGqe6v+esNjCA3oVnTLZWa0qi
        pmo/uyYZeeJ5yKevOETIpYjTgvdPd+7MTw==
X-Google-Smtp-Source: ABdhPJy6dq3rM1KjpzibXsd4DeX1TwQyRyHiDjzLDbSr+zMoko/U/s74yXSrbXaNAeNc12+r18vy5g==
X-Received: by 2002:a2e:9f52:: with SMTP id v18mr1344525ljk.510.1611040591332;
        Mon, 18 Jan 2021 23:16:31 -0800 (PST)
Received: from localhost.localdomain (62-78-225-252.bb.dnainternet.fi. [62.78.225.252])
        by smtp.gmail.com with ESMTPSA id s20sm2193138lfc.26.2021.01.18.23.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jan 2021 23:16:30 -0800 (PST)
Date:   Tue, 19 Jan 2021 09:16:23 +0200
From:   Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To:     matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-power@fi.rohmeurope.com, linux-clk@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-rtc@vger.kernel.org
Subject: [PATCH v2 05/17] dt_bindings: bd71828: Add clock output mode
Message-ID: <1b6077ad08f7eacdac6604439d0921778d6046db.1611037866.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1611037866.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1611037866.git.matti.vaittinen@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The BD71828 allows configuring the clk32kout pin mode to CMOS or
open-drain. Add device-tree property for specifying the preferred mode.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---

Changes from v1:
switched clk-mode property from string type to tristated one as
suggested by Rob.

 .../devicetree/bindings/mfd/rohm,bd71828-pmic.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml b/Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml
index 3a6a1a26e2b3..8380166d176c 100644
--- a/Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/rohm,bd71828-pmic.yaml
@@ -44,6 +44,12 @@ properties:
   clock-output-names:
     const: bd71828-32k-out
 
+  rohm,clkout-open-drain:
+    description: clk32kout mode. Set to 1 for "open-drain" or 0 for "cmos".
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+    minimum: 0
+    maximum: 1
+
   rohm,charger-sense-resistor-ohms:
     minimum: 10000000
     maximum: 50000000
-- 
2.25.4


-- 
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =] 
