Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 465D64F64E1
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 18:27:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237651AbiDFQ2a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 12:28:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237928AbiDFQ1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 12:27:45 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34B4633A8D4
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 19:05:51 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-de3eda6b5dso1501758fac.0
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 19:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/B6OEeKNYPJ4Ptjy67RysQjps4ixI/LDrWNN950F0R4=;
        b=LOFD1TB5DHCmdfFhLMSs0KFUQCTqjO1cUH6JeNgY3rqhZKF4HwlfE5cVVqI7+9FwI3
         1nWfuNTNewIPCUr2fopefsiatrMpzcGWOywnhsuJ1QCvvzT/rigzes5gu0xjmGk6RTbj
         91zvAhi3vAWNLCyc3+P49DKDOOP9IICYV9kwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/B6OEeKNYPJ4Ptjy67RysQjps4ixI/LDrWNN950F0R4=;
        b=MWZ/1rj/UZITqNg2HTDlQt0272jp8fiNkGlPExJKfNMjGEFsSwl56QNlJO/aKYDftT
         K5DgXeyRO7RYhTYjTlMBbWqx3XQtvh6XREyhgb4J2gixo2MKzxxlWPNN9NfCBfvD3hpf
         O30uuw0Lwjo4G3MbTu20U1HAJmrZl5WeJPWaYrV+juwXfRauZCExVESIIJfO0wFCXP8j
         aoU7yMyyDSlOsK8blVxMkTOvmo2hYTm0j9Pv94tLJcn2IRc3BY27W+SnbpfNVH8W4Gy3
         ZOxOsX2WwxYv4aCdAQuHutT1suPFSaj+go9aPzvt1Qat85hE7xp2yH1NseOXKt9ypxrP
         Htng==
X-Gm-Message-State: AOAM533Mu8h33yDW/4RnIz/8Ss/J8B6MsRm389gAvBy4PXyg/RawJ4jz
        7RjtloMbnOb1E1RD97H15whvXPTdVq+w8A==
X-Google-Smtp-Source: ABdhPJwPJ+KT7xE23AiKo4YgG/cGViz3EoKuzf1tMgiLYYhf2tGv8mTuEZXQN4wKBPrsouG09qkxZw==
X-Received: by 2002:a05:6870:d353:b0:e1:9304:e807 with SMTP id h19-20020a056870d35300b000e19304e807mr3037400oag.70.1649210749497;
        Tue, 05 Apr 2022 19:05:49 -0700 (PDT)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com. [209.85.160.48])
        by smtp.gmail.com with ESMTPSA id 38-20020a9d0da9000000b005cb437ac0e2sm6483635ots.44.2022.04.05.19.05.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Apr 2022 19:05:45 -0700 (PDT)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-d6ca46da48so1408709fac.12
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 19:05:45 -0700 (PDT)
X-Received: by 2002:a05:6870:c142:b0:dd:d5a3:767c with SMTP id
 g2-20020a056870c14200b000ddd5a3767cmr2910063oad.291.1649210744492; Tue, 05
 Apr 2022 19:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.12.I3a5c7f21ecd8221b42c2dbcd618386bce7b3e9a6@changeid> <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
In-Reply-To: <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
From:   Brian Norris <briannorris@chromium.org>
Date:   Tue, 5 Apr 2022 19:05:33 -0700
X-Gmail-Original-Message-ID: <CA+ASDXP46bVqZAyzgUQkZAqqVf6Yc5Zg9CZ_1k0XCYUSYq_QLg@mail.gmail.com>
Message-ID: <CA+ASDXP46bVqZAyzgUQkZAqqVf6Yc5Zg9CZ_1k0XCYUSYq_QLg@mail.gmail.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello again Peter,

On Fri, Mar 4, 2022 at 6:47 AM Peter Geis <pgwipeout@gmail.com> wrote:
> Transitions anywhere from the default 800mhz cause a lock.
>
> I'm digging deeper, but I'm hoping you can answer some questions in
> the meantime:
> 1. Does this require something from firmware that isn't available on
> Mainline ATF? (AKA special firmware to the Chromebook line)
> 2. If not, do you have any recommendations off the top of your head?

I may have a better answer for you now. In the intervening time
period, I've discovered a potentially-relevant bug, involving
interactions between the kernel power-domain driver and ATF. See this
series for my current fixes:

https://lore.kernel.org/linux-rockchip/20220406014842.2771799-1-briannorris@chromium.org/
[RFC PATCH 0/2] rockchip / devfreq: Coordinate DRAM controller
resources between ATF and kernel

If that happens to help you (it may help, for instance, if your system
was toggling NPLL off/on like mine was; it also may help if you're
hitting a race on PMU_BUS_IDLE_REQ like noticed in patch 1), I'd love
your feedback there.

It's still possible your problems are completely unrelated though.

Regards,
Brian
