Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2576635EBAC
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 06:16:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbhDNEQV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 00:16:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbhDNEQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 00:16:19 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E474C061574
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 21:15:58 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id o123so12874694pfb.4
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 21:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H3/pHA1QytdkqwjWI/gVaQemFDcs5MXEtw754Smro1s=;
        b=F29Hu7zFQzANZPHsTA7+K9pjZqrgxssfYBE838M1T0tCylLUv5Bd4xq7EvjDRPf5aW
         iYoe9DaH4kXAY8PXknzVl7BmpxkRX4oInzQdW/neFeORV09agxEHn+tQ723uVcZ91VrG
         NkMuz19o4wjMJeQlGiW23D4PfbHzYlol1Gj0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H3/pHA1QytdkqwjWI/gVaQemFDcs5MXEtw754Smro1s=;
        b=St4IIo/3VBTXhTdsxtenfZ87851/OxQ5Xx1wKBaHCw74iWEtsK/LRiIa0xmyfps44Z
         iULyF0wAhXLr2TGncwTS4mpBW6h5Ad5wfZUAJPkAcvUyqnEVHINH0ofW6dw4zF+tMDvM
         MbuqOK06bQFlg54rcA7+ebnOZNktc3gzu8vjqKVupBlM2g2qqc/j6Ur/jIP3tpGPAkND
         ltrodkve94ADinWVEzt09cQ84GbmVU+GJ3PSgKMWZO0BRf4ZSdZ58nvtJ9qOwxrIOw0z
         NTA/XbZO4LRx7RYZFkKeZ6IiApHAs2i51PkhOep30OZO106jJc2zgdhG0d0DCPX9d0Zn
         fMyw==
X-Gm-Message-State: AOAM5304VeUz2a+RvEQvkrEQAfIgsdfuTaJNZ+KPP08pOzg7icRwa1/S
        X6b5NuVOvUtp5BpkJiyCHKhzJByy6UX6SD8rHZxaFQ==
X-Google-Smtp-Source: ABdhPJyBQe3jzDKjD8N8Rpl8uNcj92WPr21JgAbQ25TEX1kZs3MOe6zQnijETqkrZfG9PkmDTTRhUH//ng7XXis5I64=
X-Received: by 2002:a63:1024:: with SMTP id f36mr15645361pgl.299.1618373757887;
 Tue, 13 Apr 2021 21:15:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210412113020.2724134-1-ikjn@chromium.org> <20210412113020.2724134-2-ikjn@chromium.org>
 <20210413145730.GA1667299@robh.at.kernel.org>
In-Reply-To: <20210413145730.GA1667299@robh.at.kernel.org>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Wed, 14 Apr 2021 12:15:47 +0800
Message-ID: <CAATdQgDWS+D8rudTp_mSB_V=Esnh1MeU9wVywrzOBjVEVpJnfA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] mfd: google,cros-ec: add DT bindings for a
 baseboard's switch device
To:     Rob Herring <robh@kernel.org>
Cc:     linux-input@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
        Dmitry Torokhov <dtor@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Lee Jones <lee.jones@linaro.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 13, 2021 at 10:57 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Apr 12, 2021 at 07:30:19PM +0800, Ikjoon Jang wrote:
> > This is for ChromeOS tablets which have a 'cros_cbas' switch device
> > in the "Whiskers" base board. This device can be instantiated only by
> > device tree on ARM platforms. ChromeOS EC doesn't provide a way to
> > probe the device.
> >
> > Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
> >
> > ---
> >
> > Changes in v4:
> > Define cros-cbase bindings inside google,cros-ec.yaml instead of
> > a seperated binding document.
> >
> >  .../devicetree/bindings/mfd/google,cros-ec.yaml  | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > index 76bf16ee27ec..c76809cd9f7f 100644
> > --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > @@ -127,6 +127,18 @@ patternProperties:
> >      type: object
> >      $ref: "/schemas/extcon/extcon-usbc-cros-ec.yaml#"
> >
> > +  "^cbas$":
>
> Not a pattern, put under 'properties'.
>
> > +    type: object
> > +    properties:
> > +      compatible:
> > +        const: google,cros-cbas
>
> Blank line
>
> > +    required:
> > +      - compatible
>
> Blank line
>
> > +    additionalProperties: false
> > +    description:
>
> Make this 1st or at least before 'properties'.

ACKed, thanks!

>
> > +      This device is used to signal when a detachable base is attached
> > +      to a Chrome OS tablet.
>
> This can't happen at runtime?

There is no way to detect the switch device's existence at runtime.
I'll add a note to the description about this.

>
> > +
> >  required:
> >    - compatible
> >
> > @@ -180,6 +192,10 @@ examples:
> >              interrupts = <99 0>;
> >              interrupt-parent = <&gpio7>;
> >              spi-max-frequency = <5000000>;
> > +
> > +            base_detection: cbas {
> > +                compatible = "google,cros-cbas";
> > +            };
> >          };
> >      };
> >
> > --
> > 2.31.1.295.g9ea45b61b8-goog
> >
