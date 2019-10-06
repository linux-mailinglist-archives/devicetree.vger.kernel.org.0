Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7E450CD2BA
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2019 17:22:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbfJFPWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Oct 2019 11:22:36 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:42651 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726439AbfJFPWg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Oct 2019 11:22:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1570375354;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/kOnrpYd9eSud0Ixupa7J9ljvVudCP2XNDO8TzpsHNE=;
        b=UgnJVUbIQYyPkZEIEPdBviR4ZMZVdZk8P+iJf4ehQqs0dK0TAIfXEzZyz0kCeIB9u8hd01
        rXr+9yXrz/Tc+TTZrDJecvc3D7wTa+piLpqvacdJM8lHOJCAWe6hmzbLTNpQdN98ZoxFtU
        EI0eWR0qJqM36hz5gV5H79UTH5Kq4LY=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-154-P-oXfmEyOq2P-WUH8S9TOg-1; Sun, 06 Oct 2019 11:22:33 -0400
Received: by mail-ed1-f69.google.com with SMTP id y25so7344120edv.20
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2019 08:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eu8O/YhqU7zJEjRc7W99Fi77CUDu2zTF0Sf1rRqLcS8=;
        b=VeHJlZp/TFXYEaKa8FHn95ys39ymbMvhYAYRFd953OeIxgVyagW2DSsSfgTVaz/0Ix
         cWNF1Mku3/piWIWgEdQjuHIR2Haj3YMZ609N0/Xr0IglkDRMUD2sZR4kHaxR0lKdbpR3
         7BGzpyIY0/gREr7Dal4QTu7seg0HciarDpdbSUfPQSAKmy1wtNrd1G3sh22y28/Eg0rJ
         2t8rIcBk4JpTGo4IFnJnyGWvxqdMSqLnZ7l4dtoKPhx9rd33iLrKgiw0Kg5HZWD1PRIw
         D/EW0tZhVMwlxZWfl19EUcRgyqTybBmjtrsJAC3RPVuAJxMXfp+hIKZggphdL4I+7WB/
         hRZA==
X-Gm-Message-State: APjAAAWcbx41zTpz1d9Gyf1IsrWl25S4BfxzxULmC92lcHTyka2zbWab
        YoaPpTUHQOEwl6EXNlGVhKeObFevlUqZFf8pNBhpk0FQTKwXSJ9WsEP3nTYlxaZ9Ht7Xp7nhdmD
        a2xc3unp7HrZbVagxcLz40Q==
X-Received: by 2002:a50:fb16:: with SMTP id d22mr25119899edq.30.1570375351537;
        Sun, 06 Oct 2019 08:22:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtY8LnU1MoovTCbhwbtJH9YruP7SXFbEh5OkwIhzOI6haHNozTxOEiKJdPxcrBFmzfbNEyQg==
X-Received: by 2002:a50:fb16:: with SMTP id d22mr25119877edq.30.1570375351305;
        Sun, 06 Oct 2019 08:22:31 -0700 (PDT)
Received: from localhost.localdomain ([109.38.129.160])
        by smtp.gmail.com with ESMTPSA id dv15sm1447787ejb.49.2019.10.06.08.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 08:22:30 -0700 (PDT)
Subject: Re: [RFC][PATCH 2/3] usb: roles: Add usb role switch notifier.
To:     John Stultz <john.stultz@linaro.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Yu Chen <chenyu56@huawei.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jun Li <lijun.kernel@gmail.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Linux USB List <linux-usb@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20191002231617.3670-1-john.stultz@linaro.org>
 <20191002231617.3670-3-john.stultz@linaro.org>
 <20191003112618.GA2420393@kroah.com>
 <CALAqxLWm_u3KsXHn4a6PdBCOKM1vs5k0xS3G5jY+M-=HBqUJag@mail.gmail.com>
 <9cfccb6a-fba1-61a3-3eb6-3009c2f5e747@redhat.com>
 <CALAqxLX3uSJKvRwzcQznaF4WK52BcM5Bh+PNXHmfDe1aTSUL8Q@mail.gmail.com>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <fa44a7ab-14bc-24ec-a19b-7bf15e100ce1@redhat.com>
Date:   Sun, 6 Oct 2019 17:22:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CALAqxLX3uSJKvRwzcQznaF4WK52BcM5Bh+PNXHmfDe1aTSUL8Q@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: P-oXfmEyOq2P-WUH8S9TOg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 10/3/19 11:33 PM, John Stultz wrote:
> On Thu, Oct 3, 2019 at 1:56 PM Hans de Goede <hdegoede@redhat.com> wrote:
>> On 03-10-2019 22:45, John Stultz wrote:
>>> The HiKey960 has only one USB controller, but in order to support both
>>> USB-C gadget/OTG and USB-A (host only) ports. When the USB-C
>>> connection is attached, it powers down and disconnects the hub. When
>>> the USB-C connection is detached, it powers the hub on and connects
>>> the controller to the hub.
>>
>> When you say one controller, do you mean 1 host and 1 gadget controller,
>> or is this one of these lovely devices where a gadget controller gets
>> abused as / confused with a proper host controller?
>=20
> I'm not totally sure myself, but I believe it's the latter, as the
> host ports have to be disabled in order for the gadet/otg port to
> function.
>=20
> There was a similar situation w/ the original HiKey board (dwc2
> controller) as well, though the switching was done fully in hardware
> and we only needed some minor tweaks to the driver to keep the state
> transitions straight.
>=20
>> And since you are doing a usb-role-switch driver, I guess that the
>> role-switch is integrated inside the SoC, so you only get one pair
>> of USB datalines to the outside ?
>=20
> I believe so, but again, I don't have a ton of knowledge about the SoC
> details, Chen Yu would probably be the right person to answer, but I
> don't know if he's doing upstreaming anymore.
>=20
>> This does seem rather special, it might help if you can provide a diagra=
m
>> with both the relevant bits inside the SoC as well as what lives outside
>> the Soc. even if it is in ASCII art...
>=20
> There is a schematic pdf here:
> https://github.com/96boards/documentation/raw/master/consumer/hikey/hikey=
960/hardware-docs/HiKey960_Schematics.pdf
>=20
> The larger block diagram on page 3 might be helpful, but you can find
> more details on the usb hub bits on page 17 and 18.

Ok, so I took a quick look at the schematic and it is really funky.

The USB3 superspeed data pairs are only going to the USB-3 hub and
only the USB-2 lines are muxed between the TypeC and the HUB, so
in theory superspeed devices could keep working while the TypeC is
in device mode, since their data lines will still be connected,
but I guess the controller in the SoC is switched to device mode
then so this does not work. Likewise Vbus is an all or
nothing thing, either both the TypeC connector + the 2 Type-A
reeptacles get Vusb or none of them get Vusb. Also it is seems to use
the TypeC connector in host-mode together with the A receptacles.
I must say this is a weird design...

Anyways back the code to add a usb role switch notifier. I do
not think that this is a good idea, this is making "core" changes
to deal with a special case. If you are going to use a notfier for
this then IMHO the notifier should be part of the hikey960 usb role
swtich driver and not be in the usb-role-switch class code, since
this is very much a device specific hack.

Regards,

Hans

