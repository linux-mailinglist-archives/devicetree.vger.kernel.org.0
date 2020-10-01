Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B4D327F7DF
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 04:16:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725823AbgJACQA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 30 Sep 2020 22:16:00 -0400
Received: from mslow2.mail.gandi.net ([217.70.178.242]:43572 "EHLO
        mslow2.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725800AbgJACP5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 22:15:57 -0400
Received: from relay12.mail.gandi.net (unknown [217.70.178.232])
        by mslow2.mail.gandi.net (Postfix) with ESMTP id 4BA8C3A3806
        for <devicetree@vger.kernel.org>; Thu,  1 Oct 2020 02:07:35 +0000 (UTC)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
        (Authenticated sender: aditya@kobol.io)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 9B53A200002
        for <devicetree@vger.kernel.org>; Thu,  1 Oct 2020 02:07:13 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id y194so1895432vsc.4
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 19:07:13 -0700 (PDT)
X-Gm-Message-State: AOAM532q/Qg4fNO2PkvgT+3+BG7gWhBJpXgK8i5//y4iFBFKI3Vjmian
        AO3+dhMYv3TThxY4Pjy94jhkM0FvJ8F2C0HFq3A=
X-Google-Smtp-Source: ABdhPJxtR9sqDvtxZkHRCFuQmT7REE3/QbaaZHxBaMnf79ZhgXzCvPSu7pKLyQ5Bd5eXjJaeqICIA/3x49ZoPl2ddG8=
X-Received: by 2002:a67:6952:: with SMTP id e79mr3927526vsc.4.1601518032397;
 Wed, 30 Sep 2020 19:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200925214003.27186-1-uwe@kleine-koenig.org> <20200925214003.27186-2-uwe@kleine-koenig.org>
 <20200926135553.GA17434@taurus.defre.kleine-koenig.org>
In-Reply-To: <20200926135553.GA17434@taurus.defre.kleine-koenig.org>
From:   Aditya Prayoga <aditya@kobol.io>
Date:   Thu, 1 Oct 2020 09:07:01 +0700
X-Gmail-Original-Message-ID: <CAFTRUBc3BA1mrboJ5Lpjg=C0ckkZ4H4GckEDk=1BmzzWdTbv8A@mail.gmail.com>
Message-ID: <CAFTRUBc3BA1mrboJ5Lpjg=C0ckkZ4H4GckEDk=1BmzzWdTbv8A@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for Kobol's Helios64
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, Sep 26, 2020 at 8:55 PM Uwe Kleine-König <uwe@kleine-koenig.org> wrote:
>
> One important thing I forgot to mention here is: This devicetree is a
> stripped down version of the helios64 support included in Armbian that
> was written by Aditya Prayoga. The original has a line
>
>         Copyright (c) 2020 Aditya Prayoga (aditya@kobol.io)
>
> where I was unsure if I should drop it or not. @Aditya: Please advise if
> you want this included, then I take care of that for v2.
>
Yes, please include it. Thanks

Aditya
