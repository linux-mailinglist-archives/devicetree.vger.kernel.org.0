Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B1FC627721
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 09:11:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236214AbiKNILA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 03:11:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235540AbiKNIK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 03:10:59 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4767F14D31
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:10:58 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id c25so12127080ljr.8
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3H0LxXhpL76jfnhP8PQ1RHBeIChC4ZVpOi0Wx0bdW8E=;
        b=TkRLz+/gekpKO7S03tCmLxg4IKlHcjnVElTWA9QX1RVVKswKNfXp4+60Rl3D5+XVI4
         SzjaGBYtEuZJHqg3BRzS6OSbgjA9h3l75d5JTgRwrPxGf+17eYdYdC/D9cJwtxBvwmNC
         gBRp2X/yrXnF+GhrXvuZGKqpERZM/lsgSvdrk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3H0LxXhpL76jfnhP8PQ1RHBeIChC4ZVpOi0Wx0bdW8E=;
        b=6rkIpbWHqQ0S1QCyXOnDLEyQm5v7B6OQ0R3Ya39YG9F18SSKmC+0n3AUtfI9wif7qX
         v+EfE7xO1KcS9o+SGk2I5X1WIEJVBaoDwXG7BAnnKqS2SbbkW2LTDrs2RJ402HUUQ5RX
         JdlWc2r5CaHqtsaNGtF3hhtI/bD61JnZ9+N3++XrH1FVZjB1Ttx5+ANnvmEFlyoZEhnQ
         1l5l3cwBd0mXPR04Uw+o4pfV7DcZ66T1GwtRjdxQDRnRtzPX570C+NitjSBDv4xH2IaV
         /7HvHyBQt2PpDWZ/R6smev/T8Ar60+nhUdNCTpznoVbCpCvkKAoNFHDGNEGs5i98TbEw
         ti5g==
X-Gm-Message-State: ANoB5pm1K5aU5qXXKie+KbtKWEckrR9YVsjdgALQ+sZVdKLCmGPi35hP
        9b7camZP8TCXGHi87zLyRCnWM5kRv0QgRdedmBs=
X-Google-Smtp-Source: AA0mqf5KtaHWmZmBx8dX/kqroR0rymfu6pyC/o70E1rrGmIGAUsbgDoZAZx9JhPVWx8avRTfMy8FTg==
X-Received: by 2002:a2e:8706:0:b0:26d:e3ae:886a with SMTP id m6-20020a2e8706000000b0026de3ae886amr4049310lji.531.1668413456613;
        Mon, 14 Nov 2022 00:10:56 -0800 (PST)
Received: from [172.16.11.74] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id o22-20020ac25e36000000b0049fbf5facf4sm1720992lfg.75.2022.11.14.00.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:10:55 -0800 (PST)
Message-ID: <feafad6d-736d-27a5-380d-e8a531b4c46b@rasmusvillemoes.dk>
Date:   Mon, 14 Nov 2022 09:10:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 2/5] dt-bindings: iio: ad74413r: make refin-supply
 optional
Content-Language: en-US, da
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Cosmin Tanislav <cosmin.tanislav@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111143921.742194-1-linux@rasmusvillemoes.dk>
 <20221111143921.742194-3-linux@rasmusvillemoes.dk>
 <20221112165448.17489ef1@jic23-huawei>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <20221112165448.17489ef1@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/11/2022 17.54, Jonathan Cameron wrote:
> On Fri, 11 Nov 2022 15:39:18 +0100
> Rasmus Villemoes <linux@rasmusvillemoes.dk> wrote:
> 
>> The ad74412r/ad74413r has an internal 2.5V reference output, which (by
>> tying the REFOUT pin to the REFIN pin) can be used in lieu of an
>> external 2.5V input reference. So stop marking refin-supply as
>> required.
>>
>> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> 
> 
> Interesting corner case.  Given we have no way of knowing if the
> wiring has REFOUT connected to REFIN I see two ways we should fix this.
> 
> 1) Just have any DT doing this provide a fixed regulator.
> 2) Have the REFOUT supported as an actual regulator - in theory it might be
>    wired to other devices.  This might get a little interesting ordering
>    wise as we'll want to register the regulator before we try to consume
>    it in the same driver.  I'm also not 100% sure there are no other issues
>    in a driver providing and consuming the same regulator.

Hm, I don't like the idea of exposing REFOUT as a real regulator. As you
write, there's gonna be interesting chicken-and-egg problems, and I also
don't think it can actually deliver any meaningful current, i.e. it
can't really (and shouldn't) be used for supplying other peripherals.

A third option is to have a boolean property to explicitly indicate that
"yes, we're using refout as refin", and then make the requirement in the
schema be "refin-supply XOR refout-as-refin".

But I think the simplest is (1), I will just add a fixed-regulator with
a suitable comment in my .dts, and patches 2,3 can be ignored.

Thanks,
Rasmus

