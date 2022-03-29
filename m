Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 193684EB55F
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 23:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232660AbiC2VhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 17:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234704AbiC2VhU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 17:37:20 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6E72239320
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 14:35:36 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u16so26649320wru.4
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 14:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mNvIsUiTlb/UgEAh3BT2IZcJ/xQ2yLcpvEo7njvqhiI=;
        b=wjHdYG97UGxjmWrCbpHJYSsg0uRZYnPBBwhv71PT9BQH0YepjjavPzuqzMP4hwd6TV
         9ZnTe7dkj6IY8JO14xi7ibQ8BvbtyeGEDYGzYGBBtz4IgGhNHfm3dw60ThkF9uuuBSNX
         rcyzizib2yDH5A8sw8jUTUZdX3lXO4VzsQu8dMrxOZrtle+KQ43Ng0AAg3XHKpZZldQ0
         ctp2XQkJKiw0M7VDIinU/H2jChIIJ7XeReYimaontzMR4K9nLI9+xViiLRqj/zWKw1hn
         HmVKbNm+Yj/M6evPsPQdrFy7zrUmGPKr7R5MmQG0zHyF0aGY59J6A4xF4mlh7ByhdUZz
         iXFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mNvIsUiTlb/UgEAh3BT2IZcJ/xQ2yLcpvEo7njvqhiI=;
        b=yyyCsI0Mtjblbiq54Q6EfoxIlyJ6Yk/FZqKNnjxn5z1u7bsDJCzNkmelyKm5IhyMYI
         m15+gxMb7TWee1rnTD15y9Pvpq/XkND99UtLUGRRBLDw6J4uVtuJlVtzQkGnfnSPTHiZ
         0wm5o6vL46tAB6+yaLCHwMorTgpuXMhJiqfg1ZUzJ2iez//6q5aB+5mKLUhBtTyLpAcy
         iC3fePPCG2INOqSqzhHBqLJ0UitSxfO9pQEVfx4gSOnr6fcQJKOP8VwQH+Cl+pZsmcXC
         5Jb+m1MWp18Ro9XQ4/81UUeEgqQ8ChTbCn1QfZjkoXg/azyb1vdo0jTHfKNZ0EmX3+US
         Sj0A==
X-Gm-Message-State: AOAM532CXFos6siaedKnRGynrJtV1xHyJfdpjkzuYU/87YhdsBLhDHwN
        3CQWPQiWnmuADQB8eEDflrPUfA==
X-Google-Smtp-Source: ABdhPJwzRqtpVIisoJXt1TE7wY1xV7on1tTuCjIbIRiDfz9/5BvDiNveTdGn2UPs3O4dgNwYHsJRbg==
X-Received: by 2002:adf:8128:0:b0:203:e32d:4d03 with SMTP id 37-20020adf8128000000b00203e32d4d03mr33882747wrm.540.1648589735423;
        Tue, 29 Mar 2022 14:35:35 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id f1-20020a1c6a01000000b0038c9f6a3634sm3121081wmc.7.2022.03.29.14.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 14:35:35 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v2 0/3] arm64: dts: add corstone1000 device tree
Date:   Tue, 29 Mar 2022 22:35:16 +0100
Message-Id: <20220329213519.801033-1-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree and correspondent binding for ARM corstone1000
[0] platform for FVP (Fixed Virtual Platform) and FPGA MPS3
prototyping board implementation of this system.

Cheers,
   Rui

v1 [1] ->v2:
Rob Herring:
 - change license to dual
 - distinguish cpu entry for fvp and mps3
 - mmio nodes in simple-bus
 - refactor mhu entries
 - add secure-status to secure world only accessible mhu
 - add smsc,lan91c111 binding patch to avoid dtbs_check
   warnings

Marc Zyngier:
 - fixed SPI cpu mask invalid entries
 - reduce the mask to the existing cpu count (4->1)
 - change one interrupt to symbolic enconding

0: https://documentation-service.arm.com/static/619e02b1f45f0b1fbf3a8f16
1: https://lore.kernel.org/linux-devicetree/20220325133655.4177977-1-rui.silva@linaro.org/


Rui Miguel Silva (3):
  dt-bindings: net: smsc,lan91c111 convert to schema
  dt-bindings: arm: add corstone1000 platform
  arm64: dts: arm: add corstone1000 device tree

 .../bindings/arm/arm,corstone1000.yaml        |  45 +++++
 .../bindings/net/smsc,lan91c111.yaml          |  59 +++++++
 arch/arm64/boot/dts/arm/Makefile              |   1 +
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  27 +++
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  36 ++++
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 161 ++++++++++++++++++
 6 files changed, 329 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
 create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi

-- 
2.35.1

