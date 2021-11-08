Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39012447BCC
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 09:28:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237259AbhKHIbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 03:31:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237245AbhKHIbI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 03:31:08 -0500
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 407C7C061714
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 00:28:24 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id f10so16069207ilu.5
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 00:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0lEfzRhEv5nLfiUNxNLUbl+a6LR8Um12H8MIrdzaUE8=;
        b=Bj2FPDb5XEY1QTxJkJ96nDpx0QX6fremmFOktl+5WbL4QJQ0UF9kfVRh6hIXXIszzS
         JVXX69E959ZITaQ2UfNCwCoilKGQ8xOtVDJEU4k5otGI/C+pOqwgB1qay6bwOZUCVhZo
         kikTcghNiGTTQ8vwinbywDQtJ4a33cxQVO9ik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0lEfzRhEv5nLfiUNxNLUbl+a6LR8Um12H8MIrdzaUE8=;
        b=bMD5HYwwKV/pczUblI7u32yfXC34si8LhBWwAXRidGbcaGPyDyQJsfCFiwtcogIndL
         FWacDNplGPNj9RU8n+lF3rzrU7kKKcHaNwEWWQyIhBYvjIlYgGOwC//cbiWdEF2+v5gd
         zvaeHc6A2n8dU/nLLOEDdmCGe+9kvFEoPRtOAMYGVrQjQrtV1cK1lff2qPjXy9lRPfCL
         z4pmgh7EHrPg+bpsUKp8GOUcOhsttg843r81wKW2Qv6CJb/6QYz5m1R6yi3tTsEqxoY+
         xjWvtzNbkbArZYmQo8wDp34wYuKNz15+6GJqBq0hL0lP0qKfqidpxak6fcbVa/sqXs+b
         DbGg==
X-Gm-Message-State: AOAM5321WY50Xa31M2HhtE1wf+6MDQXOKViSDJomZisiUvtIsz3cN0rj
        aDTeAU0ych223EdSMqF1jgHOzWDDRDq7QYrX5GeuDg==
X-Google-Smtp-Source: ABdhPJzZ2sLmjcU/xcMOLtZRTFE1A/1jUa95N+Xr7vk+BsL9XbPBxFalg+nFVb8TYFPMvIbL0DATPFhlQBQQHsp7uDk=
X-Received: by 2002:a05:6e02:1aa2:: with SMTP id l2mr42399910ilv.114.1636360103665;
 Mon, 08 Nov 2021 00:28:23 -0800 (PST)
MIME-Version: 1.0
References: <20211108072711.1628566-1-hsinyi@chromium.org> <20211108072711.1628566-7-hsinyi@chromium.org>
 <CAGXv+5GD7KU4i+P--6RShhMu32Rhf-g6SZF8SRDscc4XEG4QrQ@mail.gmail.com>
In-Reply-To: <CAGXv+5GD7KU4i+P--6RShhMu32Rhf-g6SZF8SRDscc4XEG4QrQ@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 8 Nov 2021 16:27:58 +0800
Message-ID: <CAJMQK-iHHitbgxk5q2Z8dRt=o2XwX=WK5dbi+xcZ6Jk4MQzzig@mail.gmail.com>
Subject: Re: [PATCH 7/7] dt-bindings: arm64: dts: mediatek: Add sku22 for
 mt8183 kakadu board
To:     Chen-Yu Tsai <wenst@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 8, 2021 at 4:10 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> On Mon, Nov 8, 2021 at 3:29 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > Add sku22 which uses different audio codec than previous kakadu board.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > index 99e7f8e294cd03..da5f9ecc1a9b37 100644
> > --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> > +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > @@ -161,8 +161,11 @@ properties:
> >            - const: mediatek,mt8183
> >        - description: Google Kakadu (ASUS Chromebook Detachable CM3)
> >          items:
> > -          - const: google,kakadu-rev3
> > -          - const: google,kakadu-rev2
> > +          - enum:
> > +              - google,kakadu-rev2
> > +              - google,kakadu-rev2-sku22
> > +              - google,kakadu-rev3
> > +              - google,kakadu-rev3-sku22
> >            - const: google,kakadu
> >            - const: mediatek,mt8183
>
> This matches
>
>     "google,kakadu-rev[23](-sku22)?", "google,kakadu", "mediatek,mt8183",
>
> which isn't what you want. You want:
>
>     "google,kakadu-rev3", "google,kakadu-rev2", "google,kakadu",
>     "mediatek,mt8183"
>
> or
>
>     "google,kakadu-rev3-sku22", "google,kakadu-rev2-sku22", "google,kakadu",
>     "mediatek,mt8183"
>
> I think the following is closer, but I'm not sure if nesting "items" is valid.
>
> items:
>   - oneOf:
>     - items:
>       - const: google,kakadu-rev3-sku22
>       - const: google,kakadu-rev2-sku22
>     - items:
>       - const: google,kakadu-rev3
>       - const: google,kakadu-rev2
>   - const: google,kakadu
>   - const: mediatek,mt8183
>
How about

items:
  - enum:
        - google,kakadu-rev2
        - google,kakadu-rev2-sku22
  - enum:
        - google,kakadu-rev3
        - google,kakadu-rev3-sku22
  - const: google,kakadu
   ....

>
> ChenYu
