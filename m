Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5357B77E0D2
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 13:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244806AbjHPLwM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 07:52:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244869AbjHPLv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 07:51:59 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC5F2268A
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 04:51:55 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fe4ad22e36so60189895e9.2
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 04:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692186714; x=1692791514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WUxp4xDGfeAwcS28zr7IxYfQXNI5BkebZS1gNm5QJRY=;
        b=pW9lJq6wRUiJ4/JEhzw1GpAFHTDhrBtcJJpzr2N7WaVEB+SeBLEo9Y/DlEbj/Wx41s
         ZPjx7lk/TH4m9Iq+SLtEzSLCM98B32vKFfDiVa6wImOgo0AWopy580+cBoFI+nSj4ORB
         JFVKEet0tLXAgCtJq9PdOLspY/aiJ5hBvzQqQelNKGrI92HwvnqMJ2chkKEzTXwp8VhI
         /nHdscKRUOiOglCTLwuovKACWc/IjpYaeodXXCBmmE5ut7JVipqY17IBPcK89HdjkgIK
         H25lE3yKTm08B3PokAXhNhQ3qbClr2h9vo9j7Va7Zh/DCMrawh5mOw28uAop0sqblIqn
         Qugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692186714; x=1692791514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUxp4xDGfeAwcS28zr7IxYfQXNI5BkebZS1gNm5QJRY=;
        b=jfWfekxZ6jZTXOBuzFZigQ/bdc4OiXvX609H1t7GNTcsVT0XKPngVz0KymZQPu3uiP
         WAY5anohUQix11u/ZnLHXKH6NOXBkPQgJZWr2a6UPFEg5QZ6KNuArpKpIlZty6LBg+2L
         RQUksj4P2FneuHAJ009iHQjlO0vPn3IgQfVeOVu44dqEl2YHgfVJIiKlqUfRKcOpF9Cb
         VU8tWl5vtyTCwfSUUi4Bh8/mD/Q53TCIZwhz9n6nmffQWUmelMDX5EV7j2lZSW+/69BB
         TSx9aRedZM3bq3MYYqqLh58CeeYcUldxrNH6YOTv+cdC01aP7mu0aNerSnLbDfbHGVDe
         yG9g==
X-Gm-Message-State: AOJu0Yy6kMe3lU4tEy1z8JM/7p5CsXem4ApShb9JPJc8iImq2ifI5yDO
        eX9saF1Xk9sqlg8IAOX7RSTpgw==
X-Google-Smtp-Source: AGHT+IE/mdRqqXBlzx9+ClH9bKrcMBIUEXxq4luhrZZvrWUfk/knJkFDtiF9cSaffXivVPqxXu+TCA==
X-Received: by 2002:a7b:c044:0:b0:3fa:99d6:4798 with SMTP id u4-20020a7bc044000000b003fa99d64798mr1196587wmc.37.1692186714223;
        Wed, 16 Aug 2023 04:51:54 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id fk3-20020a05600c0cc300b003fc05b89e5bsm21280663wmb.34.2023.08.16.04.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 04:51:53 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        sboyd@kernel.org, luca.weiss@fairphone.com
Cc:     bryan.odonoghue@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 0/7] Add Qualcomm PMIC TPCM support
Date:   Wed, 16 Aug 2023 12:51:44 +0100
Message-ID: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

V9:

- Reuses glink ports {} definitions and locations per Bjorn's request
- Adds additional port @ 2 to 8250.dtsi as a result - Bjorn
- Drops logic in previous patch
  "dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: Add input and output ports"
  No longer required
- I've amended the names of the endpoints to match sc8280xp too - bod

Bootable tree
Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/usb-next-23-08-15-pm8150b-typec

V8:
- Makes pm8150b_typec::status = disabled by default - bod
- Greg merged the TCPM description and driver to usb-next so two patches less now.
  I've rebased this series on to usb-next using "--base=auto"
  All of the kernel robot dts/yaml checks should now pass against usb-next / a4422ff221429c600c3dc5d0394fb3738b89d040

