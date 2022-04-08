Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA5C44F968B
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 15:19:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236149AbiDHNVe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 09:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiDHNVc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 09:21:32 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7716D3997
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 06:19:28 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id v2so1942433wrv.13
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 06:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zZd6EXZRyti7kAMVLlwyVDeniU+I1Er5GX2lYs6M2HI=;
        b=rJ1vzfOHqIhQsJ/hd2suieHgTw8RNF5pPPrbQnF/WT0fS2+pAv+MYQhHWYZ6e2qt2B
         LBpQiv/7oWA0OtdJlX9B2t5yYALZoogzsgutVogMM4ui7x8tVTA01tt9YbWuj+/CqnCc
         QccdRULhj6uTkpgSG16WkvY5TBWBDxbUQprG3yX4wxn4pnH3NEQS93ShdcNBq+StiSVW
         Bfj0kISHpXarCY6uYvoY24X5yuyc47z8OyugN/dacJD8pgsAa0z0nLp7s+G1cXT/MqHt
         4ijn/gi+nhRd5sPo9nPR1J3dpS0lfzSrj4mmui+I1KjkPdvVB/ht3Gc/szR5aNtNIStV
         8+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zZd6EXZRyti7kAMVLlwyVDeniU+I1Er5GX2lYs6M2HI=;
        b=aAXRrmePSOkqJlyJm60idpbIOU7PS6n5/SrPHVh7pYOZL+t9AqHOqqeIyOcHree4Ff
         mxDLvz6fYo5N0xrFf7oODChk93Lgkib8Q8XFo/FhYSVMUWGnBUQp2kwQpX56QW+Bq/di
         Crl2hLIPmBA5XBTzqv3rb+LGnQ2H4QbmeiK04pO2AAGRBxGnZt79gFfYt1AcefdR0Xrs
         PV3YrZ9ZaPv0rnGF8Bv2p5gXEepGg9glwsw11dUUNLIJV5F2EaGzgTKKTWqThPzFrF2q
         L3xeOCDTMzCEW0oBkfdNy94U2XDxGVRsJHxqRxA3FDS77gbcWFOAkSPs5f3EHz2l2z+J
         kU1Q==
X-Gm-Message-State: AOAM533gjMzaGR6SoXVSPDT5z6sbOvIyx1JHeGFMAT3SXMaS6Z3qoW35
        /OjeJX4+gfxtoTcNAN+OI0zSag==
X-Google-Smtp-Source: ABdhPJxHLeIi22+TJRKcK+RjWKNzP76PoYk5b7+eY7Q1xRA1D68R3+kA+ie+HRwhd/y/4hcanZMIaw==
X-Received: by 2002:a05:6000:1864:b0:206:188a:3aff with SMTP id d4-20020a056000186400b00206188a3affmr15154869wri.100.1649423967130;
        Fri, 08 Apr 2022 06:19:27 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id r12-20020a5d6c6c000000b00203ec2b1255sm24689523wrz.60.2022.04.08.06.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 06:19:26 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v5 0/2] arm64: dts: add corstone1000 device tree
Date:   Fri,  8 Apr 2022 14:19:20 +0100
Message-Id: <20220408131922.3864348-1-rui.silva@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
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

v4 [4] -> v5:
Rob Herring:
 - drop smsc,lan91c111 binding patch because it was applied
 - add reviewed-by tag to corstone1000 bindings

 - add mmc nodes to fvp dts since latest version of FVP
   support 2 sdcard 

v3 [3] ->v4:
Sudeep Holla:
 - replace documentation links to permanent ones
 - extend l2 cache properties
 - move cpu definition to dtsi since the FVP is also a
   cortex-a35 implementation
 - remove unneeded interrupt parents from uart

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

0: https://developer.arm.com/documentation/102360/0000
1: https://lore.kernel.org/linux-devicetree/20220325133655.4177977-1-rui.silva@linaro.org/
2: https://lore.kernel.org/linux-devicetree/20220329213519.801033-1-rui.silva@linaro.org/
3: https://lore.kernel.org/linux-devicetree/20220330131053.1122502-1-rui.silva@linaro.org/
4: https://lore.kernel.org/linux-devicetree/20220331154536.1544220-1-rui.silva@linaro.org/

Rui Miguel Silva (2):
  dt-bindings: arm: add corstone1000 platform
  arm64: dts: arm: add corstone1000 device tree

 .../bindings/arm/arm,corstone1000.yaml        |  45 +++++
 arch/arm64/boot/dts/arm/Makefile              |   1 +
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  51 ++++++
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  32 ++++
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 164 ++++++++++++++++++
 5 files changed, 293 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi

-- 
2.35.1

