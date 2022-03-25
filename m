Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 446444E744B
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 14:37:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344985AbiCYNin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 09:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244774AbiCYNim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 09:38:42 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1415BD763E
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 06:37:08 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id j15so15389945eje.9
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 06:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f/BzAHp1Llzyf5oAHUVwlHKPpuK/v5NVm6Pa5wKjTDQ=;
        b=gKvTpTzxWaLTkUu1YWGVcR+91u6GfXO8qB0J5vHr0HDPZtkS8w2qa8jUNklSVpISrU
         ey0m4vDk3bNthEjBFFEsv1+wAlO5uLtaGqBv/YqO4gdIod66D4KFIpdqs6UiW+pbS8Fw
         d29d4nJkjR8T+PRH2Z/9zCl9l8b8mS0hDr8OafhQENvyyyepCgiCPRgeuiTnRE+pgSY8
         N9IJCd59wGrSMnCm8w6j2ngSb04AaYa4gPzwH9bJPXX6QGYUzJCUNI4EapVdsMe9TN01
         eA3rAIjOeVhhlK+g6fhIStzBen13PD7GTUHF7p4wc1iVif25YK89qzqc7jitm/e6r1Y9
         F73A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f/BzAHp1Llzyf5oAHUVwlHKPpuK/v5NVm6Pa5wKjTDQ=;
        b=hxMFDR6JQDNO2mAXLU2ZtmkjJC5z37sBN78is5ZhNTSpYqsZ50lMKwoHlzXHaF4H4x
         vBjA09+ID5jDdYf8mT0flqFLiqxfDAc8l0h3PrT51FDbnkEJ3970qrO4uNuHV7ojen4n
         54v0korS0n9F5rM3KDKG3EBqxmWZRC+fzooAK0CuTCcsCkgXZfvOQK9M/bMVX3oK4cQA
         i7b3etO1bnXeQ3Y0TW2ktLdQYWEd4RV27w1wLcQcyj7icS8jfz7LZhwuj5jthUeuvZan
         bM/vdLNM6h1DVl91qq83BG7wkVx3DRc63F+re5CIVukV5sNnlEUuU/xkEaY9Obxg5Cpv
         3YUA==
X-Gm-Message-State: AOAM530DAc70TQrCmL9mQ1n21/JIi+08Uwzlk7T/Ao8R3s9oQxL1jB2N
        oaatxpCXW29aPahBnscWckBU3g==
X-Google-Smtp-Source: ABdhPJxfv/wHUIiOGpIyTeRG2trbsSvvlbd/uwiaX00peIK9nhrnHJswyLySkzW/TCa+5opUfzH+Qw==
X-Received: by 2002:a17:906:d555:b0:6da:ac8c:f66b with SMTP id cr21-20020a170906d55500b006daac8cf66bmr11664910ejc.107.1648215426620;
        Fri, 25 Mar 2022 06:37:06 -0700 (PDT)
Received: from arch-thunder.local (a109-49-33-111.cpe.netcabo.pt. [109.49.33.111])
        by smtp.gmail.com with ESMTPSA id e9-20020a170906c00900b006d4a45869basm2327012ejz.199.2022.03.25.06.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 06:37:06 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH 0/2] arm64: dts: add corstone1000 device tree
Date:   Fri, 25 Mar 2022 13:36:53 +0000
Message-Id: <20220325133655.4177977-1-rui.silva@linaro.org>
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

0: https://documentation-service.arm.com/static/619e02b1f45f0b1fbf3a8f16

Rui Miguel Silva (2):
  dt-bindings: arm: add corstone1000 platform
  arm64: dts: arm: add corstone1000 device tree

 .../bindings/arm/arm,corstone1000.yaml        |  45 ++++++
 arch/arm64/boot/dts/arm/Makefile              |   1 +
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  31 ++++
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  38 +++++
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 151 ++++++++++++++++++
 5 files changed, 266 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
 create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi

-- 
2.35.1

