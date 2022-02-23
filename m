Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 189E04C09A1
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 03:47:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237225AbiBWCrb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 21:47:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237567AbiBWCrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 21:47:17 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD3D5F4F6
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 18:45:05 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id o4so270428wrf.3
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 18:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=trpEJbUaAoUHUXzraHCvZbmPHXTmssr8XxPA/Czuy7Q=;
        b=YjfGvfJmUOx66BnhtXdT7mh8HRI2QuaW2Nypv8ZqJDcXDhiupYJWc47iQEDWgoQA8K
         rVmw1smUgmGFRaghswn0NJyTOs3YIS5TYjdS+UjrUNGa4OSOqPB0K4JGmmmZ6eBLxIRP
         Als744SOL/T0l8fA0u0T0RJ3lY7QsnPPpPaZw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=trpEJbUaAoUHUXzraHCvZbmPHXTmssr8XxPA/Czuy7Q=;
        b=3gpMJ7DTDeHyNhHJ4+Cke0yFwzonbstNQQG39hZA6F4jJ2/2GC2jkgsCbqlQwDkv7l
         qQHmsAIdSVkcqw3nk2/F/gpfcKKtoOxxCBag1glFE/En8j2XDy1aFTB36rL/1JKbIo2u
         f+9z9lZaYnf1/Izl3+eQ/qdk6iJnGEtcKbZo2DADrNp7yEZrbqCFDehAzTWSeKoUkils
         SMY5sJwXwDJGEmda5cuTfxtKOXnR/C7d7aCJPHIOqZc03+ZUkiiUeXyCZpi0iMf5sKAo
         yGLNrGxnAMIwxCOL7mr5bytLeFnKxOX4ybkBOCrnTGpMJd6rQFQANYYRbP7Y+osVQOev
         t6eg==
X-Gm-Message-State: AOAM530eK41b5FNUq/BEvnansqsuZ3YwIj1SYEwhCxAg1L0d99m3h59v
        HtRrj5awzy1071FEndA2dPk61hEbdaX1KcCZKDyM5Q==
X-Google-Smtp-Source: ABdhPJy3OspjYsMc6sZbvjjucdf4g/jO3nXY1gAvytGBZ9BMC968K8xi4ndFVpLV3XUKns3jpNgSmk+1lzhwXy6Z0rs=
X-Received: by 2002:a05:6000:1292:b0:1e3:1497:be92 with SMTP id
 f18-20020a056000129200b001e31497be92mr21574751wrx.667.1645584304247; Tue, 22
 Feb 2022 18:45:04 -0800 (PST)
MIME-Version: 1.0
References: <20220219012457.2889385-1-jwerner@chromium.org> <9d33314e-97da-dc47-8361-2e45b75fa566@canonical.com>
In-Reply-To: <9d33314e-97da-dc47-8361-2e45b75fa566@canonical.com>
From:   Julius Werner <jwerner@chromium.org>
Date:   Tue, 22 Feb 2022 18:44:52 -0800
Message-ID: <CAODwPW_JbcppFGKvrooxf25dLJuvf5iWoWim1xSXZ2wqgL1k0A@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: memory: lpddr2: Adjust revision ID
 property to match lpddr3
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Julius Werner <jwerner@chromium.org>,
        Dmitry Osipenko <digetx@gmail.com>, devicetree@vger.kernel.org,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > +  revision-id:
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    minItems: 2
> > +    maxItems: 2
>
> You need maximum value under items.  See:
> Documentation/devicetree/bindings/arm/l2c2x0.yaml

Sorry, can you clarify how this is supposed to be? Do you want

 revision-id:
   minItems: 2
   maxItems: 2
   items:
     minItems: 2
     maxItems: 2

or just

 revision-id:
   items:
     minItems: 2
     maxItems: 2

I see examples of both in the file you linked (and also examples of
what my original patch did). Is there any authoritative documentation
somewhere I can read that specifies which of those is correct? (I
tried looking at
https://json-schema.org/understanding-json-schema/reference/array.html#length
but I'm not sure if that's relevant here.)

For updating existing DTSes, do you want that in the same patch or a
separate patch in a series?
