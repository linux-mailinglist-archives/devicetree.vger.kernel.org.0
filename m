Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23F554D9EDA
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 16:38:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349629AbiCOPkD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 11:40:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235891AbiCOPkC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 11:40:02 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B32E49F15
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 08:38:50 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id u30-20020a4a6c5e000000b00320d8dc2438so24770546oof.12
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 08:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=khkCTdEEAM7n3P/dQQhrb/HV8J+XYUq5hsAldrDxFGU=;
        b=Nqk0+w29LeOBvre06Fj4cSdo88alwYbpQrE+cuLmk5f/K9gWWBedX5rt1Gkw32yySC
         KeYyPDFEEkoNdevG4aBMWC9xva1lFOR4D4pD06KXSuzSoFcA8ZHr1eBaArzWozJDhcq+
         HrJBnQFdPnmY5Bds1loQdvMF+tunMSlaz/Yak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=khkCTdEEAM7n3P/dQQhrb/HV8J+XYUq5hsAldrDxFGU=;
        b=k5XDQHsV+Sou93OyBkQhrc36KNQdmilGHxUcCIm6vdyMqYJSAioVpYrm7dThw5xi1d
         X1T3GubsBnYtxU4RYtJFBwxP0b7u1rYJpEoHj5U4lmNSHx1fevnQozA8FGvr1YTdb0gY
         gpvcWsVbhCpNEcaJ12FgpWIQHCMiuW6I41sqgoX6kKm1AxFIS2bJCPffAoHjvDIYW1RR
         DJey0fmf3EQ7TvfPE8/b7fs9HYALQEThmLLBdiUg6joIvBGrt+IkToL8apLJcWZSxm/M
         sFR+ASIdm7mrRkLvtrNk4qEtu+is0fpx5Caxx83kG3/2VJIZcxzHF/0lEcMqgXUFrOv1
         0+ug==
X-Gm-Message-State: AOAM532tTenTfXq9DEyBm9P3xUuccM1k/67iE3hCJrgj8ZdaXHzBM30X
        TWxsjJR4P6AFMBRxJXTbL6kii/saAoE9C1z60pkF3A==
X-Google-Smtp-Source: ABdhPJws5kjn3G32odVO46AOfForEvxatvad2ia/nqZQ+oT27yL543G4RC11InOG91OxbM21TdaCswYoYg/ePOwb5wQ=
X-Received: by 2002:a05:6870:c0cb:b0:da:2bcc:aa09 with SMTP id
 e11-20020a056870c0cb00b000da2bccaa09mr1799556oad.63.1647358729890; Tue, 15
 Mar 2022 08:38:49 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Mar 2022 10:38:49 -0500
MIME-Version: 1.0
In-Reply-To: <YjADP+8mNnlkcGF7@google.com>
References: <20220314232214.4183078-1-swboyd@chromium.org> <20220314232214.4183078-2-swboyd@chromium.org>
 <YjADP+8mNnlkcGF7@google.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 15 Mar 2022 10:38:49 -0500
Message-ID: <CAE-0n53waKNBBvxiK-Odff7fd+BEaWR1-3UyKSAK8dTzGksgbQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: Add ChromeOS fingerprint binding
To:     Tzung-Bi Shih <tzungbi@kernel.org>
Cc:     Benson Leung <bleung@chromium.org>, linux-kernel@vger.kernel.org,
        chrome-platform@lists.linux.dev, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Tzung-Bi Shih (2022-03-14 20:08:47)
> On Mon, Mar 14, 2022 at 04:22:13PM -0700, Stephen Boyd wrote:
> > Add a binding to describe the fingerprint processor found on Chromeboks
> > with a fingerprint sensor.
>
> Nit: s/Chromeboks/Chromebooks/.
>
> > +properties:
> > +  compatible:
> > +    const: google,cros-ec-fp
>
> Not sure if it could make sense for FPS with other interfaces: would
> cros-ec-fp-spi or cros-ec-spi-fp be a better name?  I am wondering because
> there are cros-ec-spi specific properties "google,cros-ec-spi-pre-delay" and
> "google,cros-ec-spi-msg-delay" in the binding.

The delays are optional properties so I don't see much value in encoding
the bus type into the compatible string. It would only help us find
properties that are unused on a bus that isn't SPI. Let's not
overcomplicate things.

>
> > +  reset-gpios:
> > +    maxItems: 1
> > +    description: reset signal (active low).
> > +
> > +  boot0-gpios:
> > +    maxItems: 1
> > +    description: boot signal (low for normal boot; high for bootloader).
> > +
> > +  vdd-supply:
> > +    description: Power supply for the fingerprint controller.
>
> To be consistent: s/Power/power/.

I fixed the other two, thanks!
