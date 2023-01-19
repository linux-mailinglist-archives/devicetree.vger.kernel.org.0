Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE8C674711
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 00:20:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229818AbjASXTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 18:19:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229971AbjASXTY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 18:19:24 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41D2566CC0
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:17:40 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id y18so3761977ljk.11
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sparkcharge.io; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kpclHWjHCh8u37izsHyLub1WI5T41GcP65dSnJSHN4M=;
        b=D56pePQdJRVdGhjYma2YESmzkNwZ8lpP8cVRAdzQ9shd5SMdPcZvlcQrRViIEqJCi7
         I9y513i7+mJWw7Nk00G36cQksMDV06px3DdfYNk+2wdPf0KpY+NX2eYZzNo5AMrg7gZc
         vmrxpwDTFSB6FhVJFgCt9kD1Hdn2b/QsKXg61OrSoyuM2dXTbQNfy/Pop6bfx29xpakg
         FaE+MarJ3fSs7FsPr2MTWSMype3Z5WGEZronLqGQM9cS3C3OiAcdH4uHkCagyYhOMK6R
         r8ueD36XGs52tPcPEP6AY/voffZcW4UM10N25DHMFj3BsMfZcSQnDuqArWXV6QM1Kb1Q
         9MYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kpclHWjHCh8u37izsHyLub1WI5T41GcP65dSnJSHN4M=;
        b=kC8X3mJ/HVfvFY9FjaD29Ax7ZjKHxNmF4QFYHrvGsZik5zynj+oUfYOmKCJdBukCUn
         jJbMd7h1w018lYVTRzL4sSI+keKEZz1y1wVIgrJDbQgtSdc6qxt2Kf70VNgomg4cK2A5
         wJFyqkqdetQMfJrS0sNDLcP2OgTVjTa/EWA8KDXZXb8NIT3c4i1Sb/tC1M5NrXHaAzR7
         B4zG3AHtllcWPi2Naaj3L3ZrU4H/It1hXQ+FT1Xr2odgaxw83V5k+Kz1xXlVablfdS9J
         H0eBkRTEZSFRTAwVZ/9+Mhf0hB7kI70lkPWnZVEDZlcpx/koslJAmhZedPTVAMqJiHT/
         GgnA==
X-Gm-Message-State: AFqh2kqWgP2WhdJDgb6tTqZByF/QdTeYet4H6ZJE0xhvuVL29FzHhdSw
        45o7Lnjz2ur7qZHIxlIRLnsZ7lmKAeaQw3kmtRQqbw==
X-Google-Smtp-Source: AMrXdXvevcNFMCqNhojGd+9L+5uQBtQtnlbRWqtgQrBc7GvAS4VtfYoPAfatTKdEewsqyvxVayU+tlNZ/Q9qNERW+Rw=
X-Received: by 2002:a05:651c:1584:b0:27f:acdd:e42b with SMTP id
 h4-20020a05651c158400b0027facdde42bmr718959ljq.308.1674170258541; Thu, 19 Jan
 2023 15:17:38 -0800 (PST)
MIME-Version: 1.0
References: <20230119213903.899756-1-dennis@sparkcharge.io>
 <20230119213903.899756-2-dennis@sparkcharge.io> <Y8nCS8Z0QKzbeY2G@mail.local>
In-Reply-To: <Y8nCS8Z0QKzbeY2G@mail.local>
From:   Dennis Lambe <dennis@sparkcharge.io>
Date:   Thu, 19 Jan 2023 18:17:26 -0500
Message-ID: <CAKYiA1ACTXSg2RubWEq-ETXpfZaF7BCYgGHL66PyHL=nGPt9ew@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] rtc: m41t80: probe: use IS_ENABLED for CONFIG_OF
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Atsushi Nemoto <atsushi.nemoto@sord.co.jp>,
        Gary Bisson <gary.bisson@boundarydevices.com>,
        Javier Martinez Canillas <javier@osg.samsung.com>,
        Troy Kisky <troy.kisky@boundarydevices.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 5:21 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:

> > -#ifdef CONFIG_OF
> > -     wakeup_source = of_property_read_bool(client->dev.of_node,
> > -                                           "wakeup-source");
> > -#endif
> > +     if (IS_ENABLED(CONFIG_OF)) {
> > +             wakeup_source = of_property_read_bool(client->dev.of_node,
> > +                                                   "wakeup-source");
> > +     }
> > +
>
> A way better patch would switch to fwnode_property_read_bool

If you like that better, I'll make sure that's how I do it in future
revs of the patchset. I didn't know if it was appropriate since I
don't know if it would ever make sense to call acpi_dev_prop_get on
"wakeup-source" or "quartz-load-femtofarads", or if that kind of
consideration should even matter when choosing to use fwnode_* instead
of of_*.
-- 
Dennis Lambe (He/Him)
Lead Firmware Engineer
sparkcharge.io
