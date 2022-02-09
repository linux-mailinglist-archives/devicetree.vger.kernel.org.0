Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0C694AFEAF
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 21:47:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232221AbiBIUq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 15:46:28 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:41944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232244AbiBIUq0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 15:46:26 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 267BFDF8E3F4
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 12:46:23 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id y5so6474676pfe.4
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 12:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=78nJXDfmr//iqkCpJCXmmDUOzZ8w2oIwGyGP9nLOEfc=;
        b=Vunja1WpaNu5p6wfFPAjyHKQ8YyGTJ6zeo0OoPoWTGhTqeSRtYhi4zvfqDseMj3UaW
         f84lAthwXw3UmvPfjk8ltUYN+JefaEAAuhJdgRwPHutOufpI+G0S6FKbZCIaBsXQfbq6
         NOLHolki2PKzt93ROK4Fj786sndwLxv4UVwArcIECjJ8Gu6H4LxHwMAT0wq3Nvz2Qjvw
         PvdCas6sjRqGl9+A1kZY31Y9t8HYwweJ4LlzpklB2wR6mNTB0J1CCIzM5BRCQWAGOGml
         PwNraH9ZBkJfm6V1UR7bFUixi9NJ7gwmInSV888GLX2Gia9BNowSFWJZMz90TiGIqWSV
         CQhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=78nJXDfmr//iqkCpJCXmmDUOzZ8w2oIwGyGP9nLOEfc=;
        b=qIUPIQ7JQu5LzPtTX439B4LrmmfxZs4C9G9mBYliNCLsUegHmjVxMUc1lp2WfDWQ5s
         Dtxgz5DZ5PjqgevgRaZ+DjE2o7jJ7xfoCROftsB9HefMyBlZ9wvHqmT0a9ymXefLgaWp
         B31ug0V1+hlyl/ETYdSd40tRuUFoWwMiB86lb7Y3qkVB4cOk5uUIcq99/rzSkBjG5iok
         fl4jhg/uTp3y+u2IufIqgK4npu/3Ql0VtqYa47ucuIS4R09DBt21F0cLJXP0uEelij6E
         QbmrsgjsVJ+/dSvapuYMNfdG+WD57k++S0PHd6c3pbv0ZaWR79A2QECIEDOgBS7i+BnQ
         0B/A==
X-Gm-Message-State: AOAM531Sb6bFCPIvLToQAIPcfTWz7LsmLUY8ouLMsuS4RAMPAva6nzjS
        TOu54LnlYdYjltH2rSjUljf6MQ==
X-Google-Smtp-Source: ABdhPJy1EPPPscPrTxELXF/O0JLfaezpMxmi2sVgyHAvQdoKK3cPB+OENHfWbpQDEBnNlosgsUtiKQ==
X-Received: by 2002:a63:3d85:: with SMTP id k127mr3361676pga.350.1644439582562;
        Wed, 09 Feb 2022 12:46:22 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id k14sm8399557pgt.73.2022.02.09.12.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 12:46:21 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: remove CPU opps below 1GHz for G12B/SM1
In-Reply-To: <20220209135535.29547-1-christianshewitt@gmail.com>
References: <20220209135535.29547-1-christianshewitt@gmail.com>
Date:   Wed, 09 Feb 2022 12:46:21 -0800
Message-ID: <7ha6ezojj6.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> Amlogic G12B and SM1 devices experience CPU stalls and random board
> wedges when the system idles and CPU cores clock down to lower opp
> points. Recent vendor kernels include a change to remove 100-250MHz
> (with no explanation) [0] but other downstream sources also remove
> the 500/667MHz points (also with no explanation). Unless 100-667Mhz
> opps are removed or the CPU governor forced to performance, stalls
> are observed, so let's remove them an improve stability/uptime.
>
> [0] https://github.com/khadas/linux/commit/20e237a4fe9f0302370e24950cb1416e038eee03

hehe, not a very helpful changelog in that khadas kernel commit :(

> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
> Numerous people have experienced this issue and I have tested with
> only the low opp-points removed and numerous voltage tweaks: but it
> makes no difference. With the opp points present an Odroid N2 or
> Khadas VIM3 reliably drop off my network after being left idling
> overnight with UART showing a CPU stall splat. With the opp points
> removed I see weeks of uninterupted uptime. It's beyond my skills
> to research what the cause of the stalls might be, but if anyone
> ever figures it out we can always restore things. NB: This issue
> is not too widely reported in forums, but that's largely because
> most of the Amlogic supporting distros have been including this
> change picked from my kernel patchset for some time.

Very interesting.  I've also noticed instability across suspend resume
on VIM3/VIM3L and only got as far in debugging to noticing it was
DVFS/OPP related, but didn't get much further yet.  I'll give this a try
to see if it helps.

Thanks for finding & posting!

Kevin
