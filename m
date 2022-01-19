Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5951D4941B9
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 21:32:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357315AbiASUcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 15:32:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242724AbiASUcB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 15:32:01 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AA28C061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 12:32:01 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id m21so3362793pfd.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 12:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vOeM/NfwNyAWZgDAxYZ3pnAqphu80pQ3bmYhNquSXxA=;
        b=U/OKBUGOMvQCALWUiV+6YQB+7maHueBtaXx3fEl8TvxN4K2IVKdiyTIC4D+qSJv97H
         cLd6bABXU8cph6fil8Vb0DNDwU8dNBFVOd5GOvXu3d42KbuXqbK0j+vq6n0Ffilk06vY
         K1YSlQEjWgwiTJhvPpJOCWeuJV5ZaPjwJKerS2q+SWqRJQEVMxWiPDAUDt2e/IwJCDhd
         DjvI0amnjK/+K0AyTJPlYjWALQsR9zxhHvoi9jZ4rZ6hrs9gxljPASpCOHvn3O5HX0up
         cE+qIXpVoNqrd1Kqz2A3XGKM3Y2deKseJHpgDCxNsZ7avW4PKAMHnUFVaxb1trebIxTq
         ej5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vOeM/NfwNyAWZgDAxYZ3pnAqphu80pQ3bmYhNquSXxA=;
        b=wgK8FJY1/Z/dPdzp4W/+eMn3795nQQP0JGypqPBW0O/lXnSKcICqZ30wuGqxOMuxXx
         5VaqALBRFWSbSWLSN6CmJ7hsqSQJjjIwwmnFAV2tJ6OAJEriptwUdn856TTwKL5EDMux
         /j2GoXdDvqvCIoZN6BCcJu37EdchoF+k7UhWj/8WDCYB3CuNIPvVFqGZFz5uL6kNc5MU
         Ei+SkSH94ZxCZ2maGqmxrFOhejFwROwO+go6OJ7lDYUV7xJLVbyszjR8VTf6F4XJlFI1
         m2dQkZRwUOsBJHjHP0/LhIAP2MczK/hUXhmSH1Kw6k2iX2zztDEBoBI+lbxQgs4gmrJ7
         8UrQ==
X-Gm-Message-State: AOAM533vObmUHQ1/z8d/sKVyLnOyK+lrGVJZa+aSis8q2tZgc1njkXIR
        xXsPvk/G4cd8BlCphAH2mUhqMA==
X-Google-Smtp-Source: ABdhPJxZzDg+q2pM4sd+uTHtumgKdp4sfYCfVUs+IxF5l1SUpXnMYgxA+dEZFA64UoGOULaTrl6U3A==
X-Received: by 2002:a62:17c7:0:b0:4bd:9fb9:f025 with SMTP id 190-20020a6217c7000000b004bd9fb9f025mr32523713pfx.35.1642624320615;
        Wed, 19 Jan 2022 12:32:00 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1f3a:47e5:8bff:a3f8:a494:acd0])
        by smtp.gmail.com with ESMTPSA id x13sm6807552pjq.43.2022.01.19.12.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 12:32:00 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux-gpio@vger.kernel.org,
        linus.walleij@linaro.org, bjorn.andersson@linaro.org,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Marc Zyngier <maz@kernel.org>
Subject: [PATCH 0/4] Add support for PDC interrupt controller for sm8150
Date:   Thu, 20 Jan 2022 02:01:29 +0530
Message-Id: <20220119203133.467264-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the support for PDC interrupt controller found
on sm8150 SoCs from Qualcomm.

Here we add the device-tree bindings, pinctrl driver support
and the dts support for the same.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>

Bhupesh Sharma (4):
  dt-bindings: qcom,pdc: Add compatible for SM8150
  pinctrl: qcom: sm8150: Specify PDC map
  arm64: dts: qcom: sm8150: Add pdc interrupt controller node
  arm64: dts: qcom: sm8150: Add PDC as the interrupt parent for tlmm

 .../interrupt-controller/qcom,pdc.txt         |  1 +
 arch/arm64/boot/dts/qcom/sm8150.dtsi          | 11 ++++++++++
 drivers/pinctrl/qcom/pinctrl-sm8150.c         | 21 +++++++++++++++++++
 3 files changed, 33 insertions(+)

-- 
2.33.1

