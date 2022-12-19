Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3587650EAB
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 16:33:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232058AbiLSPdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 10:33:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232070AbiLSPdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 10:33:08 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E137BE31
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 07:33:07 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id j4so14276460lfk.0
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 07:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PTYRVtrBCWvTbbm1id6yk46NA4foNt4C1COiVzWNk/A=;
        b=Insg6f7y+IPpAFrxlboZlF32xM0/+r2Po6VW390uUA1COFsO2mugcOpBlV/s75jj8o
         l6mPtuI1PCEIHNA8VXkKGXvz5cko8S0pCLkPBP+1BJXA1S/gPGVyhs8A9sG+FNwKQVO6
         XlWFgz45VbTNr42F2k9uenYBzGTqSAJ4IKWton21NA/ky7VQlK3M1e6ot516TQ0dc43R
         zZu1Q3JwJ64AIswKQ6iXcSB9XBnl46eKA8OTNC0cjhHRTkS1RyzvsRXPW4wUBN1gMxFv
         F0ezSwjqWG8hy6ARvxU1eT1+OrRs80riA6VmuN/aNekeBkKkHCkaL2GxnlMCHOl/pt0i
         c0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PTYRVtrBCWvTbbm1id6yk46NA4foNt4C1COiVzWNk/A=;
        b=Ljiq9isi5NYowdCvgWG/+/h6gG8af2k37C8/NYrhSICKrjaC0ZZoAHB8G/jHlksxTr
         dGf1Tkz2WgHTR9laA6+kDQ/HSjmaYxOU00gvHAT9Z1rqi6hLWwrr2gt8WUp5+1rg0YU6
         hSn1Mv/6y72G+iEG4Regzt3IjvAOOZwDNdBoMDAqnevgM+1tRt5hand3zCsQgd6uf/kT
         gAuvwmM5mi4sAAgJwnJjGXYAsXk0OkUuKeUYRJJY6AaIlbtste2zIJNY6CRo+cX8Dlcv
         RSh8NUaxECISyTMVGtHWzc3qmFe04heaT+5SrGgWRMIYXtRr5bfHtD3+Umkur9z5h0T4
         Vemw==
X-Gm-Message-State: ANoB5pnRR9Fih86Cu+AFXFQP/SSp3bBLEjJ+p64vxFjiKWN2vUnNZtlz
        6XHN/KU8sginpxvw1q0Pdy0=
X-Google-Smtp-Source: AA0mqf6j9J2ITGvHGbil5qMW1XANOnr4H7x2vAlRqkx27/nWngyc+1D60iClP2o9yXk2Q+4fCyVOhg==
X-Received: by 2002:a05:6512:260c:b0:4b5:9183:5ad0 with SMTP id bt12-20020a056512260c00b004b591835ad0mr15799354lfb.63.1671463986139;
        Mon, 19 Dec 2022 07:33:06 -0800 (PST)
Received: from [10.0.0.100] (host-185-69-38-8.kaisa-laajakaista.fi. [185.69.38.8])
        by smtp.gmail.com with ESMTPSA id s12-20020ac25c4c000000b004b591829352sm1127788lfp.64.2022.12.19.07.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 07:33:05 -0800 (PST)
Message-ID: <bcf910a6-34cf-f668-6b5f-3f9fcde3fcf3@gmail.com>
Date:   Mon, 19 Dec 2022 17:34:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Mohan Kumar <mkumard@nvidia.com>,
        nikita.yoush@cogentembedded.com
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87mt7qpylw.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdW=_-MyqAjRqaoPyWkoUmdB2VOE1t+wpym7eyOxkzc_7g@mail.gmail.com>
 <Y5sJV2KfX98KoMYZ@sirena.org.uk>
 <CAMuHMdWwP6QDUux62GZtCT7tsFhAhex=Fns5e=n_KTjGXHRy0Q@mail.gmail.com>
 <20221216163919.GA2863056-robh@kernel.org>
 <CAMuHMdWEbVqD3z69-nJe9ST35_S4AZSJLrYqC3f=F+VONSPn0Q@mail.gmail.com>
 <CAMuHMdXNeJxzWoR6b+GOst9X49yK=vB574Lk1hmAS0WXDZrwPg@mail.gmail.com>
Content-Language: en-US
From:   =?UTF-8?Q?P=c3=a9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Subject: Re: [PATCH 06/11] ASoC: dt-bindings: ti,pcm3168a: Convert to
 json-schema
In-Reply-To: <CAMuHMdXNeJxzWoR6b+GOst9X49yK=vB574Lk1hmAS0WXDZrwPg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

On 19/12/2022 10:45, Geert Uytterhoeven wrote:
> Oops, Peter is no longer at TI...

Yup.

> 
> On Mon, Dec 19, 2022 at 9:43 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> CC Peter
>>
>> On Fri, Dec 16, 2022 at 5:39 PM Rob Herring <robh@kernel.org> wrote:
>>> On Thu, Dec 15, 2022 at 01:10:44PM +0100, Geert Uytterhoeven wrote:
>>>> On Thu, Dec 15, 2022 at 12:47 PM Mark Brown <broonie@kernel.org> wrote:
>>>>> On Thu, Dec 15, 2022 at 12:03:02PM +0100, Geert Uytterhoeven wrote:
>>>>>> On Wed, Dec 14, 2022 at 2:23 AM Kuninori Morimoto
>>>>>>> +maintainers:
>>>>>>> +  - Damien Horsley <Damien.Horsley@imgtec.com>
>>>>>
>>>>>> For v2, I had planned
>>>>>
>>>>>>      -+  - Damien Horsley <Damien.Horsley@imgtec.com>
>>>>>>      ++  - Jaroslav Kysela <perex@perex.cz>
>>>>>>      ++  - Takashi Iwai <tiwai@suse.com>
>>>>>
>>>>>> as Damien's address bounces.
>>>>>
>>>>> I wouldn't do that, I gather the maintainers for DT bindings are
>>>>> supposed to be people who know and care about the specific binding in
>>>>> particular.
>>>>
>>>> Sure.  But how can they (still) care, if we cannot reach them?
>>>> There's no email message from Damien to be found during the past
>>>> 7 years.
>>>
>>> Then put someone that would care if the binding is deleted. As this is
>>> used on Renesas board(s), I can think of a few candidates.
>>
>> Or perhaps someone from TI? ;-)
>> This is a TI component, and also used on a TI K3 board...

Can it go w/o a Maintainer? ;)
The driver is (close to) feature complete and only needs framework 
change updates.
I don't particularly care about this driver as such. Yes, the j721e EVM 
uses it (which I still maintain along with the TI audio stack).

Unfortunately I don't know anyone at TI who could be assigned...

Nikita did a fix quite recently to the driver.
Nikita, are you interested?

-- 
Péter
