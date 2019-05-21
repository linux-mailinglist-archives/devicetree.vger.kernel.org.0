Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91A6B25058
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 15:33:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728280AbfEUNdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 09:33:19 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:38612 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728179AbfEUNdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 09:33:18 -0400
Received: by mail-pf1-f193.google.com with SMTP id b76so9100046pfb.5
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 06:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=1nncQI8i+UzrmjnlsMRQHRUYfFHMZeTgvwjX0KHzdBA=;
        b=f26zEdbOr6/dfMG4dZ18wDImXn+s/c9tAyneJjTEQ8q4wwuCQOoRV0s9WNWLE5TY/+
         6FPXNnznDxFmhxUkuG206BsU1sCn29p1+zIGX1OiapFO5QTKyhVUB7T9pxTo1gsoMxF2
         snSehzN5j/TwJbSUF0HFLSHe70+I34quFmDL9NC7ctWrpgKRM5kX9le0izOaUO0GdYXR
         mMkX6faXXaiQrFZAn4GgylFDFlhz239Tc/xJouGdAs3uTuibqre29yXkcDaro6ZLYGHQ
         xpC2SE/ixcmNRq47e4XR/hQxVwhh5a5TW2CE8szYNM5qHM1UgCbBRXhYawPXuRhmT061
         AogA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=1nncQI8i+UzrmjnlsMRQHRUYfFHMZeTgvwjX0KHzdBA=;
        b=CRbyXBZO3u7RgQWuid4FmvtE0b6woQc2miJzuBOLiGOdwgEA7XQ0iXzofuhO3J/w6q
         YtwcNB+irqF/WZgFQ74vvaKwChXmM4WNz8KlattCqaWxWpvGzrBXhBkJAXl/gHJlc5du
         BImynrNb/yhu1xGPnfDnAhgjQ/u27oPpA+aiKgU7CELCTNsbNdizlgP6+nk9tFZHoRZD
         r0D/N/H0YxxWCpzh6cipqIP1Can8qp32rIDivZixTkK6UJNXN9oBXVjU1S0fNj/hMZJX
         FTb9VyDPFBvPsgIFu/4FjB2iluoif/Jlj+wHy+FiieqkWb1JwS3Hb69iv4VUf1im5iT5
         2Fzw==
X-Gm-Message-State: APjAAAXL38muEydo9A62xPFf7Dry5XmMJZjsojeMrE3DwVH6/MRXNKPS
        sD04GrAEmWbWZLFuUQyjhEwKQg==
X-Google-Smtp-Source: APXvYqz+cNDOns4a+HlYUkMCadstIOBWgdjWKopWeJjmo4sMLBkDSX21RNmLsVKKcrIEMBu95K3+Og==
X-Received: by 2002:a65:628b:: with SMTP id f11mr78696250pgv.95.1558445597973;
        Tue, 21 May 2019 06:33:17 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id d15sm65368906pfm.186.2019.05.21.06.33.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 May 2019 06:33:17 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/3] dt-bindings: i2c: extend existing opencore bindings.
Date:   Tue, 21 May 2019 19:02:52 +0530
Message-Id: <1558445574-16471-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
References: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reformatted compatibility strings to one valid combination on
each line.
Add FU540-C000 specific device tree bindings to already available
i2-ocores file. This device is available on
HiFive Unleashed Rev A00 board. Move interrupt under optional
property list as this can be optional.

The FU540-C000 SoC from sifive, has an Opencore's I2C block
reimplementation.

The DT compatibility string for this IP is present in HDL and available at.
https://github.com/sifive/sifive-blocks/blob/master/src/main/scala/devices/i2c/I2C.scala#L73

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
index 17bef9a..6ac062c 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
@@ -1,9 +1,13 @@
 Device tree configuration for i2c-ocores
 
 Required properties:
-- compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
+- compatible      : "opencores,i2c-ocores",
+		    "aeroflexgaisler,i2cmst",
+                    "sifive,fu540-c000-i2c","sifive,i2c0".
+		    For Opencore based I2C IP block reimplemented in
+		    FU540-C000 SoC.Please refer sifive-blocks-ip-versioning.txt
+		    for additional details.
 - reg             : bus address start and address range size of device
-- interrupts      : interrupt number
 - clocks          : handle to the controller clock; see the note below.
                     Mutually exclusive with opencores,ip-clock-frequency
 - opencores,ip-clock-frequency: frequency of the controller clock in Hz;
@@ -12,6 +16,7 @@ Required properties:
 - #size-cells     : should be <0>
 
 Optional properties:
+- interrupts      : interrupt number.
 - clock-frequency : frequency of bus clock in Hz; see the note below.
                     Defaults to 100 KHz when the property is not specified
 - reg-shift       : device register offsets are shifted by this value
-- 
1.9.1

