Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D0A058EACD
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 12:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231778AbiHJK5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 06:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229455AbiHJK51 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 06:57:27 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2370357239
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 03:57:26 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id i128-20020a1c3b86000000b003a536d58f73so802693wma.4
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 03:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=rBBoEWxQ8eHN9ua82Tfrxn/AgHbyHcDlLzzI2457Jb4=;
        b=ZARppJxhemgKTwWIC/Sw52Je79gLogwCfZa3xsMX4+pztJvzjMpsyWPMnGGxwwsKJc
         t24pI4av8ARbG5YI/59HvPdOarxMarbbV7nzttBqqgrjqW5Jt6NEEpZUAlJY+QEu3wVO
         wKNdv0Q8tCoO1be3Hm4Yv881lUQsZ97TwwlqpkpK+r77wkkhErw9YvizUlXLSNo57keR
         SgkqPLxnMJ2fwaRmpwMbBrD4ofYL2+R7MqY16Gyv9IMaNQ80mPSY0B8lkNGrFI8CbooJ
         uSoEVlv0S1k9VjXck3pkrcFrkRpx8zXkI7p35/4XWKLv17PWdmeOiSkmAqrsaBJNGxXY
         FcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=rBBoEWxQ8eHN9ua82Tfrxn/AgHbyHcDlLzzI2457Jb4=;
        b=RWsEwv99+voeDWGlwQc/V+QHzYGMYBrRP0fLzrheQoXvvXN7fENBmTviCbX/UC5dHg
         K7BwnYr8pgR89wwH+niDoyhbcdN9sr1hzDc6KQFzNFljzy7rG3lN1r8hN+A0SJR0ZRJo
         HOhhU2NS4wyKDrbTkE7BDVsK3yXBbcpVntdW+mRc1k67f052boRAC9zBL9HNrnhwgP3y
         RWJfusrtGfz6/+PKSsVuyA6ErVu5tOlqH4E9eyXxu/+IkJfCtaD5U4SPeUJvdC3tfK95
         Yj+vGD2uVagqKR5olcTr3V8ZkBqtcy60ecEgUln3QJwU7tmqt8W4h278xabR4oitwkbn
         6wcw==
X-Gm-Message-State: ACgBeo223lv7lJQJ5zC0lfEej38aOdjuqnz7QJetudIrSyecz+lQf3RV
        Kn9wgyr9RZ4Px/L4jadyr037KQ==
X-Google-Smtp-Source: AA6agR6X/DasRxKJOFo0GKArt+c9XMHzAE5Yl9iE5NGz1PN0RYA/FvsiBFrhiIOHfp3DA2/rnbZIrg==
X-Received: by 2002:a05:600c:1e05:b0:3a5:b441:e9c with SMTP id ay5-20020a05600c1e0500b003a5b4410e9cmr1309439wmb.24.1660129044621;
        Wed, 10 Aug 2022 03:57:24 -0700 (PDT)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id bd6-20020a05600c1f0600b003a53731f273sm2101446wmb.31.2022.08.10.03.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 03:57:24 -0700 (PDT)
From:   abel.vesa@linaro.org
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Maulik Shah <mkshah@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 4/4] dt-bindings: soc: qcom: stats: Document SDM845 compatible
Date:   Wed, 10 Aug 2022 13:57:18 +0300
Message-Id: <20220810105718.2137015-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220810105718.2137015-1-abel.vesa@linaro.org>
References: <20220810105718.2137015-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Abel Vesa <abel.vesa@linaro.org>

SDM845 is a special case compared to the other platforms that use RPMh
stats, since it only has 2 stats (aosd and cxsd), while the others have
a 3rd one (ddr).

So in order for the driver to use the dedicated stats config, we added
the SDM845 dedicated compatible, which we document here.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
index 473adca4e973..ad6ac0af16bf 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
@@ -20,6 +20,7 @@ properties:
   compatible:
     enum:
       - qcom,rpmh-stats
+      - qcom,rpmh-stats-sdm845
       - qcom,rpm-stats
       # For older RPM firmware versions with fixed offset for the sleep stats
       - qcom,apq8084-rpm-stats
-- 
2.34.1

