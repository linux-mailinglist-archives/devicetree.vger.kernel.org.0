Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA6D4EC549
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 15:11:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344843AbiC3NMo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 09:12:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343959AbiC3NMn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 09:12:43 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C406215919
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:10:58 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id r13so29188507wrr.9
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NyWKLGf+ccM0wNcPcVNEeEzlDMYskKdsR+1IxWVf+EQ=;
        b=eBdSH4VWtZJ1cUPVW6cK9NeWXxm9wD9xmFUl85mi1po4A5d86RrGQcELlE58aZwoAl
         DkAbGYdJAbW7qDz37vzy4U7dutOSPrxZYJm5vmMfjmwK2kh9y0pQldZxk+y78I4w0SDl
         Nl/WCqpTfcxNDbjboY8xW7XXMEFAFDG5PW1GFWSu9LP2tUPqAZgMBs4PwIM76kjww5Fo
         j4IL4YUfL52XjEChXkmyX/5qIPggeFRYjW5e4+Ftw1UBxT/x8DWSPSNQ/C0AijRRBJi+
         3NDN4rRraCye7veFCQL6CJrJltG7d5mGetUSkeRj3eGov82PAeKwfehnVq4pNqJFaGOT
         HI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NyWKLGf+ccM0wNcPcVNEeEzlDMYskKdsR+1IxWVf+EQ=;
        b=E63IiD4pdNwvHaiFLJMjEFRFzhj+InAo4a3wO9lhAqgJ9WibCSnGRUpCFzlDhuf82X
         l71Nlpadd08f2kJkWBbKQwrgpTs7Pdy9spOpwHu0sW9hIQMzkppwu9cFYEaSIkhJe7FP
         yukkXYnpjz2oR1Cep592YGAjpt74ylg9uaNINsjX7W4K0B1LqJTOyv+GXP6Bbq832/yY
         lB+Y4937YEbbOjszXJDGJ3xSQY4SSSGwitnwBga08C+oeGEqto78uOlZX6v/FFyc27lG
         1S5kjaZXqSsd9xBL2PpP06IlfNDu0KWlOox2hwK3hikYf+ML2iLBfclUAAkEovrLGwbR
         LlFg==
X-Gm-Message-State: AOAM5315L0u3uun7SfJnrChRPZR/Gacv4ukbwf5S8MM918R9RFoi/laN
        KWeaqh8Bwh/NPMjVrbx1aGgR+Q==
X-Google-Smtp-Source: ABdhPJzohJVWZiDYjqRcdCgP3m1ZKU/nz7uu8xLYw03RY1qdZ+Jjcc5BFp07f+pufoeO4KK5AWyuWA==
X-Received: by 2002:a05:6000:156e:b0:203:d6e6:bcd0 with SMTP id 14-20020a056000156e00b00203d6e6bcd0mr34662320wrz.135.1648645856989;
        Wed, 30 Mar 2022 06:10:56 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id u7-20020a5d6da7000000b00203d9d1875bsm20134479wrs.73.2022.03.30.06.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 06:10:56 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v3 0/3] arm64: dts: add corstone1000 device tree
Date:   Wed, 30 Mar 2022 14:10:50 +0100
Message-Id: <20220330131053.1122502-1-rui.silva@linaro.org>
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

v2 [2] ->v3:
Rob Herring:
 - unevaluatedProperties fix
 - running dtbs_check had a fatal error:
   dpu-qcm2290.example.dts:23:18: which make it exit before
   the smsc,lan91c111 was verified.
    Fixed the issue in smsc,lan91c111 example by adding
    arm-gic header

Andrew Lunn:
 - remove lan91c111 txt file since we are replacing it with a
   schema one.

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
2: https://lore.kernel.org/linux-devicetree/20220329213519.801033-1-rui.silva@linaro.org/

Rui Miguel Silva (3):
  dt-bindings: net: smsc,lan91c111 convert to schema
  dt-bindings: arm: add corstone1000 platform
  arm64: dts: arm: add corstone1000 device tree

 .../bindings/arm/arm,corstone1000.yaml        |  45 +++++
 .../bindings/net/smsc,lan91c111.yaml          |  61 +++++++
 .../bindings/net/smsc-lan91c111.txt           |  17 --
 arch/arm64/boot/dts/arm/Makefile              |   1 +
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  27 +++
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  36 ++++
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 161 ++++++++++++++++++
 7 files changed, 331 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
 create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/smsc-lan91c111.txt
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi

-- 
2.35.1

