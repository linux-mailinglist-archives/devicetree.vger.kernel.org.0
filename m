Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D05014EC3DB
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 14:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344923AbiC3MLl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 08:11:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347709AbiC3MHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 08:07:31 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 609AA10B8
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 05:05:44 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id e16so35358241lfc.13
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 05:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=joxG/spNwlj1fHKhvtHKtXHh1W5pNu9AS2FKRd+Axj8=;
        b=exv7OUt1sjOPoyOX6esceFSwCF6m1hHMvgJ4rI3piGgI8yVm4ljM8MjFLRbqY64Aqd
         Zi5R4c975Q1Oh3U0df9tNzjp+Fkbnwg0Tkabm4XwNDHCzeteevFV4yFd+BHfwETkWw0M
         M2dbAyAv8RqDi/dK96WhCkmN0oWavp429NxmlvPoISsO4IgcGxZr1PrQScD0yCl36UPO
         Q9oSxNUfB//0uMi1fsju9ShLLdx9mjnIgiyPwzVhy+k8z2CcwEMzkggwUiAqq8xk62Rn
         BsJDKXLFZqAuzN+Q72cgOH7LS9eIEudkTGxyiw33z/yuF1iIhqOwMeDMHt0JVDUYXoFr
         IApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=joxG/spNwlj1fHKhvtHKtXHh1W5pNu9AS2FKRd+Axj8=;
        b=DDw6M0h4FCJcaShFHX7cC6m3uASBAsZG1RLACEMK2xRYTLXV2Y/QAU5rzECLYFrxzs
         fo9txcAVwWKQlk5REPed6c7hqDN/ZAQlpq4DtcUrv+kiUGpAJp9IElGl53UsCx84YqjX
         WDvu/Z3v00v7g7+My09H7xAJZeOQTLwxY2S13mIiav/eDhgVbbNE6WigO7GVT3yyi11O
         m9hfMibvysBsLeGOthOqnQWX9mXxE9moC0ZtKGe0l3tpmDIXvUWQkTseAoaNuiXGlDRL
         Oft/r9CWY69ytdDOpIFU6giX3/m99TTV8L73iZixANqh/46sOGMXnPmDh2hDsgTi2lFC
         Atwg==
X-Gm-Message-State: AOAM532y9YOXwV003Adb9bgAt+bKwBlWhXFD5IhENOY+76qP4w8sg+eo
        HU9w+w9511ErZHpL5WzYKjLBuUDjev4=
X-Google-Smtp-Source: ABdhPJyTd8uwxepPzlk6Ni6qEEW8AMmcUiwpa9XLl/rd6ETfcQlJ3Y1lz/svreaBav47UO+yxm6JJA==
X-Received: by 2002:a05:6512:c22:b0:44a:874f:7ad7 with SMTP id z34-20020a0565120c2200b0044a874f7ad7mr6576745lfu.649.1648641939030;
        Wed, 30 Mar 2022 05:05:39 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id p2-20020a056512328200b0044a2d3f889fsm2308468lfe.293.2022.03.30.05.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 05:05:38 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Update pin controller node name
Date:   Wed, 30 Mar 2022 14:05:27 +0200
Message-Id: <20220330120527.5242-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes:
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: cru-bus@100: 'pin-controller@1c0' does not match any of the regexes: '^clock-controller@[a-f0-9]+$', '^phy@[a-f0-9]+$', '^pinctrl@[a-f0-9]+$', '^syscon@[a-f0-9]+$', '^thermal@[a-f0-9]+$'
        From schema: Documentation/devicetree/bindings/mfd/brcm,cru.yaml
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: pin-controller@1c0: $nodename:0: 'pin-controller@1c0' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
        From schema: Documentation/devicetree/bindings/pinctrl/brcm,ns-pinmux.yaml

Ref: e7391b021e3f ("dt-bindings: mfd: brcm,cru: Rename pinctrl node")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 603c700c706f..65f8a759f1e3 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -455,7 +455,7 @@ cru_clkset: syscon@180 {
 				reg = <0x180 0x4>;
 			};
 
-			pinctrl: pin-controller@1c0 {
+			pinctrl: pinctrl@1c0 {
 				compatible = "brcm,bcm4708-pinmux";
 				reg = <0x1c0 0x24>;
 				reg-names = "cru_gpio_control";
-- 
2.34.1

