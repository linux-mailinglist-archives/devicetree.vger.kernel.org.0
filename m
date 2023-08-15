Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A24977CA35
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 11:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236075AbjHOJQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 05:16:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236044AbjHOJP2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 05:15:28 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CCDC171F
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 02:15:23 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99c1f6f3884so710174266b.0
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 02:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692090921; x=1692695721;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ze5ObTtpb+O9rxTntCpaoYVBo6hW76OOXVC3qfWoqz8=;
        b=iL4nBpa1LZ7tG9SMde7NSMb5L0c8rOGNT76wdFySWCOO0KxytEcQkII33/Y4ugK9IP
         0CvkHGFxwqScK6O61uD9ov2ImrC8UJBbu2/svlE+MS4SX7WaR9HxiBQcY4JN50BjF6uB
         uwfxyqh+H0ifF/L+Zt562ihCSGQIvfPuhaO07Lj7/BGgEHETUiDwbdWOQRUPUwNbGhFV
         s8S/U7bpPXJk4k7xufe5dG8OS4blesmC9MJCs9uTjx7wTGXPquUfszOq3jtE44Jo/p3X
         OYPnnoxPx7mm+OS/1NJDH9s0K6Qm1hl410bfigGArRKLTqThEQmcRiYMq6nC99NeT67A
         tBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692090921; x=1692695721;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ze5ObTtpb+O9rxTntCpaoYVBo6hW76OOXVC3qfWoqz8=;
        b=VRCkayVZTAAxIYyBlrR/YtzGSMW3I633VlP23at6Sv/RTW6FLaqAnQyjAifwidw2n3
         dlx8lLNThnqcQvqgfvMhKxGccXb3j10DcIK2+WE944qOXVdKHzOhwZavdrEINGQNlvHJ
         jG8rB32hKyjFbQL2ntMHZ1VAJ17Ifl3pinm/nW6sOGxjM9X9vu+481TW7/DdJoB7RHR0
         wZefohRllZQhhYowQks8O2dSGoa/DtGd5+ny8+T5xCxGfyrEl4LgN3y6z1aRS6jmksV2
         CReV96x8Eg9yw4GTURTKKCUmb9KXCl7DoGQxvuUXpCaUISTDWF0ywhxzEr7rR+7MaL67
         oPNw==
X-Gm-Message-State: AOJu0YxnVPgjuF1zBvhyKs+wPUcx4thnKkRtw3+Yzr6qYhYaP+C0AEaP
        Ke97Q+9IBvE+383zXmRtZx3TLg==
X-Google-Smtp-Source: AGHT+IHL0Yt0Nl21n4oLa/TVXgO+c1ct/xVXLAY94QKOW8C+tl23w7X44rljo02S0XUhWgx6eKSeHQ==
X-Received: by 2002:a17:907:78d3:b0:993:d88e:41ed with SMTP id kv19-20020a17090778d300b00993d88e41edmr10415864ejc.3.1692090921599;
        Tue, 15 Aug 2023 02:15:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id qx27-20020a170906fcdb00b0098e0a937a6asm6764797ejb.69.2023.08.15.02.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 02:15:21 -0700 (PDT)
Message-ID: <3c702ccd-6a82-1121-0b4e-9529d82ccc13@linaro.org>
Date:   Tue, 15 Aug 2023 11:15:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v4 2/4] dt-bindings: clock: add qca8386/qca8084 clock and
 reset definitions
Content-Language: en-US
To:     Luo Jie <quic_luoj@quicinc.com>, andersson@kernel.org,
        agross@kernel.org, konrad.dybcio@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_srichara@quicinc.com
References: <20230815085205.9868-1-quic_luoj@quicinc.com>
 <20230815085205.9868-3-quic_luoj@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230815085205.9868-3-quic_luoj@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2023 10:52, Luo Jie wrote:
> QCA8386/QCA8084 includes the clock & reset controller that is
> accessed by MDIO bus. Two work modes are supported, qca8386 works
> as switch mode, qca8084 works as PHY mode.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.

Best regards,
Krzysztof

