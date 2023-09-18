Return-Path: <devicetree+bounces-1117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7EE7A4C55
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:31:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB6E0281C8B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:31:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E0A81D6A9;
	Mon, 18 Sep 2023 15:31:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3D31D6B6
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:31:29 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B371E51
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:27:28 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b703a0453fso78127221fa.3
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695050675; x=1695655475; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RuVncYfyknrhNj8AwebunR5CYwD24eRmeOt3k3Ppp84=;
        b=jYoLdIV3FuJ7VgAtZmNWdUfnkd985N8JU1ZRunvUPmXNOx0DwdVLEis/1wUhEJPApd
         qPaNMYpD5Q4Tptb2z3VUH/7X+e1IqDgkse7mTAUjyePUmvJqVzoxKZ1Bg1uQxPUNjSgs
         Ocd+RuaOdm/CFGYoJuJ07Bb24j9kQEqG3IpA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695050675; x=1695655475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RuVncYfyknrhNj8AwebunR5CYwD24eRmeOt3k3Ppp84=;
        b=Q2yMKUsFw+6JTRJiFRV7vmaV50o8g7kycCm17FKUlSBn8fgcol8QCHX2svM730D0cF
         ZiPkk6odPEvkIJBgsFBhIGlt97hd49U/59OpWWTk2HeeGQ3j1Fl9LpqmJEkScrr3nDS3
         WOekhD3iAk6/hDm65Y7LRl+RN1GdXDd9vBCY3vL009yizaXdKon6fJBuz6iH/zgvPw6j
         gtd3jedrql8tJ23VTrykJm8IqRt5MXanEPd5HKlAADfHUxvbvzhxeFOZHpQ0c0Od6nq2
         px7cX6zpiyZMgEliJliW+Ql9YucqWw9f59tumkpGPMkRosVFfVitNQV1yhdJ6efRNwYM
         80zg==
X-Gm-Message-State: AOJu0YzCuN0wANDvbaedb+J01jmpzl2pmFfeZdNRJNjEc5gOgq/ZbxUM
	ddF21eO465xVlyx+SA625Py1LvkCDV4fG2lk6wG1Rw==
X-Google-Smtp-Source: AGHT+IFbA+CmTDZa9LkOIN4+P0cf5skamtwdYRLlnjRojSqBt+WylsrEBoe0xosuYGEVy5aqnlGqxg==
X-Received: by 2002:a05:6512:3ca1:b0:503:778:9ad2 with SMTP id h33-20020a0565123ca100b0050307789ad2mr5593935lfv.19.1695049233912;
        Mon, 18 Sep 2023 08:00:33 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id x26-20020aa7dada000000b005224f840130sm6137013eds.60.2023.09.18.08.00.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 08:00:33 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4047c6ec21dso112605e9.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:00:33 -0700 (PDT)
X-Received: by 2002:a05:600c:3b8b:b0:404:7462:1f87 with SMTP id
 n11-20020a05600c3b8b00b0040474621f87mr191074wms.6.1695049231656; Mon, 18 Sep
 2023 08:00:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918125851.310-1-johan+linaro@kernel.org>
