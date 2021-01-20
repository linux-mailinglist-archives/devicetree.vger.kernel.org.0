Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8908F2FCD08
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 09:59:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728653AbhATI6w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 03:58:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728269AbhATI6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 03:58:49 -0500
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com [IPv6:2607:f8b0:4864:20::935])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B085C0613CF
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:58:09 -0800 (PST)
Received: by mail-ua1-x935.google.com with SMTP id k47so7627041uad.1
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rhz4mNYz5KLhtoaEd5l0S79rWDm6JyG4VqiZ266BH0w=;
        b=gYyWKKHcQf6taYDLLjDiZjpiKcvQhNiJ6ts6cqUkK9mZyhDUMcS2m7qFjPkF75c6Ia
         ieMbDS6uHTH6f0nmuBCamq4iqRKCoBGOXLtrRJz1PnBt2kIAwVjQh4MseIPg+xXC4AeH
         Oi1QWvnAIS0up25R73pmdZkmKRwR+zBp8v/r4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rhz4mNYz5KLhtoaEd5l0S79rWDm6JyG4VqiZ266BH0w=;
        b=FAPiNy+vdr/NFtsNFuBpuE70433g2j97Y2fdlOTFCk6ZUMNIgOfZhaPJzvUmE5C7nb
         6usTeDmBNw4TZSa+K2DYeeSxYlkeLSnX71lw1h7NW8OOqyP2E36xkRFUuazCbqd1kHkI
         0uiplrbmpC2c3j0aanj7Nx1xBHe9LhAXhdMDuLwDyk525+qBVDXBUOZYhnSOa7LzcXWz
         BGZcIDkSj4g6TQ1O9QRl6JDPYYp5VyuGGIhvR3cV+apXP2N7V0BgRgpsEdUkULTvaMyx
         N1zOD//gqHIon59bg63P4zBOr0pJ3kJ1xPGa/wsjKKGVuVJlpcl2cG9eW+lZfk+GrZhR
         D+uQ==
X-Gm-Message-State: AOAM530WMu240PIW63buI7SkUG1LeTXK2W8qB1rp6X2XmQ+VzuMBv0vw
        7a0yThYavDpDs7qD2inrThOnucDnGjwq3zGyKFaNkg==
X-Google-Smtp-Source: ABdhPJwcDzM1BT+vF0cCZCS5U93rwWVeR7NcrXN5SCCHPtBsMJ5m+3Ha0pvpoXs9OMtPlnuj6kmHglQQVFoNMkTeqeU=
X-Received: by 2002:ab0:1866:: with SMTP id j38mr5167495uag.27.1611133088434;
 Wed, 20 Jan 2021 00:58:08 -0800 (PST)
MIME-Version: 1.0
References: <cover.1609380663.git.xji@analogixsemi.com> <d13442f84fefccc992d6c5e48ac1e6129882af31.1609380663.git.xji@analogixsemi.com>
 <20210111221435.GA3138373@robh.at.kernel.org> <20210112085737.GC5827@pc-user>
In-Reply-To: <20210112085737.GC5827@pc-user>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Wed, 20 Jan 2021 16:57:56 +0800
Message-ID: <CANMq1KDRL3xmjvjMUWCr+maLJ2YY4hQr05dMC7sE4+baWOUesw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: add DPI flag and
 swing setting
To:     Xin Ji <xji@analogixsemi.com>
Cc:     Rob Herring <robh@kernel.org>, David Airlie <airlied@linux.ie>,
        Nicolas Boichat <drinkcat@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Maxime Ripard <mripard@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Sheng Pan <span@analogixsemi.com>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 12, 2021 at 4:59 PM Xin Ji <xji@analogixsemi.com> wrote:
