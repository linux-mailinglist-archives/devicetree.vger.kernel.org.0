Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F017E716B8A
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 19:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbjE3RtE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 13:49:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjE3RtD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 13:49:03 -0400
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B883BE
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 10:49:02 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id ada2fe7eead31-4394b1820a8so1588812137.3
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 10:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1685468941; x=1688060941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=caWXGzmTtjdyFwC0bsrS/u+5fCZZHUNGKu4lMqQ0PcY=;
        b=ZfK2N+5nnESrgRzeDyoqUPMDwu2UmQ5j5OytAcXjCdpwfMntAy+htfFJpoIkLckygb
         clSQBUJhb+Gb0IVKg8iqFOK8fzoMCxG6DwVd+JuSgFnpU55CL2hPanyoPv3eG50C/MRZ
         udlHAZXgX1UnZHimgNkkm6qnqcuIDiaGpaimbp0f8Z0iGNnJdJnjo6Iqs5ePkEj8znyV
         T2ktGgNfPIXp7tovmD4rdk1V32Fywo6iFKW5UAHqYnesLSKbYAwg+8gt8Q5LoNY2oO8e
         h3DWyxFpXln8KEef1KTFo0wlxjW1Uy2h2DbpRkZgBQOoMuEC60Lk+YHPc8llAAqrF8IY
         7UTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685468941; x=1688060941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=caWXGzmTtjdyFwC0bsrS/u+5fCZZHUNGKu4lMqQ0PcY=;
        b=ZfSwcX0vEgBlRLm2NVV2Gs7Tha5B9m96czYZ0Chnmqwt3CHn6IEtRmf+ZkF+IY2XOg
         sX02NrC5kbASlPPLCEtwfa20nrJ9b1GvlQrppYRxcR3OOgS9CCQb7cT6EjQGIBq36HPM
         AqdN7HuRQsTKhYmGrRk90VB3tuYo2g+4T6RfplNPQg5tdLBZIasAecbQo3RPvGqe0F6m
         gqtMMAcdq3XwIaw0HsBzamTp5LQDYA7TayFNtJqqy+YWZpcJPTZgIfiXQwVZ15WBxkTa
         OyShV5vMWv8O3C3eARRy02OPIgxY7Lbo8DWfUfrrLE+sljEs7UEsV5M0KPMqBDYPxZWE
         YK8A==
X-Gm-Message-State: AC+VfDzOvmBSM1a7oi8VCEyaegWvm0/KDo6jhSsSfcblDSQFJEo16C98
        mFkn5tIzIsEYkDU4fzvq9NJdXNmTDh1u90850+9aDg==
X-Google-Smtp-Source: ACHHUZ4/6ODbPSfqIe9WJ5ExTjh7kAeuYusIscG65esUBAoUtwIN8DZJAdBSxMQHW5dGsxXaT+yeFO/q1Mzyu2k3Fs0=
X-Received: by 2002:a05:6102:3a49:b0:434:865e:700a with SMTP id
 c9-20020a0561023a4900b00434865e700amr1228399vsu.16.1685468941113; Tue, 30 May
 2023 10:49:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230530173000.3060865-1-dave.stevenson@raspberrypi.com>
 <20230530173000.3060865-20-dave.stevenson@raspberrypi.com> <20230530-crying-dispose-2a0e3bc76301@spud>
In-Reply-To: <20230530-crying-dispose-2a0e3bc76301@spud>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Tue, 30 May 2023 18:48:44 +0100
Message-ID: <CAPY8ntDsA4PVOowDed6zMqawzFWehABWTENkiLahGubyDZZOTw@mail.gmail.com>
Subject: Re: [PATCH 19/21] dt-bindings: media: imx258: Add alternate
 compatible strings
To:     Conor Dooley <conor@kernel.org>
Cc:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor

Thanks for the incredibly speedy review.

On Tue, 30 May 2023 at 18:39, Conor Dooley <conor@kernel.org> wrote:
>
> Hey Dave,
>
> On Tue, May 30, 2023 at 06:29:58PM +0100, Dave Stevenson wrote:
> > There are a number of variants of the imx258 modules that can not
> > be differentiated at runtime, so add compatible strings for them.
> >
> > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> > ---
> >  .../devicetree/bindings/media/i2c/sony,imx258.yaml         | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > index bee61a443b23..3415b26b5991 100644
> > --- a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > @@ -14,10 +14,15 @@ description: |-
> >    type stacked image sensor with a square pixel array of size 4208 x 3120. It
> >    is programmable through I2C interface.  Image data is sent through MIPI
> >    CSI-2.
> > +  There are a number of variants of the sensor which cannot be detected at
> > +  runtime, so multiple compatible strings are required to differentiate these.
>
> This is implied by having several compatibles.

I'm happy to drop it, just that I've seen a number of media bindings
that had debate on why extra compatible strings were required.

> >  properties:
> >    compatible:
> > -    const: sony,imx258
> > +    oneOf:
> > +      - enum:
> > +          - sony,imx258
> > +          - sony,imx258-pdaf
>
> Why not just
> properties:
>   compatible:
>     enum:
> ?
> I don't see other patches anding more complex compatibles (or they've
> not arrived yet) so it doesn't appear to be avoiding churn.

I'll freely admit that DT bindings are a black art to me, so I was
following sony,imx290.yaml [1].
properties:
  compatible:
    oneOf:
      - enum:
          - sony,imx290lqr # Colour
          - sony,imx290llr # Monochrome
          - sony,imx327lqr # Colour
      - const: sony,imx290
        deprecated: true

Looking again at that case, I assume the oneOf is selecting between
the enum and the const? Seeing as we don't have the const, I guess we
can drop the "oneOf:"

Thanks for your help.

  Dave

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/media/i2c/sony%2Cimx290.yaml#L27-L34

> Cheers,
> Conor.
