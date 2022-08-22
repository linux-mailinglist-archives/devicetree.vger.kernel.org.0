Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BA9559C602
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 20:22:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237409AbiHVSWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 14:22:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237410AbiHVSWf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 14:22:35 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B64ED474FB
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:22:33 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id v10so11395668ljh.9
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=W5y5XX8f1s39d+qb+Ap4JPBqkkKGvwJEJMCAPr9uk5M=;
        b=k28PldqGUnjNILcrlYE1sV3gSoayM8/qsaLXeWPeCWUewLucdlyVkOSpUSErZsylX8
         Ga/kflW5Bzm154IEoc3dlTPd6a0XacXlurXQMJs0+qld3bwC4iOuomPhrL9rtgLYFNJl
         fOOf8+mcr8MiZqkJCHZ1UqxucL15GP3bS/if9N0mEmrPHRoshehyEag8QiIS+Z1QKe57
         YvI6Ae7zVCaEkU3VQ0pnQ1bIvUhYe96MPS5PQCuBDVarzZg9feXk3rQeNbsA7y5z2dJY
         Pd67KqIAElwTiNAq59eYBLNQxSeWsJeSp03b8EssoOWRwx1uWot+BD/iQKJoxHtwHlXR
         Uy7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=W5y5XX8f1s39d+qb+Ap4JPBqkkKGvwJEJMCAPr9uk5M=;
        b=0wte9ngougXtCCtInS6EsQQqnn6ClsRS0njhkrqJPwU3Sxb89e1WUI4wBJZvlWdA0l
         j1shQ/FZPB6t/owp9wECRN5KRXlUG/aTdzEgEcZfX2VajhaLl9hH1r5dY8iMGs+33gQN
         HPrtIpZizIkUXoPwjMP14A7x5d17gVtaJOEBGKIgjpw4g85WXCfNxshj0OMD/NJtBxuT
         ljWW2jp21iVTCWfgX9fxudgBntoAd+FIbW7AFtSHOWeNoorRzQr7+L+7J6TNIsfkouoW
         7dVVA1O/Km7k3MKaoCZQLgFHCU5r3DkMzydNM3ZFosspDNtwo4/PVpshF7cpH/37wHNh
         yHdQ==
X-Gm-Message-State: ACgBeo0LHQUSz1xNAIcQJNafYXt/LrkxEWx5uK32322ovbemFG4zVFQM
        5Wm3urG6WYfgflIUvhHNJ04dGQ==
X-Google-Smtp-Source: AA6agR5GStlxeysuHFO7ASxExehsD+K7KqUYnLgzhe2iyPjejimLMZ1FC3zwPQVm1/hU/axz0aIOQg==
X-Received: by 2002:a05:651c:88e:b0:261:b5e5:8622 with SMTP id d14-20020a05651c088e00b00261b5e58622mr5327485ljq.99.1661192552112;
        Mon, 22 Aug 2022 11:22:32 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id a4-20020a05651c210400b00261c30d71e5sm1243004ljq.67.2022.08.22.11.22.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 11:22:31 -0700 (PDT)
Message-ID: <f5561edc-f2fc-05c6-8f24-e0b362989302@linaro.org>
Date:   Mon, 22 Aug 2022 21:22:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v6 03/17] dt-bindings: spi: cdns: Add compatible for AMD
 Pensando Elba SoC
Content-Language: en-US
To:     Brad Larson <brad@pensando.io>,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        adrian.hunter@intel.com, alcooperx@gmail.com,
        andy.shevchenko@gmail.com, arnd@arndb.de, blarson@amd.com,
        brijeshkumar.singh@amd.com, catalin.marinas@arm.com,
        gsomlo@gmail.com, gerg@linux-m68k.org, krzk@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee.jones@linaro.org,
        broonie@kernel.org, yamada.masahiro@socionext.com,
        p.zabel@pengutronix.de, piotrs@cadence.com, p.yadav@ti.com,
        rdunlap@infradead.org, robh+dt@kernel.org, samuel@sholland.org,
        fancer.lancer@gmail.com, suravee.suthikulpanit@amd.com,
        thomas.lendacky@amd.com, ulf.hansson@linaro.org, will@kernel.org,
        devicetree@vger.kernel.org
References: <20220820195750.70861-1-brad@pensando.io>
 <20220820195750.70861-4-brad@pensando.io>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220820195750.70861-4-brad@pensando.io>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2022 22:57, Brad Larson wrote:
> From: Brad Larson <blarson@amd.com>
> 
> Document the cadence qspi controller compatible for AMD Pensando
> Elba SoC boards.  The Elba qspi fifo size is 1024.
> 
> Signed-off-by: Brad Larson <blarson@amd.com>

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.



Best regards,
Krzysztof
