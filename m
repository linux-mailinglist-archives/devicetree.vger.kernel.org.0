Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A85F16BAA25
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 08:56:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231657AbjCOH4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 03:56:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231545AbjCOH4E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 03:56:04 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3161134025
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:56:02 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id w9so1188063edc.3
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678866960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HH3s1nadjYLiGCsTK9aOpzfD2+JERQeAQNU/Lvtc2Ow=;
        b=pyIUeB4eDEi6hzASiyAIA1sVSMEqON/+DatgKxKBc3woH5HcE8oKUMp65LSlTt42S2
         DIJvaCPExRHWYZyq6IN8N3DysbTvmhll3GL+WvT9XDMqSQP151PRcYdV4asn6GOP7Z+E
         RE4Wb4AJFD69kSj1LNkWSfTjBSHA1vTRylCNk4c/dVZ6gMIAhQb/2/bjY2bBdX7sPTa9
         OKDBk25hrlbHK/ZzN2WT7KBZdM17ZZgj0kSdpABOkdEY60fZrIqo+E4eOPIRSpptV7uD
         Np6lkFrUKCD3nYCdNtJMpyvOWNSKhrMBZwYbugwPtBEI3LWuEWOEZnaXBa6hrZh7FmlO
         inxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678866960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HH3s1nadjYLiGCsTK9aOpzfD2+JERQeAQNU/Lvtc2Ow=;
        b=iTQEu12NHVCxDMydpeCDuREU08lfPJBzOKHXYbtu6WP7t4MlWwWrB79iiibOzGbpFA
         RLfaOtC++tIUyel+V0W2n69T5GZ72+FQaoCHck18+jpA+at9PvB0BSsUf5cGRwRtPygL
         d6yNwsRe5Veuq7C5422WyIvsY+gFRbA6grdI/wQWiPIl0tuvLcE4sPk7DQ2nNCQjgEv5
         s3wiNZPY4Fx6T9oR82prJ3JHwyJH+rPXkg8OKgOD4NBmqGzKpMIvuo9DlSek765jgYuK
         5Nj6qDdjR33/rb1lEVLkD+P1ICBEZKeDQzpU9IHIC5J8TQrdl5+T3oojJFAku26mwmsl
         xl6g==
X-Gm-Message-State: AO0yUKULAsUMKGztPiYiElZFq5AitFxw9OHuKjhNpe2yuEyT11RGVrJg
        FqnHywHpJeAzfbXTXWZuZ6+Dow==
X-Google-Smtp-Source: AK7set/ErDnbn3BQv8IhC67ttVzVAWaZY78GHDI3wn5ScSSkGhKNg62brrkV32t3unAb7CJcGuQqcw==
X-Received: by 2002:a05:6402:899:b0:4fc:183d:ee18 with SMTP id e25-20020a056402089900b004fc183dee18mr1717845edy.35.1678866960639;
        Wed, 15 Mar 2023 00:56:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id co2-20020a0564020c0200b004fce9ff4830sm1945756edb.88.2023.03.15.00.55.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 00:56:00 -0700 (PDT)
Message-ID: <478974c3-7302-e773-8d70-fcb2323f65ea@linaro.org>
Date:   Wed, 15 Mar 2023 08:55:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 01/11] dt-bindings: clock: Add StarFive JH7110
 System-Top-Group clock and reset generator
Content-Language: en-US
To:     Xingyu Wu <xingyu.wu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20230314124404.117592-1-xingyu.wu@starfivetech.com>
 <20230314124404.117592-2-xingyu.wu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314124404.117592-2-xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 13:43, Xingyu Wu wrote:
> Add bindings for the System-Top-Group clock and reset generator (STGCRG)
> on the JH7110 RISC-V SoC by StarFive Ltd.
> 
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---
>  .../clock/starfive,jh7110-stgcrg.yaml         | 82 +++++++++++++++++++
>  .../dt-bindings/clock/starfive,jh7110-crg.h   | 34 ++++++++
>  .../dt-bindings/reset/starfive,jh7110-crg.h   | 28 +++++++
>  3 files changed, 144 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

