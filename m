Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0B9D68AEC5
	for <lists+devicetree@lfdr.de>; Sun,  5 Feb 2023 08:57:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbjBEH5g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Feb 2023 02:57:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjBEH5f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Feb 2023 02:57:35 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF0461F5F2
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 23:57:33 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so5178819wms.0
        for <devicetree@vger.kernel.org>; Sat, 04 Feb 2023 23:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2KwxawGhHrGD7Cjciesgq8Dek9FKWiGaG8buzbGZFkk=;
        b=D8O5qLY/PSR31AbVtCwLDd+4KwQ97JcH9YFQMq9tISaak/KKZ9dIPSdjJZttBsf/Ju
         TJcLd+aGOngSHFGU09TL7KBb27HVoV3VYsa8prIDpkW8WQybYFToXCGVLq6vMp7hn5es
         2hyAeQTrhFaevheD6u2wM/j5gqgeNfcvB2VGPLokRfj4LcNaArrL6MzgTWrMTS0fDN5c
         RrBHmOASz2A5rf/3rwWhAsMmYgDNw5USTY/0P/nNOxFUEVlba7FIwAoMcgcYAEW/FZCR
         y0v9KavRXgML5t3s9L6kiSe6uZ4w1llAgCp609PEjJl/LvR5if/pRK3bR3Y4ut71KzI8
         4zQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2KwxawGhHrGD7Cjciesgq8Dek9FKWiGaG8buzbGZFkk=;
        b=n++AhKTy5FaKgypcTG7yX3MZIOXw5SMwWbSJpP1tzHAKaugHOuWaEh8I4Y8x7exGKB
         JLOpRUr+af9Hv3qocmuH9r6Sspa7McsMeIfmVZz4iKBf5xblq8tf2wjSc85R9lJdspUd
         t8kx502oDtFNcNj9KpCOirE1QxOjm56oqlKsM3xTLUNN0ViTJiPH+xcU4fd+PlGrOo7U
         9Tg/SH/mFF/YhCZbqLt+M/gkRsDZvAVb79p2rrICZv6hJ4+D6ww5o7HPrf4cyZ0w4JNR
         N9mJZtjJGavfuKh3P5G2PNkJs16nS9c/59DL/EJnsHf7s7us3ER/cAffbHcIHY6/Ng/O
         e3NQ==
X-Gm-Message-State: AO0yUKW/Zoh0wmM7txzRb0eu+w972MjSPCC/PLvxD/9aBvUUTeCjDJe5
        Jt1Q0W8aiyrkGzy+BEoHQRc=
X-Google-Smtp-Source: AK7set9uhqLS5dyxfl2QAI2MGrrkJQ28Zlj2FHtRgLUQ7ZNTgFqeHMPW97wBgozLNE46beIUv15wFg==
X-Received: by 2002:a05:600c:3504:b0:3df:30c9:4865 with SMTP id h4-20020a05600c350400b003df30c94865mr14174489wmq.26.1675583852409;
        Sat, 04 Feb 2023 23:57:32 -0800 (PST)
Received: from smtpclient.apple ([2a01:e0a:982:cbb0:3cf9:9123:e7f6:d530])
        by smtp.gmail.com with ESMTPSA id k32-20020a05600c1ca000b003ddf2865aeasm13595438wms.41.2023.02.04.23.57.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Feb 2023 23:57:32 -0800 (PST)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From:   Neil Armstrong <narmstrong.kernel@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v3] dt-bindings: pinctrl: Convert Amlogic Meson pinctrl binding
Date:   Sun, 5 Feb 2023 08:57:21 +0100
Message-Id: <9DA78049-10C9-47D6-B36B-9B7E1067385A@gmail.com>
References: <6dcf6333-f75a-f7ec-8ce9-fbbfb81d1a60@gmail.com>
Cc:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
In-Reply-To: <6dcf6333-f75a-f7ec-8ce9-fbbfb81d1a60@gmail.com>
To:     Heiner Kallweit <hkallweit1@gmail.com>
X-Mailer: iPhone Mail (20C65)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> Le 5 f=C3=A9vr. 2023 =C3=A0 01:05, Heiner Kallweit <hkallweit1@gmail.com> a=
 =C3=A9crit :
>=20
> =EF=BB=BFOn 04.02.2023 23:56, Martin Blumenstingl wrote:
>> Hi Heiner,
>>=20
>> On Wed, Feb 1, 2023 at 11:13 PM Heiner Kallweit <hkallweit1@gmail.com> wr=
ote:
>> [...]
>>>>> +      - items:
>>>>> +          - const: amlogic,meson8m2-aobus-pinctrl
>>>>> +          - const: amlogic,meson8-aobus-pinctrl
>>>>> +      - items:
>>>>> +          - const: amlogic,meson8m2-cbus-pinctrl
>>>>> +          - const: amlogic,meson8-cbus-pinctrl
>>>>=20
>>>> Again, can't have both with and without the fallback allowed.
>>>>=20
>>> Hi Martin,
>>>=20
>>> meson8m2 is the only chip version having a fallback for the
>>> pinctrl compatible. Is this fallback really needed?
>>> Looking at the driver it seems that both compatibles
>>> are handled identically.
>> Back in the day we decided to duplicate the Meson8 driver code just to
>> add four new pin functions that are added by the Meson8m2 SoC
>> generation:
>> "eth_rxd2", "eth_rxd3", "eth_txd2", "eth_txd3"
>>=20
>> The compatible string was defined with a similar approach: since
>> Meson8m2 just adds a few bits to the Meson8 pin controller it's
>> backwards compatible.
>>=20
>> If the fallback has to be removed then I'm okay with that but I would
>> like to understand it first.
>> So far I thought that Rob basically asked to remove the following two
>> compatible strings from the enum (as they're listed separately with
>> their fallbacks):
>> - amlogic,meson8m2-cbus-pinctrl
>> - amlogic,meson8m2-aobus-pinctrl
>>=20
> Right, this should be sufficient. There's no place where the 8m2 pinctrl
> compatibles are used w/o fallback.
>=20
> Then the hopefully final version of the binding is almost ready.
> I'm just still checking whether there's any way in yaml to specify
> a reg-names list with mandatory and optional names. Doesn't seem so.

It=E2=80=99s possible with minItems/maxItems and allOf:if/else to specify di=
fferent min/max for each compatible

Neil

>=20
>>=20
>> Best regards,
>> Martin
>=20
> Heiner
