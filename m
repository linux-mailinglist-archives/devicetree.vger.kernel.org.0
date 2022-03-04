Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCFDB4CDF53
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 22:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbiCDUsb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 15:48:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbiCDUs3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 15:48:29 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FE4410214E
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 12:47:41 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id q5so9069970oij.6
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 12:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pwdmIZ1vAwSObDe/h49djMAqGoMYF/D6xcMqohXC3kE=;
        b=RJf3TBmp93JdSx/quLb7AdYBJ1dJjO4Y4Ur4LXOaYnhYg5IMjk6yJimLcSePe+3blZ
         i5tAo5PIEAC++iphSrvFL7dS6M0Ffa/2SdzGpF8ak6C7GgpMRuz0ywkeV5lFhhNf1pJy
         B+YSlCqiwqlwnarFHej640qLdKSfryCEGs5+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pwdmIZ1vAwSObDe/h49djMAqGoMYF/D6xcMqohXC3kE=;
        b=KGn5sUZ2u4MS9k6yCCstgqHM4XcV4+rO2b0Bjf1vU2ic8vrCkZ3x3xr++4l75paEmt
         sq6ODjIILA1muOYAkWM91vVsvnMkZ4xpM0Rm7kEo8Yi1vXqGu33skGlnoK7oNWoTk3wC
         wjN+cJgqFvtLnHs4ieTTdreuJrt8m6OJTEGAzNPHUevqTk2DCH0jp0eEfkRJfc9uHQ0l
         7bsYZZ+7l58M++PWLZKl83AfRoDQTVK1EGDhUXKU5LYilwdMO5EUFVx+X8ttGSKWyXep
         YLMqJJv6ewGDtX+vSborudXV8kf5+TyzuMQsts2c/vZIyJzkHLisaY9+cOUMGOIh6lDr
         0l+g==
X-Gm-Message-State: AOAM5311EWpZqYG/F8L5/FtONIlOWaBQBNxIFtJ59y4Gmb85xeuxpYep
        jhCSCEms8HIxUnJrAjNgdTQVLFYNJwDTeg==
X-Google-Smtp-Source: ABdhPJzjoBjRqwAe9fTLWyLRjzxEVm5KgkoL0W0NN8yt7oQs/T3xZPHGwcXJcqMtP8wfUE+QQlT/cg==
X-Received: by 2002:a05:6808:1391:b0:2d9:a01a:4b9a with SMTP id c17-20020a056808139100b002d9a01a4b9amr204203oiw.193.1646426860419;
        Fri, 04 Mar 2022 12:47:40 -0800 (PST)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com. [209.85.210.47])
        by smtp.gmail.com with ESMTPSA id q14-20020a4a330e000000b002e89ed90006sm2795518ooq.44.2022.03.04.12.47.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Mar 2022 12:47:37 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id k9-20020a056830242900b005ad25f8ebfdso8355430ots.7
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 12:47:36 -0800 (PST)
X-Received: by 2002:a9d:7:0:b0:5b1:fe36:2d15 with SMTP id 7-20020a9d0007000000b005b1fe362d15mr249673ota.186.1646426856478;
 Fri, 04 Mar 2022 12:47:36 -0800 (PST)
MIME-Version: 1.0
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.12.I3a5c7f21ecd8221b42c2dbcd618386bce7b3e9a6@changeid> <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
In-Reply-To: <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
From:   Brian Norris <briannorris@chromium.org>
Date:   Fri, 4 Mar 2022 12:47:25 -0800
X-Gmail-Original-Message-ID: <CA+ASDXPMOAM0sYdbYLsUDJhJ7qDn-WSP2Sx+GKsZwpuVgQ_OkA@mail.gmail.com>
Message-ID: <CA+ASDXPMOAM0sYdbYLsUDJhJ7qDn-WSP2Sx+GKsZwpuVgQ_OkA@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] arm64: dts: rockchip: Enable dmc and dfi nodes
 on gru
To:     Peter Geis <pgwipeout@gmail.com>
Cc:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Lin Huang <hl@rock-chips.com>,
        arm-mail-list <linux-arm-kernel@lists.infradead.org>,
        Derek Basehore <dbasehore@chromium.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-pm <linux-pm@vger.kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        =?UTF-8?B?R2HDq2wgUE9SVEFZ?= <gael.portay@collabora.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter,

On Fri, Mar 4, 2022 at 6:47 AM Peter Geis <pgwipeout@gmail.com> wrote:
> I'm trying to bring this series over to rockpro64 (and eventually the
> pinephone-pro) and am running into some snags.

Dumb question: is DDR DVFS supported on these systems in the
"production" (vendor kernel? I'm not really familiar with these
devices) software? I partly ask, because while I didn't do some of
this first-hand, I'm aware that it was a real ordeal to get things
stabilized (e.g., getting all the timings right; communicating the
right details from bootloader to ATF; etc.), so if no one did these
things in the first place, it's probably difficult to get working now
just by guessing.

But if it works on a customized kernel, then that's a different story.

> Essentially, anytime a transition happens, the board locks up.
> I've disabled the extra power save disable flags and adjusted the OPPs
> for rockpro64's power.
> Transitions anywhere from the default 800mhz cause a lock.
>
> I'm digging deeper, but I'm hoping you can answer some questions in
> the meantime:
> 1. Does this require something from firmware that isn't available on
> Mainline ATF? (AKA special firmware to the Chromebook line)

I don't know precisely. Chromebooks track mainline ATF, but somewhere
before initial product launch, each platform gets its own firmware
branch. On that firmware branch, we still try to stay in sync with
mainline to some extent (e.g., submit to mainline and cherry-pick to
branch), but it's not guaranteed.

Anyway, you can inspect our code here:
https://chromium.googlesource.com/chromiumos/third_party/arm-trusted-firmware/+log/refs/heads/firmware-gru-8785.B
https://chromium.googlesource.com/chromiumos/third_party/coreboot/+log/refs/heads/firmware-gru-8785.B

Brian
