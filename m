Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C46F55AA64
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 15:18:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232906AbiFYNSb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 09:18:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231982AbiFYNSa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 09:18:30 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24A721A076
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 06:18:29 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id s14so5822225ljs.3
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 06:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=y48eFrfU58Es0df/uWJznzVTFLiqIJAQIHOdyuzq+vI=;
        b=pgEyMA7AJAQGqGu2mhSC4g/5e0GaZouYfvgHQmDmSJSmgALyvnYC49Zq+n////7GpB
         ycjXl8UvRfCzsAnBmQl1gjyOAX/rX3weivYHAahxyq1MfEAfufNf1UJMT9zocpEyGIqa
         6rkBF0zRLwKJds5nlbUt6FeYd6Sl6ivfKtjSr/DHRL3VY0UoF9HrGiEd+cgzz2QajSeU
         MztYJpQHhM7GAq2xiKHDM6sExtN+QXYgzaAO8MxwmWvm+2ectQwmz3FW7ovuRaynnfVW
         xO6Epo735TOizkrwaXLWUfdcaf8aeSdwhMrvPpzkIdy0/YUvDe5+0kZucygQ3Xy6BCnU
         t1YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=y48eFrfU58Es0df/uWJznzVTFLiqIJAQIHOdyuzq+vI=;
        b=6I7jH+xXZrKF8BJgnmP8mkLv8cgJzqB7ipXNv9736ae0MZGTCfHYeAEeH9QhfpfppR
         5NuogMbSoLiMabS7PiSPSo9n6l++LXtEOlskEKAa77L0fthyvxNRf4sQZKZDu4weIzhY
         rI+KHehNoCV4ALKtqv4SYgjLE+bAvOy5nBe22RTS/G8VWxQPwpLzwPwn31Ylq8kU+VUF
         F0dYzbbyQkPToOyLKZG1AmL4YKdEd3rKTxT2QIOeWAaRpTxCduL3RcdrbpC9zA6N0vtH
         JmnJca6BpiPGpEFuI7Rtxp+DCGUAeJ8VGn9Yx3mu4NCtu2N1Fe8I5kY7sgdTW5Twxbjy
         8wvw==
X-Gm-Message-State: AJIora+kbRSojNqv9fhWYNzglOkZxw82SUW3VcZWpfRkwVUVH6JqKGQV
        9dG9s1g7Ry0G0q+9b9a7uWY=
X-Google-Smtp-Source: AGRyM1svl9LdEm2v6OWC4kfHiaxFv9+8mH+hAx8best6leANNJhcHEHOlmTrA3/pYHySOcQcco+lnw==
X-Received: by 2002:a05:651c:1501:b0:255:9588:98a6 with SMTP id e1-20020a05651c150100b00255958898a6mr1959615ljf.306.1656163107244;
        Sat, 25 Jun 2022 06:18:27 -0700 (PDT)
Received: from smtpclient.apple (31-178-127-80.dynamic.chello.pl. [31.178.127.80])
        by smtp.gmail.com with ESMTPSA id g6-20020a056512118600b0047fac765f39sm861398lfr.219.2022.06.25.06.18.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Jun 2022 06:18:26 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
