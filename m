Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B45F5121EF
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:59:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231713AbiD0TCm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 15:02:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231288AbiD0TCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 15:02:35 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5711AB7C53
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:49:26 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id l203so3014015oif.0
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ELW/tf+z/1Ae63zOagnlWVkh4PSOlMUTlo/HVvH7uaM=;
        b=Dgy3mKUtoNPc4Iqgr22Pa3IK6L6cNQqoX6GR7sg3iFFzKy/yMoF7rVIPvv303q8zc8
         uonfRGS2gKFrTwkO3T3j6WLMqJdBXJCDoENXqDdiBbR3KXCxC116joPNCkVNplsy0Pxb
         8i45xwI0lF72jZhYwTDYX+avjz0RG9Hhj2VDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ELW/tf+z/1Ae63zOagnlWVkh4PSOlMUTlo/HVvH7uaM=;
        b=QotEr9vvLxwIf90RH2QpcHH37p5GSRtB7Y0hLb2RztosBNzl0c99fGz5vVhN3ngKNe
         dp0kOZdr6zhvq0hNIsQsyuvny/F++xCeD/LpIQPtvTkH7N9teJvTnmeZeFXgQWfYaA4M
         s2rdnFHsUCWE7usih4rla4FkFy0HPV6ahT8OZN0jcJgAuXgag9QOYBIbdjVaTrIVa4hj
         n4ibAJ0LUoJAoJX3Ye14pUSprdGykdtrn3gyWtekywzzMykLwkhU769SuV2L0ZqnjMyK
         lws452y+f3JiAKGfBA85KbWMBkYnK01Ua+2nXW7ZJvMVZpS/Ug15LvioX+ArKct6vhr4
         G4sw==
X-Gm-Message-State: AOAM531aPAn9t53lpY8Arkq0WlfG0evd5/DSyiFT0Fapy4kdaHLnPq6p
        HRMv/+5ZxFStbrIjNSqsjsq38rrSLSUDu+9BwgqWKg==
X-Google-Smtp-Source: ABdhPJwBZc4Xq0O073eFjKmpGc3WTQxpzFxv1yR2Wgae5nOcQVpcCOXvbI96rlyTiEjgefh4ntPJFnlnNmq8jdYb4qQ=
X-Received: by 2002:a05:6808:1296:b0:325:8fb:68f3 with SMTP id
 a22-20020a056808129600b0032508fb68f3mr9887308oiw.193.1651085365678; Wed, 27
 Apr 2022 11:49:25 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 Apr 2022 11:49:25 -0700
MIME-Version: 1.0
In-Reply-To: <CAD=FV=Wey2P_=3Lp6M8GEaoyCn1XcYFhfJwfx43a5f_8H0obwg@mail.gmail.com>
References: <20220426225748.324759-1-swboyd@chromium.org> <CAD=FV=WMf0Jc9oD7CGoLthguzt2aV31sZmFoenbjn72MfwFYEA@mail.gmail.com>
 <CAD=FV=Wey2P_=3Lp6M8GEaoyCn1XcYFhfJwfx43a5f_8H0obwg@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 27 Apr 2022 11:49:25 -0700
Message-ID: <CAE-0n53sfUMiCzEgRwVRuxwnf_BLJi+cL-PoZ_ha_3EfEW1X_A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180-trogdor: Remove cros-ec keyboard
 from detachables
To:     Doug Anderson <dianders@chromium.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Doug Anderson (2022-04-27 08:09:59)
> Hi,
>
> On Tue, Apr 26, 2022 at 5:17 PM Doug Anderson <dianders@chromium.org> wrote:
> >
> > Hi,
> >
> > On Tue, Apr 26, 2022 at 3:57 PM Stephen Boyd <swboyd@chromium.org> wrote:
> > >
> > > Trogdor devices that have a detachable keyboard still have a
> > > non-detachable keyboard input device present because we include the
> > > cros-ec-keyboard.dtsi snippet in the top-level sc7180-trogdor.dtsi file
> > > that every variant board includes. We do this because the
> > > keyboard-controller node also provides some buttons like the power
> > > button and volume buttons. Unfortunately, this means we register a
> > > keyboard input device that doesn't do anything on boards with a
> > > detachable keyboard. Let's delete the rows/columns properties of the
> > > device node to indicate that there isn't a matrix keyboard on these
> > > boards.
> > >
> > > Cc: Benson Leung <bleung@chromium.org>
> > > Cc: Guenter Roeck <groeck@chromium.org>
> > > Cc: Douglas Anderson <dianders@chromium.org>
> > > Cc: Hsin-Yi Wang <hsinyi@chromium.org>
> > > Cc: "Joseph S. Barrera III" <joebar@chromium.org>
> > > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi   | 5 +++++
> > >  arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi | 5 +++++
> > >  2 files changed, 10 insertions(+)
> >
> > Presumably we need to do this same thing for wormdingler [1]
> >
> > [1] https://lore.kernel.org/r/20220426151204.1.Id2821de5fde55ebe928e8fc87a71c8d535edb383@changeid
> >
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> Do we need to delay landing this patch for a release? I haven't tested
> myself, but from re-reading through the code it looks as if
> cros_ec_keyb_register_matrix() will return an error code if we have
> the device tree patch _without_ commit 4352e23a7ff2 ("Input:
> cros-ec-keyb - only register keyboard if rows/columns exist"). That
> will cause it to skip registering the buttons/switches, right?

Yes, if the driver patch isn't applied then we'll skip registering
switches when these properties are removed. I suppose a better way to
gracefully migrate the logic here would be to add another compatible
string. Then we could make the compatible be

	compatible = "google,cros-ec-keyb-switches", "google,cros-ec-keyb";

on detachables and the driver can skip registering the keyboard if the more
specific "google,cros-ec-keyb-switches" compatible is present. The
driver will continue to probe and we don't have to remove any
properties.

The driver patch has been accepted[1] so in theory this patch can be
applied and when the two meet up in linux-next things will work but when
bisecting down the DTS the switches won't work. Not a huge problem but
sort of annoying that the switches are busted.

[1] https://lore.kernel.org/all/Ymh1J9zQ+5EyQadE@google.com/
