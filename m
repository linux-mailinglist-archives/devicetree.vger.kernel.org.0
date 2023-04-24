Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17E546ED435
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 20:16:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232318AbjDXSPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 14:15:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232005AbjDXSPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 14:15:50 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD092901D
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 11:15:13 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-76355514e03so431848639f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 11:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682360111; x=1684952111;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=blVk5F8wi1jpNsCC6o8Ei6j9sVKcdv4aLvP/rqf73i4=;
        b=QGzGB4SEB4xyXP9zwceprlrutqlIzS8rSa26O+PUpH2hl1JW/8yvTLxPXpxyfbj4WV
         sV5Nh0njh4phv6DELNgTC+/y/EcPLR3obOIpatNbO43lXiusVQmqYaixXThfzQl6e6sQ
         d/ZqBw/CHcxftWLFdgiYv4zG296BUfTBFvCZI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682360111; x=1684952111;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=blVk5F8wi1jpNsCC6o8Ei6j9sVKcdv4aLvP/rqf73i4=;
        b=kTo1LFmg3NovY7IoaxN1HDtQnaTlhyaLaUpVk4nYTiVpZuu9jnPKieYuT740yxrjxI
         Bm8Wbb/yCR1aHHrVSt6TZ8pQGXijkyIwYR4S4+r6ngy5RNO1vh4CfsyG21jeM8F2KWxD
         och9oye3hM2dedn8KKJj5e0+eBdUnVm45n4JWPSlTVLdXGulCmHtWHNT975iilaXjMnt
         Pr24t6yXYs8hpH+VzYP5eDE2aMVRdnB71ycImanVy8yww7U5U+cbAz+Xdfe5eJuTztom
         UwoEw6LIP/PyhtX7HRFfEB7wVGIUpJvHXSQiHuGim7+LnBoY/ZMGn/OkTsZIePWjRRdP
         3l/A==
X-Gm-Message-State: AAQBX9cG7xq1MZRlplDDgiutPPdXjuMJyXAzVlKd4ln3EuaQ2swoMYQR
        UcAojeBKKpncwPkGLzAggHCTaqmatjJEDFF1LpQ=
X-Google-Smtp-Source: AKy350boESF/oSberiwRBdqYsDaTwJokX5pZ3LhBgASuwwW9KilVpg7NYV+NQNzZzJIYI52nW6aSfQ==
X-Received: by 2002:a92:c643:0:b0:32c:96e0:444a with SMTP id 3-20020a92c643000000b0032c96e0444amr5366421ill.22.1682360111738;
        Mon, 24 Apr 2023 11:15:11 -0700 (PDT)
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com. [209.85.166.180])
        by smtp.gmail.com with ESMTPSA id q6-20020a0566380d0600b0040474ab909fsm3378382jaj.36.2023.04.24.11.15.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 11:15:09 -0700 (PDT)
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-328cb023b1dso1095145ab.0
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 11:15:08 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d09:b0:32e:561d:b42d with SMTP id
 i9-20020a056e021d0900b0032e561db42dmr34592ila.16.1682360107716; Mon, 24 Apr
 2023 11:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230418124953.3170028-1-fshao@chromium.org> <20230418124953.3170028-2-fshao@chromium.org>
 <ZD8z57MBvcfExJx8@nixie71> <CAC=S1ngBt9DmBobMkQXWhqE1UUxFv2U6iFd42nT=1N7r8+pFUg@mail.gmail.com>
 <CAD=FV=U_i26a8uJYmqYf6PUgmTUgmEB5L2DkVga0zDX_iDcGQg@mail.gmail.com>
 <ZEAGTiGyvynGA9P1@nixie71> <CAD=FV=UB393Z1zhK54Apgr-iRcvgiK0t36jt6-t5-5zz3m8OZQ@mail.gmail.com>
 <CAC=S1nj8VTXOovvianPWDYnsrbek0APD76SBNquFObaw8Vg4BQ@mail.gmail.com> <ZEX4BEVMf6GtvaAP@nixie71>
In-Reply-To: <ZEX4BEVMf6GtvaAP@nixie71>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 24 Apr 2023 11:14:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VtrJDVB0gQp-O82V3mgU6MFVMSGrvzh0fRa7sYAt_Pqw@mail.gmail.com>
Message-ID: <CAD=FV=VtrJDVB0gQp-O82V3mgU6MFVMSGrvzh0fRa7sYAt_Pqw@mail.gmail.com>
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
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Apr 23, 2023 at 8:31=E2=80=AFPM Jeff LaBundy <jeff@labundy.com> wro=
te:
>
> Back-powering can come in two forms:
>
> 1. The one you've described, which is by far the most common. As you ment=
ion,
> it is not the case here since the issue happens only when we drive the GP=
IO
> low and not high.
>
> 2. Through a forbidden power supply sequence, an input pin of an IC with
> multiple power supplies becomes a weak power supply itself. Grounding the
> GPIO then sinks current into the SoC.
>
> This problem smelled like (2), especially since asserting the GPIO or pow=
ering
> down the supply alleviates the symptom. Most Goodix controllers I've work=
ed
> with have two or more supplies, and the datasheet requires them to be ena=
bled
> or disabled in a specific order.
>
> Based on Fei's feedback, however, this IC does not seem to be one of thos=
e
> since there is reportedly only a single rail. I guess either vdd or vddio=
 is
> tied to a dummy regulator? If so, then perhaps we can scratch this theory=
.

There is one rail provided from the main board, but there can be two
voltage levels involved depending on stuffings on the touchscreen
itself. I talked a bit about this in commit 1d18c1f3b7d9
("dt-bindings: HID: i2c-hid: goodix: Add mainboard-vddio-supply").


> Fair enough, I was simply sketpical that this was the _right_ workaround.
> Were this an issue of only supply A left on yet the IC datasheet requires
> supply B to remain on if supply A is on, I would rather see this solved b=
y
> updating a regulator dts node, trusted FW sequence, etc.

Right. That type of stuff was looked at in detail by two separate
teams, so I don't think this is the issue.


> Thanks for your due diligence; if this really is a silicon issue, then
> the driver should indeed accommodate it.
>
> That being said, the name 'powered-in-suspend' seems a bit conflated. We
> should not be duplicating regulator policy in this driver; the existing
> naming also may cause confusion for other HW configurations that do leave
> vdd and vddio on during suspend, but don't have this problem.
>
> Here, we actually mean to control the behavior of the reset GPIO through
> suspend and therefore something like 'goodix,no-reset-during-suspend' is
> closer to what I understand us to intend to do. I will add more details
> in patch [2/2].

I'd be fine with that name. ...ah, and adding the "goodix," prefix is
a good call.

-Doug
