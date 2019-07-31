Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6BCC47BB7A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 10:24:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726939AbfGaIYT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 04:24:19 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:32821 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726651AbfGaIYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 04:24:19 -0400
Received: by mail-wr1-f66.google.com with SMTP id n9so68733351wru.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 01:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VUEntzYhcLPYeivqRWWRZYOkkzIgMjaxPulhiV5XfAs=;
        b=xZm4C9KuemF121oZYX71PekVcKNALimIsM5iA+ReoIanj2ggYuqCKHrqSzNuhutcnp
         6Ntf4rUAPimGfHSHRrmDqmnBDoWja3cWFFXUHCBMAzY7OptGRNboirrVqs2gTcfBUvqO
         7fxw49aI5n0VEE2OcPdobQ8mSK08a5VMs1zdlnk9JASqtqyzQoAlC7IONrZs8R8YP5a9
         RcC/H77yhdEo0D7Y+NKsjxOXTXHpMxj1CRGrM9X8Y13e9If08+bCEe0cBDCJ0uleuJAN
         u/qZKwQmTUmPy1Klowd4MDCWn8vRwZDBKm8+wx7x2dB9wg/CCaA5+hFVu4vcRqtQZd92
         lxvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VUEntzYhcLPYeivqRWWRZYOkkzIgMjaxPulhiV5XfAs=;
        b=NrnzXI7zEKJ9qOMCRK+UGMBiQdVOgPt78JjDNSXRzx/xH76NC4cTJts1D+XsHeXwR8
         ui6S08u/RwXXac9tTTQWLfeYvZMuSNhh4zcGGQDD7E2cx7ULJ3PrQiqQ74FvADrbL0U/
         6bWWGOIUr7JUrR8F9WGoLqbAPSdtONhC0TkWfEiQIb45Y0AEY2OoBdkYP3MGSkXwr2tz
         4XNbiQwqz7vw8lIeJfZjcHFqO5uap6DoMmlxwdAF7rQWfmZBIGWZd7HNe48QsTHolQyr
         qfT3nV4ZvYam9imozpO+VEWtQaVcJoNBu5omMpr58UIRuiAAe3g7ICQDqfuw/mIwmuk9
         Sv9g==
X-Gm-Message-State: APjAAAW1f8c+MMqkvxauoOVcCT4F75vwOhXfFEY1fX4JuRkVv41U++ad
        bxPKBMj3/OIoQXyE6VoHhAF/yK8c4nU=
X-Google-Smtp-Source: APXvYqxV4LXo0Q/ciRHoeBah7/cvjuKoFsI9WzOIaLUC6uv6UEqeN10lcTotCmKAcCfQWbaN7ZNFcg==
X-Received: by 2002:adf:e84a:: with SMTP id d10mr43348176wrn.316.1564561457019;
        Wed, 31 Jul 2019 01:24:17 -0700 (PDT)
Received: from localhost.localdomain ([185.49.42.196])
        by smtp.gmail.com with ESMTPSA id o3sm54597664wrs.59.2019.07.31.01.24.16
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 01:24:16 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor phandle
Date:   Wed, 31 Jul 2019 09:23:37 +0100
Message-Id: <20190731082339.20163-3-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731082339.20163-1-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
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

