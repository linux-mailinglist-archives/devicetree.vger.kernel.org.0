Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD4E96D6B09
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 20:01:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232948AbjDDSBG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 14:01:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232696AbjDDSBF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 14:01:05 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BE71125
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 11:01:03 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id m16so19402020ybk.0
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 11:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680631263;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVGjnQzjacxJYEz87CLNCMx+IAs8NBMqV1ppnHwQkAw=;
        b=XXNM5G/e4+7WGEJMh/0CUXkvl4f4Fmm6ueNyhHj+vvgL8NbCtyA5mCU59kXHBO7mFM
         ecXc6lnvlZ8x45R1E8NxIquiDE7oEVWgHmWg78aEWFSw9/nlFBf5EWtLlvQuunmnpo+K
         mOiR7Cz+vQ3Zb1ILAfElpP0siKSu0cSui5JlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680631263;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVGjnQzjacxJYEz87CLNCMx+IAs8NBMqV1ppnHwQkAw=;
        b=vXW17ve8R5kHDsn4ujB5FcLLBmOm9ry67JejMntDyzLaDrGZYMrvGou0T503NNOhxL
         rRXs+S3sCYyXn7E8pPkysccz0vluoWih8zfjLx/kxT6xwlM3QrPvpBYcC1/SdFCvq7bU
         J9w51lgCokA6Xbu4Dq+AA3DqZ8nL5j2GJAe1AYhulp2bs/f2GT2dVYIYBT0Q0r/Kemj/
         ObA+YLxKUS3uoINobY2V4UVh0wU2TxjprgXawcB2b3Me/bS2GfeCX2cK4jTs5l7hivwe
         8VYWbID4t0tb+w4FkT7H0UQgPg1Fh61EDBBH8FDmSrR+8ngPMFAXeLaS+Xb31nuyynDQ
         IUBA==
X-Gm-Message-State: AAQBX9fSuhBhSngK0IbbZ2vlKp8URlPmYxBqVzZwenMA/bOYY9EWcSwk
        C1AD3EwWFfDGMNN78e7RK4d2vN6LwKZZnEAVKCCiYA==
X-Google-Smtp-Source: AKy350bQTCB60Rqax5fRgoQLjYERVAEuYc37U6g7A5Bs98TMEm8n6mfyD+v6TiOUuLdhmb53xMGpdkYI60/jeAAbab4=
X-Received: by 2002:a25:cb83:0:b0:b6a:5594:5936 with SMTP id
 b125-20020a25cb83000000b00b6a55945936mr2365120ybg.5.1680631262560; Tue, 04
 Apr 2023 11:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230329131929.1328612-1-jagan@amarulasolutions.com>
 <CAPY8ntCJP53uiGNQHUZqma08Vsxfwm7KvAkgMzK=hn4AxJLS3A@mail.gmail.com>
 <20230329164638.v43la4l7rxut6hk6@penduick> <CAMty3ZCsn6OR1-TvqFXP48iamG-k5sPU1_CH2fNLBQP3Ofb0QA@mail.gmail.com>
 <CAPY8ntCpmKPzPVjRWS7Pf1Fat9V_JqGD4BaMo8P8_o+74DeDiQ@mail.gmail.com>
In-Reply-To: <CAPY8ntCpmKPzPVjRWS7Pf1Fat9V_JqGD4BaMo8P8_o+74DeDiQ@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 4 Apr 2023 23:30:50 +0530
Message-ID: <CAMty3ZCdqwbx0_N7rseZuGOKUz-KgUOwmOpNobKK5jr4q7WK8A@mail.gmail.com>
Subject: Re: [PATCH v7 10/12] drm/bridge: Implement enable_next_first to alter
 bridge init order
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dave,

