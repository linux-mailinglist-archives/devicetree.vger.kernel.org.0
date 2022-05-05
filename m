Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEE1451B84E
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 08:59:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239364AbiEEHCv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 03:02:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236495AbiEEHCu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 03:02:50 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B64144754C
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 23:59:11 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id c11so4769428wrn.8
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 23:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wd4ok3cDOHB5wDGagz2JXxx8EixvjmbVG4hC2YrmyoU=;
        b=OqTwDMtirNy2WePdt2AVOU1Rs9zpKeayaMF6f6WZtE/giQLQEGVaNHX3TqUgySrKm5
         xKuLa4jCJ/edid6EsHM/rKHCIsAlcUh7V+3LN3lKgmiRdg4VbxA33vRQFx/UCzwF2wx2
         aquYZfcLyD/+AY/hhrGgTr2SyId1keEFkyJC5aeBT34IA+SBp9bD0svW2ZLOBeL1geEi
         cyOLIgncn8vhiqPwDxzd4XaeyIWmv2mdL9B6bhfacbfSN3riO0qQi3yf3QAcazwkPkZg
         QhXXYdPeB+1LBCi43lPwQK18d9AT7RIZJuQCw9slRsW+q8Kd51Io0L9zWieltvcDyJ8Q
         RxTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wd4ok3cDOHB5wDGagz2JXxx8EixvjmbVG4hC2YrmyoU=;
        b=4M+EjBieDld7vPy66HXW6e2VBNQNFLSKe5aLtIQhSsY6iR6QcS/zygg/TiUrOWhWTA
         hN8wVDvV+ag6/kuS3QSrV7dmmlH0fL8X30ikevPN5CZk10lHpX+BwommW2sCRtNv9M40
         bXnvGKx5oDL/S26syHP7KCQ5or7KccmWFlU6MfZ6gUAxqjBIivrzZL10USPU1UI9XAzB
         iPRj39eYwJ7dG3ACDawIJo0W3+xn1adU0xleWxexZHUtYhOUqzFKE6a1a7K7WmAQvebc
         Bg2DiU8HgW6c6wxBVS6nw1UpatdbnI/eAxow4uGx5OO3btEgd4zL96zqIxN1LN9eBgec
         oJBg==
X-Gm-Message-State: AOAM532ayhSyf5ezRMUuaF63rBv06BIIH2yUXJe2d2Jyn/zfXE0VZ6/R
        qLIwCelxE9XGSfl3zL9rf0pxNg==
X-Google-Smtp-Source: ABdhPJx9qg616FnYA1EykYSalL6iMhfC/q9j2bUx7PEudPzvmYzF2PF5EsDDUMDx4yL2FaSotl7DHQ==
X-Received: by 2002:a05:6000:168c:b0:20c:6072:f82a with SMTP id y12-20020a056000168c00b0020c6072f82amr14370609wrd.410.1651733950294;
        Wed, 04 May 2022 23:59:10 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o9-20020a5d6709000000b0020c5253d8c1sm511198wru.13.2022.05.04.23.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 23:59:09 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: (subset) [PATCH v3 01/12] dt-bindings: clock: add clock binding definitions for Exynos Auto v9
Date:   Thu,  5 May 2022 08:59:07 +0200
Message-Id: <165173394468.29323.9947040528440118224.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220504075154.58819-2-chanho61.park@samsung.com>
References: <20220504075154.58819-1-chanho61.park@samsung.com> <CGME20220504075003epcas2p3708d1853dae290bc42cfacd318767c8d@epcas2p3.samsung.com> <20220504075154.58819-2-chanho61.park@samsung.com>
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

On Wed, 4 May 2022 16:51:43 +0900, Chanho Park wrote:
> Add device tree clock binding definitions for below CMU blocks.
> 
> - CMU_TOP
> - CMU_BUSMC
> - CMU_CORE
> - CMU_FYS2
> - CMU_PERIC0 / C1
> - CMU_PERIS
> 
> [...]

Applied, thanks!

[01/12] dt-bindings: clock: add clock binding definitions for Exynos Auto v9
        commit: 680e1c8370a2ed7aff4f99ce3cebf79873d68f59

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
