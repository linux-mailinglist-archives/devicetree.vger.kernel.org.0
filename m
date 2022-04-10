Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A69E4FB038
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 22:51:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238989AbiDJUxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 16:53:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233918AbiDJUxm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 16:53:42 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 498C454BFB
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:51:30 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id u19so8239490ljd.11
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XP78OVn+EySMYvkvHr42vemVzwzDRMsxq8nEH8XnqFY=;
        b=eCYEcTF3sLOiVzrOT7pbB7jQqTPyqpYe/7jhAuP9sKK9ANMYEkpXrrXOFduoxkHaVC
         2s+IJMKd+eJ1dzc4C2KkPytInjh3ClPAHW0vYHKg283/JPg3g/SnxEigKvIsyCPpDsM+
         h1Q9AzohX4qP3yHJucd301KGPUHP6zGTYvaZ7YVSZSBHNlgkf1FnS+9LGswuHgjo7LLO
         1+lyN1DpuYkuFi/ItLAPrXhZXol4TdvFTnWD/a4PPf8QvbwkzvLqaJkpCnwEFNhFs9ru
         8HVLeeHGJpguQSdsijW0xM+utQDWK2E4OpeqavS+9k794hmtjknz3suWQV+2X4Q/TxbR
         YMIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XP78OVn+EySMYvkvHr42vemVzwzDRMsxq8nEH8XnqFY=;
        b=bQ1GN9ZAbi77HEQtG+xfZseKwyhIlYa4Pn1/tbLnGGVkLngBkGprPiWgjBbdN2jmSA
         F2bqxyuBrm4Ej3kaRv/Ub1Br2ynzRnRUL+WXVOrmyChP2mxPZPmM2CGSeWGID+8W5wWM
         sMVIbTs6XKHUXYCzc1WpniMHy31IXgtKYmkyY0PrEabQWKBKdE80kXsJI755bjMWEaOO
         QsSvRnMqzE5Sk+mrm7JsmT8nNoqS+8xO496TGIBMoVCp0PnUSeokrR2m75twH4KM/x7E
         KNbi6y1qV8eLHSTCoE4vMv8COuNdFnj8yaGI92Vclfvf+3Yp5HIlYdAFgQN1s034ieEw
         Z7ZA==
X-Gm-Message-State: AOAM5319NVOQzuPO5Ioa+RYWTeduVnGI/bqBfAKs36WEETTzDTh45SeM
        uu1Fs3+ivbQpZOMYWwjbZjOWiw==
X-Google-Smtp-Source: ABdhPJwr/IUolmG+Hnh/ET+ZaAkdk8RTwVJXtPdiTcl1Jkfw1tLts+55b1NXdP2x3rIkMs16aFxPJA==
X-Received: by 2002:a05:651c:10b1:b0:24b:2139:471a with SMTP id k17-20020a05651c10b100b0024b2139471amr18337142ljn.12.1649623888532;
        Sun, 10 Apr 2022 13:51:28 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t15-20020a19910f000000b0046ba6b39d14sm85244lfd.10.2022.04.10.13.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 13:51:27 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: qcom: sm8450: add PMIC includes
Date:   Sun, 10 Apr 2022 23:51:25 +0300
Message-Id: <20220410205127.1670705-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

Add includes for PMICs used on two SM8450-based platforms. These patches
depend on the series at [1].

[1]: https://lore.kernel.org/linux-arm-msm/20220226205035.1826360-1-dmitry.baryshkov@linaro.org/

Dmitry Baryshkov (2):
  arm64: dts: qcom: sm8450-qrd: add missing PMIC includes
  arm64: dts: qcom: sm8450-hdk: add missing PMIC includes

 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 6 ++++++
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 7 +++++++
 2 files changed, 13 insertions(+)


base-commit: 3123109284176b1532874591f7c81f3837bbdc17
prerequisite-patch-id: 435eb95d10af754e1f192cd8320bee260c3a46c4
prerequisite-patch-id: a3e95931fb401248d550ff95a1030bb2e6f86d54
prerequisite-patch-id: 5e13599495bd37b79c7fa870a440604892992f87
prerequisite-patch-id: 3d92b9a5b685aa2aae132cc4de10411ce5ce6472
prerequisite-patch-id: f36bb6107c1db6710a2766c623ecce5c5bf4f843
prerequisite-patch-id: 73bdfb2f30b1225919dedc692e9a9ed0ae923b2f
prerequisite-patch-id: f679f3592a872a3becab63912e735f9e4ecada1c
-- 
2.35.1

