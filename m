Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3ACF5659C30
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 21:38:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235517AbiL3Uhf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 15:37:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235657AbiL3UhF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 15:37:05 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AF0A1CB13
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 12:36:42 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id j17so15337109wrr.7
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 12:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/kLJ5lHKvxx3QexRjsAV7sgux6YMp9VcL3uLyWC3sas=;
        b=GmgBPK7N5XrvHY5DoYrMy2FV81NWmIKqff2ODxU5r76OguS4BNAASfeiMEGaN5WsiT
         ssyg+Q36ROpU7Sc4fbrxfiWH56vSm2Q2NZrWdT0EL9Cj6V5EpwcOEZi7goqw/hPISB8F
         IcYhlRIaXHEsCQ/wKy596N4toQb+2uAV2MaPVC6HbQUasKo1iWeP0fisJrpGrFgowR/J
         c/Vsx6OrWguAyOHx/N9JIfKHAEMxDZRwPiTC6KUvkdexlHyRL3BHXePFdpEgW2CQuD/j
         VDHaT3iOVYbRpvTvZTwi8zntFAqbvklf/YnenM5tcHjsKpVQ+iPrO3igRxQf5m8hmmFD
         h1Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/kLJ5lHKvxx3QexRjsAV7sgux6YMp9VcL3uLyWC3sas=;
        b=hKOup1/13bxoseCUKRdaSei3qBH00zli/M4GNjOjrNz9c0v+T/0Z2EniD62x5seXEx
         15XZKyAsJTAQPU9KsGyMyCpIXJBSHjmWyrKCEkkncmTPvysUSEnlIahct1oxcExvg+fD
         1CMBz+XUDUevx7bQ9ZWmKGwKSP7jHfzzNHRgrd2E1kU8nDiGAHXU9Y423gc1NaNZH/40
         84TxOYYpNVPl2l1OBT/B1/Y3i3g9JIsPPQAnC6A2r4tTQnh0is9VR5NLt9tMlV7WkfLY
         5KiYxvNIZ3Aq/L3zGA7IN2Xqo+mnX1PX/vUhTSto4mPhNGxNy8N12G4AeV04pTs2xzr3
         WyQg==
X-Gm-Message-State: AFqh2kqLy/KiSa468TWQQf6RJVdOcJ4haUqhIPoyje7uQBX9E6zHSnn+
        hKTAK4vI/eDRcFMKWny3RLtq+A==
X-Google-Smtp-Source: AMrXdXtVXjOiXE0wFqIv1oYwbc7kjWGFetU32LKDpxTMOS82xkA3wae3Gku7bZJtjahYog9zzkZFDQ==
X-Received: by 2002:adf:ba10:0:b0:263:9208:2dd with SMTP id o16-20020adfba10000000b00263920802ddmr25267085wrg.18.1672432600696;
        Fri, 30 Dec 2022 12:36:40 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c10-20020a5d414a000000b0024242111a27sm21686946wrq.75.2022.12.30.12.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 12:36:40 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Subject: [PATCH v4 0/2] pinctrl: qcom: Add support for SM8550
Date:   Fri, 30 Dec 2022 22:36:35 +0200
Message-Id: <20221230203637.2539900-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds pinctrl support for the new Qualcomm SM8550 SoC,

Changes since v3:
 * added Krzysztof's R-b tag to the bindings patch

To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-gpio@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Abel Vesa (2):
  dt-bindings: pinctrl: qcom: Add SM8550 pinctrl
  pinctrl: qcom: Add SM8550 pinctrl driver

 .../bindings/pinctrl/qcom,sm8550-tlmm.yaml    |  163 ++
 drivers/pinctrl/qcom/Kconfig                  |   10 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-sm8550.c         | 1789 +++++++++++++++++
 4 files changed, 1963 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sm8550-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sm8550.c

-- 
2.34.1