V7:
- Adds R/B to "dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: Add input and output ports" - Krzysztof
- Fixes indicated, adds R/B to "dt-bindings: usb: Add Qualcomm PMIC Type-C" - Krzysztof
- Fixes indicated, adds R/B to "usb: typec: qcom: Add Qualcomm PMIC Type-C driver" - Guenter
- Fixes indicated, adds R/B to "usb: typec: qcom: Add Qualcomm PMIC Type-C driver" - Caleb
- Adds R/B to "arm64: dts: qcom: sm8250: Define ports for qmpphy orientation-switching" - Konrad
- Adds R/B to "arm64: dts: qcom: qrb5165-rb5: Switch on Type-C VBUS boost" - Konrad
- Fixes indicated, adds R/B to "arm64: dts: qcom: qrb5165-rb5: Switch on basic TCPM" - Jianhua, Konrad
- Connector ports/endpoints left inside of connector
  Documentation/devicetree/bindings/connector/usb-connector.yaml - Jianhua
- dwc3_role_switch_in -> usb_1_dwc3_role_switch_in
  qmpphy_typec_mux_in -> usb_1_qmpphy_typec_mux_in
  Both ports/endpoints defined inside of pm8150b dtsi - Konrad

  I modified the name of both so that the port/endpoint would be directly
  adjacent to the containing node in the dtsi file for code locality/readbility - bod

- Fixes newline indicated "arm64: dts: qcom: qrb5165-rb5: Switch on TCPM usb-role-switching for usb_1" - Jianhua, Konrad
- Fixes newline indicated "arm64: dts: qcom: qrb5165-rb5: Switch on TCPM orientation-switch for usb_1_qmpphy" - Jianhua, Konrad

- connector
  I have left the connector defintion and its ports/endpoints in the platform dts

  The reason for this
  a) Prior art e.g. arch/arm64/boot/dts/qcom/sc8280xp*
  b) The connector is really a non-SoC/PMIC component its something that is defined
     for your platform.

  I'm open to further debate on this topic:
  Link: https://imgflip.com/i/7kw6ck

- port@1 -> port@1 "arm64: dts: qcom: qrb5165-rb5: Switch on TCPM orientation-switch for usb_1_qmpphy" - Jianhua

- OF: graph: no port node found in /soc@0/spmi@c440000/pmic@2/typec@1500

  I left this as-is since the DT model we want is to connect the connector directly to
  the PHY for orientation or controller for data-role switching

  I similarly didn't put this hack in place to remove the warning but "it would work"

V6:
 - I'm dropping the previous V1-V6 log because the text is getting too long
   here's a link to the previous cover letter instead
   Link: https://lore.kernel.org/linux-arm-msm/20230501121111.1058190-1-bryan.odonoghue@linaro.org/

Bryan O'Donoghue (7):
  dt-bindings: mfd: qcom,spmi-pmic: Add typec to SPMI device types
  arm64: dts: qcom: sm8250: Define ports for qmpphy
    orientation-switching
  arm64: dts: qcom: pm8150b: Add a TCPM description
  arm64: dts: qcom: qrb5165-rb5: Switch on Type-C VBUS boost
  arm64: dts: qcom: qrb5165-rb5: Switch on basic TCPM
  arm64: dts: qcom: qrb5165-rb5: Switch on TCPM usb-role-switching for
    usb_1
  arm64: dts: qcom: qrb5165-rb5: Switch on TCPM orientation-switch for
    usb_1_qmpphy

 .../bindings/mfd/qcom,spmi-pmic.yaml          |  4 ++
 arch/arm64/boot/dts/qcom/pm8150b.dtsi         | 40 +++++++++++++
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts      | 56 ++++++++++++++++++-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 22 ++++++++
 4 files changed, 121 insertions(+), 1 deletion(-)

-- 
2.41.0

