Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAF4951B852
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 08:59:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239684AbiEEHCx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 03:02:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236495AbiEEHCw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 03:02:52 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36DDB377EF
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 23:59:14 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l62-20020a1c2541000000b0038e4570af2fso2058172wml.5
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 23:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gG5ddXZSy1wKmOUQ6uBSLbcGTeipbmw8JGCrHp7VO3o=;
        b=IidFc3QITpakXVpjbjlX8PxSSGvYjWE2ldWmIV6nDpBZNv9U6ycKmbmxY4HGtjY+bE
         eZTlJKFNzLiUrUexd/tvQnwrQxJ0EFmUIb35xqa4WrK3qh7VM57xU0IR1tg/GH6jWbH5
         TF0E6bsTojZliRtJqvyPGjiuz0KvmVTWqyD7/5O8JuQrmOMGSOU6d47+CpldQkyYofZk
         iH1h8rwJCvoK7/fMFEPSDzINSpqzSbAeiJywx9p5U5BbHi+jEDQ4Zr4aUZ9BGKKUDhe1
         Lyh6OT6f1nVVVngwj99+fnMcYtxpnNuHDa4IU2pVdGoJNY2UWa5qmqDvVCBV4aBVGszy
         ZR1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gG5ddXZSy1wKmOUQ6uBSLbcGTeipbmw8JGCrHp7VO3o=;
        b=g7RgTrs8Kv4XY3zdQAMuL68IxlFMhgR3DT3xCFSnHkT+FOct9k8UXr1eheZnKLeX+q
         uciUcnKkH5TFaYda2LADkPJUOEcKUGAp77/XFRn92C8VvHze5T9XDRt7oNmsKY+FJXFX
         tvvmZLUg9ZrW61Eb1APL0oj4T2Wwxiev2ouglaODjwfUcpeTbH/XMw/Ga50FhAtY9nQA
         zvwHdf0zWUEZgwalAquSe/ykeae0JOGGA6V7rkFUzXbShEWvk4P6lSatMAOW5D6xpI/z
         TtXuuY4UCON1FoFGU00DB6PS8a1TRlWSvE61SdfMO4PIWNc5SYA8dxTkAGXNU1wVUux/
         askQ==
X-Gm-Message-State: AOAM531ZIRhCs0gXE1gGio9h9HjUOhd64yktBjHp4WJAHdmsO4NNUEqt
        Wq98B0IJPVbihA9OlauhtDS2oba6UjUSEcG/
X-Google-Smtp-Source: ABdhPJy5lIk1LOt1rt4j0pHvZjxyqDeFde7RLZHukV3nnsvhEe9CJNh5W27AATNlZynas6P68c11IA==
X-Received: by 2002:a05:600c:4e87:b0:394:4992:ab8a with SMTP id f7-20020a05600c4e8700b003944992ab8amr3157192wmq.97.1651733952869;
        Wed, 04 May 2022 23:59:12 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o9-20020a5d6709000000b0020c5253d8c1sm511198wru.13.2022.05.04.23.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 23:59:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: (subset) [PATCH v3 02/12] dt-bindings: clock: add Exynos Auto v9 SoC CMU bindings
Date:   Thu,  5 May 2022 08:59:08 +0200
Message-Id: <165173394468.29323.6199648804566991709.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220504075154.58819-3-chanho61.park@samsung.com>
References: <20220504075154.58819-1-chanho61.park@samsung.com> <CGME20220504075003epcas2p17f37265b522bb0c26dbdd4ebeec92ab9@epcas2p1.samsung.com> <20220504075154.58819-3-chanho61.park@samsung.com>
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

On Wed, 4 May 2022 16:51:44 +0900, Chanho Park wrote:
> Add dt-schema for Exynos Auto v9 SoC clock controller.
> 
> 

Applied, thanks!

[02/12] dt-bindings: clock: add Exynos Auto v9 SoC CMU bindings
        commit: e61492e47838f4d99a3ffcc591ba57d1d5d0896f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
