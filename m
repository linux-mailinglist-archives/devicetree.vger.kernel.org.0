Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DF3568B929
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 10:59:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjBFJ7G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 04:59:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbjBFJ7B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 04:59:01 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EAEECC26
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 01:59:00 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id d14so9779022wrr.9
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 01:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QjrenaW0UoS+7aeZaLJfjkMywdu9OcZmza4GA92KqhU=;
        b=BdsqYPuquByq/fZMeZEU46FAGdmns0+K+kVSr8LUz6V8HyFKIMMdxXqSgzK8bmTtwX
         ZHjJbl2TZqjvzHU+MP/HQXeBugOyniaFYKdhxHM5m0ObUdWJmLj6UXLifdUz/RRKVC/r
         fI8jyS4ERR5tmSmLtLrfX4M6N+gdprXPuEQGjHIecn9qastU52WU4vD40lyaKRVSqY/5
         El+IP7sk17yhnXMoau6gFOLrWSUjumafKtCq/NV6Eszlajjsf43bPimVU11GtpUQU472
         UVuGY256W99xZj2dHkshY/NJebRI5UHgfkU5luu+2ylm5wxCUuGhyeyhVSTMDdoQkQWp
         2Skw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QjrenaW0UoS+7aeZaLJfjkMywdu9OcZmza4GA92KqhU=;
        b=QW04f8tV007OfndQdM+Rp1aoDKG7Fs9UmQtEo8BKkOhnXTomRosAIX9AxQhY/E7k9L
         XExf68QpLNNBsxFwRyQ71iTDAVtD2zEcKXqG/8impZDHhc5vIZ3rwJPvHF2wgXGvwT1K
         kzIYOmByeH+hIRJPYalbmDOVHrL5lhBbsOMBOUMLM2SoRZU4wJi2sOTOvxAmJA3wxkrI
         /XbPQzEkbqXBs0ZA5IpLPIDH7ZOdqEqY4xPHGIssmg6lOxNu8aKn9hxLOUXpQt0eKzla
         B8PenVaHulddJo12FoZsW7gEvWq5ZV3RYn90fG4tvE1X25okVbmgMFcaNMBweSnbWj6L
         ChjA==
X-Gm-Message-State: AO0yUKVd/dsN/eExv+nu+lvW3bUPVA2u5Qaj4WuuHO9Psd1KlvUh8Ye2
        yrKgMjLSecML136Bh3ada2WGzA==
X-Google-Smtp-Source: AK7set9zMlWqyCjnJTiT9EC8eFVwaiTRfh81JnSuFOVKXPMjU7KCv01VroQXJAHxuofdEmblLO49SA==
X-Received: by 2002:adf:e192:0:b0:2bd:fa1d:5291 with SMTP id az18-20020adfe192000000b002bdfa1d5291mr21204836wrb.67.1675677539111;
        Mon, 06 Feb 2023 01:58:59 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id i14-20020a0560001ace00b002bfb8f829eesm8839304wry.71.2023.02.06.01.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 01:58:58 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] phy: qcom: qmp-combo: add SM8350 & SM8450 support for
 combo USB3/DP PHY
Date:   Mon, 06 Feb 2023 10:58:55 +0100
Message-Id: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-0-ed849ae6b849@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF/P4GMC/x2Nyw7CIBAAf6XZs5sgqKi/YjwAXYSkPMIWo2n67
 xKPM4eZDZhaJIb7tEGjd+RY8oDjYQIXTH4RxnkwSCGVkOKCa6nRIaerOgvslddGJmFni3NFV5I
 tWMMXldI3RV6ftJcwYtYwoW0muzByuS/LkLWRj5///fHc9x+qEC4EjQAAAA==
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatibles and add missing tables to support the USB3/DP PHY
on the SM8350/SM8450 SoCs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      dt-bindings: phy: qcom,qmp-usb3-dp: document sm8350 & sm8450 compatible
      phy: qcom: com-qmp-combo: add SM8350 & SM8450 support

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 170 +++++++++++++++++++++
 2 files changed, 172 insertions(+)
---
base-commit: 27bc895137496cc5f83c40c58b1da2504ff04a0b
change-id: 20230206-topic-sm8350-upstream-usb-dp-combo-phy-33793ef747f2

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

