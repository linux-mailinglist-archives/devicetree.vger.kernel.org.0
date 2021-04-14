Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE47635EFEE
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 10:46:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350265AbhDNIko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 04:40:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350204AbhDNIjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 04:39:09 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FF2CC06138F
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 01:38:20 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id k8so13896692pgf.4
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 01:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7XXmpI6HkWp3If8HQFwzyKKNYzDH+WeOIEtuebDT2y0=;
        b=R0Oru1OcUZBxs5N76VWsx4+y0qphIgDd3Khgl47MGvgDk1J0mcJujNHWcDbSHMw4vk
         retbPZHixrp0BJSeAXCiluZ9waJuMYWYhRNeOqx8VSPLeJ6oKNsH7jwVtxn3z+2Gi1LW
         ZAN+yoYP+K8ioD/XXhw+T0FlrkDDEFPdnwg88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7XXmpI6HkWp3If8HQFwzyKKNYzDH+WeOIEtuebDT2y0=;
        b=E/+/5owGsNMWNbvViFmL87l5vkqlaDoK1+cgYeNFEl3SNQfM+v9ABj4IxrvjNIinab
         tDaUxWE8rSrPwg1TDIftn01CA4NXCt1eg0331ZlPdZMpuS8iZ+PxhPLwduuz17wp12dM
         yJLXedUtHoVtHvxkqSJHVovfJPawzqKLbsvtSiPHjs7U9gx3LweMfJU9CMQE6nAfPzfb
         z1UJY6qj7M823QDtcJm654xjhDLc/zez/Me6eluo3SLaNPN3kf5f6iVqq6uTbp1KoK3D
         S0mfspBd1SBicl6kAnV94Q1X3LvVQj7eFyV5gKAWOxY6var1UlfddBrwN2PM9OezkZ9b
         96JQ==
X-Gm-Message-State: AOAM531Hka3TQyEkinEg3GpVTNAp3irCKm5DPiy+RPo6afSZjau0pyCu
        DOnTjDVW02tgBmI+ynYp9H2arAc9pOxnHw==
X-Google-Smtp-Source: ABdhPJz8ts/rFcx+fO1sCnhZkR6UKWNkO2GMDiHGUXl3hfNTchm75W/OIyecWwcg+qif9NTMmXCj7g==
X-Received: by 2002:a63:4644:: with SMTP id v4mr4335415pgk.316.1618389499788;
        Wed, 14 Apr 2021 01:38:19 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:bae3:4af0:9792:1539])
        by smtp.gmail.com with ESMTPSA id g24sm8901582pfh.164.2021.04.14.01.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 01:38:19 -0700 (PDT)
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
Subject: [PATCH v18 2/5] dt-binding: i2c: mt65xx: add vbus-supply property
Date:   Wed, 14 Apr 2021 16:38:06 +0800
Message-Id: <20210414083809.1932133-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210414083809.1932133-1-hsinyi@chromium.org>
References: <20210414083809.1932133-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vbus-supply property for mt65xx. The regulator can be passed into
core and turned off during suspend/sleep to reduce power consumption.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
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
2.31.1.295.g9ea45b61b8-goog

