Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0633569E3B
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 11:01:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234659AbiGGJBY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 05:01:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230211AbiGGJBX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 05:01:23 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42C1A27B00
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 02:01:22 -0700 (PDT)
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 08D283F1CA
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 09:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1657184473;
        bh=55AAHRfMP5z0IUkZTuebwtFacCNLfAvOIPIQMIi6oic=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=MNk+c3dTCYWOjbbGqFM7ojCHjJqYoO3PQvgtA9CzIHETMvtv95Fbek9SzPZg0Rzvp
         t+tOvSaVpjkPNKEUMpoxCjTcIoNV//jhNatXUZt6DL+pcim24lLEmRGFhknatdD0AH
         6GJxjT6XOfNZbk0t4sZQJOM2TdoVoMAC/EAcEFEnsVfZXNMEsZV1NaHj82CBZt0gtX
         IA+9F3PzkwQXFuWBKkxkutjH254swUtRCUIR6b4NujBh4vY1J19DJNIAhdfQSnNSNv
         wIMXNlHAdob+wI6DSXPpcczQHgjSx5Fh0/QOVrOujtrLGPZdfbFQafRRLmeMhWJm+L
         ZXH9TETRaimEg==
Received: by mail-ot1-f71.google.com with SMTP id c19-20020a9d6c93000000b00616ad42bd11so7184978otr.18
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 02:01:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=55AAHRfMP5z0IUkZTuebwtFacCNLfAvOIPIQMIi6oic=;
        b=Fmuo4jre+QNE5dErNm4x9ZhzAEQYVM/pEfCVBlCXQVS+6Kqaf1BhenI4zc9J8PkJ9m
         vTPq00/pkLrd0c2iigY0JPBQwAa6KHxs5siVONm0serluYAm0OO2qNIllyaiLQyWbodn
         /8lv74ah8bHaOQWt0jNJgFX0Mdrr/1OM7R08074uWt+SF9f8DPJcZGCQoZzXCtMFI1bN
         xAhniTkvlEXmYmwpk9Qn/wOOHN/EbHMfGhnCWVkOcPg+TLLuXI+OU9eKV8c/NHDvNQM+
         skNu3TSr6wPK9Te2AHlvKZaD0Ke/NlyUiqHp7UMC2tWE3iWqcmLJVagldU/ttZ6WZjPq
         fG3w==
X-Gm-Message-State: AJIora/K4fLaEPNsquUqHdfMrO31QUlASYciIdvRT7zDJ+/P0Vwrc+Uh
        IomlxOm5Lu4L3nufQk9F1GQ4bjWE/pbXGXrnv2th247wWSSKUr3jhPbjaVxz5q+yqsY//a5l6vl
        Q3oHigQeSsD+biMoFfY2XX2utymrRKmTXli82xS8spk75njogVhJRyug=
X-Received: by 2002:a05:6808:4b:b0:335:2eb0:c226 with SMTP id v11-20020a056808004b00b003352eb0c226mr1737965oic.113.1657184471790;
        Thu, 07 Jul 2022 02:01:11 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1sryjf9FbNhutPSlBQG9SWsc/5cQTAqcodtViaOW6ZEW+K37gNZpeQm03kEBsuyqCctYa6xwRQo1LPLXWmwMxE=
X-Received: by 2002:a05:6808:4b:b0:335:2eb0:c226 with SMTP id
 v11-20020a056808004b00b003352eb0c226mr1737955oic.113.1657184471556; Thu, 07
 Jul 2022 02:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220629110626.2158127-1-isaac.true@canonical.com>
 <20220629110626.2158127-2-isaac.true@canonical.com> <20220701171829.GA1149706-robh@kernel.org>
 <0d045bb8-a519-39d4-17fa-123f90969bd9@roeck-us.net> <CALkPoPYKNxAeP6HM1cMh1zzW6jw4fktCp42b7+79Qf8DVJis-w@mail.gmail.com>
 <20220705195614.GA2503171-robh@kernel.org>
In-Reply-To: <20220705195614.GA2503171-robh@kernel.org>
From:   Isaac True <isaac.true@canonical.com>
Date:   Thu, 7 Jul 2022 11:00:45 +0200
Message-ID: <CALkPoPY49PGNk84spUF3BesdZoUFpq++D1NYd_1ouT2Cv4wDYQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] watchdog: gpio: add configurable minimum interval
To:     Rob Herring <robh@kernel.org>
Cc:     Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, wim@linux-watchdog.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 5 Jul 2022 at 21:56, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Jul 04, 2022 at 01:05:04PM +0200, Isaac True wrote:
> > On Fri, 1 Jul 2022 at 19:48, Guenter Roeck <linux@roeck-us.net> wrote:
> > >
> > > On 7/1/22 10:18, Rob Herring wrote:
> > > > On Wed, Jun 29, 2022 at 01:06:26PM +0200, Isaac True wrote:
> > > >> Add the "min_hw_margin_ms" parameter to gpio_wdt devices, allowing a
> > > >> minimum interval to be specified, stopping watchdog devices from being
> > > >> fed too quickly if they require a certain interval between feeds.
> > > >
> > > > I assume there is some real platform with a real problem you are trying
> > > > to solve? Details please.
> > > >
> > >
> > > Agreed, this should be explained in more detail.
> >
> > Yes this is a real platform using a TI TPS3850 watchdog chip. With
> > this chip you can configure a "window" which can detect early faults
> > (i.e. too frequent) in addition to the standard watchdog features. I
> > needed to add this minimum timeout to avoid watchdog resets in
> > situations such as where first U-Boot and then the Linux kernel feed
> > the watchdog with too short of an interval between them, or when
> > systemd was configured to use the watchdog device and was feeding it
> > too soon after taking over from the kernel.
> >
> > > > Can you just hardcode some min? Maybe 10% of the max or something. Is
> > > > there a downside to a larger than necessary min?
> > > >
> > >
> > > That would result in extra overhead in the watchdog core which would not
> > > be required for all other hardware using this driver. I'd rather avoid that.
> > >
> >
> > In the case of the TI TPS3850, the minimum timeout is configurable, so
> > I didn't want to add a hard-coded value to the driver.
> >
> > > > Wouldn't be better to fix this without requiring a DT change and that
> > > > could work on stable kernels if needed.
> > > >
> > >
> > > Presumably that is some new hardware. Most of the watchdog drivers
> > > needing this value can derive it from the compatible property. The
> > > gpio watchdog driver is a bit different since it is supposed to work
> > > on a variety of hardware using gpio pins for watchdog control.
> > >
> >
> > Yes this is new hardware. This use case is also not very common as
> > most watchdog chips don't have this window function or a minimum
> > interval, at least in my experience, so I did not want to make it the
> > default for everything.
>
> Okay. However the existing property you copied has 2 problems. It uses
> underscores rather than hypens and doesn't use a standard unit suffix.
> So 'min-hw-margin-ms'.
>
> Though maybe a new property instead:
>
> timeout-range-ms = <min max>;
>
> That's somewhat aligned to 'timeout-sec', and IMO, clearer meaning than
> 'hw margin'.
>
> Rob

I agree that both the original property name and the new one aren't
great, but I didn't want to go changing the existing property for
everyone.  I could definitely add a new "timeout-range-ms" property -
should that be added in parallel to the original hw_margin_ms (i.e.
you can use one or the other), or completely replace the original?
