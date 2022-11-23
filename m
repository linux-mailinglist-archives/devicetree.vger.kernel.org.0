Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2976363DE
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 16:37:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238087AbiKWPhS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 10:37:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238609AbiKWPgx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 10:36:53 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DAE07C00F
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 07:36:51 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id i12so26087781wrb.0
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 07:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tousRRFV6m+cRpEg1qoKwA+d9M9IKdyUJXLLAyIiKj4=;
        b=WRQsucsQAzGhqOJW6aV8mxzL6q3NhmRUzGYjG2FnwrO544ooakli32NsNZmInjQ3k/
         4IvFu0PPgzxnE8vbh7h1F17GZ4x6JpW2Xi0Y2YNGLHMsMB2lKGU/a/bpoBrFBTcTz4uM
         GOculze2wkzTC5Qr9eTLaCuG3qkhRG6GYkGTzdecOAncddL733ZOVauQpqSUT6c/Hh8j
         acgL0rsr1GSKTDW+mW8kL+z9GRWqbl/0C88tMCq/yZystVs59eOfaPZayd1YgWpERz4p
         Dj7jpgwWNE9L5Ptzrdzdaoi7ol6pMzKTNTizCg1XcCI29CrUbBCuHnr9w0IxgwJQ1f0t
         aNmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tousRRFV6m+cRpEg1qoKwA+d9M9IKdyUJXLLAyIiKj4=;
        b=Lk6oNIpFoQxTEi7BxgtaAHXrLOcPkUlzVo1/qSnMws7IeBeNL5itEIhK19AGgHiG9I
         A/rYnVs6ehKFy9IiQQ+F8wncVLWb9hb2k64P7Ad17doidrglf7+wIpaYcmqeB3zP+RNo
         4/BBvdjonF6l+y453gm20oTGUtQmC5YV/fTg7GoHFjseUukjB4gdxFaDyM9Z+/9rhhP9
         Ejgm1sUZqtEsg7XJoHolUCJK4xsDmhXYnUo3xkwNxGtTGvq2Scyae9VN5Bz3B06d9Fj8
         A2+4oEk2UrmQ+8aACbvaQuGOOQjcJ0tkU6kwP3NUaoR5T2vfkXIvRiub0CHkIQXHfinf
         lXug==
X-Gm-Message-State: ANoB5pkTJiParGUcv7fFV+Xzc1GJSnnsew7OZdfkI5yEOMssquHWJ99u
        Yf5jxBwzMVxLvjOHp6V99sl5yA==
X-Google-Smtp-Source: AA0mqf7mg9zqFjTxtOELO5YsRLvK7455nzLSUNp6l4EauNpTIk9IjawiR3ijrsMdAd4IyuPyG9OXsA==
X-Received: by 2002:a5d:6486:0:b0:241:ba9c:cc65 with SMTP id o6-20020a5d6486000000b00241ba9ccc65mr17024694wri.443.1669217809978;
        Wed, 23 Nov 2022 07:36:49 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e28-20020adfa45c000000b00228cbac7a25sm17169833wra.64.2022.11.23.07.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 07:36:49 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 0/2] regulator: qcom-rpmh: Add support for PM8550
Date:   Wed, 23 Nov 2022 17:36:36 +0200
Message-Id: <20221123153638.721254-1-abel.vesa@linaro.org>
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

This patchset adds regulator support for the new Qualcomm PM8550 PMIC.

To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>
To: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org

Abel Vesa (2):
  regulator: dt-bindings: qcom,rpmh: Add compatible for PM8550
  regulator: qcom-rpmh: Add support for PM8550 regulators

 .../regulator/qcom,rpmh-regulator.yaml        | 26 +++++-
 drivers/regulator/qcom-rpmh-regulator.c       | 81 +++++++++++++++++++
 2 files changed, 105 insertions(+), 2 deletions(-)

-- 
2.34.1

