Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2832C74CF9C
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 10:14:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232743AbjGJIN5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 04:13:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232674AbjGJINy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 04:13:54 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34DFAE1
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 01:13:52 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51e2a6a3768so5247429a12.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 01:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688976830; x=1691568830;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uHFu9bQ2ccI5KbaxGCntDi+gMVXsRMreBgDbWyqncrM=;
        b=CcKX/eVlTIR8z1efBPUYqzKhCbUIkgXgVF6CxXOaFNfQUFNT6do9TDKIX3JpcnEbyu
         6CuP1CNPzDqjrGoyYmUn/NkK9Zgbpz+OEj8bbQpu+kej6Bl2JPmNYddK4wQQ4v1Ez3iJ
         oKqu/g3uMCbZnmP0hdLDNQXR1T0upSITPq0NuZ2HE+/iqP6Z2RVvN4lTtfYjn7K3huew
         IUZKU9kSCgrAxmVvnyhEbw/wT8tXGb/wrceonPCeLTgucF5VZwOuHTKe5BHG4zYU91Ni
         +Z3wLkjGDAqg6JGNTlzTuQ/Fsuk41Hci/EEOvIGcUK6LAC4mLlakUqUwkC4qhFfDPVKg
         uduQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688976830; x=1691568830;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uHFu9bQ2ccI5KbaxGCntDi+gMVXsRMreBgDbWyqncrM=;
        b=KugYShavpZDDSbF7hCBxL03nbgeIgnTs/wKLpH8x2m6D5PxWWPlj4TK28vUnGWReU9
         Vqi1J2aUGA8MLuze5ZNzqzrVOYxAvF0fgOkye3PSQor3E89Pp4yyy+w4Sxq/RkXbr74i
         g96M97gCm2LWkVHq0b5vN2Jp3BiOSPaAKMfdtSStdJ02PtBOHrNfjesaoDthA+os3RSv
         5KLcwJjHji9x8dTiLn6G91SbfHpiH9renllIFbQ+EwZ6XDKwjHrgayJBgreK6fdCRhk7
         Myvu84/MItzaZuKDq2CnhnfaV/ckoxYGUmMkLbGvXXUQiDesDLbgQFQBJaGeSeAi8fCM
         8uFg==
X-Gm-Message-State: ABy/qLaxo6n3BS+4BBKo2m+JAPkJMSOpUqiRnyAs0M5kDgumwrehTl/b
        4Pj/VpZHBR//ZNuzDN6uTNbigQ==
X-Google-Smtp-Source: APBJJlGzvt++fhcOIqH07bW2H3InPzYBsp04XwZxEgdi1RX1KtC70VZCvhO+9s2U/FG+TrAQF0nO4A==
X-Received: by 2002:aa7:d30c:0:b0:51e:52bd:68c8 with SMTP id p12-20020aa7d30c000000b0051e52bd68c8mr5034814edq.14.1688976830730;
        Mon, 10 Jul 2023 01:13:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id e15-20020a056402148f00b0051e2cde9e3esm5403653edv.75.2023.07.10.01.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 01:13:50 -0700 (PDT)
Message-ID: <b19f2ac1-64e5-830f-a840-e4ac624111d1@linaro.org>
Date:   Mon, 10 Jul 2023 10:13:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] dt-bindings: remoteproc: imx_rproc: Support i.MX8MN/P
 MMIO
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-remoteproc@vger.kernel.org
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230707232626.374475-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230707232626.374475-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/07/2023 01:26, Marek Vasut wrote:
> The MX8M CM7 boot via SMC call is problematic, since not all versions
> of ATF support this interface. Document MMIO support used to boot the
> CM7 on MX8MN/MP instead and discern MMIO interface using DT compatible
> string. Document GPR register syscon phandle which is required by the
> MMIO interface too.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Note that the MMIO being discerned using compatible string is similar
> approach to "st,stm32mp1-rcc" vs "st,stm32mp1-rcc-secure".
> ---

Same hardware should not have two compatibles, depending on the bus it is.

Best regards,
Krzysztof

