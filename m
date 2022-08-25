Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D952A5A111F
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 14:54:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240764AbiHYMyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 08:54:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239154AbiHYMyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 08:54:16 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C3635C979
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:54:14 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id d8so15714839lfq.0
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=S3SutAB1J4Kb12rqzo8+qQuuCiQhbu1bFQAHyt9SB6M=;
        b=dYjtx8g4GgRergvoaiFBiWUr5mp8xRc3ajTrabyMa3BOgh/UVTKQun5yXKMMauJRMc
         0+eMWOZNpd+3omG8H8DsIx+7J/08M1obW4O6HuN1/6XLZ7QuOwCY1q+xfn6tJ+0Xi14+
         ksNb9HYycX9JV7LSoOaOjrls83z6BtK7RxIHe3ALGiTFz8yuJpE4sPI1e86PN7lUIzGK
         S8tSB5c0ljyYXthRQu2jA7GyvpLd+heV1qrFqZCGJBjiEVJ6Vy6J+YZ24ODQg1o2U+IP
         Dze5Q7iBwMGW9rsKKt87+CJsHJHv0w9JrU4MyWUPP+KZqYEF+MoQG0xlpjAQYO0XCqSZ
         jISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=S3SutAB1J4Kb12rqzo8+qQuuCiQhbu1bFQAHyt9SB6M=;
        b=b8hZzYshtXzifW5018GqiyRxathycgmfKlxT52EKwnPByp+8i0y3TSrHPHxuk5Yudk
         gdJTwd9gAll69RIQ9vidgUsc+Z6L/sl9xtsHf0qwGuvFqQqEso9Tqq/Ku13xIaAfGN4i
         RVXEUO3avUeBKZ+Rr6ozPsRzKlkB9CydYKjYte6Dw+EXLakRtRwYTyk7cs1Nu/9FpKji
         HMbpg5Ft6XGee4VTK/S2rotPgoU7gLYvNQHlBx8RAyZh8lFCmKoyI+To6uN5TmmoK41B
         r9Vc9wogNb9EJwRQ7LdkVsNDFku4PKDCaKdZ2x5RkJq3baKm4LqkaJRIn3PdBgaPHEbl
         jVFw==
X-Gm-Message-State: ACgBeo32UswAhCpQZ7EgCJdlQww6zbgghiuDI36gG9RNUpJapuAcvQzd
        1a84C1YRtqQdMv56nT9lVTnTEg==
X-Google-Smtp-Source: AA6agR6Beh4p+rci4zh/hhXKnzTrbCflB3h0vAEJeLxMjM0OmsBCjw8pY7pJZ0BeP5ai02rnqARMJQ==
X-Received: by 2002:a05:6512:b08:b0:492:87ad:5f5c with SMTP id w8-20020a0565120b0800b0049287ad5f5cmr1269359lfu.293.1661432052713;
        Thu, 25 Aug 2022 05:54:12 -0700 (PDT)
Received: from krzk-bin.starman.ee (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id z14-20020a056512370e00b00492e3a8366esm494304lfr.9.2022.08.25.05.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 05:54:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND - dt 0/2] dt-bindings: left-overs for DT tree
Date:   Thu, 25 Aug 2022 15:54:08 +0300
Message-Id: <20220825125410.232377-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

These were sent some months ago, then resent and still were not applied.

You already reviewed them (I removed your tag here). Can you apply them to your tree?

https://lore.kernel.org/all/20220720163720.7099-1-krzysztof.kozlowski@linaro.org/
https://lore.kernel.org/all/daaf6ad7-6204-2a13-442b-05068d29e734@linaro.org/

Best regards,
Krzysztof

Krzysztof Kozlowski (2):
  dt-bindings: nvmem: qfprom: add IPQ8064 and SDM630 compatibles
  dt-bindings: leds: qcom-wled: fix number of addresses

 .../devicetree/bindings/leds/backlight/qcom-wled.yaml    | 9 ++++++++-
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 2 ++
 2 files changed, 10 insertions(+), 1 deletion(-)

-- 
2.34.1

