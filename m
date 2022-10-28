Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A30F8610AC0
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 08:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229932AbiJ1GyE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 02:54:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbiJ1Gx6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 02:53:58 -0400
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50DC115A961
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 23:53:58 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id k67so4300387vsk.2
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 23:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OpbKxLZEgiv7SiPTmTz0hQmQi7+UD5rIZmwRiJpWwnU=;
        b=WVNWBldxxivWijQLOrTY0p1RYqZUECQT2gs0dLpGOhAfOt7qaJ8mUR3LpZStc8JsC9
         faLNhUd0Y1gSuLpRSZ55JfhlPtGQ1rrVrUWBJr4DthnYqKqwxqwDI4+Ghu8FyBtBGc9b
         HF40g5NP51E1/nWSLu7CAlSaKamHFZMWPNA5SBLJyf5HUujPb7aCgl3g7QvrFktkFbsu
         bT/utRzLuP5VJAIjjbFlSmVt2IA+S4k2tlf9i085KRTsJts4fySssjFiOK+y2LVSyrC3
         mu3FSD/8+b9N9mn7CxSa7yT3aYxxzfukTeQ5BhHw9j2K95lN9d66u+QxAUS4AYbDdvjv
         FLlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OpbKxLZEgiv7SiPTmTz0hQmQi7+UD5rIZmwRiJpWwnU=;
        b=Ot9H26h5nUoZUOEBA0rTKH+kIwXHFDHfIiBzp9vsP8eg3tKojjwe3Uy+mwWZ9nLDUQ
         xWzyOp6kgZQPUhRaICqBXjukEflBuv417PYf7epd9j2WTaICSNKB8SWv8ro5gaOfITAK
         TpvyRucCbN9/dcC6xKcIQzI+/h5IHUQze/EyEzd50teLbhkzjrvicpgrqbSJXEUkFAer
         RDIZmPClQrJ+DqtT6BdWBa33BXILYuqKodH/h1sgUlhJapWDZDotxdSLLOyuxIgLUmLP
         wY8LjOkVPTwAUab2J3DcflWN0IVzQcgG8hDy17OwxthbOsyV35NeBdDB+XucvGhqws0x
         bTLQ==
X-Gm-Message-State: ACrzQf1WUpToLxSfPaF+svFEKNbYQUI95FQCyEx2Z5ePchUX1HKZ4Mtm
        EOS0sfPvruWJpUhZ3UYJUurFlvhpN4bUCZhOn/H5UnHyCVU=
X-Google-Smtp-Source: AMsMyM6fyRr8fZyD5IeKRCdlNkDnZI5Py4QhqKWGG3CYFk+B5Q7pYIJ8rsqSZ2g8oGHKzLomicffvzD1HI655VW01tM=
X-Received: by 2002:a17:902:ecc2:b0:181:b55a:f954 with SMTP id
 a2-20020a170902ecc200b00181b55af954mr52858127plh.32.1666940026266; Thu, 27
 Oct 2022 23:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20221027191939.13106-1-mcpratt@pm.me> <CAGETcx8N8TPMuOFBhJ0kgBfxa74YpeZXTFM3QRrbdz5bVj2x3Q@mail.gmail.com>
 <m08h9-9Spey2RcSxfM2vJLYwEAfuVJWBpQrAEqkopJLwv7Hen59r00F7C5TjKC32EsTG9eooMpfdcpumczlBjgYZv-2sqzCLIhRjnKbbcww=@pm.me>
In-Reply-To: <m08h9-9Spey2RcSxfM2vJLYwEAfuVJWBpQrAEqkopJLwv7Hen59r00F7C5TjKC32EsTG9eooMpfdcpumczlBjgYZv-2sqzCLIhRjnKbbcww=@pm.me>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 27 Oct 2022 23:53:09 -0700
Message-ID: <CAGETcx82KpKB-RLP+_YfPMO2iwJDG+EV+Cz5o8nPUyNdRqEvSw@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Fix support for nvmem-cells
To:     mcpratt@pm.me
Cc:     devicetree@vger.kernel.org, rafal@milecki.pl, ansuelsmth@gmail.com,
        srinivas.kandagatla@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 27, 2022 at 2:43 PM <mcpratt@pm.me> wrote:
>
>
> >
> > Hi Michael,
> >
> > Thanks a lot for submitting a patch to fix issues in fw_devlink. I
> > think my other patch series[1] should fix this in a generic way for
> > all such cases where the phandle doesn't actually point to the
> > supplier struct device. The series itself has some bugs, but there are
> > "try this if it fixes it" code snippets in the thread that I need to
> > roll into a v2.
> >
> > Give it a shot if you can. I'll try to get back to the series soon.
> >
> > [1] - https://lore.kernel.org/lkml/20220810060040.321697-1-saravanak@google.com/
> > -Saravana
>
> Hi Saravana,
>
> It's definitely good to hear that someone is working on it already :D
>
> It looks like the "dangling consumers" function would probably fix
> the issue in Openwrt with fw_devlink. However, I noticed that in your series
> the function of_get_compat_node_parent() is still there.

Yeah, it's there mainly for the weird/annoying "remote-endpoint" case.
Annoying because it's of zero use to fw_devlink since it always causes
cyclic dependency, but I also can't ignore it because the cycle could
be part of other cycles (and I can't ignore those cycles).

> I'm not sure whether
> or not that could be simplified as well,

I don't think I can -- too long to explain and I'm not feeling it
right now. But it has to do with how devices are populated and being
able to use that for lazily converting dependencies in DT to device
links.

> since that is how I got the idea
> for this patch. I understand your goal is to remove the dependency on
> the "compatible" properties in total (at least for supplier devices).
>
> I'll try the series and let you know how it goes (unless your V2 is coming soon).

It's most likely not "coming soon". Kinda busy with some stuff that I
can't postpone.

-Saravana

>
> FYI the device I test this on is Engenius EPG600 (MT7620A + QCA8337)
>
> --
> Thanks,
> MCP
