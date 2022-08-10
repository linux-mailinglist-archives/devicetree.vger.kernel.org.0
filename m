Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C73958E5CC
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 05:55:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230208AbiHJDyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 23:54:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbiHJDy1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 23:54:27 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A9C6564E
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 20:54:26 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-10e6bdbe218so16403001fac.10
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 20:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=UDCfRHiTJnRIV1Q/aRrvLgtP88FSJLPJdD54Mr/hTHw=;
        b=VDSYM6wD1mT8HbUdE7E2Hfe2jBwY2Zxc+yEchhOX8we8EkQzgyYVxJHre5M8WL34jE
         GxJamDrrv3QNBx4Pj2ghrNbGGzzDAS4NcIMZxSWkJX1kifDjA1n4tfIbz2Yt3kIFd1B0
         7YjHw1OFLjyYN2/4QP13LW4ZNjVF823P3hYXWUKarT3bJh/cqKTYaGoNnfWKbNh1OIkM
         syGAaQa3q7orhFfFTQarRG8Wwb6dQ7h2SwdYqp++WmC6VRVejkbc1XRtueE2yZZ1kj2F
         62R7PAbqYr2Ff7rD/TkFjQDgn0uB34a1N59lb060Shub4Zb6a80+MixFttch7kZ30y00
         UuLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=UDCfRHiTJnRIV1Q/aRrvLgtP88FSJLPJdD54Mr/hTHw=;
        b=1Qkzz12LdYJHxtfT9akUhNmJUl9cGQyB3zs+J/ES1lBdRJsrwgVMMyf1sc9otZ9j2D
         Zo/Rlpqg/TCbQnq7sYY2I0pJ2J9245XA0BOaOEV4sxTAej9OA/N3lIojokWKpOy9vAsm
         yN2go9fc1WC0+R1GMqgBHVuXzkjuNjPM5iJl5st9JOz1KC7WBitCdcRmlMmZ5bdD6yM3
         vTsDygDUY1svFVd75RiscP4zxW2AjxhLovwwE9fLNtDaSH4Ok+LOd6dexj5zTFOs01uQ
         Os73eTNELRoNp69w8U++ntk0E9yvzMZgr1jxw4bNhB4VmuxOBXJI62PbYocKgrjwWXGE
         FgVw==
X-Gm-Message-State: ACgBeo3v5G509GEMQRI5GUBdRoRRdaqGnSbel6m5CViAZ8ibZtneuWim
        8/RUoRD0VqSHrBsfDAK3QFvpyA==
X-Google-Smtp-Source: AA6agR7RA4fR2rBhg8qYwqfiHv8chZ7fVQCC5WLhvj4pee36qqlafOU6Lc7aOiMCIHHTJRF3f4mbZw==
X-Received: by 2002:a05:6870:c883:b0:10d:7d25:7685 with SMTP id er3-20020a056870c88300b0010d7d257685mr659260oab.174.1660103665757;
        Tue, 09 Aug 2022 20:54:25 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r13-20020a056871088d00b000f5f4ad194bsm3569732oaq.25.2022.08.09.20.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 20:54:25 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: qcom: Lenovo Yoga battery and DP support
Date:   Tue,  9 Aug 2022 22:54:20 -0500
Message-Id: <20220810035424.2796777-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.37.1
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

This series introduces support for battery and external display on the Lenovo
Yoga C630.

Enables implementation provided in:
https://lore.kernel.org/linux-arm-msm/20220810030926.2794179-1-bjorn.andersson@linaro.org/T/#u
https://lore.kernel.org/linux-arm-msm/20220810030500.2793882-1-bjorn.andersson@linaro.org/T/#t
https://lore.kernel.org/linux-arm-msm/20220810035013.3582848-1-bjorn.andersson@linaro.org/T/#t

Bjorn Andersson (2):
  arm64: dts: qcom: c630: Add Embedded Controller node
  arm64: dts: qcom: c630: Add DisplayPort controller

Dmitry Baryshkov (2):
  arm64: dts: qcom: sdm845: switch usb_1 phy to use combo usb+dp phy
  arm64: dts: qcom: sdm845: add displayport node

 arch/arm64/boot/dts/qcom/sdm845.dtsi          | 107 ++++++++++++++++--
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts |  60 ++++++++++
 2 files changed, 158 insertions(+), 9 deletions(-)

-- 
2.37.1

