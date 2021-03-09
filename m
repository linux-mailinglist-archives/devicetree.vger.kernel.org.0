Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E13633284A
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 15:16:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231200AbhCIOQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 09:16:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231137AbhCIOPj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 09:15:39 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C31FAC06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 06:15:38 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id w11so15889977wrr.10
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 06:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5k92QxyrxRTJi0W/7xlk/UVOaJACzUsOHFwPLvqgR18=;
        b=RiA6ZyC1Ou9XpUVI0ItDLdRO6zud+MChTC+o6ira9EZ0LBKCxLcd8dACvfFCXex9xG
         p9fGwmwAdu/qM0fLG5hU2OZBg4MfZbWN73bTzYkYRS30+4biIrxv4hCR8cCmxo8lzhrb
         bYVcrdHfDEwi/XU/nMoe5UUQwgnui//jQX5bUPQ8Etcwz7hjAFy1mA1E/nlEy7PUm+39
         qLyqPwaB+iPP8IqhopbnW5deD1QMEGHEKPxbMKDL1EkHzi+ILkcE7r1xx71+MucFMxKl
         EQQnAL4Ef0A3fFDmI5bLlCm8mcKv7KhFev83MLpVMYV0BYT42XI+CD5MhUKDwNUX5qph
         5BDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5k92QxyrxRTJi0W/7xlk/UVOaJACzUsOHFwPLvqgR18=;
        b=BH0/uOD0Aht1uSX5P+56PlO5iE2FpiBUiyAIcsl3KZz9i2FY2E6KMBSsdEV5qVF/Md
         U+c+N9zzxlRneN9ScOtrJG+2N10tJ2s8lPZhyXaMLFE99g4QYiJLvkEUgAveSzSo8jiN
         dqg1dxu17pdr2bJC5BKHPMciNIR2UANWAhY8JHbe4fJPMfQn+qx6z7f2ZrI5dvWO8RF9
         C7vXajwmBEEsiGoo2FIyhmxpnAx1WwbMY3BDkyb+9qlE3C3GulyyYRZOcip8nOy2CX18
         bX8dE/+A6Tp4iPns3EHKAbW0bAIRSvH2oK/f89CYKcrlngZWHbMte6ZFWwUcJgEAkyAs
         E4Lg==
X-Gm-Message-State: AOAM533Cd5DDxeptYvOIhRpokrBulH7/qTIWp/IHj7O7Cl1onJFiilYz
        EwXWtT0MPfWhitpl5AIQDl44lg==
X-Google-Smtp-Source: ABdhPJwGF/B0sdM18GQqLgu4EoQINoJ2w3HS1vWklHTY5soJkWA4Wynb1oR2mypHaFivw90hQvPoJw==
X-Received: by 2002:a5d:43cc:: with SMTP id v12mr28316085wrr.287.1615299337598;
        Tue, 09 Mar 2021 06:15:37 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id u20sm28007579wru.6.2021.03.09.06.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 06:15:37 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 5/5] ASoC: codecs: wsa881x: add static port map support
Date:   Tue,  9 Mar 2021 14:15:14 +0000
Message-Id: <20210309141514.24744-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210309141514.24744-1-srinivas.kandagatla@linaro.org>
References: <20210309141514.24744-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Two instances of WSA881x(Speaker Right, Speaker Left) ports
are statically mapped to master ports. Allow the driver to parse
those mappings from device tree.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/wsa881x.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/codecs/wsa881x.c b/sound/soc/codecs/wsa881x.c
index db87e07b11c9..f7b6bbd62728 100644
--- a/sound/soc/codecs/wsa881x.c
+++ b/sound/soc/codecs/wsa881x.c
@@ -1105,6 +1105,11 @@ static int wsa881x_probe(struct sdw_slave *pdev,
 		return PTR_ERR(wsa881x->sd_n);
 	}
 
+	if (of_property_read_u32_array(dev->of_node, "qcom,port-mapping",
+				       pdev->m_port_map,
+				       WSA881X_MAX_SWR_PORTS))
+		dev_info(dev, "Static Port mapping not specified\n");
+
 	dev_set_drvdata(&pdev->dev, wsa881x);
 	wsa881x->slave = pdev;
 	wsa881x->dev = &pdev->dev;
-- 
2.21.0

