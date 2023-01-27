Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1A5167E8F8
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 16:09:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233302AbjA0PJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 10:09:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234130AbjA0PJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 10:09:51 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A9E77D6DE
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 07:09:49 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so3719378wmq.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 07:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=j0jUJd/CQgzPDX6Ls8mFyzSk5wGnBIKAgAJn2GoiB5c=;
        b=EsG1Yau5s86uf5Ulabx6P3CgJcroBj5L1+yXU2rOTX6T6obuNJVyO3mLuOcPgRzwRI
         Xn4IPKbxm9rSE6EWFu1zJK9LynxTkTCIQUqbrFIFNFZFP0zHQE3lJ3rFcZqsyBby1nPg
         v+ihsEYBHXY0S2pZ2UTj41bQeV/JqXfziJ249veltvl42p3QhwRbKwlFWfq8Ec79GdxI
         VJU4w1yegGnYKrYeQoYkCtCQKL87/H7JzN3XND6acqj/R4C666EHVBJFUxv6PHr7nVHB
         K04vZvrCqNeubA7MkGrOeiurIOA1U/pEDqQ9AJ3/UWdsCbwpceilCKcBHRx1ECh5T3MO
         X2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j0jUJd/CQgzPDX6Ls8mFyzSk5wGnBIKAgAJn2GoiB5c=;
        b=yAOHfqh/ofXisJiw3fg3Ro3Dd+IWTyBA5W51cag2YDqnqJcX6i6VgMtcbwMHBGjUru
         6aiXmjS05vSGTKSvVY3fCoZP2IHaQdgFmZv30hX3MVgj8X4ItpLTknBzwSdZd3p9ngKe
         ApxfMGP1dC8P2obUY0slxKxXEm0UFBbZBzymYLu5f/uxa2n0/3+VLkCnNBP66QHOQIn6
         JIO2xLeSqDmzZHRkWaA1ukC3biambK83KYYsvTG1X2AMrehR4GiKKGRcjzvHcQvgA+gc
         QrYs6TqEgQrkQ5OMrydy/8+Mv3NPf6+G+WCypuy/EWyr2m9BQw4bgcGelZAGe5uwvJQx
         Uhkw==
X-Gm-Message-State: AFqh2kp+LVabvAhc8VsFgEuG4FPx0Wu2YImbsAvzg2U9ZnggSdxDYFoF
        mN21CdbsoZ5BbjQ6nq0d/BDV/ZZ+mqMVgvIC
X-Google-Smtp-Source: AMrXdXvkozPcTq7K2B7cKlRZyJSMVi1PkLFesIeEaZ9HL9hfOA6tXuYja9JC6RtWsDqBbTpWHfSg7g==
X-Received: by 2002:a05:600c:684:b0:3cf:5d41:b748 with SMTP id a4-20020a05600c068400b003cf5d41b748mr47180244wmn.36.1674832187400;
        Fri, 27 Jan 2023 07:09:47 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id hg6-20020a05600c538600b003dafbd859a6sm8012395wmb.43.2023.01.27.07.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 07:09:46 -0800 (PST)
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
 <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
 <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
User-agent: mu4e 1.8.10; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Heiner Kallweit <hkallweit1@gmail.com>, neil.armstrong@linaro.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Date:   Fri, 27 Jan 2023 16:04:29 +0100
In-reply-to: <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
Message-ID: <1jedrg6mkl.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri 27 Jan 2023 at 14:02, Heiner Kallweit <hkallweit1@gmail.com> wrote:

> On 27.01.2023 08:59, Neil Armstrong wrote:
>> Hi,
>> 
>> On 26/01/2023 15:03, Heiner Kallweit wrote:
>>> The usage of edge-triggered interrupts lead to lost interrupts under load,
>>> see [0]. This was confirmed to be fixed by using level-triggered
>>> interrupts.
>>> The report was about SDIO. However, as the host controller is the same
>>> for SD and MMC, apply the change to all mmc controller instances.
>> 
>> Thanks, I applied it in for-next so it runs on the CI tests.
>> 
>>>
>>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>>>
>>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
>> 
>> I think we should find a better Fixes or perhaps split in 3 so it targets the
>> right commit adding the nodes for each family.
>> 
> This would be the cleanest option, right. Practically it shouldn't make
> much of a difference. The chosen commit is from 2019, SDIO interrupt
> support has been added just recently, and regarding MMC/SD it seems no
> problems caused by edge-triggered interrupts are known.

... Well, I wonder is this might be linked to instabilities seen with
very high speed mode (such as SDR104) and DDR modes. We have seen quite
a lot of those over the years. In any case, if it helps stabilize the
MMC on amlogic, it would be great if it can be picked up by stable.

>
>> If the test doesn't report any breakage, I'll probably ask you that.
>> 
> Sure.
>
>> Neil
>> 
> Heiner

