Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D7E05424CD
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:53:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351020AbiFHAsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:48:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1575224AbiFGX04 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 19:26:56 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 517FC40968E
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 14:38:52 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-fb1ae0cd9cso14261173fac.13
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 14:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UT6FRxZCCVn7OqqVAbhvoV4VpY3ARaNq+uPA/xI1MuY=;
        b=pc9UJg+xnBO5ap56BHhUl3f6eqKcQD+0/WnYWubChDarInjUWRNdUsIXAP/TIqDJ79
         HxMD4bDcMtpNrD7R8lHGDakIRXNOIyGEgdJH41ZE3Ez69dfu82XlKRb5GM+65JuUPkAU
         WiFrnkPjo/dGb19y3hYGLC/wxrhvy9KHKxdd89IFC8TnbRuJpCPHF5Dcgku5pmBdmWXb
         Z1/JffT2b4CA6/n25K5VgyK6aEMrLVvpmw0TwSVw3hLcTDZSsYYck7kWLPKMUerCcE0F
         s4sGhT+PpowYPXn9rbhIzGR610wywA0PTR/h8IvRMIeZ3vqg+waaINh6KJaqsw3L3pUK
         Nr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UT6FRxZCCVn7OqqVAbhvoV4VpY3ARaNq+uPA/xI1MuY=;
        b=h4jnf6W/BsyNH01wTN2J+ILhnwh6Jr249xBP2H1IB3FWqNHPsZfMlTYMpi8uXeDRqT
         6b/qwuogFPOKs2HZUsH5fKdaSSfUdp5wvLAnbX4hL5S2Ts3eovCvceXj2ZOnvpZgHDa/
         leIjLtymfndUO443XQsJUcbd2X9z3aVZslcis0p4yMppoaTZjtCuiNBNNoahQznCKuiK
         dIt2vrGjWXsaL+Jimk4RCP9XdJbKjKahtUxZrvBkRND7nIJKjIO2wYNkBw0TFQVhBLI2
         Q96HEp8EFwCLXo8mUUi0Gi5rAtZNdzPKYvi4FCTBjdL8dNrwgiU33G38B9GxhNNPtxB4
         Xk/A==
X-Gm-Message-State: AOAM533Aa/4avbXU12Gqsg4+XwFcX6P3UpwkGFAcg31cRXKMRUjgNidi
        z0xfQM31XPe46oXQYg8MOLtGMw==
X-Google-Smtp-Source: ABdhPJz2UhA25gNgndTVySjZihJZbirawDXxRv/5lfYlPIluRnbJOQvbiRmLREaRqTzA3owg0a8Wgw==
X-Received: by 2002:a05:6870:23a6:b0:f2:2dfd:d6d5 with SMTP id e38-20020a05687023a600b000f22dfdd6d5mr620206oap.100.1654637929436;
        Tue, 07 Jun 2022 14:38:49 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id cr11-20020a056870ebcb00b000f33a37411dsm8554122oab.26.2022.06.07.14.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:38:48 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Johan Hovold <johan+linaro@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: qcom: Introduce SC8280XP
Date:   Tue,  7 Jun 2022 14:41:09 -0700
Message-Id: <20220607214113.4057684-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series introduces the Qualcomm 8cx Gen 3 platform, with basic support for
the CRD reference device and the SA8295P automotive development platform.

Bjorn Andersson (4):
  dt-bindings: mailbox: qcom-ipcc: Add NSP1 client
  arm64: dts: qcom: add SC8280XP platform
  arm64: dts: qcom: sc8280x: Add reference device
  arm64: dts: qcom: add SA8540P and ADP

 arch/arm64/boot/dts/qcom/Makefile            |    2 +
 arch/arm64/boot/dts/qcom/sa8295p-adp.dts     |  434 ++++
 arch/arm64/boot/dts/qcom/sa8540p.dtsi        |  133 ++
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts    |  423 ++++
 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi |  108 +
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi       | 2195 ++++++++++++++++++
 include/dt-bindings/mailbox/qcom-ipcc.h      |    1 +
 7 files changed, 3296 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sa8295p-adp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sa8540p.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sc8280xp.dtsi

-- 
2.35.1

