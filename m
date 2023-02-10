Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F96D691E87
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 12:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231954AbjBJLm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 06:42:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231834AbjBJLm3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 06:42:29 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A47242A6F5
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 03:42:27 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id y1so4805190wru.2
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 03:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ySFMVBlnxHOb5Y96rtve9uPJPbijU4A0bfrUpEuxnxI=;
        b=cBtmB/qS2YRjTQINDzh4Uev44unqt248JmvcIQWQySbdWIs9og6UYKQPi4Vj43FVae
         M20C5g2TPa8H6soNBdCiknRSzq+NfdzxXMNz4E87dSifQ2mkNpcPtDGxADTChjNv6kkb
         DyP9mHOf+Jhq285bfm1UwfqDdJ6Tg4jarVXXqEUK/VAHiE60k1Eh4t4fvPqi1dDI8LyR
         wt/FjjWPyccx79ZnI9TnWVMy5VNA4bl2ZwrQGFl92aVpPUp56rwvAyn4dbUFOYhh4WKB
         EOEtFo58jwZWJaS2DzHg6cXpfEjbeSpcy8B65r2sYOaEkSXkWB1a/exnSwsSTFeQN3OU
         2/5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ySFMVBlnxHOb5Y96rtve9uPJPbijU4A0bfrUpEuxnxI=;
        b=dcI4ebleDfBiVDyohFR0rG+CKQ+6PKDSZOe1KV47lmCgGmTBoTvTuAUb6KdhKRUEoy
         KzrY4NXg+e5RdW3tuOXFt8mdTeEDb73XlTTkrUS2wy5bCTIE7UT1hMD/M95EV9MUG5gF
         YdcR5CsuSJqS3puqcToWdS0Z3O13MhRwsDmvMWeHBNloCMXUraz+gB6N1g9izcMOlyit
         usz5BVXRH9R2rMcJ7dCIc+SaIrzhP8NXXht41NE7Xv6RZxFyyTp7+eZYJR3kM0MYEJ1P
         8BRWGtlf8n+8DGLnKyD/MkUmzFIySy/hPysmgeTCzR7V6OzGlVBXlCB0oINRDukxF5IY
         a0Lg==
X-Gm-Message-State: AO0yUKWpkCX6dIS0G3PYEzd8MpdZlaamn6CceZQgWcEfAc3gmhYS7WVm
        W0Mmz1hFENu53CXJGb4qEs+OFg==
X-Google-Smtp-Source: AK7set8XXnPNrt7IWyasppe1/1a8+HcM15XPzrRHWU+jxvFbBG89hkqokhp7yTCcVa+37B621VmN/Q==
X-Received: by 2002:a5d:654a:0:b0:2bf:b3e9:d338 with SMTP id z10-20020a5d654a000000b002bfb3e9d338mr13034559wrv.31.1676029346256;
        Fri, 10 Feb 2023 03:42:26 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t2-20020a0560001a4200b002c3ef7e74bdsm3330917wry.73.2023.02.10.03.42.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 03:42:25 -0800 (PST)
Message-ID: <8e78d645-c3e6-0575-0e3e-412d03eec640@linaro.org>
Date:   Fri, 10 Feb 2023 12:42:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v4 4/4] ASoC: cs35l41: Document CS35l41 shared boost
Content-Language: en-US
To:     Lucas Tanure <lucas.tanure@collabora.com>,
        David Rhodes <david.rhodes@cirrus.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        patches@opensource.cirrus.com, linux-kernel@vger.kernel.org,
        kernel@collabora.com
References: <20230209083726.1337150-1-lucas.tanure@collabora.com>
 <20230209083726.1337150-5-lucas.tanure@collabora.com>
 <9b20bdb2-64e0-4888-e8df-fdf1b021c445@linaro.org>
 <a6601fb7-284b-f51a-25a5-09b7733fd5f6@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a6601fb7-284b-f51a-25a5-09b7733fd5f6@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 11:26, Lucas Tanure wrote:
> On 09-02-2023 08:53, Krzysztof Kozlowski wrote:
>> On 09/02/2023 09:37, Lucas Tanure wrote:
>>> Describe the properties used for shared boost configuration.
>>> Based on David Rhodes shared boost patches.
>>
>> No improvements in subject, I asked twice for it. What does the command,
>> I gave you, print?
>>
> Should be
> ASoC: dt-bindings: cirrus,cs35l41: Document CS35l41 shared boost
>

Yes, thanks.

Best regards,
Krzysztof

