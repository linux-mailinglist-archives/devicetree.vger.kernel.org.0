Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9DE51CE5F8
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2020 22:46:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731785AbgEKUqj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 May 2020 16:46:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1731484AbgEKUqj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 11 May 2020 16:46:39 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42E03C061A0C
        for <devicetree@vger.kernel.org>; Mon, 11 May 2020 13:46:38 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id a4so5106042pgc.0
        for <devicetree@vger.kernel.org>; Mon, 11 May 2020 13:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=uYusnhSC7Z6RV3AtOgOdxj3jC+YLs9nBvqEDynGfEO4=;
        b=hkEdszHivpyBZj6Je7n1VlEhojSGSt2t11cqUYXONgDCnJ3B4+XrxCdoiktys9EEOC
         BAUx9V1FUz8O5C/7N8IPPFEytTC+hjumCYHKCniwoC1fFUlk6/kxAMEx5Cc4CIbEMILA
         Y+xfoa9PZ+PAxKIEEbiFrXdJbhVedDFKoYKAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uYusnhSC7Z6RV3AtOgOdxj3jC+YLs9nBvqEDynGfEO4=;
        b=fYPnV28Idn/4KVZMV3Z4k6rZYwgRUxNjVPI4T/AzJZrlTyqekbT4cnr4TtNasAwalB
         Y1SXyc8ju/ELDy0wu81mkuGQRSORqT17c56gCByxSWvpFd43ZqXoGnXVTvNI20t9chJj
         nHbsdm54xF1Hg6E/WG3qVvauRvn+IxGDVG0Ci3qbRHeARcgnYZn5m8azdBW2nEnre4aB
         9jCOuO2kqmPNjsJ8l9wPySEeJxWSDDN+yAmaS+0nMrm4AnfBC9ZFesYzT0cbyO3aoa8P
         nWcw3YryOkdzdcRYXrovpbZzGd/OVAMYY4cmMTYezKKS6D9+gTM++DEbuYBGn5cQ7csl
         TykA==
X-Gm-Message-State: AOAM532Vg2OX3HWnLOyv0xcRQ+WTd5a0MWeUyms3gY2N4edh7SWkEvnN
        1m/09noj5P6C2Lnh+tmZ7X/77Q==
X-Google-Smtp-Source: ABdhPJywgNWD2Wh9WUBNZ0aLExdgulIwqc76Ief5yXPN1y1Bsh6hSt7WMz8Z2cbjXe2REjbFsLFV5A==
X-Received: by 2002:a63:4cc:: with SMTP id 195mr3874382pge.294.1589229997580;
        Mon, 11 May 2020 13:46:37 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:476b:691:abc3:38db])
        by smtp.gmail.com with ESMTPSA id 67sm10209091pfx.108.2020.05.11.13.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2020 13:46:36 -0700 (PDT)
Date:   Mon, 11 May 2020 13:46:35 -0700
From:   Prashant Malani <pmalani@chromium.org>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, heikki.krogerus@linux.intel.com,
        twawrzynczak@chromium.org, Benson Leung <bleung@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>
Subject: Re: [PATCH 1/2] dt-bindings: chrome: Add cros-ec-typec mux props
Message-ID: <20200511204635.GC136540@google.com>
References: <20200422222242.241699-1-pmalani@chromium.org>
 <20200511192800.GA28762@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200511192800.GA28762@bogus>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thank you for reviewing the patch. Kindly see my comments inline:

On Mon, May 11, 2020 at 02:28:00PM -0500, Rob Herring wrote:
> On Wed, Apr 22, 2020 at 03:22:39PM -0700, Prashant Malani wrote:
> > Add properties for mode, orientation and USB data role switches for
> > Type C connectors. When available, these will allow the Type C connector
> > class port driver to configure the various switches according to USB PD
> > information (like orientation, alt mode etc.) provided by the Chrome OS
> > EC controller.
> > 
> > Signed-off-by: Prashant Malani <pmalani@chromium.org>
> > ---
> >  .../bindings/chrome/google,cros-ec-typec.yaml | 27 ++++++++++++++++++-
> >  1 file changed, 26 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> > index 6d7396ab8bee..b5814640aa32 100644
> > --- a/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> > +++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> > @@ -21,7 +21,21 @@ properties:
> >      const: google,cros-ec-typec
> >  
> >    connector:
> > -    $ref: /schemas/connector/usb-connector.yaml#
> > +    allOf:
> > +      - $ref: /schemas/connector/usb-connector.yaml#
> > +      - type: object
> > +        properties:
> 
> These don't seem CrOS EC specific, so why document them as such. 

Are you referring to the "mode-switch", "orientation-switch" and
"usb-role-switch" properties? If so, then yes, they aren't Cros EC
specific. The Type C connector class framework requires the nodes to be
named like this, and the cros-ec-typec driver uses this framework, hence
the description here (the Type C connector class framework doesn't have
any bindings).

Would it be better to add in the description string that Type Connector
class expects these switches to be named this way? :

" Reference to a DT node for the USB Type C Multiplexer controlling the
data lines routing for this connector. This switch is assumed registered
with the Type C connector class framework, which requires it to be named
this way."
> 
> > +          mode-switch:
> > +            description: Reference to a DT node for the USB Type C Multiplexer
> > +              controlling the data lines routing for this connector.
> 
> This is for alternate mode muxing I presume.

Yes, that's right.
> 
> We already have a mux-control binding. Why not use that here?

Heikki might be able to offer more insight into why this is the case,
since the connector class framework seems to expect a phandle and for
the device driver to implement a "set" command. Heikki, would you happen to know?

> 
> > +
> > +          orientation-switch:
> > +            description: Reference to a DT node for the USB Type C orientation
> > +              switch for this connector.
> 
> What's in this node?

Similar to the other "-switch", this will contain a phandle to a device
which can control orientation settings for the Type C Mux. The connector
class API assumes the switches are named this way. For example:

orientation-switch:
https://elixir.bootlin.com/linux/v5.7-rc2/source/drivers/usb/typec/mux.c#L64

mode-switch:
https://elixir.bootlin.com/linux/v5.7-rc2/source/drivers/usb/typec/mux.c#L258

> 
> > +
> > +          usb-role-switch:
> > +            description: Reference to a DT node for the USB Data role switch
> > +              for this connector.
> >  
> >  required:
> >    - compatible
> > @@ -49,6 +63,17 @@ examples:
> >              data-role = "dual";
> >              try-power-role = "source";
> >            };
> > +
> > +          connector@1 {
> > +            compatible = "usb-c-connector";
> > +            reg = <1>;
> > +            power-role = "dual";
> > +            data-role = "host";
> > +            try-power-role = "source";
> > +            mode-switch = <&typec_mux>;
> > +            orientation-switch = <&typec_orientation_switch>;
> > +            usb-role-switch = <&typec_mux>;
> > +          };
> >          };
> >        };
> >      };
> > -- 
> > 2.26.1.301.g55bc3eb7cb9-goog
> > 
