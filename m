Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C93C520D4D
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 07:48:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236766AbiEJFwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 01:52:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiEJFwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 01:52:34 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86A6A2B09EE
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 22:48:37 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id 3so7742223ily.2
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 22:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D4FGmPkKjpWkc5PnEYqJ/Pz1z3GcoQZIZdd4OUTaO3c=;
        b=fiJj6ETLsrhKjBaOSsA0QWVui3toWkStdQMPefckhySfGvFIQ622gqwsHx/jcn29mF
         +l62VfZja1Q+8WMFoNjIhGpgsYRUa0YgjQv8Cnf6f1HSym+8V3ih76U2+zNSoUeB4gaI
         hxWfPzu9d/vPIAn8yZe/UNSdG5KW2DKZLPgQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D4FGmPkKjpWkc5PnEYqJ/Pz1z3GcoQZIZdd4OUTaO3c=;
        b=WcTsD4duJ9ufyIgOjmhiEpibWDbi+u/xUokQ0HHn4/AWBbg0rKWrmoZOzAOvj5fC6c
         0ep1P0IRjczCy6aPOFTJ7hzfxcsunLW0ArmMjfefCdflx4kO8CqaayExtwnfiy5u5Xdx
         4Ca8s8+IYk8x5QCwgelDPe9B+8KGnUx5+rMazLY0EjzcywmU1g0jkCrj2HPPPaQ20d6C
         3HSbaOEWJXcIu5+EHszCwbbaO5gAZO8l9/r6F9RJbH2aWy+6wz6VlqT06BVnduxCu5Vp
         GIyStunhB/Gd/I3iIXwh2dQmJi4mZJN2qFdKyuaswblmlVCC2V9XD65YvFOZqrnpbZ8a
         /Dsw==
X-Gm-Message-State: AOAM532hx/E7YNLg0y9VJ/26ql4GYnVAOXN5g2TEGScKFzSPBLfmOQW7
        iysf0XIQl2GcS6Jlrhz/46j1nUfZJhUIXFdB6YFSlQ==
X-Google-Smtp-Source: ABdhPJz/mqUMJ2Nr6WAg2oGLxKL9GzbVGtyUoMzOXX5zwYMtLHzj7d24mf7YIvZfoPsrVv7mvUqpmB0iqEbmjkQcXqA=
X-Received: by 2002:a05:6e02:1568:b0:2cf:6711:c3c6 with SMTP id
 k8-20020a056e02156800b002cf6711c3c6mr8951324ilu.59.1652161716879; Mon, 09 May
 2022 22:48:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220429220144.1476049-1-gwendal@chromium.org>
 <20220429220144.1476049-8-gwendal@chromium.org> <20220501181741.5dd3bf26@jic23-huawei>
In-Reply-To: <20220501181741.5dd3bf26@jic23-huawei>
From:   Gwendal Grignou <gwendal@chromium.org>
Date:   Mon, 9 May 2022 22:48:26 -0700
Message-ID: <CAPUE2utjhjLiXyASp5kuM9E67xeKztjtH6JJxNzGqtv3anaafQ@mail.gmail.com>
Subject: Re: [PATCH v5 07/10] dt-bindings: iio: sx9324: Add input analog gain
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     robh+dt@kernel.org, swboyd@chromium.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 1, 2022 at 10:09 AM Jonathan Cameron <jic23@kernel.org> wrote:
>
> On Fri, 29 Apr 2022 15:01:41 -0700
> Gwendal Grignou <gwendal@chromium.org> wrote:
>
> > Allow setting the configure the input analog gain.
> >
> > Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
>
> Hi Gwendal.
>
> So, my immediate thought on this is whether it make sense as a
> dt controlled thing or not. It's the sort of thing hardwaregain
> is for in the userspace ABI. However, I see that's already
> in use for the digital gain. This one also unhelpfully applies
> to all changes whereas the digital gain is pair wise. Hence
> there is basically no way we can map the two controls to a
> single ABI element.
>
> So, how would we expect a board designer to set this value?
>
> If the answer is we basically have no idea but some boards do
> want it set then I'm fine with this basically being a somewhat magic
> value that is in some vague way associated with the antenna setup...
More or less :-). All these parameters are set with the help of
Semtech application engineers. The input analog gain is directly
linked to the antenna design, as it is used by the AFE (Analog Front
End). The hardwaregain (aka digital gain) comes second during the
digital processing. We could have put all the settings in the device
tree, as we don't expect changes once the values are satisfactory to
pass regulatory testings, but the hybrid approach still allows some
tinkering: I've use to get a sense of the data amplitude when
collecting data with /dev/iio:devoceX.
>
> Jonathan
>
> > ---
> > New in v5.
> >
> >  .../bindings/iio/proximity/semtech,sx9324.yaml        | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> > index 0be87ac05b97a..d265eb5258c84 100644
> > --- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> > +++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> > @@ -143,6 +143,17 @@ properties:
> >      description:
> >        Pre-charge input resistance in Ohm.
> >
> > +  semtech,input-analog-gain:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 0
> > +    maximum: 3
> > +    description: |
> > +      Defines the input antenna analog gain
> > +      0: x1.247
> > +      1: x1 (default)
> > +      2: x0.768
> > +      3: x0.552
> > +
> >  required:
> >    - compatible
> >    - reg
>
