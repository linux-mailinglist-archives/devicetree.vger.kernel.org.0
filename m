Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37B4261F483
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 14:41:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231365AbiKGNlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 08:41:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231194AbiKGNlL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 08:41:11 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFB701B78D
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 05:41:10 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id r14so17613848edc.7
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 05:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WZVb2A33IMLfgWmBsOlcFLwdeqdo9EEDNJyz0MDN2cQ=;
        b=cL92wTW57WsdB72r0hq7nHWwXz1tGXe/9W1CPZjfQBms4V5xnHq4k7xNsy0EaJydil
         rTwDfZwjGrbDSKi0NQr9fThIcFoHyo8ckD1Qr40AYyuUj62GlTulowNT7pwrqyWgHMzJ
         OZcD+j/ykNqdItvpNb7QBMlRgcxD6t7yZvL7mIddIZn6Zt0WzHJGOaW1KERoqAomWgWj
         Z6f4v+bwRZobHhB0mcDFc9WHMthQczU4+N/rUdKdlY3LweVGiehIXB/ubeLS3lsIA5FD
         nRVZeyJ10P+cBneFBTNER4XvLdY/HWf/11PgbIfq8iHY40M1IgJq4nkPMkRMWJ4iHaxV
         LtAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WZVb2A33IMLfgWmBsOlcFLwdeqdo9EEDNJyz0MDN2cQ=;
        b=zCuG7gzlonrKqSR4slCBHZNkDm22GaruOf6eIldxB8S/U7Tz9myWuogm4SYkWay74u
         3wIHwyOUB4naCB6oDknXyMS0AUaqdTkpdreeGvmnnkrzBy51hqMynCF0c62qUkxLF5t0
         tIENdFgp3ho1NaN9hAMLed8QyGMewCqAOddQBRp8q021FxZpOz3gSF9p/Z++IBaIin1K
         vNxyMmbvrtlSHl20NetAkcfmvdvb426CWttwfgJVzpiwM9BKl8mo3Ga541x3iV5pQAqG
         5y3fG5cf45wbA5tnTCXOxRg4kWDqT1n3FLLBaHd0xfU4xBzni26tOTEXQVDuYfrtTQ7B
         UZEw==
X-Gm-Message-State: ACrzQf3szPveAFuFlbCK8aKYAmm1zFpCvBxpgOIoASnMfjufpNxWHzye
        QM8FSi2KLjBZMTtMft3WDvXrIsFOdpxXOQ==
X-Google-Smtp-Source: AMsMyM6IStvVzHlDGLoACPHdCP9OigJLMiRCzdx5Ec1Qo5LfLh305jbpatP9y3tc7UCm50YShHwv5g==
X-Received: by 2002:aa7:c58e:0:b0:461:77b:7bd with SMTP id g14-20020aa7c58e000000b00461077b07bdmr51017634edq.387.1667828469314;
        Mon, 07 Nov 2022 05:41:09 -0800 (PST)
Received: from fedora.. ([85.235.10.72])
        by smtp.gmail.com with ESMTPSA id q8-20020aa7da88000000b004619f024864sm4212389eds.81.2022.11.07.05.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 05:41:09 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: ARM: add bindings for the D-Link DIR-890L
Date:   Mon,  7 Nov 2022 14:41:03 +0100
Message-Id: <20221107134104.1422169-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DIR-890L is a router similar to DIR-885L just a bit different.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
index 2657f9b82ecd..52b575c40599 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
@@ -66,6 +66,7 @@ properties:
           - enum:
               - asus,rt-ac88u
               - dlink,dir-885l
+              - dlink,dir-890l
               - linksys,panamera
               - luxul,abr-4500-v1
               - luxul,xap-1610-v1
-- 
2.34.1

