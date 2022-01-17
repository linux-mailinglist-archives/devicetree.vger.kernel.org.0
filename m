Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF0354905EE
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 11:29:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233639AbiAQK2e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 05:28:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238599AbiAQK2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 05:28:34 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EE05C061574
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 02:28:33 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id s6-20020a7bc386000000b0034a89445406so19394909wmj.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 02:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=HPlcOIwPiHdF2GzGInPdztm1hEXfamwYAz5jOisR7B4=;
        b=B3MPv1p7KcUw8vOr958Ka8geKwfgGHzHLjXFZBEx7lRkp+WGRVTOb++BwJ0MS2FvdY
         v8Lo7RwGN0qr6Nz/aSPSgGt8aaVpCkY1BD2WXw0VOCk6YlAbkQN8Ya26MiDjMFIldukx
         04FxgdSSWV34AZoRRtAwPRRQzhjXTrKATqBXqnSC5DNiMGIS3f+pe3iI1d+lDWvViiji
         2pxZqAaMUPLVuS+LnImi81GrNlNIBpMjSbmnu4Q2N2ph+c0ysx+3Lz6avUQNRTA2t9+G
         Mk+hNkzSputjTIeCZ7ZLa6Ke92vm0GR5cmCBrjTinpxinDHZoGEhAYajyYo1E+tOZrT+
         ELRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=HPlcOIwPiHdF2GzGInPdztm1hEXfamwYAz5jOisR7B4=;
        b=FAHvIruYa2hiS6nzingWEl9DYk2UQo9CylKXHj+p5Bj+UJnlES889rPJvNIeOrcrjX
         6N/Rc/BgUjCbrXGSTLN5m8tPJfKKN487NQGh47jF2gv0CUeW5emrGo3miskfFaAGQdW/
         3C1BBoYznOdDmwk+hrMV/5jUZm6GGRKj1Zelh38JtKlF2t+jYyrA0a+gr4pSszUlgC9h
         2cSzW+fvfOLUBya6uLUEP+L4nwiMs+7hMX+AwYkhdR+xa2UkJAmB47O3zPo1FKWbpgK1
         cLho/1tu1pRa7hm81rMm4xgOuATpVrB9Jy5v4mXNg6qTwtXKwkI2O95yLG4cBjUFAXd7
         2Ebg==
X-Gm-Message-State: AOAM530OvDVZW/CRH1s6S9Iud5qcwABcJMeEbPOLjqohmRrPQTdxlQqK
        ORe2I73+bU4Ec60UL3WnuuZB3w==
X-Google-Smtp-Source: ABdhPJwdo4Q92+inj1pjAnhMyHAJauMkteo51PsuY2RxyrKAVIBFuB9gYIoDwZ7DTPKAQ9a20bn1vQ==
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr13937530wrp.419.1642415311735;
        Mon, 17 Jan 2022 02:28:31 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id f5sm13928698wri.52.2022.01.17.02.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jan 2022 02:28:31 -0800 (PST)
References: <20220115093557.30498-1-alexander.stein@mailbox.org>
 <1jilulav4u.fsf@starbuckisacylon.baylibre.com> <4732096.GXAFRqVoOG@kongar>
 <1jfspnpoxh.fsf@starbuckisacylon.baylibre.com>
 <0a51873b-429f-5905-5bf2-9406f578223b@baylibre.com>
User-agent: mu4e 1.6.10; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: meson-axg: add missing reset-names
 property
Date:   Mon, 17 Jan 2022 11:08:43 +0100
In-reply-to: <0a51873b-429f-5905-5bf2-9406f578223b@baylibre.com>
Message-ID: <1j35lmmzap.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon 17 Jan 2022 at 10:49, Neil Armstrong <narmstrong@baylibre.com> wrote:

> Hi,
>
> On 16/01/2022 18:30, Jerome Brunet wrote:
>> 
>> On Sun 16 Jan 2022 at 10:49, Alexander Stein <alexander.stein@mailbox.org> wrote:
>> 
>>> Am Samstag, 15. Januar 2022, 16:04:10 CET schrieb Jerome Brunet:
>>>>
>>>> On Sat 15 Jan 2022 at 10:35, Alexander Stein <alexander.stein@mailbox.org> 
>>> wrote:
>>>>
>>>>> Bindings amlogic,axg-fifo.txt mandates that reset-names is a required
>>>>> property. Add it.
>>>>
>>>> Binginds *mandates* ?? the bindings you are adding mandates that, not the
>>>> previous doc, nor the driver.
>>>
>>> Well, under required properties 'reset-names' is listed as well as 'arb' is 
>>> required, only 'rst' is optional.
>> 
>> I think there is a misunderstanding then.
>> The arb reset is required, the "reset-names" is not - as long as there
>> is single reset.
>
> To be fair, it's not explicit in the .txt bindings at all:
>
- resets: list of reset phandle, one for each entry reset-names.
> -- reset-names: should contain the following:
> -  * "arb" : memory ARB line (required)
> -  * "rst" : dedicated device reset line (optional)

That was fairly usual way to describe clocks and reset with txt files
but I agree it could have been interpreted the other way around

>
> Anyway, this should be solved, it's pretty common to have reset-names mandatory even
> for a single reset if a second one is optional.

Binding should not decribe what's common but how the binding is supposed to be
used. Fact is the usage was defined by the first and only user which is linux
driver.

This driver does not care if the arb name is present or not. Mandating
something which is unused makes no sense.

If we want to be precise, then it just cares it is the first reset is
the arb one (and yes, this constraint is not described either).

The reason for that is simple, there was no 'rst' line on
first version of the IP, and it was 'fairly usual' to not have
'reset-names' when there is a single reset.

If you think the 'arb' name should be made mandatory, that's fine by
me but one should be able to rely on the name so the driver should be
updated to use it.

>
>> 
>>> So when creating the .yaml accordingly this leads to warnings this patch is 
>>> about to fix.
>>>
>>>> Modifying drivers and DT to accomodate made-up bindings requirement is
>>>> disturbing.
>>>>
>>>> The bindings should not require that because the driver does not, as it
>>>> stands. The driver requires the arb reset to be provided, not the name.
>>>> Please fix the bindings.
>>>
>>> Nothing is made up. When creating the .yaml file I took the .txt documentation 
>>> for granted. How should I know the bindings documentation is apparently wrong?
>>>
>>> When using your older bindings conversion [1] I'm fine with dropping this one.
>>>
>>> Best regards,
>>> Alexander
>>>
>>> [1] https://patchwork.kernel.org/project/linux-amlogic/list/?
>>> series=246453&state=%2A&archive=both
>> 

