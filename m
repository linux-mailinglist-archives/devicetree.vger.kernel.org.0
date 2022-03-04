Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABD794CD430
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 13:25:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236890AbiCDMZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 07:25:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236540AbiCDMZv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 07:25:51 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 904A51B01A5
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 04:25:03 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 92E6D3F60B
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 12:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646396701;
        bh=TY+lA6i8XxWtBRy+CXNMVFSE4D7AiD1N2aYEOcdmjms=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=TdV5B039W6BVETRjGNXr9xZLlfkCFhMRDU0ye62UlOf0bALlak65BthFUHt32qQSI
         yfoVkqsOaVLC35ufUeP8IE8Pb3x7VmL4RMQl8zI1zlcfpiHp1aA4zPg6uMw2PQ1HJU
         BCyJJbg4fiJ/iMQLCLZA/V0h1nL05h7p1fEYTpKRhLXikr02oUxHtTIgwfhnYmHxmr
         ChWIMg8cWNSOVNW2fZ5g5XPlTj0apf73tKxfLpGl27+P67vBmiHX4GEqLdImpQymYj
         MxqP37JeS19WRRzIglRfm9DLgLVMIIVqujKcbPMCWj+Wh09Pow2m2Qi5dapNmWlwGS
         8s+hP5Afl1L+Q==
Received: by mail-ed1-f72.google.com with SMTP id bq19-20020a056402215300b0040f276105a4so4506535edb.2
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 04:25:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TY+lA6i8XxWtBRy+CXNMVFSE4D7AiD1N2aYEOcdmjms=;
        b=Zf6MkAekXrCkOx/e00Vl9FU/3JVCW31TM7nJqKFFpdiy/w5F0aexu06kb5mYqxOVWL
         pF58olOuVDZCEWogs5EaeuD1jgxVnG9cq/LNvCMLPWxCo+hq0zTgU25ZZD2sG2wtzR2O
         8EG/SjsY4IijPqDfiXtk4u8frmxVHnKpuWCsI2N4f2GevuOL14p/dV2S5+U2fRi776Wo
         tDWdExdytllP5PuB3Y3b5JVazYM6c0jXbURcV4QY2QIvowm2fdhVrJBdRJhsl5HcXvgt
         cGFNRndNxdamYC/L6CQ9bS0yOML801ZZADrJfPrvujew7gbpCln/PqvsSaP0qzZiQli9
         kFgg==
X-Gm-Message-State: AOAM532KSRg80emKxrBigaIwSVLdO4FIengJ3Fp+Vud+LwphiazF70Re
        IG08jeAyQvGtYGepKO/lmXozbszZODtgkNg3arj/7JKb+k4oGN7HdUqHxakqCLkf1yzugB7nkic
        aZXfh7qkBaSuE55TKH3LKsBk4I4aJ+1z+AkfAc9w=
X-Received: by 2002:a17:906:b207:b0:6da:81ba:3789 with SMTP id p7-20020a170906b20700b006da81ba3789mr8302673ejz.578.1646396700461;
        Fri, 04 Mar 2022 04:25:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwWzK+iNBIRKwo4mH2PPJHmzHvNxYOtWvwU/P0Gkg3e+/8BPPc+9gd/RWrf4ekFqNBIo2I59Q==
X-Received: by 2002:a17:906:b207:b0:6da:81ba:3789 with SMTP id p7-20020a170906b20700b006da81ba3789mr8302658ejz.578.1646396700216;
        Fri, 04 Mar 2022 04:25:00 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id r23-20020aa7da17000000b00415a1431488sm2047368eds.4.2022.03.04.04.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 04:24:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 0/4] dt-bindings: timer: exynos4210-mct: describe known hardware and its interrupts
Date:   Fri,  4 Mar 2022 13:24:20 +0100
Message-Id: <20220304122424.307885-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v1:
1. Patch 1: Specify Tesla FSD interrupts.
2. New patch 4 for Tesla FSD.
3. Add review tags.

Merging/dependencies
====================
The dt-bindings (patch 1) can go via timer tree and I will take later DTS
patches via Samsung Soc.

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  dt-bindings: timer: exynos4210-mct: describe known hardware and its
    interrupts
  ARM: dts: exynos: add a specific compatible to MCT
  arm64: dts: exynos: add a specific compatible to MCT
  arm64: dts: tesla: add a specific compatible to MCT on FSD

 .../timer/samsung,exynos4210-mct.yaml         | 67 ++++++++++++++++++-
 arch/arm/boot/dts/exynos3250.dtsi             |  3 +-
 arch/arm/boot/dts/exynos5250.dtsi             |  3 +-
 arch/arm/boot/dts/exynos5260.dtsi             |  3 +-
 arch/arm/boot/dts/exynos54xx.dtsi             |  3 +-
 arch/arm64/boot/dts/exynos/exynos5433.dtsi    |  3 +-
 arch/arm64/boot/dts/exynos/exynos850.dtsi     |  3 +-
 arch/arm64/boot/dts/tesla/fsd.dtsi            |  2 +-
 8 files changed, 77 insertions(+), 10 deletions(-)

-- 
2.32.0

