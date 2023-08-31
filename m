Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B198B78E9BC
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 11:45:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230182AbjHaJpW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 05:45:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237425AbjHaJpV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 05:45:21 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD81FCED
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 02:45:17 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-5738cb00eebso387070eaf.2
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 02:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1693475117; x=1694079917; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a2zrg/nVtnDJBTWbtaCFXh/8/Zf+li9b0Mqo2R7m2zs=;
        b=ZVzLCRsX6mmsDlod3PwY+Lg7bm4SGfgice1awwvAe1RBrhI5UMSTwJSSb8HcC/BeCr
         WGzyQC+Ntcq+eVVH5X/tnkvq1SGk3jQvvzwCX8wmdDhrQ7m2W6oMTfKzf242efOQKOu9
         invOyZWm8esGbr+Ae+hXRl1NlHx7BDdXGN7bacbhRepE6h0zElu0tn/Ot452bopOHG8p
         uW34jPesP7HloIw0G0uFCi7dwvAQO6Nvm+L2SQ7ILbyy+3COawmGE8Dk3O/pSH26VsAs
         Ejm7SsgbJgC/xruytAUjclhSoJWUFiQHYofdmtl9nYR55tIOo9QIV8jJ0NmBLriDAfdJ
         2VQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693475117; x=1694079917;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a2zrg/nVtnDJBTWbtaCFXh/8/Zf+li9b0Mqo2R7m2zs=;
        b=EDhiqfBYZaPUFIvPSG2BobSMt5Dt2oqlJG8NaYUYBuH9XkgID5/Tuc56ROMAE3Onfm
         fSlv7Tj5S7IWxNQKE2jQ3FoMtX7erT4BlcMXr/Ow/rL72B1UpzQpIDuDN+vZ5PMk3H3E
         FFqDEQFOEtZCWY4MN+ICB0n+5A5tWFz0Tajck1sUZgLeKmkzCSrOu724NY9j554XxVYf
         LBXP05LXsIqjHOChM5KZOCMesy5PhqKDB2tTwNP/YttHaQVS8+HiGwZEjVKSrN1ZmAvo
         ywuIhOFXj9REkQyocwJZpgM7F/uIj6jy8PxQT7VBdQz3leYYs3Uq2gs1ymZN1p5Csjcc
         HImQ==
X-Gm-Message-State: AOJu0YyhO7FvOSyI45mkr8nttsxEFAAEDFzIq/Wai7hdUIFq/pxSc38P
        BDkfQ+sO39mpSkuZCMmaALYCDniys8qKe796G+CQYg==
X-Google-Smtp-Source: AGHT+IHXqhx+egqjWM5j15UIT7/uZ1bsMGVA9Ml4N+F2VDhanOVMqWkqLiRc05FX0WYyYZzCby9EodfyM2swlGMZyos=
X-Received: by 2002:a05:6870:9d14:b0:1d0:fa7b:c3f9 with SMTP id
 pp20-20020a0568709d1400b001d0fa7bc3f9mr2880440oab.30.1693475117223; Thu, 31
 Aug 2023 02:45:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230830115744.4102929-1-Naresh.Solanki@9elements.com> <b467c423-dbd4-8a14-8fa4-169658e21693@linaro.org>
In-Reply-To: <b467c423-dbd4-8a14-8fa4-169658e21693@linaro.org>
From:   Naresh Solanki <naresh.solanki@9elements.com>
Date:   Thu, 31 Aug 2023 15:15:08 +0530
Message-ID: <CABqG17hB_GvQ56ZB+wjhSrDtZLreZ4vPc+3AfUj6AdA3Btd1+Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-binding: Add custom property for MAX7357
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

On Wed, 30 Aug 2023 at 20:08, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 30/08/2023 13:57, Naresh Solanki wrote:
> > From: Patrick Rudolph <patrick.rudolph@9elements.com>
> >
> > Add a custom property "maxim,bus-lockup-fix" to enable proprietary
> > features on MAX7357. The driver configures MAX7357 to isolate the
> > failing channel and trigger a flush-out sequence for bus lock-up
> > resolution.
>
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching.
Ack
>
> It is "dt-bindings" not binding and several other fields are needed.
Ack
>
> Also "add custom property" is quite generic. When you add next custom
> property you are going to have two commits with the same subject. Just
> make it descriptive - "Add foobar for MAX7357"
Missed Properties in this Patch Series, Will Be Addressed in V2.
So in that case I guess the below title should be fine?
dt-bindings: i2c: Add custom properties for MAX7357/MAX7358

>
>
>
> >
> > Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
> > Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
> > ---
> >  .../devicetree/bindings/i2c/i2c-mux-pca954x.yaml  | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> > index 2d7bb998b0e9..984d4614a270 100644
> > --- a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> > +++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> > @@ -71,6 +71,11 @@ properties:
> >      description: A voltage regulator supplying power to the chip. On PCA9846
> >        the regulator supplies power to VDD2 (core logic) and optionally to VDD1.
> >
> > +  maxim,bus-lockup-fix:
> > +    type: boolean
> > +    description: Isolates only the stuck channel and generates a flush-out sequence
> > +      to attempt to clear the bus lock-up.
>
> Why wouldn't you want it to be enabled all the time? Why should it be
> configurable per-board?
The chip doesn't enable these features by default & it is left to
discretion of board designer to enable the same.

Regards,
Naresh
>
> Best regards,
> Krzysztof
>
