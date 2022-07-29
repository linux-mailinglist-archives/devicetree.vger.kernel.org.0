Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBF40585257
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 17:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237514AbiG2PWm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jul 2022 11:22:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237346AbiG2PWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jul 2022 11:22:18 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 072EA86C37
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 08:21:44 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-31d85f82f0bso54459207b3.7
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 08:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ftd/Rb29GQlI+ogXgIbEomupaph/9xpI+7Ojh5eQKHs=;
        b=D8EmA+zZy9pWMwqNjrwN7EkBpYkgDmiACAU/RNngnePGi8cWmMrb32U5Nvr5TvYv8h
         BvMIWXk5GZaq9Lt8kTmdhNMNTDel1fyC+ftzQ9DK74gWjFPishoY1zk68gFsjqhPAzFl
         JFRITUJoIJ7otDFSPvEokmCgPcue5/EXJoTxRc6AmwG1TmJDGuBs/GzhndJkKhrZtNQ1
         t0aMPbtBbkDlBKakdy40VXMF1rNygq1k1L5oqFMhd+mHHpDPomipFHHpK6cRRCgpHf3x
         e3JZWvPXRJcct9cgxSws3JSkOq+qGc7ptHJ6Gj5dwU4LnmW1NP8lMpPDZqp3hlCI9TKW
         126A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ftd/Rb29GQlI+ogXgIbEomupaph/9xpI+7Ojh5eQKHs=;
        b=c7U/mRqesj1dai8OaqjTFcXFENomGhFgaF1DjlCw1kCQ0/JQbaetQ5+n6lxgA0ubBT
         Ic1t0auuoJis7Mf/k1JMl44IfN3XZe/Nn53yX2XDnKhvZH/8N6l0eSLDgehMx+BAZdcb
         iOfSIZ8xXhXaxqiB/vpGZDlgKN5k4NJI+a0TTVC+dHRFbMUO7K/DXUFiaxAilUwR35lX
         ggMSkjhsSPTeHY7MkRQ8Gn6IigERrpIPkN9IUuUt7hvsgvn6AOXZ4V+tfNtWQljKzOSy
         jl4ZLVlkxPx2zOfBHuphWZpDlZ7F4pI/yqkHaa/MhI8qNdfzZW/mnnN5UsIRhMM6DgFg
         IBFw==
X-Gm-Message-State: ACgBeo2smYhVqVWjiRQ3x5Tkp3uOrXf9uXFVS0vxme3qNQdTpKmnL1/i
        z73MVaawX3vGWG97o3ZIeuqqrApUV9JCxmmyIctPrg==
X-Google-Smtp-Source: AA6agR7KILU9FPTu9cuWQZ1lp+wXnpmNjyMLgZNJ652RF6rhJLbpSdQ09FhDCprQUhwn+0k1aqCEro02i1Fj3jahtmw=
X-Received: by 2002:a81:6e87:0:b0:323:828:2175 with SMTP id
 j129-20020a816e87000000b0032308282175mr3598423ywc.71.1659108103971; Fri, 29
 Jul 2022 08:21:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220726135506.485108-1-bchihi@baylibre.com> <20220726135506.485108-2-bchihi@baylibre.com>
 <24250d03-b25f-e521-5abd-f36109885c36@linaro.org> <CAGuA+opxZ7DDrWHcnTRhMcm7YveCAypdy9MDSytt58asgekayw@mail.gmail.com>
In-Reply-To: <CAGuA+opxZ7DDrWHcnTRhMcm7YveCAypdy9MDSytt58asgekayw@mail.gmail.com>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Fri, 29 Jul 2022 17:21:07 +0200
Message-ID: <CAGuA+ooOUXaBM+uPvEEohFLtO8sRd4T=DMcc6Fvo9P92gsq4yg@mail.gmail.com>
Subject: Re: [PATCH v8 1/6] thermal: mediatek: Relocate driver to mediatek folder
To:     Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     rafael@kernel.org, rui.zhang@intel.com, amitk@kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        khilman@baylibre.com, mka@chromium.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, matthias.bgg@gmail.com, p.zabel@pengutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, james.lo@mediatek.com,
        fan.chen@mediatek.com, louis.yu@mediatek.com,
        rex-bc.chen@mediatek.com, abailon@baylibre.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 29, 2022 at 5:19 PM Balsam CHIHI <bchihi@baylibre.com> wrote:
>
> On Thu, Jul 28, 2022 at 10:53 AM Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:
> >
> >
> > Hi Balsam,
> >
> > On 26/07/2022 15:55, Balsam CHIHI wrote:
> > > Add Mediatek proprietary folder to upstream more thermal zone and cooler
> > > drivers. Relocate the original thermal controller driver to it and rename
> > > as soc_temp.c to show its purpose more clearly.
> >
> > I realize the Kconfig, Makefiles format are not consistent across the
> > boards. Before I fix this, you can comply to the format:
> >
> > drivers/thermal/Kconfig:
> >
> > menu "Mediatek thermal drivers"
> > depends on ARCH_MEDIATEK || COMPILE_TEST
> > source "drivers/thermal/mediatek/Kconfig"
> > endmenu
> >
> > drivers/thermal/Makefile:
> >
> > -obj-$(CONFIG_MTK_THERMAL)      += mtk_thermal.o
> > +obj-y                          += mediatek
> >
> > drivers/thermal/mediatek/Kconfig:
> >
> > config MTK_SOC_THERMAL
> >         tristate "Temperature sensor driver for MediaTek SoCs"
> >         depends on HAS_IOMEM
> >         depends on NVMEM
> >         depends on RESET_CONTROLLER
> >         help
> >                 Enable this option if you want to get SoC temperature
> >                 information for MediaTek platforms. This driver
> >                 configures thermal controllers to collect temperature
> >                 via AUXADC interface.
> >
> > drivers/thermal/mediatek/Makefile:
> >
> > obj-$(MTK_SOC_THERMAL)  += soc_temp.o
> >
> > However, rename 'soc_temp' to something more SoC explicit, eg.
> > mtxxx_thermal.c
> >
> > Thanks
> >
> >    -- Daniel
>
> Hello Daniel,
>
> Thank you for the feedback.
> Changes have been made as you suggested.
> Resubmitting seen.
*soon.
>
> Best regards.
> Balsam.
