Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5E563581D1
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 13:31:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbhDHLa7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 07:30:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231352AbhDHLa6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 07:30:58 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A294EC061761
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 04:30:47 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id x21-20020a17090a5315b029012c4a622e4aso1179762pjh.2
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 04:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=whg5uvgIxjBQi611PiDallF8tjAml5Jz5ytoZKbEBgI=;
        b=z15WyVNWMuOFLu9lTNFRL8UtMgUPlrJRlSdO6RtMUQhZnqJ4YKyXFHrtKo0xUCMzqU
         aIcxyvcAHaRhVgE25Zmdwvj+r2GsuP5+BPI6rkoxuT6WrRYSFhQpV5IDFxqXaiJyvoQq
         BkLaslzdgXUSqO3UBUz2mJlSAedDsHjk8BDX9r1u+/g2yqdOhqMjVt0V17e05QbKt1td
         4hfaktJC3DMAEPc+v3DZ5zJihDvaDW4Dx37PCDzhBbhxVjmbMAdF37RPBQIKc27MYdJD
         /r+NAlmp2gz7Fxee6/xW4L7yAQ/Xpeh6VCpm8TeDmf+rhv6CJ7AvgihbQpIYhv/1wpE9
         QwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=whg5uvgIxjBQi611PiDallF8tjAml5Jz5ytoZKbEBgI=;
        b=hAam45+N4lfR3o0pe9zsfffiOZqypf4RQekAfQDabXX7Yu0wJJKlUN3GTcZqwvOEVS
         idyQ+j80HV4wZrc5dvc0tNIiK2VYU3zobFtYi4FeOhUr6aDEqmEQ7C/CwZ1LiqTHACq2
         tJ47QlhWBB7b3wkxS0quLQlbYSudpMI2Em3WZ7zxYlcau1SgbStoAYs4NA22DWYMGFxp
         ss/yyT3MSkvrIz+0Fr4NaPHSqS05Gt9dv61hzAImX4UEWw+wTh0PlckcCbkJE3ZlFfbd
         zA7jvEZ6hYUa9N8C/M3ChUJxGvN5fuY7+Q8OPWbVgtLe0nsdAjVYk1kgHkmIYDAHf1gI
         4/Gg==
X-Gm-Message-State: AOAM532tnNtxRG31xV+lQZNZFBtjoXheLj3uAGIaK5nxGDnvnaEUCmMH
        YWYwbWRsxGBDc3tIHxovjUwp4NOvqTGpenw/
X-Google-Smtp-Source: ABdhPJyQvGADSuc6DEN+e9ZixTPoEGAvz9QaetodxFRXkaG0uvAqaN8gVXT8JZC4sZqzJMuM+YJwrw==
X-Received: by 2002:a17:902:ea89:b029:e9:2813:2db9 with SMTP id x9-20020a170902ea89b02900e928132db9mr7250665plb.61.1617881447259;
        Thu, 08 Apr 2021 04:30:47 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id x18sm7753267pfi.105.2021.04.08.04.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 04:30:46 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Kalle Valo <kvalo@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Arend van Spriel <aspriel@gmail.com>,
        Franky Lin <franky.lin@broadcom.com>,
        Hante Meuleman <hante.meuleman@broadcom.com>,
        Chi-hsien Lin <chi-hsien.lin@infineon.com>,
        Wright Feng <wright.feng@infineon.com>,
        Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        brcm80211-dev-list.pdl@broadcom.com,
        SHA-cyfmac-dev-list@infineon.com, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 2/2] brcmfmac: support parse country code map from DT
Date:   Thu,  8 Apr 2021 19:30:22 +0800
Message-Id: <20210408113022.18180-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210408113022.18180-1-shawn.guo@linaro.org>
References: <20210408113022.18180-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With any regulatory domain requests coming from either user space or
802.11 IE (Information Element), the country is coded in ISO3166
standard.  It needs to be translated to firmware country code and
revision with the mapping info in settings->country_codes table.
Support populate country_codes table by parsing the mapping from DT.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../wireless/broadcom/brcm80211/brcmfmac/of.c | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
index a7554265f95f..ea5c7f434c2c 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
@@ -12,12 +12,61 @@
 #include "common.h"
 #include "of.h"
 
+static int brcmf_of_get_country_codes(struct device *dev,
+				      struct brcmf_mp_device *settings)
+{
+	struct device_node *np = dev->of_node;
+	struct brcmfmac_pd_cc_entry *cce;
+	struct brcmfmac_pd_cc *cc;
+	int count;
+	int i;
+
+	count = of_property_count_strings(np, "brcm,ccode-map");
+	if (count < 0) {
+		/* The property is optional, so return success if it doesn't
+		 * exist. Otherwise propagate the error code.
+		 */
+		return (count == -EINVAL) ? 0 : count;
+	}
+
+	cc = devm_kzalloc(dev, sizeof(*cc) + count * sizeof(*cce), GFP_KERNEL);
+	if (!cc)
+		return -ENOMEM;
+
+	cc->table_size = count;
+
+	for (i = 0; i < count; i++) {
+		const char *map;
+		int ret;
+
+		cce = &cc->table[i];
+
+		if (of_property_read_string_index(np, "brcm,ccode-map",
+						  i, &map))
+			continue;
+
+		/* String format e.g. US-Q2-86 */
+		strncpy(cce->iso3166, map, 2);
+		strncpy(cce->cc, map + 3, 2);
+
+		ret = kstrtos32(map + 6, 10, &cce->rev);
+		if (ret < 0)
+			dev_warn(dev, "failed to read rev of map %s: %d",
+				 cce->iso3166, ret);
+	}
+
+	settings->country_codes = cc;
+
+	return 0;
+}
+
 void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
 		    struct brcmf_mp_device *settings)
 {
 	struct brcmfmac_sdio_pd *sdio = &settings->bus.sdio;
 	struct device_node *root, *np = dev->of_node;
 	int irq;
+	int ret;
 	u32 irqf;
 	u32 val;
 
@@ -47,6 +96,10 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
 	    !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
 		return;
 
+	ret = brcmf_of_get_country_codes(dev, settings);
+	if (ret)
+		dev_warn(dev, "failed to get OF country code map\n");
+
 	if (of_property_read_u32(np, "brcm,drive-strength", &val) == 0)
 		sdio->drive_strength = val;
 
-- 
2.17.1

