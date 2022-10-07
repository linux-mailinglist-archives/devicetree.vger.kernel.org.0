Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A3995F7490
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 09:08:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiJGHIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 03:08:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229838AbiJGHIR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 03:08:17 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7A42B8C15
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 00:08:15 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id p5so4659818ljc.13
        for <devicetree@vger.kernel.org>; Fri, 07 Oct 2022 00:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=QAWREG0fZCyP7sEbxrdyuueNgOkgMOANl7rSPu92CYE=;
        b=ubXUXF2rT8QIV0grzSF/ZjJ0uk/W8GCGxRhGV6JJrXSdroCqYCMrBWE5eeB2wixQQb
         bNHvDnMJASdWrBUoWTHwM3TkUQl6sbz7ur03/CaQNf2mnQSzG3f7mEtUqUdUzX459+mn
         lTyqDUrwjR0W1OGkLOQd6c0b5sKS17YBRpdEMzTN+y6jESmYePl4b/dTGFWXZdx/nBRr
         YTBmr2IlaNzr5dlh8DlCGwHTBc6bEOV7+gQnhDypdHLvpr5FtWxAIj9VVm6sPeBEgkce
         gkBu2SJcxKIvqByEXp9AbzG2s4gjxQkLBKCseX4YGLzUgH2ZJPfOU9nSbtqtOIDZqrfo
         QKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=QAWREG0fZCyP7sEbxrdyuueNgOkgMOANl7rSPu92CYE=;
        b=2eiIoIqDZJTyITxpOnsB3TM0WuiXPL9mIg/WLGCj4veXYN7HaQu4zv+BuM56cWf3WE
         M1qiZVQ8xTBiZAZpE7ZVEIdmET8drZZTmgm7LWmAwv19ihZaTyfMYNey1jo/trsAOII7
         jiMDbGwLz5uhUx8a1IzjySo164AG3NPLtSqigiGjtIgBUpoNTngR9FYoO3oO3pl+SMxw
         PHEc5z91k6qkYenLqQXYCoFxSRlzo6nHlyi+gp0xQiza8fEvPprZjpwryH+V8dg7Mto+
         JBSgOOj9fCZAgBGk15W9DbDKK+3CG9YBU33HGs/KgG5RjCjjIg0R+84I90F36MiWLSyE
         uNHQ==
X-Gm-Message-State: ACrzQf1FMTQiKUbCb8bmzahzGMYJ16AnpGiAfGbXbtLm0aAcQBZP20Fk
        7iM35c+3o8g8x8xbLRP65jI48Q==
X-Google-Smtp-Source: AMsMyM473sQQs/vKSRlyYkR3OApB4KcWSwOQhveiGiuOUL87IXLjYECurmB4ceu2K/zwRweooeT0DQ==
X-Received: by 2002:a2e:bd84:0:b0:261:e43c:bac3 with SMTP id o4-20020a2ebd84000000b00261e43cbac3mr1216270ljq.198.1665126494341;
        Fri, 07 Oct 2022 00:08:14 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a17-20020a056512201100b004a27bb1ad62sm174124lfb.205.2022.10.07.00.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 00:08:13 -0700 (PDT)
Message-ID: <398470cd-7f2c-28eb-fc13-54ae5d5bc256@linaro.org>
Date:   Fri, 7 Oct 2022 09:08:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2] greatlakes: dts: Add Facebook greatlakes (AST2600) BMC
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>,
        krzysztof.kozlowski@linaro.or
Cc:     patrick@stwcx.xyz, garnermic@fb.com,
        Bonnie Lo <Bonnie_Lo@Wiwynn.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20221007055008.3468691-1-Delphine_CC_Chiu@Wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221007055008.3468691-1-Delphine_CC_Chiu@Wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/10/2022 07:50, Delphine CC Chiu wrote:
> Document the new compatibles used on Facebook Greatlakes
> 
> ---
> --- v2 - Add binding document
> ---
> --- v1 - Initial draft

????

That's not how patches are sent... About this I commented and you ignored.

This patch was a part of a patchset, so don't send it separately.

The subject is now corrupted - entirely wrong.

Best regards,
Krzysztof