Date:   Sat, 25 Jun 2022 15:18:23 +0200
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
To:     Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> w =
dniu 25.06.2022, o godz. 01:50:
>=20
> On Fri, Jun 24, 2022 at 2:57 PM Piotr Oniszczuk
> <piotr.oniszczuk@gmail.com> wrote:
>>=20
>>=20
>>=20
>>> Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> =
w dniu 24.06.2022, o godz. 14:40:
>>>=20
>>>>=20
>>>> Sascha, Peter
>>>>=20
>>>> I returned to trying to find why hdmi-cec is not working on rock3-a =
v1.31 hw.
>>>>=20
>>>> I'm on vop2 v11 on 5.18 mainline.
>>>>=20
>>>> Current findings:
>>>>=20
>>>> (1) the same sw. stack/binaries works on rock-3b (where cec uses =
hdmitx_m0 instead of hdmitx_m1 I/O line);
>>>>=20
>>>> (2) gpio-cec however works no problem on rock3-a;
>>>>=20
>>>> (3) monitoring cec messages with v4-utils 'cec-follower -s' shows =
exact the same events in non-working rock3-a and working rock3-b
>>>> (tested by issue configure cec by 'cec-ctl -d /dev/cec0 =
--phys-addr=3D1.0.0.0 --playback' command)
>>>=20
>>> --phys-addr isn't a valid command for this controller. The device
>>> designation is only required if you have more than one cec device.
>>>=20
>>>>=20
>>>> --> i'm interpreting this as confirmation that low level phy layer =
receives ok cec data from connected device on non-working rock3-a;
>>>>=20
>>>> (4) debug sysfs for cec shows "has CEC follower (in passthrough =
mode)" for working rock-3b and there is NO "has CEC follower" debug =
message in failing rock3-a.
>>>=20
>>> This makes me suspect you are in fact not using the same software
>>> stack, or are not running the same commands.
>>=20
>> It was the same SD card - with only DT declaration changed in =
boot.scr
>> Such SD card has cec perfectly working in rock3b
>>=20
>>> Running `cec-follower -v -m -T` on a rk3566 device with working cec
>>> using 5.19-rc1, I see no mention of cec-follower in the debugfs cec0
>>> status entry.
>>>=20
>>>>=20
>>>> For me It looks like low-level hdmi-cec works ok on failing rock3-a =
- but upper layers (in hdmi vop2?) are not registering (or failing to =
register) cec-follower filehandle. This happens just when hdmitx I/O in =
DT is changed from hdmitx_m0 to hdmutx_m1. A bit strange - but all my =
tests consistently confirming this observation....
>>>=20
>>> There is nothing wrong with vop2 as it is not involved at all in =
this.
>>> The rockchip hdmi driver (which is not specific to vop2) does =
nothing
>>> more than call the cec registration method in the dw hdmi bridge
>>> driver, which then calls the kernel cec registration functions.
>>> Changing pinmux changes nothing in how this functions.
>>>=20
>>>>=20
>>>> I'm too weak in kernel cec internals - so maybe you have any =
pointers how to further debug/investigate this issue?
>>>=20
>>> As we discussed in the pine64 room, this is still very likely a
>>> hardware issue with this board. A configuration issue with your =
u-boot
>>> or tf-a is also a possibility, but is less likely.
>>>=20
>>> You showed with your logic analyzer with nothing plugged in and cec
>>> not muxed to m1, data was present on m1.
>>=20
>> Issue of presence of data on m1 with nothing plugged was mistake from =
my side: wrong board pin used to connect logic analyser GND.
>> After correctly connecting GND - all is ok (no any unexpected data; =
pulses appears only after cec commands; pulses timings are ok so cec =
protocol analyser shows reasonable data; no cec timing errors reported =
by protocol analyser).
>>=20
>>=20
>>> I requested you investigate
>>> the following, to which you haven't replied:
>>> Have you tried forcing m0 to be assigned to a device other than =
hdmi-cec?
>>=20
>> I'm a bit lost here: v1.31 hw uses m1 and m0 is unused.
>> Is you idea to verify that m0 is not used by hdmi-cec - even when m1 =
is declared for hdmi-cec in DT?
>> May you pls hint me with any example of DT snippet for Your m0 =
assignment idea?
>=20
> As pinctrl is only assigned when a device explicitly requests it in
> the kernel driver, it is possible to have multiple pinctrl pins
> assigned to a single device if it was left that way by previous
> software or userspace has fun with it. Such as both the m0 and m1 pins
> are assigned to the cec-controller. Such a case is broken.
>=20
> You can assign the m0 pin to another device explicitly, but before
> doing so I'd read the register manually just to see if it. For example
> that pin also is the spi3m1_cs1 pin.

So done test where I assigned m0 for gpio-cec.
2nd cec device appeared.
But this changed nothing regarding hdmi-cec.  Sill dead :-(

>=20
>>=20
>>> Have you checked if m1 is shorted to another pin?
>>=20
>> Yes. Looks ok for me.
>> (as radxa debian has working ok hdmi-cec i think hw is ok)
>>=20
>>>=20
>>> In regards to your data frames for 4.19 vs 5.18, image-view-on is =
not
>>> a valid command if the topology doesn't detect a device on the bus.
>>> I recommend running the same test, except run `cec-ctl -S =
--playback`
>>> and post the results for both.
>>=20
>> Pls find results for command `cec-ctl -S --playback`:
>>=20
>> 1.  radxa ubuntu 4.19 bsp:
>> logic analyser cec proto decoded + timings: =
https://pastebin.com/hHPmKv4i
>> FYI logic analyser output (first 350msec): =
https://paste.pics/63cb4dc7f9b51d8825d377b45bf71ae4
>>=20
>> 2. mainline 5.18.6:
>> logic analyser cec proto decoded + timings: =
https://pastebin.com/YYDUY4x1
>> FYI logic analyser output (first 350msec): =
https://paste.pics/0d894b8ceba164dc6d743f8044c7e01e
>>=20
>>=20
>=20
> Now this is interesting, the TV is responding in both cases. The TV
> does not show up at all in the return sequence in case 2?


So I started to compare `cec-ctl -S --playback`on rock3a and rock3b - =
but this time after cold reboots of: TV and board.=20

overview of whole comm:=20
working OK rock3-b ( https://pastebin.com/ffthT5UQ )
non-working rock3-a ( https://pastebin.com/Qdn71qwS )

First difference i see is idle/no idle between cec commands:
non-working: https://paste.pics/bb1616312d1f75b8808aff30f186ed76
working: https://paste.pics/96d96f4950f4d87defbfd8172819de2d

i.e.
working: has 20ms idle before opcode 0xA6 =
https://paste.pics/346f482310baa0d6ed0a3d5b2e820e09
while non-working has no any idle =
https://paste.pics/640ee190e0d501d4fc9b05c746a68502
data in frames is the same

or
working: has 20ms idle before opcode 0x84 =
https://paste.pics/93cb7c3cd72ab0f91c9a5b6ff24cadf3
while non-working has no any idle =
https://paste.pics/e9afed93f5b3acf6e11aa00d390d52bc
data in frames is the same

for opcode 0x87 data in frames is also the same


generally:
working has always around 16..20ms of idle between commands while =
non-working has no any idles. =20

How this is possible that changing m0->m1 changes timings in such way?  =20=



