Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2602A68AD8B
	for <lists+devicetree@lfdr.de>; Sun,  5 Feb 2023 01:05:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbjBEAFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 19:05:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229713AbjBEAFW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 19:05:22 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 802E825E2F
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 16:05:21 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id k4so25010562eje.1
        for <devicetree@vger.kernel.org>; Sat, 04 Feb 2023 16:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B6QYB1GxIjCOW+mbyYRI2vElkNJsL0ngRmZW+x6+Des=;
        b=AeJivRsjQ9zt55JJLi7EIMtRHNWSnZkdUTCOQDnatE7kfqHZO+bJkCwcdOQ1j1/LAD
         aCuKV447LxpE81qndhmRHfc1lbLaxIn6ku/jCiOrAEZhVN8FOIK7IlL3jjs2YBMNLFoI
         3ad8/m8ckJF5+NvbJJFDMI9vkR/QTD8/91FT6F5x4gQrmKIvBp8OecfEX6yKoFDljFrM
         UiV0vJ3BO5zUx6pqBGmj4H5Xz3g4x+4PS50n8iMKMFRKBDI0jGoUgQrA496vxmDnvDo1
         cTQmMbfpTs8hrrJFVJxGfR9ssRdZsqE5pBxMUUop2UqTLfiHoFnloMzxc0ZF5mfPJedy
         W0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B6QYB1GxIjCOW+mbyYRI2vElkNJsL0ngRmZW+x6+Des=;
        b=n+qS0wOEHYSZwn9ZIo6dgxWGqOmUNTG/Id3pqXOYxB9dZ9xfHSd8Va3FIAjxCk9Zlg
         0ozhqH1QXG9FHIczwXRfrBJwmaBOBSfvUdcrghaTgvK9RaxZBKCd/4XW4cWB4QiQfRUa
         ln9ofTakUqyPZ6CeNbvHDlraZ3lg/hLk57Pk9sIVgRh6LLnWx7YZ/snMCacUgf5uX2JI
         dAFi8Bhx2axRyP07NmtIU8QKh3FwJn4eQlK4DUQEL4Ztzztrn2r5rS4TdwFZ+kKIZmQG
         bkYimVPIC0ee8ljOZb8/iW83bW0bVbvyUg7yOsSkgzzGpjb4d0akgbJhy4TAgcbXuFEH
         tw0A==
X-Gm-Message-State: AO0yUKW1VNzl2zuPz649TZUmLE3flTZ8CmRBpOZN9soxBXp8SnEgKLdj
        zFV7dfxJt6Xu1oYLmt2Lo0s=
X-Google-Smtp-Source: AK7set9zwKOuDewSoqVnZJcWohgp7ntr54p3bPf3EaoM451F8ymXN9zIoIROUbhbTTwLO3Yu4KUHPQ==
X-Received: by 2002:a17:907:3e82:b0:84d:47e3:fe49 with SMTP id hs2-20020a1709073e8200b0084d47e3fe49mr20617255ejc.39.1675555519850;
        Sat, 04 Feb 2023 16:05:19 -0800 (PST)
Received: from ?IPV6:2a01:c22:7af5:0:2c30:a880:5f2f:348a? (dynamic-2a01-0c22-7af5-0000-2c30-a880-5f2f-348a.c22.pool.telefonica.de. [2a01:c22:7af5:0:2c30:a880:5f2f:348a])
        by smtp.googlemail.com with ESMTPSA id de48-20020a1709069bf000b0088cf92eb0e1sm3391695ejc.150.2023.02.04.16.05.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Feb 2023 16:05:19 -0800 (PST)
Message-ID: <6dcf6333-f75a-f7ec-8ce9-fbbfb81d1a60@gmail.com>
Date:   Sun, 5 Feb 2023 01:05:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <cb62dfc0-cb3d-beba-6d0b-8db18583dda0@gmail.com>
 <285b7b4b-4fd4-be5f-266c-96b1ee6f4cbf@gmail.com>
 <20230201020647.GA2318275-robh@kernel.org>
 <b0e502fa-ef11-df82-ad45-9367ff7c75b3@gmail.com>
 <CAFBinCDHtX2W=Sh4ffUbugn+XVH2UcXWKH2Q63W9G074x6o7zw@mail.gmail.com>
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: Convert Amlogic Meson pinctrl
 binding
In-Reply-To: <CAFBinCDHtX2W=Sh4ffUbugn+XVH2UcXWKH2Q63W9G074x6o7zw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04.02.2023 23:56, Martin Blumenstingl wrote:
> Hi Heiner,
> 
> On Wed, Feb 1, 2023 at 11:13 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
> [...]
>>>> +      - items:
>>>> +          - const: amlogic,meson8m2-aobus-pinctrl
>>>> +          - const: amlogic,meson8-aobus-pinctrl
>>>> +      - items:
>>>> +          - const: amlogic,meson8m2-cbus-pinctrl
>>>> +          - const: amlogic,meson8-cbus-pinctrl
>>>
>>> Again, can't have both with and without the fallback allowed.
>>>
>> Hi Martin,
>>
>> meson8m2 is the only chip version having a fallback for the
>> pinctrl compatible. Is this fallback really needed?
>> Looking at the driver it seems that both compatibles
>> are handled identically.
> Back in the day we decided to duplicate the Meson8 driver code just to
> add four new pin functions that are added by the Meson8m2 SoC
> generation:
> "eth_rxd2", "eth_rxd3", "eth_txd2", "eth_txd3"
> 
> The compatible string was defined with a similar approach: since
> Meson8m2 just adds a few bits to the Meson8 pin controller it's
> backwards compatible.
> 
> If the fallback has to be removed then I'm okay with that but I would
> like to understand it first.
> So far I thought that Rob basically asked to remove the following two
> compatible strings from the enum (as they're listed separately with
> their fallbacks):
> - amlogic,meson8m2-cbus-pinctrl
> - amlogic,meson8m2-aobus-pinctrl
> 
Right, this should be sufficient. There's no place where the 8m2 pinctrl
compatibles are used w/o fallback.

Then the hopefully final version of the binding is almost ready.
I'm just still checking whether there's any way in yaml to specify
a reg-names list with mandatory and optional names. Doesn't seem so.

> 
> Best regards,
> Martin

Heiner
