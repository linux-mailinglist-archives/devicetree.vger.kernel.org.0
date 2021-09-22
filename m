Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2378D414611
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 12:21:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234761AbhIVKXI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 06:23:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234674AbhIVKXH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 06:23:07 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2AA9C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:21:37 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id p4so8039065qki.3
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lL2DQUKgYky8J0s7D27IqBXnXuaSYyqrJtM1rXYOyrM=;
        b=zwgf5NRANcg1FFk/+b/lLclJ8ONE7GC0k5BLnCiNbr87/fyS39uHZB1UXIizDGcFR+
         siqUo4Sb5QDy7YO6mXIc56oJ7kNab6kaUGuLJR1gPcjesfMKHYIHDdlQpN9u5kAfe7DJ
         +h61o9aaaFvVGBDu0XbWsfmui2ayWYJQsqd2gHSEDlTTD38UdFoT1GbIkpXjssdI+A/O
         V+iiWu0ZJQKDw8YXolelsoEWPcatfSoWoZcAf+3on+SatVxKN94WJsjMOk5/0HGftIZL
         u2y8RPvHeGT4hWk9PIFGJrCQIGolmkRfYw++Cn+tkqvb9B37CieH5G06c7VIoHHZMWDP
         1qRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lL2DQUKgYky8J0s7D27IqBXnXuaSYyqrJtM1rXYOyrM=;
        b=aglKvjMogR/r4paVXRdU1lR68LbuN+DunwAvE1bZSHgnTXnDCiIcdfPqcwK1nvdD+x
         dq6udZ0NDT1XHywDl1fv/uck18IsJMGBhbx+iAN03N3QQrVg1xRkBm9Fflp90I6Q9suY
         re4gdSVSsHOxI702ctgjSw9saprAlpfV4GrZY+krBV6iapyzemhvFMnfJQ8spd8aIz1X
         NySsnHw2bEDOXTdOJf+V6+74pZGWM2lciW+ABGMaBXEgdlZwt+DVDPIO0/SuOWOZomHV
         QbeNQOdV1iwgs1MzB7wumfl0omGbRjQaw3XK2PBpzUZrlF6NBDA9MypdJ1B21RFeB2xB
         wdHA==
X-Gm-Message-State: AOAM532vMFpO8sIkWIj81XSZFINqYAb8Ce2x0mfk9G030vpRUPgGUiWq
        txW67JQq6rsAiGFg5SaORtoyQDAIuzT2MhRJ5rLb+A==
X-Google-Smtp-Source: ABdhPJwKdkPRdKCXrof4v74Hhyc6/eIg/BFqhLPnsbXHmOTJQPKw/Hy/zjnv0XZbcm9nqlfts+HE+rmDptqQ8W6xuaE=
X-Received: by 2002:a25:cbc3:: with SMTP id b186mr42865524ybg.199.1632306097026;
 Wed, 22 Sep 2021 03:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210818081018.2620544-1-piyush.mehta@xilinx.com>
 <20210818081018.2620544-4-piyush.mehta@xilinx.com> <CAMpxmJUvPg3LvT1EJa-ZecXMWpR82EQMr8vhTjBpO3_6iiGecQ@mail.gmail.com>
 <2286343a-e061-d5bb-b266-6f657cba63e2@xilinx.com> <CAMpxmJVUTy5iOoTuDTY8-7z-brLJwkv_a82tU47ZXsJjM_Vp1A@mail.gmail.com>
In-Reply-To: <CAMpxmJVUTy5iOoTuDTY8-7z-brLJwkv_a82tU47ZXsJjM_Vp1A@mail.gmail.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Wed, 22 Sep 2021 12:21:26 +0200
Message-ID: <CAMpxmJU7+QEumAbN=2JY_ywFyhzS6tn4JKRGnoEy=mbYp6ZjXg@mail.gmail.com>
Subject: Re: [PATCH V3 3/3] gpio: modepin: Add driver support for modepin GPIO controller
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     Piyush Mehta <piyush.mehta@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>, Zou Wei <zou_wei@huawei.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        wendy.liang@xilinx.com, Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
        Rob Herring <robh+dt@kernel.org>, rajan.vaja@xilinx.com,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        git <git@xilinx.com>, Srinivas Goud <sgoud@xilinx.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 22, 2021 at 12:18 PM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
>
> On Mon, Aug 23, 2021 at 10:14 AM Michal Simek <michal.simek@xilinx.com> wrote:
> >
> > Hi Bart,
> >
> > On 8/23/21 10:02 AM, Bartosz Golaszewski wrote:
> > > On Wed, Aug 18, 2021 at 10:11 AM Piyush Mehta <piyush.mehta@xilinx.com> wrote:
> > >>
> > >> This patch adds driver support for the zynqmp modepin GPIO controller.
> > >> GPIO modepin driver set and get the value and status of the PS_MODE pin,
> > >> based on device-tree pin configuration. These four mode pins are
> > >> configurable as input/output. The mode pin has a control register, which
> > >> have lower four-bits [0:3] are configurable as input/output, next four-bits
> > >> can be used for reading the data  as input[4:7], and next setting the
> > >> output pin state output[8:11].
> > >>
> > >> Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>
> > >> Acked-by: Michal Simek <michal.simek@xilinx.com>
> > >> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > >> ---
> > >
> > > Which tree should this go through?
> >
> > I would prefer to go this via gpio tree.
> >
> > Thanks,
> > Michal
>
> Sure, just make sure to get an Ack from Rob Herring on the DT bindings.
>
> Bart

Nevermind - it's already there.

Bart
