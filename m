Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0825351B879
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 09:08:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245548AbiEEHMc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 03:12:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245670AbiEEHMa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 03:12:30 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFAA147557
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 00:08:51 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id a21so4156276edb.1
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 00:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WGJ+szBbyr2lzfc4ahud7APtOvfcKd7YgtYN/CgLr0w=;
        b=X27TsmJs56DbhuIALDeRkZQzi5L/yk9t/o9wE3w4G+q++/+FAzu9hrnvMkjyDGygL/
         vznW36EnFdurGGjpe8nxVAme2Y8KXVeIb4LLWLDZ/pE2rtSuATOXTrYGFIdzUY6OoPQd
         H7Q3wuoyHMU3amdIvEv1GCO6f9rHIjyCEtqxnri1qfTWLa8Qn6I6DeMaVmbyW+MX7h1x
         1YL4UzPbbLrNo+AbpiW9/nmIx3W67z6NaOfh1ILi54Xz+EXKs91S1RvGpxNUQvdmIM/3
         /4v2talsuH9H2aM1OimiskpM80HUpZlgEd9T4CLcLsneHHdL8d35McydGsC+zU3XbxxV
         Kl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WGJ+szBbyr2lzfc4ahud7APtOvfcKd7YgtYN/CgLr0w=;
        b=f1vBPEJEgkEcdUFkfI3B3pVy6JJH57q9G6E8Ci57ZAvBwPbWBH4ReiWmcMDgTLEPlF
         b6MwJdXICf93FOsO68tEAa6jIWJmfbGDojyzijBpzP+lexXfBUHJ2asFlsnd5ar7OLvh
         Q6kIE+ziP040rLfOenlPDCy3VIzN4ZFf76h5hZj8TK+tApvUTnv6Wq4eK7hLQsBdOC4Z
         bWWp4C4SnO+FZ8zmiBN5PratlZ0bFcVXokF0yuhtbhi3upW9AKoLgocX94TXas+tvoM7
         TuC41qYlXRyvwenltC0bsr3zje/1JdyB3mhUFgKZalNloOugGsK+COnqgLCUHhC2K+HH
         +yZA==
X-Gm-Message-State: AOAM533m1hbH6mV+/KMKA4ETR8uCttQ1kMR6AikkiHk7Ulvm3XxEPFoX
        cZHKI2IH13gmFZJ/GRd+0mjkoNKfuO1v6rNC
X-Google-Smtp-Source: ABdhPJw5kWuCg7nKubB0wZpuA/MM0CAuFhQJvm5izqo5Xou3V4vNMVSIWFEVzYucLGDYKQD6EQdx/A==
X-Received: by 2002:a05:6402:3490:b0:427:b471:9e1e with SMTP id v16-20020a056402349000b00427b4719e1emr23694016edc.36.1651734530550;
        Thu, 05 May 2022 00:08:50 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b4-20020a0564021f0400b0042617ba63ccsm394386edb.86.2022.05.05.00.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 00:08:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Sam Protsenko <semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 12/12] arm64: dts: exynosautov9: switch ufs clock node
Date:   Thu,  5 May 2022 09:08:45 +0200
Message-Id: <165173452272.31721.1625762819657409764.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220504075154.58819-13-chanho61.park@samsung.com>
References: <20220504075154.58819-1-chanho61.park@samsung.com> <CGME20220504075004epcas2p4d082e1aa4b35ec4720ea8ed2308878f5@epcas2p4.samsung.com> <20220504075154.58819-13-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Wed, 4 May 2022 16:51:54 +0900, Chanho Park wrote:
> Use cmu_fsys's clock node instead of dummy ufs clock node.
> 
> 

Applied, thanks!

[12/12] arm64: dts: exynosautov9: switch ufs clock node
        commit: 9882948322874b1ffdd559e6887397de4c903440

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
