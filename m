Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D14EA5AE7AF
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 14:20:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239872AbiIFMTz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 08:19:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240204AbiIFMTQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 08:19:16 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1620D7E318
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 05:17:03 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id f11so3064684lfa.6
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 05:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=atG6Q13qT72aqye5DdU2XHAaxI/9PkvW9OECNhOqjGs=;
        b=jsssXtnc0wcmQvENwTPaWWUYWwq54OmJYb0Ho39eO7oBDHnmlEiTs5LXHXcLDUb7UY
         PIjd2mQnLCJqb9tSCf4yWwHa3JKa5hV15HEHUKvZwE0wdxNIvgPJXeB6zJR8KLwI6YXD
         9EdkPu1gWe9nPoGy7/H6xpV/aLW+5Tw1u3A2nA/RI6dWMY5ve+tqoAvKawkF1qUG72qH
         YD+Hf6/8f2CjxZom00GZt0Ut9BCOebHg0ct0rOMQOQeKMDZ9NEWhMFD5ZCz3mvSD82n9
         9T6oY4e18tssNSfYp+bZD0MSzYuLMCcLcI8hmSggWjO22fpeQZny2IMQDz1Ss96jP89r
         mcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=atG6Q13qT72aqye5DdU2XHAaxI/9PkvW9OECNhOqjGs=;
        b=bbVxlA2zq3fV2PtjwCGuig1IOJWDYXT0cA8JjVeJd8sXK47f7stmtc3hq/ZZyocQHd
         qE7+oo50VVvQjDNCSHMTKXGtb4n3dNuBJ0VlFDPHQXrHGfw50H2A/9z7+3bZ0pXaaTUN
         477Hl/k3nsXuHSWOoZQV1sZu1rXk9z+GPtgc6p0QffuP3Me7+8xSwGGqTrkZaZHAr7cO
         EPXFTORxCqruh3hx2VxX6DvEZOEJW8sBOyR3rG1GHn7h1lghv8Rc9InqAcXw8/oo4CVG
         Xn1GfUEWm91gv8q5QxSqX33trbrXnyatPw6/xHYxrbXs3N03IgB0A2HDr9skhvjPreKb
         eP3Q==
X-Gm-Message-State: ACgBeo25QdIw8WIpzOMd2Tjrfj5P5n6M5GKuASm3SM8O5oYv+bcuj5ER
        fjWSO1NcmU4Ide/wdKT7z/V+hw==
X-Google-Smtp-Source: AA6agR6kwAX2CNe3gZUiQIJU1EqskO4sjnTjjKHe/QSrhc51J/bbUCKpBgdWxTfm+S5ucS/V9tMBUw==
X-Received: by 2002:a05:6512:e99:b0:48b:2ba1:1511 with SMTP id bi25-20020a0565120e9900b0048b2ba11511mr19685247lfb.0.1662466618788;
        Tue, 06 Sep 2022 05:16:58 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u17-20020a05651c131100b0025df5f38da8sm1882802lja.119.2022.09.06.05.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 05:16:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/12] ASoC/qcom/remoteproc/arm64: Qualcomm ADSP DTS and binding fixes
Date:   Tue,  6 Sep 2022 14:16:43 +0200
Message-Id: <20220906121655.303693-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Dependencies/merging
====================
1. The DTS patches are independent.
2. The binding patches should come together, because of context changes. Could
   be one of: Qualcomm SoC, ASoC or DT tree.

Best regards,
Krzysztof

Krzysztof Kozlowski (12):
  arm64: dts: qcom: sdm630: align APR services node names with dtschema
  arm64: dts: qcom: sdm845: align APR services node names with dtschema
  arm64: dts: qcom: sm8250: align APR services node names with dtschema
  arm64: dts: qcom: msm8996: fix APR services nodes
  arm64: dts: qcom: sdm845: align dai node names with dtschema
  arm64: dts: qcom: msm8996: align dai node names with dtschema
  arm64: dts: qcom: qrb5165-rb5: align dai node names with dtschema
  arm64: dts: qcom: sm8250: use generic name for LPASS clock controller
  dt-bindings: soc: qcom: apr: correct service children
  ASoC: dt-bindings: qcom,q6dsp-lpass-ports: cleanup example
  ASoC: dt-bindings: qcom,q6dsp-lpass-clocks: cleanup example
  dt-bindings: soc: qcom: apr: add missing properties

 .../bindings/soc/qcom/qcom,apr.yaml           | 85 ++++++++++++++++---
 .../sound/qcom,q6dsp-lpass-clocks.yaml        | 30 +++----
 .../sound/qcom,q6dsp-lpass-ports.yaml         | 30 +++----
 arch/arm64/boot/dts/qcom/msm8996.dtsi         | 10 +--
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts      |  4 +-
 arch/arm64/boot/dts/qcom/sdm630.dtsi          |  8 +-
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts    |  2 +-
 .../boot/dts/qcom/sdm845-xiaomi-beryllium.dts |  2 +-
 .../boot/dts/qcom/sdm845-xiaomi-polaris.dts   |  4 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  8 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 10 +--
 11 files changed, 124 insertions(+), 69 deletions(-)

-- 
2.34.1

