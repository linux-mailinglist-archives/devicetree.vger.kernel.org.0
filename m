Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54BC06E7E88
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 17:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231684AbjDSPl5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 11:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232036AbjDSPl5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 11:41:57 -0400
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D33A54ED8
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 08:41:55 -0700 (PDT)
Received: by mail-vs1-xe2d.google.com with SMTP id r24so88274vsj.0
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 08:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1681918913; x=1684510913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QDmw3DOKheKrCuqTG4/mWuNaV4eeLzuLIRCba3L2HpA=;
        b=blO7WT5zULVfOhbg7CPuzcjMteimagcums4gBKoDRrCKkIYUetoAFHGM6iyi5U6NjH
         ALsUjWJqkY0uFoVD/oB9k9lYbH9lCdyP6blYh2THwPaw877GtVdF0FBJ7COhaH2hvPgh
         vIoXaYnJ5F2wSWk+Dze8GOKgqGg7lgAu0CZao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681918913; x=1684510913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QDmw3DOKheKrCuqTG4/mWuNaV4eeLzuLIRCba3L2HpA=;
        b=WS9mIfkT3BB6BLqRwzMi6ZVakO+Kim9dLFG2BKBiipDE363alcyH8ROW5ru5EWL7kn
         y5QSlq2buVW78Z+mc1Vf2uGnPqMUpc6IVY8AqOhBhNNeqFxgZv0uDLC5en9AzS8bq2ZZ
         Syleu2lSnJZnWUtCBeExRYWRMraCdHyVx9ICM4tKcCiFC7C5lehxfzJFSVSLFJVwEu7t
         aX0sXLgY2aWN2n4QSCEJRGyXlbbcN2lEXOXSiF0ykBoe2B3p7qN4eLtaFxeC3MMF2LUF
         inmu7wNE9gCAv5hgNBEQgBolMdsKNlA7JMfVVruYYOaxv8yzxyd4GTb5GxeizJUMri/B
         1Zug==
X-Gm-Message-State: AAQBX9cWENXFHU6J9A5NYX+hHpZPYCo4y5yLSUUDa9BYmbwTFvrWFqRF
        FV5d0OiZC3dYpo54dKwKiyFUpsdarjvS5yaIwE7tKQ==
X-Google-Smtp-Source: AKy350Yvwy+UDDrrbnZrUo3pz8uzZUcR8Sv93gap8W2ttoc4DMmfQgeu+2Y2JPcpb4SoSEbsIDMSBQ==
X-Received: by 2002:a05:6102:4b7:b0:430:a6a:a91a with SMTP id r23-20020a05610204b700b004300a6aa91amr353582vsa.5.1681918913605;
        Wed, 19 Apr 2023 08:41:53 -0700 (PDT)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com. [209.85.128.172])
        by smtp.gmail.com with ESMTPSA id p5-20020a815b05000000b00555ca01b112sm625606ywb.105.2023.04.19.08.41.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 08:41:52 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-54fb615ac3dso5505777b3.2
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 08:41:52 -0700 (PDT)
X-Received: by 2002:a81:ae55:0:b0:545:5f92:f7ee with SMTP id
 g21-20020a81ae55000000b005455f92f7eemr2300152ywk.2.1681918912183; Wed, 19 Apr
 2023 08:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230418124953.3170028-1-fshao@chromium.org> <20230418124953.3170028-2-fshao@chromium.org>
 <ZD8z57MBvcfExJx8@nixie71> <CAC=S1ngBt9DmBobMkQXWhqE1UUxFv2U6iFd42nT=1N7r8+pFUg@mail.gmail.com>
 <CAD=FV=U_i26a8uJYmqYf6PUgmTUgmEB5L2DkVga0zDX_iDcGQg@mail.gmail.com> <ZEAGTiGyvynGA9P1@nixie71>
