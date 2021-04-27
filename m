Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBBFC36BEEF
	for <lists+devicetree@lfdr.de>; Tue, 27 Apr 2021 07:36:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232126AbhD0FhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Apr 2021 01:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbhD0FhM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Apr 2021 01:37:12 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 961BFC061574
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 22:36:28 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id t13so4221660pji.4
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 22:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ch2oBLC6NQEww7nsJ+lCH4p8Gxy8IDtfp3C2k0cWO+A=;
        b=iDT/mscq6c4jBDu4qaDzOe3nXm1ALmCUYfi+kLqFJOGJboFHaIsHKm5eQHmbuEaUsi
         e2pm1psA/gibSKNBQ3QDGIwJaA0qTniHLFxuyTSeDExIYdYDSY0aUtM15Ab32BvDrU3X
         Fqw0WP+vbOmWk1ZVtLuq3op9CLgo0pp9ZczUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ch2oBLC6NQEww7nsJ+lCH4p8Gxy8IDtfp3C2k0cWO+A=;
        b=NhYv26zZNpambYYZCGuubkwNuOzU9mUR7cpN/IrG0qfXrAO7B6pRPiJEm1zko96bpd
         sTzY4UY9s1j/prGMgL4M6EOGxonRJcZYteW/3ohKibWEmRNPD2EJ8F/GWctZf4rIzYXC
         hAbgc2JRAMmk0IGeX1PtXSR6AnLJxDzgTnDu0SeXpna/4KkU75oTmBiFRA/El8lY6e/v
         +nVGpF7mMQhtQTuSQIo0QvCw6QTod1R9+vnPxKK+RZeJfxAuCa6EJ05X/+qnD1Fg7uSD
         ct4qngNCxNGi/yMbQt9KL73+C+jypu5IKDEva7Hy256DXo1MOh7Wf7FAoJP97DlPRyEa
         5eaQ==
X-Gm-Message-State: AOAM530w3nhYtqB1xzArUqI1pPn9gvH05f+Oq/NUR952ZFeDA4rTNnAl
        uhFb5RzFuxf23Mv7gK9jcT0O+w==
X-Google-Smtp-Source: ABdhPJx+gZbECjl99mVB5kXeY+H3By4RaE8KMXOPfabslEPl1PyacDfTdB7lt1pkQt0cn6pfYCGwgw==
X-Received: by 2002:a17:902:db03:b029:ec:94dd:b6b3 with SMTP id m3-20020a170902db03b02900ec94ddb6b3mr22246181plx.69.1619501788150;
        Mon, 26 Apr 2021 22:36:28 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:3984:c4f5:8612:6b3e])
        by smtp.gmail.com with ESMTPSA id gc15sm993529pjb.2.2021.04.26.22.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 22:36:27 -0700 (PDT)
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
Subject: [PATCH v20 2/5] dt-binding: i2c: mt65xx: add vbus-supply property
Date:   Tue, 27 Apr 2021 13:36:14 +0800
Message-Id: <20210427053617.27972-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210427053617.27972-1-hsinyi@chromium.org>
References: <20210427053617.27972-1-hsinyi@chromium.org>
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
2.31.1.498.g6c1eba8ee3d-goog

