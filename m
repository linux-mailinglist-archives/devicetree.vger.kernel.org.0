Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 620A9392915
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 09:56:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235313AbhE0H6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 03:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235286AbhE0H5n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 03:57:43 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AF99C06138A
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:56:10 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id f22so3076808pgb.9
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8pyuCoGKMnN2+h3a3mvyZQi+Jw/dfI3iorf08UqC1XQ=;
        b=Bh1k5AsMvov0F8xhU0fy1JXtiKqODUjSEBaJH/LGR0vli6my0OASfRNaobtKGmuGra
         0NicyBnDSjqwDNdJYbCBXlocfR3dyN8wQwphQ+txLBLfmIc1bW1CmAwxYf5RfPHxoxB9
         GPaHUPZO1dOsaD7vOAlpSC38lh8+S3wQk6Ccw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8pyuCoGKMnN2+h3a3mvyZQi+Jw/dfI3iorf08UqC1XQ=;
        b=Podq8R5tEx5eEIBF8c7y/7CR7t7oLLm55bYvpit+Gh/4HH9lpi2kx0Ihe1ioChJtZd
         1lGi7sgGyVJdOe122x07FZfLg3ptQrBrs/2IeRvAirt7lL+u5u9l+QU9FUGpuhiX1Ijr
         oIslbTlznYxKGwV7eEbT2wKbTO13LxQKqZmvccP1ktU7wt/ZnfimPOQoEz/Jszd6B40P
         G70XIVIh7Q/X9JxQR+mOiznLVhJY+8WzQnaMfxoM8Zop1GMCyhPQLBl7Ax8wLaY0MuiZ
         EH17HAF5g6gI1WMkAP9RBu5gauhVIm3RP+BZl6vTwJu4uHOrvtSzJ7/v6elDW4rCSixd
         QEhw==
X-Gm-Message-State: AOAM533jkLrcLPexHC+1ZYBs8tg3wjOAUE4jeUH3kTTGdYlmvXVfa3Qz
        b0ZjcZToAVuUdgT1649syCKlWg==
X-Google-Smtp-Source: ABdhPJy47jhHWTE50bdT7rNK/2BImA4ZBMyIusHrtkWOEZQI1HmguHizcP2LilT+5zCs4TFmn45X7Q==
X-Received: by 2002:a65:625a:: with SMTP id q26mr2482964pgv.311.1622102170122;
        Thu, 27 May 2021 00:56:10 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ece5:55a4:6ad3:d20f])
        by smtp.gmail.com with ESMTPSA id 69sm1217790pfx.115.2021.05.27.00.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 00:56:09 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Wolfram Sang <wsa@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Jean Delvare <khali@linux-fr.org>,
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
Subject: [PATCH v21 RESEND 3/4] i2c: mediatek: mt65xx: add optional vbus-supply
Date:   Thu, 27 May 2021 15:55:55 +0800
Message-Id: <20210527075556.1709140-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
In-Reply-To: <20210527075556.1709140-1-hsinyi@chromium.org>
References: <20210527075556.1709140-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vbus-supply which provides power to SCL/SDA. Pass this regulator
into core so it can be turned on/off for low power mode support.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: Qii Wang <qii.wang@mediatek.com>
---
 drivers/i2c/busses/i2c-mt65xx.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 5ddfa4e56ee2..22d1d14b5de5 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -1220,6 +1220,13 @@ static int mtk_i2c_probe(struct platform_device *pdev)
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
2.31.1.818.g46aad6cb9e-goog

