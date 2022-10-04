Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A55A5F4C23
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 00:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbiJDWq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 18:46:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbiJDWq2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 18:46:28 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F538476E1
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 15:46:27 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id n198so311149iod.3
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 15:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yWeBaf4vtBh0cPJaX5k0nGek3oH+mu0hsNkHok4Em60=;
        b=YoAzhOO03Egp3FHUujgQzHEKSDWNLqpNscdSHNygvbUZ5ki+XmPvuw8P8ou3n5Z/Zl
         Lg2KMVtEvFl3lRBJD+mf6EaxSvuUPGR+ValK65R39/gSApJRB8Yv2Gj1sz65/svFdmU5
         rPudhPeLdTNMJcK+d8z/wy5nmrpGy9n6y/cOOV9Pg+XiJRt5v6deaMea2EMHBA7QNmls
         aRxXOZURLh6AXWfe/N6w411QkQgFWfQMYDoXhuvr7HOmmngPUVxb94rTwJemcQJw+uhX
         0sac+iHrBkfn9QYN5Q6N+tTa5IVTCb21Cfn6nF3URZvNlXOAl/wFKTrCh3SwRTc45dMG
         Ugwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yWeBaf4vtBh0cPJaX5k0nGek3oH+mu0hsNkHok4Em60=;
        b=NVJ9oPcMoYGboN4LIFUfTi63W6rcCt1xXecjXEfQmQQOm4hJ+XNiSfzgw1InZjnWhn
         eP9vsaEgTrBIp0xZ0IJlp5V58hd6nLVayplHzxn+DZDWDiKqIe+78xnrsqrc9HdCOmY7
         Ei1+aE2Dk8nW5ATWzPETATahUSQ9oC00VSupaG/ymdzr6UIGGIhQPquvBSwZ9+lDFl1v
         Vhuec3n6y8Yh6g7RJxMWiYTpwMkf29VpHTUQtijkidYpyqWNPEl5E5dEZ8mrlqgwIqPb
         xeG93+itUy4rXg2nyuh/LRmVvTfbTxs0tsJ6FytouuaHRsjElO2M5ZLFamXJUrv8NqYI
         9+Tw==
X-Gm-Message-State: ACrzQf0DbKNwGHWpGrJFxkD+mSJPDmFEdVdCKHMdhmogueKf4ayba+DM
        r2pqwjdFzh1OUFOYKUw6dEM=
X-Google-Smtp-Source: AMsMyM4urdGES741Q8zKbHdKlQdf936iRlZhPZ8D9sTTiLsophwa7YUSDMy9KapgnWh181Cp52jkRg==
X-Received: by 2002:a05:6602:15ce:b0:6a5:22db:950b with SMTP id f14-20020a05660215ce00b006a522db950bmr12216256iow.183.1664923586566;
        Tue, 04 Oct 2022 15:46:26 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::1eda])
        by smtp.gmail.com with UTF8SMTPSA id v6-20020a922e06000000b002f5447b47f8sm5251047ile.33.2022.10.04.15.46.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 15:46:26 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     iommu@lists.linux.dev
Cc:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Emma Anholt <emma@anholt.net>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: iommu: arm-smmu: add sdm670 compatible
Date:   Tue,  4 Oct 2022 18:46:18 -0400
Message-Id: <20221004224619.16406-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221004224619.16406-1-mailingradian@gmail.com>
References: <20221004224619.16406-1-mailingradian@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Snapdragon 670 needs the IOMMU for GENI I2C. Add a compatible string in
the documentation to represent its support.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 9066e6df1ba1..5ad6dc64e1c4 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -38,6 +38,7 @@ properties:
               - qcom,sc7280-smmu-500
               - qcom,sc8180x-smmu-500
               - qcom,sc8280xp-smmu-500
+              - qcom,sdm670-smmu-500
               - qcom,sdm845-smmu-500
               - qcom,sdx55-smmu-500
               - qcom,sdx65-smmu-500
-- 
2.38.0

