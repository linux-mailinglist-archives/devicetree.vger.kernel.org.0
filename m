Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 470071273C9
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2019 04:20:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727151AbfLTDUk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Dec 2019 22:20:40 -0500
Received: from mail-il1-f194.google.com ([209.85.166.194]:33637 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727024AbfLTDUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Dec 2019 22:20:39 -0500
Received: by mail-il1-f194.google.com with SMTP id v15so6738149iln.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2019 19:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SXtqcttKLWZ67QzGf6zW6Mb+RordXMuCQM4bcsq63Ew=;
        b=eyK9YQy/lE6L+bXC+B5o4JUrisPmeN/WR/NhSkJG61OBZLc/sKtHiC5FP0XgVog6gB
         u+wmXubHt2HBBX37rdh5RoBotClfBPjJdpEg+e0kI9d3LRIT/8g1wPy9zc31bjN+bohW
         QFTLizraMP9mVU87dth7H7qpI+fbhYqBz+EKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SXtqcttKLWZ67QzGf6zW6Mb+RordXMuCQM4bcsq63Ew=;
        b=ayJfeKtyle3Dp5Oom1iZJiEaBGum4qUP+KxU7MTqaLtD+78HFbBCRz4JQJHLHE6M0b
         jtwrVZc8Yg5OYQ59p6s65fKbMg/RWJDunOuRDq1tsb/Ij+aYXLvVBO8rFUbZHUIbf8iH
         QWFXTal49GqeFNb2CEEnjULOd1aMzeFR49PM4JKJKitohYzoyw+lNvpR9t1nd3UTonXc
         t3X8sk7MJpNDi1CLxxxwVIZzFTcMg8PzuJnXks2gQUSwVhw5QO4elcjtpvvEUUiI9Nk8
         AZe+xpkbWusbyBZzQwuyT4nmT/8prlvDytjJy8j02kakTNDNu0Wao1NS3rBTOrIxQ669
         LvAg==
X-Gm-Message-State: APjAAAXRi5ZRd+CbhmkXiBIn2zVtFhr6KiDi3fFP+Egy9QThKVg48eov
        DBuqlmk7uHGxizayNcxOCVsjEkFUxLJdHxQb/REDpg==
X-Google-Smtp-Source: APXvYqy7u7wzTGXLrsZ+AXTg1p3cHCghbe0rKg+y/NZ+ag2qe3QXozlNdrsEwzL28gnj/FhLLbWiw1JrD5C1rI9j66A=
X-Received: by 2002:a92:af8e:: with SMTP id v14mr10037048ill.150.1576812038892;
 Thu, 19 Dec 2019 19:20:38 -0800 (PST)
MIME-Version: 1.0
References: <20191211061911.238393-1-hsinyi@chromium.org> <20191211061911.238393-2-hsinyi@chromium.org>
 <20191219204524.GA7841@bogus>
In-Reply-To: <20191219204524.GA7841@bogus>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 20 Dec 2019 11:20:13 +0800
Message-ID: <CAJMQK-gYFJ-F9_rkPsxXS+qc40OwU-di2tdLLbL7x=smbRNujw@mail.gmail.com>
Subject: Re: [PATCH RESEND 1/4] dt-bindings: drm/bridge: analogix-anx7688: Add
 ANX7688 transmitter binding
To:     Rob Herring <robh@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Brugger <mbrugger@suse.com>,
        Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 20, 2019 at 4:45 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Dec 11, 2019 at 02:19:08PM +0800, Hsin-Yi Wang wrote:
> > From: Nicolas Boichat <drinkcat@chromium.org>
> >
> > Add support for analogix,anx7688
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> > Change from RFC to v1:
> > - txt to yaml
> > ---
> >  .../bindings/display/bridge/anx7688.yaml      | 60 +++++++++++++++++++
> >  1 file changed, 60 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7688.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/anx7688.yaml b/Documentation/devicetree/bindings/display/bridge/anx7688.yaml
> > new file mode 100644
> > index 000000000000..cf79f7cf8fdf
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/anx7688.yaml
> > @@ -0,0 +1,60 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/anx7688.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Analogix ANX7688 SlimPort (Single-Chip Transmitter for DP over USB-C)
> > +
> > +maintainers:
> > +  - Nicolas Boichat <drinkcat@chromium.org>
> > +
> > +description: |
> > +  The ANX7688 is a single-chip mobile transmitter to support 4K 60 frames per
> > +  second (4096x2160p60) or FHD 120 frames per second (1920x1080p120) video
> > +  resolution from a smartphone or tablet with full function USB-C.
> > +
> > +  This binding only describes the HDMI to DP display bridge.
> > +
> > +properties:
> > +  compatible:
> > +    const: analogix,anx7688
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description: I2C address of the device
> > +
> > +  ports:
> > +    type: object
> > +
> > +    properties:
> > +      port@0:
> > +        type: object
> > +        description: |
> > +          Video port for HDMI input
> > +
> > +      port@1:
> > +        type: object
> > +        description: |
> > +          Video port for eDP output
> > +
> > +    required:
> > +      - port@0
>
> Sometimes you have no output?
Yes, only input is required.
>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - ports
>
> The example will have errors because it is missing 'ports'. Run 'make
> dt_binding_check'.
>
> Add:
>
> additionalProperties: false
>
Ack, will fix this. Thanks
> > +
> > +examples:
> > +  - |
> > +    anx7688: anx7688@2c {
> > +      compatible = "analogix,anx7688";
> > +      reg = <0x2c>;
> > +
> > +      port {
> > +        anx7688_in: endpoint {
> > +          remote-endpoint = <&hdmi0_out>;
> > +        };
> > +      };
> > +    };
> > --
> > 2.24.0.525.g8f36a354ae-goog
> >
