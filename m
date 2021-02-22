Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85B263220EA
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 21:47:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231224AbhBVUqJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 15:46:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230527AbhBVUqG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 15:46:06 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C8A1C06178A
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 12:45:26 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id m6so7367261pfk.1
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 12:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=LwMwnyMNe0dbsBjwrdA/4K91mX9d7JEcNbNBT2gfDLE=;
        b=PiPgFgoRJVCzZCl5lIpO1thRE8Msnn+qjIg+b+Ez5BJdtCLHqhzeME8kuAqFFhLXEe
         eDFr8N+O14ZrXRhmKEGiz8jwtselrH+PvzYUvHC3ELg83/fim//n/UO+IygmFZfoesMo
         +RjTEfpQlYxVmvusEvJJYZu1ZhTaf9KEZu91g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=LwMwnyMNe0dbsBjwrdA/4K91mX9d7JEcNbNBT2gfDLE=;
        b=jI/IF/gn4T4+DJnq/VJQDOFTk7CmU+r7bwOn2t8urfWXcB2pCgXmbRf07z26iE29de
         NCWTjoT4GmdQwRS8xc3eanqfE5qVCZzvcAlVB7zDMb2GIKkZMK+FCZdxmXmOJmP0GtRi
         iPaBo5+6gu1CDT99hjH0FyU1i/+O6FaOX26JgCmGLctzXsViUgCpZf9a4l6armVTfGtk
         agNcutFxXxpIrTBUuCvpBDyeIwXz/AKcDrBQtKgPYgpd3+4VoAQQnaMB66nn4lgtRBrX
         CNcsNe/nzBRFOQMsmc83A17ffkTC9qE/d3BlsVvP49SMvcWtXDqDhWDU3BM8PLLdJz91
         DBKw==
X-Gm-Message-State: AOAM530iRTWKBrDAOwjw1JMZ1omBjwf/OUJU3kQemFAdg3FXb75FwmZG
        L2mad25jsjwqgzOE/Vr0QMDbOA==
X-Google-Smtp-Source: ABdhPJyrGk657Pl699wmjr2BYgjCD55KtTF8hbxTlXFYi0LmhqlBNxGc7egWS9i7/RS4KOFYUdPkXw==
X-Received: by 2002:a63:c702:: with SMTP id n2mr20903322pgg.382.1614026725558;
        Mon, 22 Feb 2021 12:45:25 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:a878:327b:a10a:e189])
        by smtp.gmail.com with ESMTPSA id o6sm20240447pfb.9.2021.02.22.12.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 12:45:25 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YDQWVresOGZGLL6N@google.com>
References: <20210219181032.1.I23e12818c4a841ba9c37c60b3ba8cfeeb048285f@changeid> <20210219181032.3.Ia4c1022191d09fe8c56a16486b77796b83ffcae4@changeid> <161402520418.1254594.7435679604383921403@swboyd.mtv.corp.google.com> <YDQWVresOGZGLL6N@google.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7180: Delete charger thermal zone and ADC channel for lazor <= rev3
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org
To:     Matthias Kaehlcke <mka@chromium.org>
Date:   Mon, 22 Feb 2021 12:45:23 -0800
Message-ID: <161402672369.1254594.14091287979440332862@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2021-02-22 12:38:46)
> On Mon, Feb 22, 2021 at 12:20:04PM -0800, Stephen Boyd wrote:
> > Quoting Matthias Kaehlcke (2021-02-19 18:10:59)
> > > Lazor rev3 and older are stuffed with a 47k NTC as thermistor for
> > > the charger temperature which currently isn't supported by the
> > > PM6150 ADC driver. Delete the charger thermal zone and ADC channel
> > > to avoid the use of bogus temperature values.
> > >=20
> > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > ---
> > >=20
> > >  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts | 9 +++++++++
> > >  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1.dts | 9 +++++++++
> > >  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts | 9 +++++++++
> > >  3 files changed, 27 insertions(+)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts b/a=
rch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> > > index 30e3e769d2b4..0974dbd424e1 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> > > @@ -14,6 +14,15 @@ / {
> > >         compatible =3D "google,lazor-rev0", "qcom,sc7180";
> > >  };
> > > =20
> > > +/*
> > > + * rev <=3D 3 are stuffed with a 47k NTC as charger thermistor which=
 is currently
> > > + * not supported by the PM6150 ADC driver. Delete the thermal zone a=
nd ADC
> > > + * channel to avoid the use of bogus temperature values.
> > > + */
> > > +/delete-node/ &charger_thermal;
> > > +/delete-node/ &pm6150_adc_charger_thm;
> > > +/delete-node/ &pm6150_adc_tm_charger_thm;
> >=20
> > Can we disable pm6150_adc_tm instead on <=3D rev3 boards? It would be t=
he
> > same number of lines, but is simpler to reason about disabled nodes vs.
> > deleted nodes usually.
>=20
> For Lazor theoretically this could be done since it doesn't use other ADC
> channels, however it won't work for other trogdor devices that will be
> upstreamed eventually. Some of these boards have the same problem, however
> they have other thermistors connected to the ADC. One could argue that it=
's
> preferable to do things in a uniform way, but I'm open to do it either way
> for Lazor.
>=20

I see. Can the thermal-zone be disabled then vs. deleting three nodes? I
think the thermal driver uses for_each_available_child_of_node() so that
would work?
