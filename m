Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC7CB6983AE
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 19:44:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbjBOSoN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 13:44:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbjBOSoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 13:44:12 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B4123D0AD
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 10:43:35 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id y1so20152458wru.2
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 10:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YpMikJK+ogNWZgaRbuctnXBwaLqp/EN3eQexUz9qw0o=;
        b=r82h08VRbV5lg7tMiutz+RqOamX/pr5iZTHrrGCiZr7rIxgdu/QaXn6iz0BLBrUye8
         vUH2A5AsMzUWoMSBbuoW+EIvg+wwQXiIPg7g4BfxJ43ZZKqcJpIDXce0Wkr7oG29JmAg
         HwcQvoWmUowN0gujLQ38sS7iBaXf9c21lnioQRlJP8LbOm15vEkxNs4zqN5boVo/cVaY
         VHiJnYjFsSCOzfqGvHhtKmOuUeSiV6FTpJ3Ec8pr7BotetjY8kcW6LYp7rXRFfqvb58r
         OZHoi4Bj3KQlYMhI2LZ1uPMu0CRAH0niJ16w2pUQwk6SlEhz3DVzjk2P2skfS9twfxgn
         sewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YpMikJK+ogNWZgaRbuctnXBwaLqp/EN3eQexUz9qw0o=;
        b=wZYcGS7Hkdb8MrUPDB5wTM2c+2Mk7XWnH7pkdk8yQAdsdcrh9UtziDTf7bWeFZLRRW
         CFU8zROHEqSnqwlYoaA5jdjzexdT/rM8S7Dk4hi2qOxl41CBmj0bsxnw77I6HjcMOOgP
         OMrVGBmhQJr1pko9Abupp7Ob//qIZUtCh87ZnznCBmAWnfkW6rx8+pnwmXZIsnWndNzc
         LElY6uVuZLcvzdCGJz7yKFT1FSlC9ktv20dBY/ARWjUTihdO/4jYztLzJpnoEPetSdw+
         v1+PG4MN57yLIMhbX8aAipRA3r2AnKRKvhVOMFYErUI4yBCNMJ3O3DP3HRxRsBpY7SHY
         e0ug==
X-Gm-Message-State: AO0yUKV/1jSv80O68DwFklyIy+/c2C6CMxsk7DpZXpot1OeKmNOMMRoU
        lNA+b261gqWjK5u6nVbKn0ut6deRtrH2S+2Q
X-Google-Smtp-Source: AK7set/+UqiAtt9waEuL+2YL8GiuUfkW+KuZeffARloRF5KwI/L+vVz9OvlPwY2KyAN1LSFS1/CPjQ==
X-Received: by 2002:a5d:4cd1:0:b0:2bf:cb6a:a7e with SMTP id c17-20020a5d4cd1000000b002bfcb6a0a7emr2624436wrt.42.1676486576610;
        Wed, 15 Feb 2023 10:42:56 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m21-20020a056000181500b002c56af32e8csm2646938wrh.35.2023.02.15.10.42.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 10:42:56 -0800 (PST)
Message-ID: <7b194041-4386-3b82-c65d-f0e3ad5cf015@linaro.org>
Date:   Wed, 15 Feb 2023 19:42:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car
 Gen4 support
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>,
        Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
 <87sffa8g99.wl-kuninori.morimoto.gx@renesas.com>
 <9aa09940-91cf-32ba-34f4-a57c9e9965bc@linaro.org>
 <Y+vKcGic3sC7+3I/@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y+vKcGic3sC7+3I/@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 18:52, Mark Brown wrote:
> On Mon, Feb 13, 2023 at 09:58:15AM +0100, Krzysztof Kozlowski wrote:
>> On 13/02/2023 03:13, Kuninori Morimoto wrote:
> 
>>>    clock-names:
>>>      description: List of necessary clock names.
>>> -    minItems: 1
>>> -    maxItems: 31
> 
>> Not much of an improvement here. We asked to keep the constraints here.
>> I gave you the reference how it should look like. Why did you decide to
>> do it differently than what I linked?
> 
> Krzysztof, please take more time to explain what issues you're
> seeing, what you want people to do and why.  I'm having a hard
> time identifying what the issue is here - AFAICT when you talk
> about the example you linked you're referring to:
> 
>   https://elixir.bootlin.com/linux/v5.19-rc6/source/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml#L57
> 
> which as far as I can tell looks like what Morimoto-san is trying
> to accomplish here.  I can't tell what the issue you're raising
> is, let alone if it's something important or just a stylistic
> nit.

If you leave the top-level definition without any constraints and you
forget to include all your compatibles in allOf:if:then, then you end up
without constraints. Consider:

-----
properties:
  compatible:
    enum:
      - foo
      - bar

clock-names:
  description: anything

if:
  prop:
    compat:
      enum:
        - foo
then:
  prop:
    clock-names:
      - ahb
      - sclk
-----

What clocks are valid for bar?

For simple cases this might be obvious, for more complex this is easy to
miss. So the recommended syntax is with constraints at the top.

BTW, if there is reason not to use it - sure, bring the reason, we talk
and maybe skip it, I don't mind. But there was no reason - just part was
skipped/missing.


Best regards,
Krzysztof

