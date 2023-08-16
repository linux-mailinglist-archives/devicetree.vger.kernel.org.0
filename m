Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2211B77DCC6
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 10:52:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243098AbjHPIwF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 04:52:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243214AbjHPIva (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 04:51:30 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60A9219A1
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 01:51:21 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-26814e27a9eso3447245a91.0
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 01:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1692175881; x=1692780681;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bZbysPazkjRhmks1IeUNmvykR7eRQx0d/X7/8WZ+7ns=;
        b=UNktGYDPEt7aDrm/3sA72EUocrwVrFxHkHcCoE/h5yVVwlW6TUBPnPa7MeA/k8PchC
         zH76nNw08VwxLaOSl2ML/AXULrFg7GGtsNwnJ3JSR0dN7mFMEIG1BV5mdkIXCYf31GXR
         QXJquhubfzlxBWBCianFswA+r/PIe+SQJ9FS9/2pC+2805M6sQDjJ7Y0bMFyYR1mVmG4
         13lS9h7MJPK6CQAgEyEVSuESePPhxagMyt8begU0x5QA5VfVTMwmufvFgGDbCwLiYdBw
         pTlBNMh7x8oNc8trpHE80It9ElW6RkDvognWqNcY4KpL8g8AAO+oPPX6y71QGZgj2Yhw
         81lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692175881; x=1692780681;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bZbysPazkjRhmks1IeUNmvykR7eRQx0d/X7/8WZ+7ns=;
        b=PvqbtaKFfoIbz80KqgHVUK9l8GgqBF4gJW4CTxGraq4hvfCe9uV38sYOEDnVuZVFd2
         VOWLt/n92a24kbiei6Ky6ukFqaWwQUzqq0LGv31huY8nuD+sRddZOtZqsR17m0FEF7/Y
         5dWaLbFI6NatFKeHeqAI3Jr5CwA83pQ+QPEQPqapUmkVzxTTUaLew0rE0Iu6+l+CeyHY
         sN/eIJrOyOLYe+3laNbSmQBLr5bB1AVDaknFORUHzX1f1t0hvpTxbZY7MqnuESOXQqvR
         XfKXHxRo1xD+IbH3zG0FYt2wltQ8Pivx+UJm4lw5ndf/SS5tK3hfvizj2JTgg4C166Je
         NC6g==
X-Gm-Message-State: AOJu0Yy8XQXaV0IHzybqjlGQ8lxWA79u2Rpe/9S2lTBJ5lZfUOXDweqr
        hg0g282UhKwRRK7FRoS4X1BFq0fSBcb+JjX9PHA6xlHOucmboRGygpY=
X-Google-Smtp-Source: AGHT+IFsUZjyjXObg+iLKULtW6QOLkO4lbcerlgQV/yiCE7R3y6zgmYqGlZG84cBFdQiPnKL0lhOGKv2qnM9Ci5QGeo=
X-Received: by 2002:a17:90a:15d0:b0:269:1860:c3bd with SMTP id
 w16-20020a17090a15d000b002691860c3bdmr714615pjd.19.1692175880812; Wed, 16 Aug
 2023 01:51:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230802193155.2170935-1-Naresh.Solanki@9elements.com>
 <20230808-stand-cheddar-b76b0b7509a0@spud> <eced746a-1181-bd8f-6828-4a4eeb79727c@roeck-us.net>
 <20230808-esquire-epidemic-f9bd74ffde25@spud> <CABqG17jm938MaEeqS03WeryVWSRBS7Bqq2Vwq9SL4QOGqXU43A@mail.gmail.com>
 <b3eebd2b-c73b-fdc7-2b2b-07e97db26d92@linaro.org>
In-Reply-To: <b3eebd2b-c73b-fdc7-2b2b-07e97db26d92@linaro.org>
From:   Naresh Solanki <naresh.solanki@9elements.com>
Date:   Wed, 16 Aug 2023 14:21:10 +0530
Message-ID: <CABqG17hgU44H9KbALy_336Sb+YOiEOzbnAihiox1OEuVnNiayQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: hwmon: Add Infineon TDA38640
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Conor Dooley <conor@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        krzysztof.kozlowski+dt@linaro.org,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Tue, 15 Aug 2023 at 01:02, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 11/08/2023 18:00, Naresh Solanki wrote:
> > Hi,
> >
> > On Tue, 8 Aug 2023 at 19:58, Conor Dooley <conor@kernel.org> wrote:
> >>
> >> On Tue, Aug 08, 2023 at 07:10:08AM -0700, Guenter Roeck wrote:
> >>> On 8/8/23 04:46, Conor Dooley wrote:
> >>>> On Wed, Aug 02, 2023 at 09:31:51PM +0200, Naresh Solanki wrote:
> >>>>> From: Patrick Rudolph <patrick.rudolph@9elements.com>
> >>>>>
> >>>>> The TDA38640 chip has different output control mechanisms depending on
> >>>>> its mode of operation. When the chip is in SVID mode, only
> >>>>> hardware-based output control is supported via ENABLE pin. However, when
> >>>>> it operates in PMBus mode, software control works perfectly.
> >>>>>
> >>>>> To enable software control as a workaround in SVID mode, add the DT
> >>>>> property 'infineon,en-svid-control'. This property will enable the
> >>>>> workaround, which utilizes ENABLE pin polarity flipping for output when
> >>>>> the chip is in SVID mode.
> >>>>
> >>>> Why do you need a custom property for this? How come it is not possible
> >>>> to determine what bus you are on?
> >>>>
> >>>
> >>> That is not the point. Yes, it can be detected if the control method is
> >>> PMBus or SVID. However, in SVID mode, SVID is supposed to control the
> >>> output, not PMBUs. This is bypassed by controlling the polarity of the
> >>> (physical) output enable signal. We do _not_ want this enabled automatically
> >>> in SVID mode. Its side effects on random boards using this chip are unknown.
> >>> Thus, this needs a property which specifically enables this functionality
> >>> for users who _really_ need to use it and (hopefully) know what they are
> >>> doing.
> >>
> >> Hmm, reading this it makes a lot more sense why this is a property - I
> >> guess I just struggled to understand the commit message here,
> >> particularly what the benefit of using the workaround is. I'm still
> >> having difficulty parsing the commit & property text though - its
> >> unclear to me when you would need to use it - so I will stay out
> >> of the way & let Rob or Krzysztof handle things.
> >
> > To provide context, my system employs a unique power sequence
> > strategy utilizing a BMC (Baseboard Management Controller),
> > rendering the reliance on the ENABLE pin unnecessary.
> > In this configuration, the ENABLE pin is grounded in the hardware.
> > While most regulators facilitate PMBus Operation for output control,
> > the TDA38640 chip, when in SVID mode, is constrained by the
> > ENABLE pin to align with Intel specifications.
> > My communication with Infineon confirmed that the recommended
> > approach is to invert the Enable Pin for my use case.
> >
> > Since this is not typically the use case for most setup & hence DT property
> > is must for enabling the special case.
> >
> > For further insight into my setup's power sequence strategy, you can
> > refer to the following link: https://github.com/9elements/pwrseqd
> >
>
> This justifies to me the property, but still you described desired
> driver behavior, not the hardware characteristic. Don't describe what
> you want to control, but describe the entire system.
I guess by entire system you mean how the regulators(including
TDA38640) connected & operated in our setup ?

Regards,
Naresh
>
> Best regards,
> Krzysztof
>