In-Reply-To: <20230918125851.310-1-johan+linaro@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 18 Sep 2023 08:00:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wfwvp-SbGrdO5VJcjG42njkApJPB7wnY-YYa1_-O0JWQ@mail.gmail.com>
Message-ID: <CAD=FV=Wfwvp-SbGrdO5VJcjG42njkApJPB7wnY-YYa1_-O0JWQ@mail.gmail.com>
Subject: Re: [PATCH] HID: i2c-hid: fix handling of unpopulated devices
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Maxime Ripard <mripard@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	LinusW <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Mon, Sep 18, 2023 at 6:00=E2=80=AFAM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:
>
> A recent commit reordered probe so that the interrupt line is now
> requested before making sure that the device exists.
>
> This breaks machines like the Lenovo ThinkPad X13s which rely on the
> HID driver to probe second-source devices and only register the variant
> that is actually populated. Specifically, the interrupt line may now
> already be (temporarily) claimed when doing asynchronous probing of the
> touchpad:
>
>         genirq: Flags mismatch irq 191. 00082008 (hid-over-i2c) vs. 00082=
008 (hid-over-i2c)
>         i2c_hid_of 21-0015: Could not register for hid-over-i2c interrupt=
, irq =3D 191, ret =3D -16
>         i2c_hid_of: probe of 21-0015 failed with error -16
>
> Fix this by restoring the old behaviour of first making sure the device
> exists before requesting the interrupt line.
>
> Note that something like this should probably be implemented also for
> "panel followers", whose actual probe is currently effectively deferred
> until the DRM panel is probed (e.g. by powering down the device after
> making sure it exists and only then register it as a follower).
>
> Fixes: 675cd877c952 ("HID: i2c-hid: Rearrange probe() to power things up =
later")
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/hid/i2c-hid/i2c-hid-core.c | 142 ++++++++++++++++-------------
>  1 file changed, 80 insertions(+), 62 deletions(-)

Ugh, sorry for the regression. :( It actually turns out that I've been
digging into this same issue on a different device (see
mt8173-elm-hana). I hadn't realized that it was a regression caused by
my recent change, though.

I haven't yet reviewed your change in detail, but to me it seems like
at most a short term fix. Specifically, I think the way that this has
been working has been partially via hacks and partially via luck. Let
me explain...

Currently, to make this work the `sc8280xp-lenovo-thinkpad-x13s.dts`
file has a hack in it. You can see that the `tpad_default` pinctrl
entry has been moved up to the i2c bus level even though it doesn't
belong there (it should be in each trackpad). This is because,
otherwise, you would have run into similar type problems as the device
core would have failed to claim the pin for one of the devices.

Currently, we're getting a bit lucky with
`sc8280xp-lenovo-thinkpad-x13s.dts` that there are no other shared
resources between the two devices besides the interrupt. Specifically
a number of trackpads / touchscreens also have a "reset" GPIO that
needs to be power sequenced properly in order to talk to the
touchscreen. In this case we'll be stuck again because both instances
would need to grab the "reset" GPIO before being able to confirm if
the device is there.

This is an old problem. The first I remember running into it was back
in 2015 on rk3288-veryron-minnie. We had a downstream hack to make
this work with -EPROBE_DEFER. https://crrev.com/c/266224. By the time
we shipped, though, we decided not to do the 2nd sourcing. After that
I always NAKed HW designs like this, but I guess that didn't help with
Mediatek hardware I wasn't involved with. :( ...and, of course, it
didn't help with devices that aren't Chromebooks like the Thinkpad
X13S.

FWIW: as a short term solution, we ended up forcing synchronous probe
in <https://crrev.com/c/4857566>. This has some pretty serious boot
time implications, but it's also very simple.


I'm actively working on coming up with a better solution here. My
current thought is that that maybe we want to do:

1. Undo the hack in the device tree and have each "2nd source" have
its own pinctrl entry.

2. In core pinctrl / device probing code detect the pinctrl conflict
and only probe one of the devices at a time.

...that sounds like a nice/elegant solution and I'm trying to make it
work, though it does have some downsides. Namely:

a) It requires "dts" changes to work. Namely we've got to undo the
hack that pushed the pinctrl up to the controller level (or, in the
case of mt8173-elm-hana, that just totally skipped the "pinctrl" entry
altogether). Unfortunately those same "dts" changes will actually make
things _worse_ if you don't have the code change. :(

b) It only handles the case where the resources shared by 2nd sourcing
are expressed by pinctrl. In a practical sense this seems to be most
cases, but conceivably you could imagine running into this situation
with a non-pin-related shared resource.

c) To solve this in the core, we have to make sure we properly handle
(without hanging/failing) multiple partially-conflicting devices and
devices that might acquire resources in arbitrary orders.

Though the above solution detecting the pinctrl conflicts sounds
appealing and I'm currently working on prototyping it, I'm still not
100% convinced. I'm worried about the above downsides.


Personally, I feel like we could add information to the device tree
that would help us out. The question is: is this an abuse of device
tree for something that Linux ought to be able to figure out on its
own, or is it OK? To make it concrete, I was thinking about something
like this:

/ {
  tp_ex_group: trackpad-exclusion-group {
    members =3D <&tp1>, <&tp2>, <&tp3>;
  };
};

&i2c_bus {
  tp1: trackpad@10 {
    ...
    mutual-exclusion-group =3D <&tp_ex_group>;
  };
  tp2: trackpad@20 {
    ...
    mutual-exclusion-group =3D <&tp_ex_group>;
  };
  tp3: trackpad@30 {
    ...
    mutual-exclusion-group =3D <&tp_ex_group>;
  };
};

Then the device core would know not to probe devices in the same
"mutual-exclusion-group" at the same time.

If DT folks are OK with the "mutual-exclusion-group" idea then I'll
probably backburner my attempt to make this work on the pinctrl level
and go with that.

