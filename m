Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D29B96D6414
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 15:55:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235540AbjDDNzb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 09:55:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235380AbjDDNz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 09:55:27 -0400
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B078210D1
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 06:54:55 -0700 (PDT)
Received: by mail-vs1-xe34.google.com with SMTP id b6so25258719vsu.12
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 06:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1680616495;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8vxdDefvvddT/9lK9tLNVI9aT2fK3kIsSFEfydgZYtk=;
        b=Ya/wbST62b8bezjGJ+GdV4aX4VVQ7bkrHG4sJ3MmhiRJGFpPveN8pZ+WsGjh7iPiK0
         toe9rgOKSkw8ZZNtv0JgB/3gyOzpK0o+PRkaObp9GXfbSuj/X8Z5l7mTdA6ukeRBSZ1t
         /Fl227fhx8K4bOyxVBwKplIoQgC5hp0E4BMBvkh204o4HFeppj1CCcjA1tL1dUpJVgX3
         XVgJZgAJcZZoq/p7FlWb8kvNbB1zUD2pFP1YQKm5Icpitm/bP1mjGEwoSgFGIY38I/nu
         b/KHayT+HcLzKVwzBvnsLO3ZoIxGbUdy5VEAUR0AuGtSPbVnRIR1mdI+gsjyZm0g4qyk
         bC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680616495;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8vxdDefvvddT/9lK9tLNVI9aT2fK3kIsSFEfydgZYtk=;
        b=IYHTl7Py8HPnIvNxzo8HDFvIOiwnzwKu0bdt0djeecWPdLoiENkCXgAXVIUyfgsWuK
         HnvXedkTmQLnp/XFhHJy66m1p5pcPrFrrpbslWjbRqruU/xTCR4IE/TQzQyy4j91ef5q
         A5hBfRtn3DjGqJ8Yo+hAy0XfhnXvI8UAiMELn24SW8ujX6BSPjC5lw1orQWAnbWpbbIO
         HFd7J3Szghx9i9Y0CXyfs/Pj7uf3T7vF/A8e1u2OR8RmhSSKHNzXb+mqNu3LQ6pPSflP
         hAX3bswN6IXXlpAqNPCRwOnWBCJ6cvrQtEE6A5cNbbuAQVNEpWcWPuCQQjp9QclzSljP
         g9Rg==
X-Gm-Message-State: AAQBX9cBqFH3y8E8HFIKzmPO/310uI5OjcN/e3z3EfQ69A8y43OObwXL
        o675Ej6TsUcWi2uMmiUYC7qmAVoqag7rBUUZZ5coTw==
X-Google-Smtp-Source: AKy350a5f/7rix1Bx/HaEfgI4ImxkcUz7pSb82+guYOFsa97EzdFAQARipypD435dAL1dHUwvcHFcauKCK+dFMJ2rPw=
X-Received: by 2002:a67:c812:0:b0:416:2ad3:35ba with SMTP id
 u18-20020a67c812000000b004162ad335bamr2335152vsk.1.1680616494759; Tue, 04 Apr
 2023 06:54:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230125-tfp410_i2c-v3-0-a85d5f0f50f1@criticallink.com>
 <20230125-tfp410_i2c-v3-2-a85d5f0f50f1@criticallink.com> <4a22e085-b339-aa43-518e-d528c5f76de4@linaro.org>
In-Reply-To: <4a22e085-b339-aa43-518e-d528c5f76de4@linaro.org>
From:   Jon Cormier <jcormier@criticallink.com>
Date:   Tue, 4 Apr 2023 09:54:43 -0400
Message-ID: <CADL8D3Zhn1iFo0fn-VSw5DTvh3UNmCLAFKviKOOa-+F64tRFTA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] drm/bridge: tfp410: Fix logic to configured polled HPD
To:     neil.armstrong@linaro.org
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Michael Williamson <michael.williamson@criticallink.com>,
        Bob Duke <bduke@criticallink.com>
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

On Fri, Mar 31, 2023 at 5:00=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> Hi,
>
> On 20/02/2023 23:10, Jonathan Cormier wrote:
> > From: Michael Williamson <michael.williamson@criticallink.com>
> >
> > The logic to configure polling (vs async/irq notification) of hot-plug
> > events was not correct.  If the connected bridge requires polling,
> > then inform the upstream bridge we also require polling.
> >
> > Signed-off-by: Michael Williamson <michael.williamson@criticallink.com>
> > Signed-off-by: Jonathan Cormier <jcormier@criticallink.com>
> > ---
> >   drivers/gpu/drm/bridge/ti-tfp410.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridg=
e/ti-tfp410.c
> > index bb3f8d0ff207..41007d05d584 100644
> > --- a/drivers/gpu/drm/bridge/ti-tfp410.c
> > +++ b/drivers/gpu/drm/bridge/ti-tfp410.c
> > @@ -155,7 +155,7 @@ static int tfp410_attach(struct drm_bridge *bridge,
> >               return -ENODEV;
> >       }
> >
> > -     if (dvi->next_bridge->ops & DRM_BRIDGE_OP_DETECT)
> > +     if (dvi->next_bridge->ops & DRM_BRIDGE_OP_HPD)
> >               dvi->connector.polled =3D DRM_CONNECTOR_POLL_HPD;
> >       else
> >               dvi->connector.polled =3D DRM_CONNECTOR_POLL_CONNECT | DR=
M_CONNECTOR_POLL_DISCONNECT;
> >
>
> A Fixes tag is probably needed here ?
Thanks will do
>
> With that:
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>




--=20
Jonathan Cormier
Software Engineer

Voice:  315.425.4045 x222



http://www.CriticalLink.com
6712 Brooklawn Parkway, Syracuse, NY 13211
