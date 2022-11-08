Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0523262081E
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 05:15:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233149AbiKHEO5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 23:14:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233419AbiKHEOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 23:14:32 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16342326E0
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 20:14:20 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id b1-20020a17090a7ac100b00213fde52d49so12289620pjl.3
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 20:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xuwr1wa7h3Mp1ISTXzE/G2E6Q+ACdzkilEj2oS/EZ+s=;
        b=HY2b8tDCmpxzhviyBtqkSiATUEznc0lM66RcmEdOm4eEbWfTEusOq0Q1Axs24vRuuX
         qA0kKe02xN3JchfHFuPLVTQ7qkudEzJjkeVhDivLl1bDCtZWGDtURzv44qQda8m0Wpql
         646BItuWnkFUhoN3lrdtPHjX4Ufuk2+B+jXYGyhNDHlJupWsz0JUTqLVJ1rKplBN0T2M
         rZrY3s/SnCeWmPqayV240OKcnRd3itMUa/Kq3+bsWGNNX8AeYPVDFN5vNRaXC/stKA3T
         xZbBCebxGihvAwckAzIjqcXsSfrwm+bu0uyRfF+p0fnnuKqc5qLhH5U64PkAB0CK6Jng
         lhvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xuwr1wa7h3Mp1ISTXzE/G2E6Q+ACdzkilEj2oS/EZ+s=;
        b=Ctxc/E3oE61pd9oja4o8xiSCA+F7D/1O2qnwWK03qKLDoi+tWWYko/nEgU1o8NXOcU
         1LMOFBCooz9BiU7H78lUKsR/GBCWGF2GUI2eBHqcXPmkLk/ILsGv0zP9tBDOtgoGSluD
         1WQiDLNIque8A23QX1GCK0BOsAzRclfAQRgqvsPw1mgjKOnDd4eitCTjXo7Xbz2W1GTp
         eG6+BGZv2fOifjq9OGsLIlBP0ShW/bhqNxeNIL5tlZIg9e6fLtKj9NINsQu4ZY+oFaGg
         NHtyEVsLMEbgcm90zVLI9a6c5ZIQ3gN15Yak6WfDjhAeSO2dyY6SjdLwtky1deruOCvj
         7/mQ==
X-Gm-Message-State: ACrzQf3bLxf3uyM8qQ+T0qVwb3arWdrSqDhhlQOC3qwTa0GYmOYCwrM3
        ckd2KBVM0EmrRgF6EaRm8ZJiBt/Knd3IV/LX8Ig=
X-Google-Smtp-Source: AMsMyM4evCjDGRJN9YC0GbszPWOjwzRkT1t/UwbW+RUEzTMQmapzJyWTf4BHm0VHAqWdtwQflBAjTg==
X-Received: by 2002:a17:90b:2651:b0:20a:daaf:75f0 with SMTP id pa17-20020a17090b265100b0020adaaf75f0mr53504279pjb.142.1667880859544;
        Mon, 07 Nov 2022 20:14:19 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:14:19 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v7 00/10] ARM: Add Rockchip RV1126 support
Date:   Tue,  8 Nov 2022 09:43:50 +0530
Message-Id: <20221108041400.157052-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series combined the next level dts patches for 
Rockchip RV1126 support.

Changes for v7:
- fix dtbs_check
- new dt-bindings patches
- collect Rob Ack

Any inputs?
Jagan.

Jagan Teki (10):
  dt-bindings: arm: rockchip: Add pmu compatible for rv1126
  dt-bindings: mmc: rockchip-dw-mshc: Add power-domains property
  dt-bindings: iio: adc: rockchip-saradc: Add saradc for rv1126
  dt-bindings: timer: rk-timer: Add rktimer for rv1126
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2)
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../bindings/iio/adc/rockchip-saradc.yaml     |   1 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |   3 +
 .../bindings/timer/rockchip,rk-timer.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts  |  38 ++
 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi    | 338 ++++++++++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         | 211 +++++++++
 arch/arm/boot/dts/rv1126.dtsi                 | 438 ++++++++++++++++++
 12 files changed, 1042 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

-- 
2.25.1

