Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 571A46963A2
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 13:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231523AbjBNMh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 07:37:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjBNMhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 07:37:25 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5719E7D80
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 04:37:24 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id o18so15505740wrj.3
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 04:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xInKaoWRFzme6mIUm7OvAINv5mpeXK0Tng+2l6vEAa0=;
        b=gZV6z0QWrknIs9h/NU+od0HfegjoCaCDrkFu198RQqpWGXpl0yEhVtHl2xmtq8Fatl
         rAUIOO+6uEHw0f4M+L0OfJ1W6jOp4/r4DmzzYZiHxYDp21uLK/oue47gQSua52DKDuiD
         r6TIE8yn68NOPMqov6sV4X8fGicOsCHqkORgp3e2GVrkWb5CUqFH5PhktiY7MKdY/7aS
         OCEra0XRmQfq/EvJ5bu5t0OpUWoFoO+/4ryHvo8mUay/kxUEKr66OisOQST1N7QJUorq
         UxodXtKy4OB0SdeKPCSRTFShHX16j2v69IXLK8uR9MN8pxSC8cCLB5tYTxBddZ4+gkHa
         +5LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xInKaoWRFzme6mIUm7OvAINv5mpeXK0Tng+2l6vEAa0=;
        b=AAvZr5E+PCncRPTB2fAgVJkUWTILZC6uQwdqH2J5AkUuuwWkbr4S8srVCOa9o3PGcb
         6dwYNMxoou+RJgbb9hP5Cfcs0ndsuBiD1qlKIuSfQiK6Kv+LlKEsaUUF3DUygNtnWv/0
         2+TPUJ0hO/XajgE8SbuZLYsfEZuCu3G1xajlOV9lU9C1QK56PJnZaFPT1FTKKzq/EM10
         kKQM5SM1whtSc2hyWy4bknyklhe6OgT/zPLKvlAfRQwDszHSxK8GfnT0DK0Hd40WHz8C
         MxrqrSEwKimRoBn2Ns1iGKO48HL6zWdE4LVAN0Q00Ltr7F8X1xAiouDrLVGH8z5oziFy
         Es1w==
X-Gm-Message-State: AO0yUKXDRcNv3NTbwlSIJW2bf/wLoj2GBRyF97DKrdfXMvv79NkTFEp6
        YfmtlMyBjaC9YE3p8fYNx6sDeE7uZs3i8IhC
X-Google-Smtp-Source: AK7set8ZlnnW0PPA2OP75yQKJw5482gR33b4oVVNTW2O1F1Qv25Me85WqfzppT87BSzPPFWMmW+6Lg==
X-Received: by 2002:a5d:4048:0:b0:2c3:fd2f:f7d2 with SMTP id w8-20020a5d4048000000b002c3fd2ff7d2mr2066707wrp.52.1676378242970;
        Tue, 14 Feb 2023 04:37:22 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id e1-20020a5d5941000000b002c54241b4fesm11886160wri.80.2023.02.14.04.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Feb 2023 04:37:22 -0800 (PST)
Message-ID: <43336959-643d-4041-d11a-b0c030fbf050@linaro.org>
Date:   Tue, 14 Feb 2023 13:37:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/3] dt-bindings: hwlock: sun6i: Add missing names
Content-Language: en-US
To:     Wilken Gottwalt <wilken.gottwalt@posteo.net>,
        Bastian Germann <bage@debian.org>
Cc:     Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20230213231931.6546-1-bage@debian.org>
 <20230213231931.6546-3-bage@debian.org> <20230214104554.35338faa@posteo.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230214104554.35338faa@posteo.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 10:45, Wilken Gottwalt wrote:
> On Tue, 14 Feb 2023 00:19:29 +0100
> Bastian Germann <bage@debian.org> wrote:
> 
>> The allwinner,sun6i-a31-hwspinlock.yaml binding needs clock-names
>> and reset-names set to "ahb" as required by the driver.
> 
> Hmm, this one is a bit odd. If you look into my earlier versions of the
> patchset, you may notice, that I actually included these bindings and they
> were refused. I think the argumentation was like
> "there is only one bus = no need for it".
> 
> If it gets accepted now, I really like to know why. (It was some trouble
> back then to get the documentation properly done and accepted.)

The clock names and resent names are not correct. They should have never
been added. If you got comments about this and did not update driver,
that's not nice. You just shoved incomplete bindings. :(

So indeed to avoid precedence - people pushing fake bindings and
avoiding review - NAK on this.

Best regards,
Krzysztof

