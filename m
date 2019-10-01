Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B869BC35C3
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 15:33:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726326AbfJANdK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 09:33:10 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:42516 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726710AbfJANdK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 09:33:10 -0400
Received: by mail-wr1-f68.google.com with SMTP id n14so15529066wrw.9
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 06:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version;
        bh=q8MDE5plyoRNJmUuOBtTSfs834j7Iqw1FfFcyxYnumg=;
        b=WPpYuDJwCz9iNVKgfF0rxipBxqDz6nlIWJyQIYTX2tjmWW31ckS60u4AMpswyn2LXa
         t/z/KbgIpMw0jeuBWup6RQaWXmzgbkMuviyWh7pu/BS7MFjCd5YodsekhVnLC2jJbeM5
         v1Xlo9Ye4EKeKfKyubaQzvhchUSVrEKefUqWTNWKoD+agXHS2Lj4h/Nwmk+haJiKOpad
         +6zU2nJo+igVlwYj/14q/YChadBZJmS+2yMEomfmzDXPJZsF994+SqMSkXntC1anNA/L
         0SMsHeTkXHiS5IZ5boMwcT5i8VVU2Aev2dTD23LStWXuQi8qaFI7OmkknTiLH5NWqaCm
         13kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version;
        bh=q8MDE5plyoRNJmUuOBtTSfs834j7Iqw1FfFcyxYnumg=;
        b=eLtJxxzYYgSSz2NTVjmyQgMobJJimNMoXAk6RKKl/cFX9C7ozGWWV7i90o8BXG8qG2
         /wTVvtyHy02FuwoXtlKTgTCUG6+uCj6FiY/7df5AgL71PWUc9DsXOPKRBdtTEWc8Mp9G
         HpMuQcKuYdBC8gdncq53JmN8JbjUm6ajWwiONHS4uhVHHFyi1qPKydNIPzmyEpGfTcqL
         U2iHuais15ar13JkreMx9OcB32mU5dRxesps+RVXxLnv5tcIWoCxJJwE6Qt3YI9S37UH
         URfq5c5l/dNfyEeLPH3659nx76ulxoLujAZEHjhSM2MYyq4jvjVNtKGjcepigmPX+Cif
         hEyA==
X-Gm-Message-State: APjAAAVVELLbNC5x5wGzYr7WdUov/L9amWtIqpaEiFswWbzdHaSI09mm
        z2wFgC9RUbu/1BMlbR9z+EEh0A==
X-Google-Smtp-Source: APXvYqx5UTPwgHB49ZkRR24PRLoPJyqRoXoDTxxZ9PbUtFADeW5Y7oQDqDrFvTZvadHS8fHEj1cltA==
X-Received: by 2002:adf:ee05:: with SMTP id y5mr17074158wrn.291.1569936786513;
        Tue, 01 Oct 2019 06:33:06 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a18sm24360812wrh.25.2019.10.01.06.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2019 06:33:05 -0700 (PDT)
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com> <1jsgons4wy.fsf@starbuckisacylon.baylibre.com> <CAFBinCAHD+D=a2mHeHMGq12MvoksHBr308jSrdcH+UYsUmwd8w@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 0/6] add the DDR clock controller on Meson8 and Meson8b
In-reply-to: <CAFBinCAHD+D=a2mHeHMGq12MvoksHBr308jSrdcH+UYsUmwd8w@mail.gmail.com>
Date:   Tue, 01 Oct 2019 15:33:04 +0200
Message-ID: <1jeezwr3ov.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon 23 Sep 2019 at 22:49, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Hi Jerome,
>
> On Mon, Sep 23, 2019 at 12:06 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>>
>> On Sat 21 Sep 2019 at 17:18, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>>
>> > Meson8 and Meson8b SoCs embed a DDR clock controller in their MMCBUS
>> > registers. This series:
>> > - adds support for this DDR clock controller (patches 0 and 1)
>> > - wires up the DDR PLL as input for two audio clocks (patches 2 and 3)
>>
>> Have you been able to validate somehow that DDR rate calculated by CCF
>> is the actual rate that gets to the audio clocks ?
> no, I haven't been able to validate this (yet)
>
>> While I understand the interest for completeness, I suspect the having
>> the DDR clock as an audio parent was just for debugging purpose. IOW,
>> I'm not sure if adding this parent is useful to an actual audio use
>> case. As far as audio would be concerned, I think we are better of
>> without this parent.
> there at least three other (potential) consumers of the ddr_pll clocks
> on the 32-bit SoCs:
> - CPU clock mux [0]
> - clk81 mux [1]
> - USB PHY [2]
>
> I have not validated any of these either
>

Then I would suggest to leave patch 4 out until we can somehow validate
this. 

>
>
> Martin
>
>
> [0] https://github.com/endlessm/u-boot-meson/blob/345ee7eb02903f5ecb1173ffb2cd36666e44ebed/board/amlogic/m8b_m201_v1/firmware/timming.c#L441
> [1] https://github.com/endlessm/u-boot-meson/blob/345ee7eb02903f5ecb1173ffb2cd36666e44ebed/board/amlogic/m8b_m201_v1/firmware/timming.c#L452
> [2] https://github.com/endlessm/u-boot-meson/blob/f1ee03e3f7547d03e1478cc1fc967a9e5a121d92/arch/arm/cpu/aml_meson/m8/firmware/usb_boot/platform.c#L22