On Thu, Mar 30, 2023 at 3:31=E2=80=AFPM Dave Stevenson
<dave.stevenson@raspberrypi.com> wrote:
>
> Hi Jagan
>
> On Thu, 30 Mar 2023 at 07:56, Jagan Teki <jagan@amarulasolutions.com> wro=
te:
> >
> > On Wed, Mar 29, 2023 at 10:16=E2=80=AFPM Maxime Ripard <maxime@cerno.te=
ch> wrote:
> > >
> > > On Wed, Mar 29, 2023 at 05:28:28PM +0100, Dave Stevenson wrote:
> > > > On Wed, 29 Mar 2023 at 14:19, Jagan Teki <jagan@amarulasolutions.co=
m> wrote:
> > > > >
> > > > > DSI sink devices typically send the MIPI-DCS commands to the DSI =
host
> > > > > via general MIPI_DSI_DCS read and write API.
> > > > >
> > > > > The classical DSI sequence mentioned that the DSI host receives M=
IPI-DCS
> > > > > commands from the DSI sink first in order to switch HS mode prope=
rly.
> > > > > Once the DSI host switches to HS mode any MIPI-DCS commands from =
the
> > > > > DSI sink are unfunctional.
> > > >
> > > > That statement contradicts the spec.
> > > > The DSI spec section 8.11.1 Transmission Packet Sequences says that
> > > > during any BLLP (Blanking or Low Power) period the host can do any =
of:
> > > > - remain in LP-11
> > > > - transmit one or more non-video packets from host to peripheral in=
 escape mode
> > > > - transmit one or more non-video packets from host to peripheral in
> > > > using HS mode
> > > > - receive one or more packets from peripheral to host using escape =
mode
> > > > - transmit data on a different virtual channel.
> > > >
> > > > Indeed if the sink doesn't set MIPI_DSI_MODE_LPM /
> > > > MIPI_DSI_MSG_USE_LPM, then the expectation is that any data transfe=
r
> > > > will be in HS mode.
> > > >
> > > > That makes me confused as to the need for this patch.
> > >
> > > Yeah, and it looks like that would break the expectation that, in
> > > enable, a bridge can expect its controller to be in HS mode.
> > >
> > > I think that was Jagan is trying to do is to work around an issue wit=
h
> > > the Allwinner DSI driver:
> > > https://elixir.bootlin.com/linux/v6.3-rc4/source/drivers/gpu/drm/sun4=
i/sun6i_mipi_dsi.c#L775
> >
> > Correct and I can see it seems to be a classic DSI sequence observed
> > in dw-mipi-dsi as well - based on Neil's comments.
> > https://lore.kernel.org/all/9aa3d19d-4378-aaf3-6857-c40be5d252c7@baylib=
re.com/
>
> Neil's comments are from 2021, and his response would appear to be
> with regard the PHY power up sequence issues that
> pre_enable_prev_first should solve. The DSI host pre_enable can now be
> called before the sink's pre_enable, therefore allowing the PHY to be
> configured in pre_enable. Hacking the PHY init into mode_set is
> therefore not required.
>
> I don't see any restriction in dw-mipi-dsi over when transfer can be
> called (as long as it is between pre_enable and post_disable), and it
> supports MIPI_DSI_MSG_USE_LPM for requesting the command be sent in
> either LP or HS mode.
>
> > In fact, I did follow and initialize the command-mode mode_set which
> > set low-speed DCS and switch back to video-mode @enable and switch to
> > HS but could see the same issue as the host cannot accept DCS as
> > before (I might implement improper sequence, but not sure due to lack
> > of documentation). But this sequence has issues with calling
> > post_disable twice even on dw-mipi-dsi.
>
> Calling up/down the bridge chain from within other bridge elements is
> going to have issues and shouldn't be necessary.
>
> The comment in dw-mipi-dsi post_disable[1]
> * TODO Only way found to call panel-bridge post_disable &
> * panel unprepare before the dsi "final" disable...
> * This needs to be fixed in the drm_bridge framework and the API
> * needs to be updated to manage our own call chains...
>
> It has now been fixed up with pre_enable_prev_first.

This seems not fixed in dw-mipi-dsi and it often still requires the
forth and back switch of HS mode even if pre_enable_prev_first.

Thanks,
Jagan.
