Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3238070FB7D
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 18:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbjEXQM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 12:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbjEXQM4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 12:12:56 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BFA497
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 09:12:53 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-199fd7b5789so369609fac.2
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 09:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684944772; x=1687536772;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=d2krvbmUqOnT4KV8ff+7HqiCvnexQ6qfpMeD5hBBKDI=;
        b=BXQc/vB2/r9Dq425nCPgq9QmObSBwPsi5anYqf70r7oyC2C1g6fTPoPoi9p2iSrWSm
         c9D/8N8/y21hqTJf1gOpXyYMdQes2dCzj59IGxkfyYh8LBDkXHDQAxrvv7vH8mJHkvJw
         yGtmuS42uE0ofz1TYDAIU+jb/hfkVvbpCBPFqtsOCPYzgNy8/L1AGiqZK6RB9p5zpb9z
         lPJxI73lFmeaf+4ZuSTk8xD6mS8czma8D89H23EPnv6jYzfBiFZ2bIgEz8XBJ6W/yCp5
         8tbMO1HjL4HxIFk1o3J9og0WW5tl985SvZV0UI2jO57IL0lUKOHuzKC3HZi5WqQgwGtp
         G+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684944772; x=1687536772;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2krvbmUqOnT4KV8ff+7HqiCvnexQ6qfpMeD5hBBKDI=;
        b=iwO+jNsybnBckKxaDa5DbNi36L1dSManIKk7Gv3b2tVf2FOpPPUCQcw3Yr2P6Ero17
         2uN4rS7+orYDjj2w1fhi8eNbvEH53AYLSRukSdP0jufnYEMZ6Ii2cSlFftXCXcnmN3pD
         0Ua+Xy/eazM/M/0BQ26GHljk7Qbz3uFDa9ASkd9ekbYURRtxxbVn1Enb6eQVO0bAVC8h
         H0DFiuXR07/rCbRK2L552zMB8NAm55+q/q0EkexrvcD4lpDlXe+UxWtRM53Wl1dXr8v/
         sko3JAWiiUA9jtdLetV+JmkBH+8A4HKrsrOFv+V0398bglePBHHQwILutmIFAPIC1Aw5
         5cdw==
X-Gm-Message-State: AC+VfDxXTkFNYFtwfWdmzv7argeNbdsu7zIPL59OQYRvbbsWR7NQMJ/a
        0UvYJFSFmEPz6lsgB7/LtfVfXHx55fgB/A==
X-Google-Smtp-Source: ACHHUZ7Lso2poEP7KecW3pW1g3gvJHrRqlkMvpmtiMnveNZ9VYZhCemAUJ0Zdx5qdJxt5oBJVxxi4Q==
X-Received: by 2002:a05:6870:93d5:b0:195:fe38:3b60 with SMTP id c21-20020a05687093d500b00195fe383b60mr161544oal.25.1684944772365;
        Wed, 24 May 2023 09:12:52 -0700 (PDT)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u1-20020a05687036c100b0019ea8771fb0sm82550oak.13.2023.05.24.09.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 09:12:52 -0700 (PDT)
Message-ID: <646e3784.050a0220.71431.07f7@mx.google.com>
X-Google-Original-Message-ID: <ZG43gSO+UYAi6bv+@neuromancer.>
Date:   Wed, 24 May 2023 11:12:49 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, zyw@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, perex@perex.cz, tiwai@suse.com,
        lgirdwood@gmail.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-2-macroalpha82@gmail.com>
 <f5b780ac-e079-4c24-9dfc-05aee52deb9c@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5b780ac-e079-4c24-9dfc-05aee52deb9c@sirena.org.uk>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 24, 2023 at 12:57:02PM +0100, Mark Brown wrote:
> On Tue, May 23, 2023 at 04:38:20PM -0500, Chris Morgan wrote:
> 
> > +static unsigned int ratios_12000[] = {
> > +	8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000,
> > +	48000, 88235, 96000,
> > +};
> > +
> > +static struct snd_pcm_hw_constraint_list constraints_12000 = {
> > +	.count = ARRAY_SIZE(ratios_12000),
> > +	.list = ratios_12000,
> > +};
> 
> ...
> 
> > +	case 12000000:
> > +		es8328->sysclk_constraints = &constraints_12000;
> > +		es8328->mclk_ratios = ratios_12000;
> 
> The other constraints have separate rates and ratios, with wildly
> different values between the two - the ratio (I'm guessing a clock
> divider) being written to a 5 bit field which obviously can't contain
> the actual sample rate.

A bit over my head here, I saw this patch from the Rockchip BSP kernel
branch and tested it on my mainline kernel. Long story short the clock
for the mclk is 12000000. I see that there are similar issues for the
ES8316 on the Rock 5B, so I will probably just wait for a proper fix
there and then implement something similar here.

Thank you.
