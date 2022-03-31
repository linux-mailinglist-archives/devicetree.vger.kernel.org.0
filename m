Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F55F4EDDBA
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 17:47:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238235AbiCaPsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 11:48:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239802AbiCaPs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 11:48:27 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C13141D2045
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:45:48 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d7so349551wrb.7
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y5RzIaVrDljfzCNwhrZPwB+rQmU+NAnHX60byibYioY=;
        b=EKH2sy0ftlJ2iyqoZtVV4S7jpqgEHL6RbHE+WZ+Vuat7YSNu2DmiGoCA53QcCk3I6z
         XSsEBqdSrDVuzpiPG9ez7kgyQSdtWo66L7VjNp7DmE2uZ28dUt7SwXfVXzmn+T1xy632
         2XqzQr9DKDG1sRZ1W5TOsiN3e/kS8w+h+iE0zmqOxwNlI8CN5Z90r/S+OTsrQeZUguja
         W/IebzUBNyJffvA7V7wyYqOutWWwHZ3mzAQsg36Mq4niZyUKmPd6PpMHXCaHUokoH8PE
         XrQSw/60yiJX2gVtGedjN6HXcbGNgksTQfWq9NZV9icJZF/vISg5EkIcdW9DtVlZOqbc
         3orQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y5RzIaVrDljfzCNwhrZPwB+rQmU+NAnHX60byibYioY=;
        b=Yd7ncnd6c8A1CnQPMO+2xbagQSIAK7poQ153K6y8eFoePcpz9kukJg8ZUdfT0WGFTw
         q4WG2JHGUIWvErWjDt4q0CBWpJJvooLsNY9mP+N8rNNyl0ATbZTSE5mnCDQibUVdHDg8
         g1onPKJdqC8MNXfDXcvajpve4qbElYrIPS91hV4/dW+zjLNJGu/y6ZHmEzKfge0lyWAE
         MxBU4hh1ARmSvRsrq0VtzSkzg50B3jLtjxUjEqPzZGvSIup3DjEUB5iUn+YPtOV1OGjN
         3opzGd1xuvaGfW/V0JTb5MvWeVgogEhu0Z5HF38jKB/uVVOf0g8kjBzGt3z3eEFGBYdd
         XxCQ==
X-Gm-Message-State: AOAM530TztDvyp28WMsg3xggR6zJT5Y5sb5vohD/iL/nCNQi5S4fvFjN
        Na/JhijI1qsTQ/6tzv/RUwyWJJk7ug1AGw==
X-Google-Smtp-Source: ABdhPJwVI7wQFFRmUUEEbA1wl57Ja0SvkDEj2taHH7t117faZf9t9E7HJ8V1TBpOXhMaMlvLs7s6EQ==
X-Received: by 2002:a05:6000:1882:b0:205:e697:b51d with SMTP id a2-20020a056000188200b00205e697b51dmr3268334wri.643.1648741547287;
        Thu, 31 Mar 2022 08:45:47 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id az19-20020a05600c601300b0038cadf3aa69sm11622812wmb.36.2022.03.31.08.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 08:45:46 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v4 0/3] arm64: dts: add corstone1000 device tree
Date:   Thu, 31 Mar 2022 16:45:33 +0100
Message-Id: <20220331154536.1544220-1-rui.silva@linaro.org>
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

Rui Miguel Silva (3):
  dt-bindings: net: smsc,lan91c111 convert to schema
  dt-bindings: arm: add corstone1000 platform
  arm64: dts: arm: add corstone1000 device tree

 .../bindings/arm/arm,corstone1000.yaml        |  45 +++++
 .../bindings/net/smsc,lan91c111.yaml          |  61 +++++++
 .../bindings/net/smsc-lan91c111.txt           |  17 --
 arch/arm64/boot/dts/arm/Makefile              |   1 +
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  23 +++
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  32 ++++
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 164 ++++++++++++++++++
 7 files changed, 326 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
 create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/smsc-lan91c111.txt
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi

-- 
2.35.1

