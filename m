Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 689844FD5FC
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 12:18:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353283AbiDLIDX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 04:03:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377792AbiDLHxy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 03:53:54 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F9053738
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 00:31:32 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id lc2so14943936ejb.12
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 00:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hNe4Z5n6SgxquvKMNl7KQx+y5HXt+oFrwqEGNRcc5z4=;
        b=wjMW80PkOqvcS43yxumpkmpgw+Av27Uu7deaKWy7Nwvxv0fDMnrJGXRlScEH9hM27v
         60PSTU1BL+nWpCtYUZiqE0LaT/E0VLpLxJ11yCFliFsVQXmgFr02+hlbGSLDzjNWUJjZ
         Cx4RfyoKjf6xRSNpi5B7jvSayk2db/7aMrjTml3nBv/wO0A8Dl2fZkc3j7Y5mb15lsdK
         hHvlotngCHek82ky3yaC13i+NB6o4vlAT6rZuJSd827lKJmiLT6KSKz1YPhPhiT69mMr
         kLLRKBlVD6SCkuZJmX/S2ZevIs+LbWpNuP9PXnnw3Y9/GYj75gvVvvcAfgPKIc14exEv
         koxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hNe4Z5n6SgxquvKMNl7KQx+y5HXt+oFrwqEGNRcc5z4=;
        b=z9oPkNCer0Ecngl4+ElZztenrs/E7cD6F2ZVLf4Ki+jazZ6Ae0DdEE3sBIEpQgE940
         0sbc7Gy1FAYAPGVocmr7C1jIfOJ/jUAfxpYAlo+r3sznQoyQK1U6CH8x4tGrhHDgRL9T
         DM0sOhmBrbUbvboKPOgDdO77ysiM/QPtnwzGgS4eaIFKKl97aTLfqQKCvc4OrfALZHBk
         p/zlnBdmb9N7nj1qmZmTIUP3XGrdInKrisCqwL7aXqPF5dkbFziE9KeYuTlHMCHOm1JK
         f5L6XuSKd+JPFKqbNQBicGywuy2MNHQ+0mUQYSWApvo1mVDhLf7bCwfATy+4z5aFNFYd
         OmQQ==
X-Gm-Message-State: AOAM530inu10+eSwCD4qJSTBp2o8X9GDAkAHRK3w1wlqSkdPPzrmDdEq
        4vikQ/B6NQmqIY8j125Uqwoyv7fTTbGUB92e
X-Google-Smtp-Source: ABdhPJybnYRzd4oTw/UKCt6YSg9tnEFOnLlLmbhOqi75QmarBAVUMLlCkNsPPv91AAAiHSUa4HKiZw==
X-Received: by 2002:a17:907:97cc:b0:6df:83bc:314c with SMTP id js12-20020a17090797cc00b006df83bc314cmr33755928ejc.587.1649748691460;
        Tue, 12 Apr 2022 00:31:31 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id j12-20020a50e0cc000000b0041cd813ac01sm12571234edl.28.2022.04.12.00.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 00:31:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/2] regulator: dt-bindings: qcom,rpmh: minor cleanups and extend supplies
Date:   Tue, 12 Apr 2022 09:31:21 +0200
Message-Id: <20220412073123.27229-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
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

Extend the RPMH regulator bindings with minor fixes and adding narrow supply
matching.

Changes since v1
================
1. Use "defs" method instead of referencing additional YAML file, because the
   latter was not working properly.

Best regards,
Krzysztof

Krzysztof Kozlowski (2):
  regulator: dt-bindings: qcom,rpmh: document supplies per variant
  regulator: dt-bindings: qcom,rpmh: document vdd-l7-bob-supply on
    PMR735A

 .../regulator/qcom,rpmh-regulator.yaml        | 291 +++++++++++++++++-
 1 file changed, 277 insertions(+), 14 deletions(-)

-- 
2.32.0

