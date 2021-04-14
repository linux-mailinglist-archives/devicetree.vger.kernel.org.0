Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E317835EFF1
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 10:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350206AbhDNIkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 04:40:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350213AbhDNIjO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 04:39:14 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03671C061346
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 01:38:23 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id il9-20020a17090b1649b0290114bcb0d6c2so12146347pjb.0
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 01:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=plmO0AdMl820K1E1EewPUIFFIYm0UYQ8GWMNCMfiNMs=;
        b=Y3NqiCd5rr7+LyVYEGOOOX4NYDJW2EOYrkF/TrtNRNqln3ctoJGKO0I0T0L0ApmQ3K
         N06EZWoCDwWvTUJ2L4ngADfH2WBuwxd73m6NYcBOtrsQQI3F9MRZMHIb1Y80f3kIAKNC
         j1j23aHDf+PkiUmZYXCsRhdPo49p+brePolV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=plmO0AdMl820K1E1EewPUIFFIYm0UYQ8GWMNCMfiNMs=;
        b=lFFYHc6NpQ9mzSW6E5nWmjk+8GHTjdJa0m3ocEyUuBDJ+JE5x/HUMHH6BargCOkDor
         IPKMlWlYO/9nBpoi7axm5cmD2m0O+y1tTbOv6MBku9fNF5XQ1tTnu5hflCpsb46d23c2
         tkxg58XaygYcRrlXyCneX+kSem22kJsXuxxxprBWM3Z6S0ZSUse2XjxRV6t9vfOBXD5Z
         cp6edt+gFI3Zqa7xQpUwjgvHWV6i0nk03o17XQAVbAnyy/X0efA0wJVseYgAqKbre9zF
         wTWo3SPB9+fu6qR9jm7FM+s0ZZUr6ijvztHyaXtj0T5vYkEQiqP6rj5u1Z2I0WXxzHhg
         y7Cg==
X-Gm-Message-State: AOAM530deAqdE+pF936QgmzAd+UmH03ZIJm3IFyIv/tukCmM45Ot1osB
        IQqX8cbKFEmN4ZPkqxP9Il6hWw==
X-Google-Smtp-Source: ABdhPJzlShITTMJUXTCs2zEaR/hzAirHlP9c/EZQo05/1A8Fi0UiYdumG++22lWtt4vLwGQbGoVQew==
X-Received: by 2002:a17:90b:8d3:: with SMTP id ds19mr1590139pjb.197.1618389502547;
        Wed, 14 Apr 2021 01:38:22 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:bae3:4af0:9792:1539])
        by smtp.gmail.com with ESMTPSA id g24sm8901582pfh.164.2021.04.14.01.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 01:38:22 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Wolfram Sang <wsa@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     linux-i2c@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v18 3/5] i2c: mediatek: mt65xx: add optional vbus-supply
Date:   Wed, 14 Apr 2021 16:38:07 +0800
Message-Id: <20210414083809.1932133-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210414083809.1932133-1-hsinyi@chromium.org>
References: <20210414083809.1932133-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vbus-supply which provides power to SCL/SDA. Pass this regulator
into core so it can be turned on/off for low power mode support.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/i2c/busses/i2c-mt65xx.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 2ffd2f354d0a..82f2b6716005 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -1215,6 +1215,13 @@ static int mtk_i2c_probe(struct platform_device *pdev)
 	i2c->adap.quirks = i2c->dev_comp->quirks;
 	i2c->adap.timeout = 2 * HZ;
 	i2c->adap.retries = 1;
+	i2c->adap.bus_regulator = devm_regulator_get_optional(&pdev->dev, "vbus");
+	if (IS_ERR(i2c->adap.bus_regulator)) {
+		if (PTR_ERR(i2c->adap.bus_regulator) == -ENODEV)
+			i2c->adap.bus_regulator = NULL;
+		else
+			return PTR_ERR(i2c->adap.bus_regulator);
+	}
 
 	ret = mtk_i2c_parse_dt(pdev->dev.of_node, i2c);
 	if (ret)
-- 
2.31.1.295.g9ea45b61b8-goog

