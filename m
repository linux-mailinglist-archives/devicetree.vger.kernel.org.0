Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 185A8392914
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 09:56:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235307AbhE0H6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 03:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235227AbhE0H5l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 03:57:41 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D027AC061349
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:56:07 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id x188so3015485pfd.7
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MM8kzddH0ZuV0BgZsD6j/UZqR+lPZQliP2/mR7NqPNQ=;
        b=FnkqpDhRWtVgo98ZZzaFBu0d9tAx5+WqDrox/kScBtBSg+ZPgbBqYUf9050eZhoYqC
         UxGHrsorZlaYjWFhpa9O9UVUWJR+/gKBTBev+95L8cN9hHHLRsrhh4Si8ZNLnxiB2Swc
         HqOS4zXE1l3gZveClF6Zwx6TCcY7Aaf5ExlkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MM8kzddH0ZuV0BgZsD6j/UZqR+lPZQliP2/mR7NqPNQ=;
        b=Mc/BBq22Th+hzBAuN82yKo7v4mxeOCHl9ZNlpLSz8CB6vgDgB4gNfmGmybilenbPHW
         21K0V57YKMiuQ9ewlp9IZ80psetcTmBzMQR3JSIY4nI9K+Wt5c91wqT5poTAD6YopQeV
         u9fflRwOV1KtmKskyhVOR0CKRozJXOBCQIHxOg8OajrkmXXSN1hvjfXI5VKXa5Ka+64Y
         33nqYSwynUWceVzZ4MDFDZqAlxlZERfxcIEVJRS7gNkISX060Frh5p0j4T44HAWOQyHG
         Fzra/vuk/l1xkNQZod9yiIhsZnxxi5SeXti+avZd9WUermcKbxTmZwbfqvb4GTaifhlI
         D+bQ==
X-Gm-Message-State: AOAM531KAAhwg6NKaB3atXCTO+AruMIuXj70usOz0v4nBoZURbykR2U1
        cffxTgfPIQ3MmsXA9r/TzMwo6w==
X-Google-Smtp-Source: ABdhPJyOChGktKvovO4oemHNBggRkAwTN52ULnjVngUsAWsrKKPIL7V1slxR+WXS+Ib+L6oEWikEHA==
X-Received: by 2002:a63:1260:: with SMTP id 32mr2593858pgs.232.1622102167325;
        Thu, 27 May 2021 00:56:07 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ece5:55a4:6ad3:d20f])
        by smtp.gmail.com with ESMTPSA id 69sm1217790pfx.115.2021.05.27.00.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 00:56:07 -0700 (PDT)
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
Subject: [PATCH v21 RESEND 2/4] dt-binding: i2c: mt65xx: add vbus-supply property
Date:   Thu, 27 May 2021 15:55:54 +0800
Message-Id: <20210527075556.1709140-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
In-Reply-To: <20210527075556.1709140-1-hsinyi@chromium.org>
References: <20210527075556.1709140-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vbus-supply property for mt65xx. The regulator can be passed into
core and turned off during suspend/sleep to reduce power consumption.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
index 7f0194fdd0cc..2c45647e9f0b 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
@@ -32,6 +32,7 @@ Optional properties:
   - mediatek,have-pmic: platform can control i2c form special pmic side.
     Only mt6589 and mt8135 support this feature.
   - mediatek,use-push-pull: IO config use push-pull mode.
+  - vbus-supply: phandle to the regulator that provides power to SCL/SDA.
 
 Example:
 
-- 
2.31.1.818.g46aad6cb9e-goog

