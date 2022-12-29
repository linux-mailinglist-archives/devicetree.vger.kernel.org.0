Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4B0D658C74
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 12:59:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233151AbiL2L7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 06:59:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbiL2L7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 06:59:36 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6969D13EB3
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 03:59:35 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id y25so27224391lfa.9
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 03:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gEsFbKUIu0XVvlqZcexvpdadohfi+18CrCsQnK6kHVo=;
        b=pwLPTDeNfutcTpD97wfs9uklsc7z7CN5BJa9bHyW+Bj0FlXcZVAZjRRRyyGX7W3Aze
         Pa133yepsSy643bjjEXJni7xZ2g3hoVJpqpmeQfC/A3on858EUETMzytPhywhUqjBnN1
         Kk0rt+5yW7CRwGFydXMcK6UtJn2q/0y/R7pYuSGZRSoxzEzT0Coaq+UFYWKGT+j6nP4b
         3sJE6ea4ipDvxT3rxxTY8UtoExGCHYHEL0VKyQPvFXL2d0rFYP+VWhtA+QBcka/Gsnfx
         c0iYyHOzfD9qTbSuRuNOX8m8fMkbFRgJHEY7wl1IXGwell/ONuqwIq94Mer5SRi0CIrf
         3Oog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gEsFbKUIu0XVvlqZcexvpdadohfi+18CrCsQnK6kHVo=;
        b=ZPIfE3H5W8wVsPUp4Ja0H6mE0pFYcqYimS5Blzx63JRbFn17/L0YW3zw0k9VCGz/DE
         39rFE4ubkjv6nDIbqwpAetR+Na9th590b0+SjRw9rL3ZH10f/bYaiafa1iKmis3gWBQN
         w+bsh15B9GJ3InFyRvMelXg4dcUldKoQBXOhmSZpU7lb5CNCVgRUmoBdnwni6Z6JRcLX
         ZwR8Qv+ygJUM0wdcJ5ABFHpLLmE2+jspplOgJzqZIeLuaq5NmIKulF1Kau1FADhITFjB
         iv0H26EQU+QRw5Hs3YkyFlfxMCDiZ6Q3G7Qt48qhJWkTIa5hzdtTPiQSh5A5WPx1C84J
         pK4A==
X-Gm-Message-State: AFqh2kpuSGHsugiaVBj5aFR1JVHmqxajyowQEHZearrEM0H8KcF8XiTu
        wPFcPVVy9u73mLBR5UMNJEsFBSM6ZKmjvxUZ2NI=
X-Google-Smtp-Source: AMrXdXugQ6tsD415QdLyqJf7RmcCWDNO7Rfdbo/Hum7s+PEBIynbUG1Q1GCUFNzUKtcDximBmyiiqQ==
X-Received: by 2002:a05:6512:3288:b0:4a4:68b7:f87a with SMTP id p8-20020a056512328800b004a468b7f87amr12419339lfe.30.1672315173741;
        Thu, 29 Dec 2022 03:59:33 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n7-20020a05651203e700b0049464d89e40sm3006313lfq.72.2022.12.29.03.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 03:59:33 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] phy: qualcomm: pcie2: register as clock provider
Date:   Thu, 29 Dec 2022 13:59:30 +0200
Message-Id: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
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

On Qualcomm QCS404 platform the PCIe2 PHY provides PIPE clock to the gcc
(Global Clock Controller). Register the PHY as clock provider.

Changes since v2:
- Removed extra empty line in the schema (Krzysztof),
- Dropped dtsi patch accepted by Bjorn.

Changes since v1:
- Dropped 'phandle to' from supply descriptions in schema (Krzysztof),
- Reordered clock-related property definitions in schema as suggested by
  Krzysztof,
- Dropped extra empty line at the end of the schema (reported by
  Krzysztof).

Dmitry Baryshkov (2):
  dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
  phy: qualcomm: pcie2: register as clock provider

 .../bindings/phy/qcom,pcie2-phy.yaml          | 86 +++++++++++++++++++
 .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
 drivers/phy/qualcomm/phy-qcom-pcie2.c         |  6 +-
 3 files changed, 91 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt

-- 
2.39.0

