Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDFC47434C3
	for <lists+devicetree@lfdr.de>; Fri, 30 Jun 2023 08:13:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232068AbjF3GNW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jun 2023 02:13:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231984AbjF3GNU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jun 2023 02:13:20 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C578B2686
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 23:13:18 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b6a1fe5845so22840891fa.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 23:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688105597; x=1690697597;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WC1JZSm8n/7fgGnfCjTTdcjDx3PZDDpy8WifnQvQLtg=;
        b=gS+sbkJ5gZ3V/lezYOww3n/sJ36JPaviai+3pLq5XW5YApqg//HcSGytdtlot1IAjD
         wLr+JaBTceXgxMkiqclhtIUB7bj5Rl8CFgwj7/ApzRp2hjwelelApXJ3rCTqqXZ+hqZr
         DuIGY8jJCfA3gI2UjSz27jwOVyIsjfEiehNV2CkZ/8fIVRvG7YgWsA6TWeYwvHhhGcC4
         wjBsCXFxLwddUh+torkUfQQcaiOuseftmLkqkvQe9OvQLq8sM+Pov/6NezfV4wrQ1roK
         WDdZZ5hWL5EytSAy2WNHXGl7zNMa9QidjkY2Dqn322hgD2ddWl9YJDpRfMUPkN8czt8a
         zQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688105597; x=1690697597;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WC1JZSm8n/7fgGnfCjTTdcjDx3PZDDpy8WifnQvQLtg=;
        b=EIuujbNp99ZnhSguuoxcCSWbNa01otHcwLL2cTHB1dQtntuXCaIVvtdCEeC18qj2tB
         HlRk5hTdIKRLWy4CQUXas9VpAJJecd2ZtNKTClxD1XOqdzxPFzOrPhy1RUQ0aKOxa+ru
         Wy/kDMqvVld+zVNcTJb4KY0YfwHoKcoqeuGoJnQ/qAH0rNq9K556j9QVRW/XAN+5WnnK
         pa6tlVk6w2K+CU9En3SiX67TWe20bmEAMK1pvaODqLxV9niw4Ct//6PMIVT59+QFbOZk
         UrthdwatqEiZ9iWMzJAgNEEFOBteudTkUN5af/0UfEe8009Tpq06eQccHmElOkcMjdC9
         9sCw==
X-Gm-Message-State: ABy/qLblO+fVK+n3xHnTRS1tKLxokjHa2Tt/9Uc/CXFp3TuoK/AY6dMg
        pdTrZeiLevFLnWQhVbr5rpYiAw==
X-Google-Smtp-Source: APBJJlHx4vqBt3MC9hQBZ/MHHeeyV2wdQQMNRTLxxa7Lp6fNMonF2FxOvTqdkf3sDTqEJEc2XuV82A==
X-Received: by 2002:a2e:9943:0:b0:2b5:8204:ec96 with SMTP id r3-20020a2e9943000000b002b58204ec96mr1359167ljj.42.1688105596994;
        Thu, 29 Jun 2023 23:13:16 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g22-20020a2eb0d6000000b002b6caeb4b41sm505582ljl.27.2023.06.29.23.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 23:13:16 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 0/7] arm64: dts: qcom: sm8450-hdk: improve thermal monitoring
Date:   Fri, 30 Jun 2023 09:13:08 +0300
Message-Id: <20230630061315.4027453-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Improve thermal monitoring on 8450-HDK board. First set of patches fix
c&p typos in PMIC include files (mea culpa). The rest of patches enable
ADC-TM usage on the SM8450 HDK.

Dmitry Baryshkov (7):
  arm64: dts: qcom: pm8350: fix thermal zone name
  arm64: dts: qcom: pm8350b: fix thermal zone name
  arm64: dts: qcom: pmr735b: fix thermal zone name
  arm64: dts: qcom: pmk8350: fix ADC-TM compatible string
  arm64: dts: qcom: sm8450-hdk: remove pmr735b PMIC inclusion
  arm64: dts: qcom: sm8450-hdk: define DIE_TEMP channels
  arm64: dts: qcom: sm8450-hdk: add ADC-TM thermal zones

 arch/arm64/boot/dts/qcom/pm8350.dtsi    |   2 +-
 arch/arm64/boot/dts/qcom/pm8350b.dtsi   |   2 +-
 arch/arm64/boot/dts/qcom/pmk8350.dtsi   |   2 +-
 arch/arm64/boot/dts/qcom/pmr735b.dtsi   |   2 +-
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 288 +++++++++++++++++++++++-
 5 files changed, 291 insertions(+), 5 deletions(-)

-- 
2.39.2

