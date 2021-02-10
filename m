Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4201E315D81
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 03:43:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234393AbhBJCnF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 21:43:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235447AbhBJCko (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 21:40:44 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C56AC061574
        for <devicetree@vger.kernel.org>; Tue,  9 Feb 2021 18:40:04 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id cv23so278325pjb.5
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 18:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=KYoGNRGF/cdkpxiZwkxLmpID3hvUKgr02FyNxvMiqMY=;
        b=FU8V4gNmji0oirWM4KYiPVoEsRH9R3pQqbnqd0xe/VOFXTQ1k8a9PQWCogZALTtWD7
         aMGJBaXd52nACLX8qIaYU1Z1ZiX1sRMaSRhOjwqgIIJ/C5h5y5ARxwjK1nZDvEXai8Xf
         yS+953pQhbWOcltZlfQruMNlHXAeo6pb9FOR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=KYoGNRGF/cdkpxiZwkxLmpID3hvUKgr02FyNxvMiqMY=;
        b=JLwHBd90o8x77UHi9EmVaHTSR2tUr96WgzOIZodEs2Bvu0Dp4a8UhmUjuCkI01lqbR
         UccpbOJVEIHTvX2N5sPzZgfD6d6C0FQkPzfLaX6tn5EmSPeOsRF4Ji6HmTGjmXxlklt/
         vHqpW/jF01ZTcj23v9rLw9HPOud48BsrwGlvegkqM6LlPiOBMlQPkgNLEtISvfUI6/Al
         xhnLWhafQGgZs8xOSm0I92bxWmSQTx/dbJD4jUjujp9ojuP26IFCrG6zhjqa+jlKsM4b
         6eFFMrjpcSqLJrV9kjSDaYYXBtBatwSGNApmOuxPkoe5XP7FlLpZ8BjuUtofhg3zicAG
         sPPg==
X-Gm-Message-State: AOAM532ZCikby5/qh4Lo+pHoPmaYzOPMZguFUKItT+ATdVPHEZcL14BW
        aq7kMEZMub6UCmt1dRxl4SR4EQ==
X-Google-Smtp-Source: ABdhPJzEdHI6yiEwrRmid6IO7ALuMxG9P7eQrE8UdkG9V8hp4DyEYFGZLJmMY9jteh4pQGZdT2hZig==
X-Received: by 2002:a17:902:ed8d:b029:e2:b3fb:ca95 with SMTP id e13-20020a170902ed8db02900e2b3fbca95mr803506plj.17.1612924804206;
        Tue, 09 Feb 2021 18:40:04 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:58e2:748e:a316:9823])
        by smtp.gmail.com with ESMTPSA id h70sm243660pfe.70.2021.02.09.18.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 18:40:03 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210209211347.GA183847@robh.at.kernel.org>
References: <20210202184434.42644-1-swboyd@chromium.org> <20210202184434.42644-3-swboyd@chromium.org> <20210209211347.GA183847@robh.at.kernel.org>
Subject: Re: [PATCH v4 2/3] dt-bindings: iio: Add cros ec proximity yaml doc
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Jonathan Cameron <jic23@kernel.org>, linux-kernel@vger.kernel.org,
        linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        devicetree@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
To:     Rob Herring <robh@kernel.org>
Date:   Tue, 09 Feb 2021 18:40:01 -0800
Message-ID: <161292480177.418021.6230224455352630951@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rob Herring (2021-02-09 13:13:47)
> On Tue, Feb 02, 2021 at 10:44:33AM -0800, Stephen Boyd wrote:
> > +    description: Name for proximity sensor
> > +
> > +required:
> > +  - compatible
> > +
> > +unevaluatedProperties: false
> > +additionalProperties: false
>=20
> Only need one. In this case 'additionalProperties'.

Got it.

>=20
> > +
> > +examples:
> > +  - |
> > +    spi {
> > +      #address-cells =3D <1>;
> > +      #size-cells =3D <0>;
> > +      ec@0 {
> > +        compatible =3D "google,cros-ec-spi";
> > +        reg =3D <0>;
> > +        proximity {
> > +          compatible =3D "google,cros-ec-mkbp-proximity";
> > +          label =3D "proximity-wifi-lte";
> > +        };
>=20
> The complete examples I prefer is 1 example for the whole MFD in the MFD =

> schema and no example here.

Alright. I can add it to the mfd binding instead.

>=20
> > +      };
> > +    };
> > diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml =
b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > index 76bf16ee27ec..479a9f15de32 100644
> > --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > @@ -94,6 +94,9 @@ properties:
> >    keyboard-controller:
> >      $ref: "/schemas/input/google,cros-ec-keyb.yaml#"
