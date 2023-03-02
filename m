Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01FBF6A7D5B
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 10:10:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbjCBJKw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 04:10:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229694AbjCBJKv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 04:10:51 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE79828D1A
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 01:10:48 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id s11so804758edy.8
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 01:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677748247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VeH9rvjwe6BWb1Wa9Q2shgpxH8Q4cZrDvTYxjvW0K94=;
        b=GGv2CDKyurIbWv/uSDeHF7wiCPq6P4SfRyWoM4x5OBl+t2reLtJ6GTqvlfjOseZT0Z
         AIIgygfusp00GKXXuvvWxw/7ibQSGNpwRhdiEI4DMOCoNobA7wVA5dbiYgi4TyuGsnNU
         fOTwjmiEAlktMmEvzD1bOaAxmPmnvdZyuFvbaUWB/x8RqeVFElvGI0pHrwEzkDa0PFe1
         7aqNH18uaxSj9RMabMm7FTUnCxIemgV/7yp9+QhqlwCpQzQbK2UFUUJGAdU3wRnkga0/
         E+89BztYDQRFhNevN+/GroGStqtuXTEy3h9T1JoqlF0y5jZjSif/dF0qNIO+BQfQhjpc
         /uvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677748247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VeH9rvjwe6BWb1Wa9Q2shgpxH8Q4cZrDvTYxjvW0K94=;
        b=kzrEpMXTfT5uXpWfF9n4aYzz+1Ol6NzJ0gzfG6M3z7WrdzqFioFvwGaqOY2g/IB9VF
         njtEBedQmjo1aHDjNKpzh7k1zEpZMjLLJv7vMgyXQ+SPbUof7C1a+fJ4pYQgWKCLUwU1
         TwfwBe+QifE3ZaAexCZ7WzVf54eNWHOUjAsRqrbUC6pPrT4tk6Oo/I21F//Ak4ZAgFLJ
         He66WzBnK9CvacwYFZNz/3GF6uVABwLwuYDNaAm+EBYSsufLd0OmHXgttCxC8KjMEnNZ
         50wrqSjBw+xGnz66XhUVfNR1EwUYSzbKsKdbnPpI6CQ4gxtf7u7HqO3df1mSP5gL1ewP
         Bbjg==
X-Gm-Message-State: AO0yUKXKeLOXeG97u+Urv0lca8QKdHvV1PE1jM8FSynPndszjxkWVOl0
        7S4cddLfnx6F3RYDQv75af7ZlA==
X-Google-Smtp-Source: AK7set9YTvDbvaROQFMJ1Qdo89tbo591uI3t9Kn0hozwL5YyJ6TCt6Y/WHcdUuaGrRv+pnmLhMgA9w==
X-Received: by 2002:a17:906:68d3:b0:8b1:7fea:7459 with SMTP id y19-20020a17090668d300b008b17fea7459mr8759882ejr.11.1677748247358;
        Thu, 02 Mar 2023 01:10:47 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o5-20020a17090611c500b008b907006d5dsm6929125eja.173.2023.03.02.01.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 01:10:46 -0800 (PST)
Message-ID: <73a2758d-71c5-0148-0125-0c8b3020465b@linaro.org>
Date:   Thu, 2 Mar 2023 10:10:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3] dt-bindings: watchdog: migrate rt2880 text bindings to
 YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     linux-watchdog@vger.kernel.org, wim@linux-watchdog.org,
        linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20230302085914.2858645-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230302085914.2858645-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/03/2023 09:59, Sergio Paracuellos wrote:
> Ralink RT2880 Watchdog bindings used text format, so migrate them to YAML.
> There are some additions to the binding that were not in the original
> txt file. This binding is used in RT2880, RT3050, RT3352, RT3883, RT5350,
> and MT7620 SoCs. To properly align binding with driver code we need to add
> to the schema 'clocks' and 'resets' properties.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v3:
>  - Re-do commit message.
>  - add 'clocks' property and update example using it.
>  - drop 'reset-names'.
>  - Use 'unevaluatedProperties' instead of 'additionalProperties'.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

