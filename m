Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 440B752589A
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 01:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359614AbiELXn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 19:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359598AbiELXnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 19:43:53 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D62BF289BDB
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:43:51 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id g16so8396561lja.3
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nkTe0BL25IlwZDFGto+x4IpihpB/5aYgwtPkphB5qWs=;
        b=fjEBep4L1zmaVmL/MIZhX4ZR5OVhEekpHpvt1haeSRNEquaW+uUX4VPH7t6eWopF6X
         Lf93vrQFhFJqVvDK3JNcAbTpp3jfMqKYyDAfE9hg6G7UKSNdxY8fH+S8xnGonJrokq2N
         3JAXrhyXI3XszG9XnB5VUktSXi5uOY7tVOMMxKdUy6BitECjwO9Zy2hk46oDtx6GHrzR
         EPbeMsxKfWDP2ApDuUJ+ys7Pag9Cn2pskR73n6/96JzP4CDFKlDGfOAdHOSqzdWKHXbX
         rM4EW0mx22/f8k7Q8vvFeQkC6b6H7KbBnP6FTkOfIlYXOwAOxCFi8YcOjXqzw/T8Pv76
         eK2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nkTe0BL25IlwZDFGto+x4IpihpB/5aYgwtPkphB5qWs=;
        b=ob13So3HrW0ndL//OK9nXD/npsS0bk3OUANMuZ/x0PUu18hTA4flctb/xUrnukdfWr
         Ht0sNUyqRVgPumQaCn0Ik7iVhby77xmw0unyNwAzp+BbX6+uPWO+8zLVlzNxm69aubSX
         Jt7HSKexZWlBQEtMNqnNxcMDzUJ2Q3oydBMpelamOkjZkoKsUIz/6Ju0JOJp94YAXyZl
         jCZ0xBcuIwnEKgE64sy8YpxZlKtLrK1NLFqiZxFbJYjoow39rsqanCUCiQ1T2ShXsBfr
         DrLzqb51DExylUfAR7q6k0DzdOHn4/mW5ncATNZi+gwyzpU8DvV8FerHLzwi++3qSVmi
         YFqw==
X-Gm-Message-State: AOAM530+Z4bdXaRTAmnx+91v/ktM/Mtty9BE6lt7SJmEsZBoZ+hCLpAL
        X4iFn+/NwnKLQsybSWV0k4x9xQ==
X-Google-Smtp-Source: ABdhPJyjy3nqdolWyMZ6CqHc0GW6BQWh4op5X9swaS00YII95Cv+GGD2b++Pe3JJU2LFCZw2RJoYnQ==
X-Received: by 2002:a2e:5845:0:b0:250:7305:1b05 with SMTP id x5-20020a2e5845000000b0025073051b05mr1433056ljd.510.1652399030170;
        Thu, 12 May 2022 16:43:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u10-20020ac248aa000000b0047255d211b8sm129976lfg.231.2022.05.12.16.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 16:43:49 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RESEND v2 0/8] arm64: dts: qcom: initial Inforce IFC6560 board support
Date:   Fri, 13 May 2022 02:43:41 +0300
Message-Id: <20220512234349.2673724-1-dmitry.baryshkov@linaro.org>
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

Please excuse for the possible duplication, resending the patches
including DT mailing list and maintainers in the distribution list.

This work is largely based on the previous work by Bjorn Andersson ([1])

Changes since v1 (mostly based on Kondrad's review):
- Also disabled dsi0/dsi0 phy in sdm630.dtsi
- Removed the clock from BAM DMA devices rather than disabling them
  completely
- Replaced numbers with symbolic names for interconnects in sdm630.dtsi
- Switched to "qcom,sda660" as a fallback compatible string
- Added dt-bindings for the qcom,sda660 compat
- Removed extra nesting level from the adsp firmware path
- Replaced numbers with proper symbolic names in the board file
- Added chassis-type property
- Changed the order of blsp entries in the board file
- Removed spurious newlines
- Changed the order of regulator properties
- Changed the DSI data-lines to list all four lanes. Still use just
  three lanes for the adv bridge (and describe the reason in the
  comment)

Changes since Bjorn's v2:
- Disable dsi1, dsi1 phy, GPU by default in sdm660.dtsi/sdm630.dtsi
- Fix qusb2phy ref clock
- Added USB2 host support to sdm630.dtsi
- Renamed DTS to follow SoC-vendor-board pattern
- Fixed vph_pwr voltage
- Removed extra/unrelated comments
- Added keys, USB2, USB3,
- Added configuration for the attached HDMI bridge
- Enabled MDP, MDSS and DSI0/DSI0 PHY devices
- Removed uart pinctrl and /reserved-mem nodes (present in main dtsi
  file)
- Added card detection for the SDCC2
- Disabled BLSP BAM DMA devices, they make the board reset during boot

[1] https://lore.kernel.org/linux-arm-msm/20210825221110.1498718-1-bjorn.andersson@linaro.org/#t

Dmitry Baryshkov (8):
  arm64: dts: qcom: sdm660: disable dsi1/dsi1_phy by default
  arm64: dts: qcom: sdm630: disable dsi1/dsi1_phy by default
  arm64: dts: qcom: sdm630: disable GPU by default
  arm64: dts: qcom: sdm630: fix the qusb2phy ref clock
  arm64: dts: qcom: sdm630: add second (HS) USB host support
  arm64: dts: qcom: sdm630: use defined symbols for interconnects
  arm64: dts: qcom: sdm660: Add initial Inforce IFC6560 board support
  dt-bindings: arm: qcom: document sda660 SoC and ifc6560 board

 .../devicetree/bindings/arm/qcom.yaml         |   6 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/sda660-inforce-ifc6560.dts  | 459 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm630.dtsi          |  85 +++-
 arch/arm64/boot/dts/qcom/sdm660.dtsi          |   3 +
 5 files changed, 542 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts

-- 
2.35.1

