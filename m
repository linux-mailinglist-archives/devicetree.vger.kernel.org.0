Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA9225773CB
	for <lists+devicetree@lfdr.de>; Sun, 17 Jul 2022 05:41:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231661AbiGQDlo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 23:41:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229980AbiGQDln (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 23:41:43 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D97517E04
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 20:41:42 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id r22-20020a056830419600b0061c6edc5dcfso6638577otu.12
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 20:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/JOrR1/M+i6rGhgWi4WxqILV1OdRgnXn1zMgwXAIeTc=;
        b=NylzmEc3fiKWfYcEFOLLP7EbLMjz04vnLqKONw+cUWw9wQqSO112+2pJUIyYR0/1Cp
         vGwv7igOtIoOT4vH2CvghUEJxaq8jp8sCpWICPk4Aqu/Ug+nTyV7XMqJ/CQGEtPOsR8Q
         Nu0b/WQ4KPCvgLCfJUWLNDOdYAuScvpovsy/3la8Wg+szbzo8IKrDwDiIORD/IsmZasD
         4Mjj6Vks8LRS3jwe04OZZLm2C0dI/xHSb72ZlKQoY9JuxELbOrF5dgjOp5/CzlYI95bs
         A3Wf+jtRho4ZO2cqdOd+QE0u9XKhlHusAiQrtfSTHSm1h/j8Q95Y9+pCuLPfnRt5JXC3
         jbuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/JOrR1/M+i6rGhgWi4WxqILV1OdRgnXn1zMgwXAIeTc=;
        b=iD80ogQ9w2MnUpel8cbjGjpVSq3c1N7A+M00tNrucCdNsIDjOuvR4L9D/uxrY15LnO
         /EHHQTqgRZUZ+thOXxcFXb1D7LtFUQPCdQrOdFppb17Zvgmf4JbqK+DJ28TxvfvyZUNo
         3yinOE0EP3L8h62yKOFsAlj0+QDznJISQecE/pGIKwLuRYZMmrxfaZG9QURr9NRwVP9o
         /bIurwJV9fMfQ0phmvtStw2Vof7wLD8wsZ64Fz43hgj0GeGQt1OAb2X2KzZBs0gnUrnu
         ZAyE9dZTofHroo6NQi82eettnX7v3TPtgLZhD8JKWrc8X4rGfmTsAh9Al/dNydykF9Dg
         5WCQ==
X-Gm-Message-State: AJIora+aOOiBSo5tq4t/zN1geyOcDC42VNz6eZcjXCZ2IidMZlIsQS5v
        N15oVuzPLds3hOWwu3yENR/Xdg==
X-Google-Smtp-Source: AGRyM1urzjSQucayh8NCJZv3JprA/A3+73wLFE1N1Njobpt6/w1An+z2F0y8NwYofXs/BQkb/exTzA==
X-Received: by 2002:a9d:630f:0:b0:618:da60:4c62 with SMTP id q15-20020a9d630f000000b00618da604c62mr8404491otk.296.1658029301931;
        Sat, 16 Jul 2022 20:41:41 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id p4-20020a544604000000b00326cb6225f8sm3218010oip.44.2022.07.16.20.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jul 2022 20:41:41 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, vinod.koul@linaro.org
Subject: [PATCH 0/3] arm64: dts: qcom: sdm845-db845: Some i2c fixes
Date:   Sat, 16 Jul 2022 20:44:00 -0700
Message-Id: <20220717034403.2135027-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On my db845c (perhaps old firmware?) i2c14 is using GPI, so this enables that.
And while I'm touching it I added dma properties to all the geni i2c and spi
nodes and specified a default clock to avoid two warnings in the log during
boot.

Bjorn Andersson (3):
  arm64: dts: qcom: sdm845: Fill in GENI DMA references
  arm64: dts: qcom: sdm845-db845c: Enable gpi_dma1
  arm64: dts: qcom: sdm845-db845c: Specify a i2c bus clocks

 arch/arm64/boot/dts/qcom/sdm845-db845c.dts |  6 ++
 arch/arm64/boot/dts/qcom/sdm845.dtsi       | 90 ++++++++++++++++++++++
 2 files changed, 96 insertions(+)

-- 
2.35.1