>
> Hi Rob Herring, thanks for the comments.
>
> On Mon, Jan 11, 2021 at 04:14:35PM -0600, Rob Herring wrote:
> > On Thu, Dec 31, 2020 at 10:21:12AM +0800, Xin Ji wrote:
> > > Add DPI flag for distinguish MIPI input signal type, DSI or DPI. Add
> > > swing setting for adjusting DP tx PHY swing
> > >
> > > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > > ---
> > >  .../bindings/display/bridge/analogix,anx7625.yaml  | 25 ++++++++++++++++++++--
> > >  1 file changed, 23 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > > index 60585a4..4eb0ea3 100644
> > > --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > > +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> > > @@ -34,6 +34,16 @@ properties:
> > >      description: used for reset chip control, RESET_N pin B7.
> > >      maxItems: 1
> > >
> > > +  analogix,swing-setting:
> > > +    type: uint8-array
> >
> > Humm, this should have be rejected by the meta-schema.
> We needs define an array to adjust DP tx PHY swing, the developer hopes these
> settings are changeable, so I moved the register data to DT. Can you
> give me some suggestion if it is rejected by the meta-schema?
> >
> > > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> >
> > This is how types are defined other than boolean or nodes (object).
> >
> > > +    description: an array of swing register setting for DP tx PHY
> > > +
> > > +  analogix,mipi-dpi-in:
> > > +    type: int
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description: indicate the MIPI rx signal type is DPI or DSI
> >
> > Why does this need to be in DT, you should be able to determine this
> > based on what you are connected to.
> As the anx7625 can receive MIPI DSI and DPI data (depends on hardware
> implement, we have a project which have two anx7625, one is DSI input,
> the other is DPI input), we needs to let driver know what kind of MIPI
> rx signal input. And there is no other way to tell driver the MIPI rx
> signal type, we needs define this flag.
> >
> > > +
> > >    ports:
> > >      type: object
> > >
> > > @@ -49,8 +59,8 @@ properties:
> > >            Video port for panel or connector.
> > >
> > >      required:
> > > -        - port@0
> > > -        - port@1
> > > +      - port@0
> > > +      - port@1
> > >
> > >  required:
> > >    - compatible
> > > @@ -72,6 +82,17 @@ examples:
> > >              reg = <0x58>;
> > >              enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > >              reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > > +            analogix,swing-setting = <0x00 0x14>, <0x01 0x54>,
> > > +                <0x02 0x64>, <0x03 0x74>, <0x04 0x29>,
> > > +                <0x05 0x7b>, <0x06 0x77>, <0x07 0x5b>,
> > > +                <0x08 0x7f>, <0x0c 0x20>, <0x0d 0x60>,
> > > +                <0x10 0x60>, <0x12 0x40>, <0x13 0x60>,
> > > +                <0x14 0x14>, <0x15 0x54>, <0x16 0x64>,
> > > +                <0x17 0x74>, <0x18 0x29>, <0x19 0x7b>,
> > > +                <0x1a 0x77>, <0x1b 0x5b>, <0x1c 0x7f>,
> > > +                <0x20 0x20>, <0x21 0x60>, <0x24 0x60>,
> > > +                <0x26 0x40>, <0x27 0x60>;
> >
> > This is a matrix, which is different from an array type.
> OK, I'll change to array if this vendor define has been accepted.

I also wonder if we want to split the parameters per lane, and simply
have a flat array (instead of reg/value pairs like you have now).

Registers 0x00 to 0x13 have to do with Lane 0 (and 0x14 to 0x27 with
Lane 1): you can almost tell from the example values, they repeat. I'm
not sure if there's any value splitting those further (I don't think
anybody will be able to tune those without ANX's help).

So, maybe something like:
anx,swing-setting = <<[reg values for lane 0]>, <[reg values for lane 1]>>
where <[reg values for lane 0]> would be something like <0x14, 0x54,
0x64, ...> (that is, all the values between 0x00 and 0x13).

> >
> > > +            analogix,mipi-dpi-in = <0>;
> > >
> > >              ports {
> > >                  #address-cells = <1>;
> > > --
> > > 2.7.4
> > >
