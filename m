Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E85A4F1A7B
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:16:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378998AbiDDVSd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:18:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379375AbiDDRD5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 13:03:57 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D02FB40A22
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 10:02:00 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id x20so4022070edi.12
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 10:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rHmGrV07kY5BqUXebpd1I+1++leGw0LEdhJA+STF0QY=;
        b=mWRHtZ3f4vPDUnyB7eySxcxqsansrCtiWjuIJ3r+F6cnVW4zUoJva6WGvoeppDWMCW
         nsaQFV5wHgpVtmP8L9SL5OyCjYheHThCyYGnwuQfqo4SbwdoY/xQXJ88RHAf+5zBkyBv
         I2iql4tDCNwqWZGXxpqwpT+w8XeM1Vqy7w3O7cNu8JQ/+jqvWUdkpYtlultkUPilmEsB
         M4ZbZB9lXtBWG/9nOB52ozEAA+auNbZ5Teb9Hu+xT/+vUJxwJZBPgtbHq/0nz63s9DsU
         8IUmACMePV1l/9ZhcYRTvGuLYhb8GbPdG8EhdwE4lj3r0IJ33PzF+64fcQtkGFXurccD
         4PWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rHmGrV07kY5BqUXebpd1I+1++leGw0LEdhJA+STF0QY=;
        b=Pj4QpAjDIntPsazs9CN3w1n2F0iSG/FpSnzlzPgUI+sZpSfPMiSYHsWdKS0BdNfSVh
         08t9a0W62nkeNkLCiJV38XhVrQGvG4EH2qLA0/6FtqzQ/div+aOYeHkLjHaL4CWcy3K6
         ulUqYp4qjdk5b4NWkQEMc5Vri5hNXJ3MIniBCzg/t8vBjRtpUMYgb0q6cALAevyRvGHa
         pq4aTRsxSskt5/FCxq8w6IOf9ZEg/CCcWhjcHAhbK/XWg2pMF+89mtnJESLgD0797UUk
         bnKzjE08WDbqsc9LVVQlAcL948Wai2eDkSm/jYbqONbzkZDojDMkr1NqP2KcGlZ2nvTO
         72Ag==
X-Gm-Message-State: AOAM532k9tcHiGpLw9tUSpUjt6+ycIBon2WDmeM5dWtnYWsL6PbW0XIp
        s/fUpoFxSGEYfL2FnpDOekdXeA==
X-Google-Smtp-Source: ABdhPJyuhVzymu7WwGGXOzOLD6Z5dLjpPgNSkngxJvWAbzaQD7pGZY20Z0k0EhNSCGkxF1H3IodfIQ==
X-Received: by 2002:a05:6402:510c:b0:419:3fe5:15f with SMTP id m12-20020a056402510c00b004193fe5015fmr1176806edd.274.1649091719415;
        Mon, 04 Apr 2022 10:01:59 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c5-20020a170906d18500b006ce371f09d4sm4557770ejz.57.2022.04.04.10.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 10:01:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v2 2/4] ARM: dts: exynos: add a specific compatible to MCT
Date:   Mon,  4 Apr 2022 19:01:47 +0200
Message-Id: <164909169270.1688455.3672791121533721760.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220304122424.307885-3-krzysztof.kozlowski@canonical.com>
References: <20220304122424.307885-1-krzysztof.kozlowski@canonical.com> <20220304122424.307885-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Fri, 4 Mar 2022 13:24:22 +0100, Krzysztof Kozlowski wrote:
> One compatible is used for the Multi-Core Timer on most of the Samsung
> Exynos SoCs, which is correct but not specific enough.  These MCT blocks
> have different number of interrupts, so add a second specific
> compatible to Exynos3250 and all Exynos5 SoCs.
> 
> 

Applied, thanks!

[2/4] ARM: dts: exynos: add a specific compatible to MCT
      commit: cca50a59f60a6b2b5aa2c90d8c173da89f567ee3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