In-Reply-To: <ZEAGTiGyvynGA9P1@nixie71>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 19 Apr 2023 08:41:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UB393Z1zhK54Apgr-iRcvgiK0t36jt6-t5-5zz3m8OZQ@mail.gmail.com>
Message-ID: <CAD=FV=UB393Z1zhK54Apgr-iRcvgiK0t36jt6-t5-5zz3m8OZQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: input: goodix: Add powered-in-suspend property
To:     Jeff LaBundy <jeff@labundy.com>
Cc:     Fei Shao <fshao@chromium.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek <linux-mediatek@lists.infradead.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Apr 19, 2023 at 8:18=E2=80=AFAM Jeff LaBundy <jeff@labundy.com> wro=
te:
>
> Hi Doug and Fei,
>
> Thank you for the informative discussion; I can empathize with the pain
> these issues bring.
>
> On Wed, Apr 19, 2023 at 07:38:13AM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Wed, Apr 19, 2023 at 3:44=E2=80=AFAM Fei Shao <fshao@chromium.org> w=
rote:
> > >
> > > Hi Jeff,
> > >
> > > On Wed, Apr 19, 2023 at 8:21=E2=80=AFAM Jeff LaBundy <jeff@labundy.co=
m> wrote:
> > > >
> > > > Hi Fei,
> > > >
> > > > On Tue, Apr 18, 2023 at 08:49:51PM +0800, Fei Shao wrote:
> > > > > We observed that on Chromebook device Steelix, if Goodix GT7375P
> > > > > touchscreen is powered in suspend (because, for example, it conne=
cts to
> > > > > an always-on regulator) and with the reset GPIO asserted, it will
> > > > > introduce about 14mW power leakage.
> > > > >
> > > > > This property is used to indicate that the touchscreen is powered=
 in
> > > > > suspend. If it's set, the driver will stop asserting the reset GP=
IO in
> > > > > power-down, and it will do it in power-up instead to ensure that =
the
> > > > > state is always reset after resuming.
> > > > >
> > > > > Signed-off-by: Fei Shao <fshao@chromium.org>
> > > > > ---
> > > >
> > > > This is an interesting problem; were you able to root-cause why the=
 silicon
> > > > exhibits this behavior? Simply asserting reset should not cause it =
to draw
> > > > additional power, let alone 14 mW. This almost sounds like a back-p=
owering
> > > > problem during suspend.
> > > >
> > > There was a fix for this behavior before so I didn't dig into it on
> > > the silicon side.
> > > I can ask internally and see if we can have Goodix to confirm this is
> > > a known HW erratum.
> >
> > Certainly it doesn't hurt to check, but it's not really that shocking
> > to me that asserting reset could cause a power draw on some hardware.
> > Reset puts hardware into a default state and that's not necessarily
> > low power. I guess ideally hardware would act like it's "off" when
> > reset is asserted and then then init to the default state on the edge
> > as reset was deasserted, but I not all hardware is designed in an
> > ideal way.
>
> While that is true in theory, I have never, ever seen that to be the case
> when there is not some other underlying problem.
>
> What I have seen, however, is that asserting reset actually causes the GP=
IO
> to sink current from some other supply and through the IC. I loosely susp=
ect
> that if you probe the IC's rails and digital I/O during the failure condi=
tion,
> you may find one of them resting at some mid-rail voltage or diode drop. =
It
> seems you have a similar suspicion.
>
> In that case, it may mean that some other supply in the system should act=
ually
> be kept on, or that supplies are being brought down out of order. In whic=
h
> case, the solution should actually be a patch to the affected platform(s)=
 dts
> and not the mainline driver.

I agree that it's a bandaid, but I'm not hopeful that a better
solution will be found.

Specifically, I'd expect a current leak in the system when you turn a
supply off and then assert a GPIO high. That's when the device can
start backpowering itself from a GPIO. In this case, it's the
opposite. We're keeping the supply on and asserting the (active low)
reset GPIO to cause the higher power draw. In another design it was
confirmed that the power draw went away when we were able to turn the
regulator off (but still keep the active low reset GPIO asserted).
We've also confirmed that power is good if we keep the supply on and
_don't_ assert the reset GPIO. Both of these two experiments provide
some evidence that the system is configured properly and we're not
backpowering something.

I guess I should revise the above, though. I could believe that there
is a current leak but on the touchscreen controller board itself,
which is a black box to us. I have certainly been involved in products
in the past where the default state of the system at reset caused a
minor current leak (I remember an EE telling me that as soon as
software started running I should quickly change the direction of a
GPIO) and it wouldn't shock me if the touchscreen controller board had
a problem like this. If there is a problem like this on the
touchscreen controller board there's not much we can do to workaround
it.

Unfortunately, if the problem ends up needing a hardware change to fix
more correctly (which I suspect it does), our hands are tied a bit.
This is not prototype hardware but is final hardware.

I guess one further note is that, at least on the project I was
involved in that had a similar problem, folks in China did a bunch of
analysis on this and went as far as adding an extra regulator to the
main board schematic to "fix" it. Had the issue just been something
where we were misconfiguing GPIOs or leaving a regulator in the wrong
state then they (probably) would have identified it rather than
spinning the board.

-Doug
