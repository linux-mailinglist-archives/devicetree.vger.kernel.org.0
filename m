Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9493433269
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 11:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235098AbhJSJip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Oct 2021 05:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235101AbhJSJim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Oct 2021 05:38:42 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B0BC061765
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 02:36:29 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u18so46737658wrg.5
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 02:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=31i1xoK4zj6WYEXJeZOG+hCuryOlTysPNDj29OD14Qs=;
        b=Y2eamLP67cGTLHdzxPbLdUPEYihkfZRXjLmtnxWMV7V8ha/xCyyiXWo24W7cKen6+2
         AGmoxk8bAW1ZE6wRgyRZos2ZQJMvNmw3sEuikrcYvIIJYL03YACYQOa86okD3Erk21lV
         zAulkyr2f+gShgG97UnqzhdNrdO4Ua/xG4LPoWuamUHLjChfopvT3lP+voMhWfkt75tD
         zuNwqbKJobK755qHzpRhFHg3/uXIWAqhCAsc34J2OyIwWG2lZJkVUYczpRjmhcaddgYi
         S+iJFqHmqysc2aP70TNig3aAyHEkcBamDT9NGvGMwzizmPHMQZX9kKJlZVFcn3mFIdL5
         Ioew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=31i1xoK4zj6WYEXJeZOG+hCuryOlTysPNDj29OD14Qs=;
        b=2ANQ9bO0CaKfOBIzz4SGvnhCCpLtSOr53W+FSuSlL6FtI6F63Ld/rO3L6b41xyTYBG
         1hD+17KI1T+z8pu4JmdQO3mJCoyGu5zKIt716Y/AUCT93LqUYPF57bNF/8xD669SAOub
         XEAbcbB3y5NWfG82yK0ocudMQ+ru82cBTjMwXlCE+Dv5/42eHtAYxsS+dZnmbVjo2Dr9
         9QDknBLbVsCpUv6WrkIjVCJLeCJsqbsKcplHFx6LhV2gnv38yPNtmstHxae3f5UeV3U+
         jIesKaFu9/B6jBtUWPZA5vBGK7BdVmYNr67NwSgxTfOeKZRpNrNuJUdCupWD1RftU5gr
         tCeg==
X-Gm-Message-State: AOAM530Vm6mXAUfFO9mgOADCr93UiVt8s7ayJMxD/ZDrZwF5V7uV7lPN
        UiHgvjd29JBD/pLQN4aiOq3hDw==
X-Google-Smtp-Source: ABdhPJw4NYs7gbiGNwWpmbKhDuahGeNvec/NydYON0RX/wR9CskYqy79yYN2c7zZkDO3NcrXwh+8DA==
X-Received: by 2002:adf:f812:: with SMTP id s18mr5519018wrp.347.1634636188391;
        Tue, 19 Oct 2021 02:36:28 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id o23sm1765765wms.18.2021.10.19.02.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 02:36:28 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, fparent@baylibre.com,
        khilman@baylibre.com, Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v2 2/4] thermal: mediatek: Fix apmixed error message
Date:   Tue, 19 Oct 2021 11:34:02 +0200
Message-Id: <20211019093404.1913357-3-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211019093404.1913357-1-msp@baylibre.com>
References: <20211019093404.1913357-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Seems to be a copy and paste mistake, this is the apmixed address, not
auxadc.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Fixes: a92db1c8089e (thermal: Add Mediatek thermal controller support)
---
 drivers/thermal/mtk_thermal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index ede94eadddda..93ee043d70da 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -1050,7 +1050,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 	of_node_put(apmixedsys);
 
 	if (apmixed_phys_base == OF_BAD_ADDR) {
-		dev_err(&pdev->dev, "Can't get auxadc phys address\n");
+		dev_err(&pdev->dev, "Can't get apmixed phys address\n");
 		return -EINVAL;
 	}
 
-- 
2.33.0

