Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFFF26869C3
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 16:16:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232466AbjBAPP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 10:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232389AbjBAPPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 10:15:36 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13EC7298FF
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 07:15:14 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id n6so15376916edo.9
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 07:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WKcD/zDARR0ET8GDXucrQ586p1EZyc/trnwGgWqi5oM=;
        b=UNvI8KAlb1PeQQTsF/6w1pZ0C36wdH+yiGj8bP1bem/hCAcaJOM/nE7ucQiIIsRBwY
         rqtp2QIG/OrrPjr2NX7bTvR2H6DfxHFwlGVO2g/FdDLws8yAfsNiFQpcmQzYByIu32Ed
         p1wCa4CSnyD3nw6sDu+pewrKZa+8JX184CH99a75W0nzWEHCaau6Ak++1zVUdiqyK3f+
         t+OxDVJvT6Nb0Ot7ANLlt084gp9wEov6ZGd6D7K37LFWKDmBV4j0hMR2TNmbhhoQsQJP
         74Vcj6qNZEUT7CDXuBJ9+c521drz49X7juopPmmR9kUeIiOTtqmxFjRoS6jYhnTT1TuS
         5GwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WKcD/zDARR0ET8GDXucrQ586p1EZyc/trnwGgWqi5oM=;
        b=TvNlzG+YJxgN/SbmLo/OuUsP5TwywKs7NQGSrW6lx/IG6j1zOOVsObp1KimwdnZVEE
         Aytc494WcNb5/Spj4Tdo7wscN+9wedm3duzi0tCuOCYqikZdomXxf1fyvR5UruBShkgR
         LdWEJRt1GejsSOHRt1rNHzjjRjYjBA+KwlcxlomvgczYUBJ1RM6wD6utl6b0j3XspgSB
         69msIjSrOFEL75b7vicnbZE0AaNHKXNRhcB1pl8oLn0IXVqWF3DoU3xZT4u3cg1WFomD
         B1kjowZtUq1B/kxu4dhUNPGI985jUTrxrc+Ie/OSIbOftMzLqXV1xPr4Gvk66Xa4zJVU
         nZVg==
X-Gm-Message-State: AO0yUKUCDgzlFX1XJfiSbCsUh3OhtgZ7Q1x9KvNXsicSktLn3/VCRZF9
        IvZ9zaBSFDEeh//f54l9iDq1kIt/hlkjcriBXxLk9g==
X-Google-Smtp-Source: AK7set8Sqpf7IQKI8pCxzgiefm4DEzyA6FF6UcZXLNTZNnDOHduTVAL3Dj7gPRjuCIZZHhxAewq7V1amgnQUE4iiCRY=
X-Received: by 2002:a50:f60f:0:b0:4a2:27c2:aa9a with SMTP id
 c15-20020a50f60f000000b004a227c2aa9amr741605edn.61.1675264512617; Wed, 01 Feb
 2023 07:15:12 -0800 (PST)
MIME-Version: 1.0
References: <20230131153816.21709-1-bchihi@baylibre.com> <202302011058.17Vvc1pN-lkp@intel.com>
 <17072296-c1fb-1e82-65fd-26b448167087@linaro.org>
In-Reply-To: <17072296-c1fb-1e82-65fd-26b448167087@linaro.org>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Wed, 1 Feb 2023 16:14:36 +0100
Message-ID: <CAGuA+opm_oM-BdHgcnj09C_6oT4WSbu8-v2QnzmERUiNQD4rUQ@mail.gmail.com>
Subject: Re: [PATCH v12] thermal: drivers: mediatek: Add the Low Voltage
 Thermal Sensor driver
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     kernel test robot <lkp@intel.com>, daniel.lezcano@linaro.org,
        angelogioacchino.delregno@collabora.com, rafael@kernel.org,
        amitk@kernel.org, rui.zhang@intel.com, matthias.bgg@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        rdunlap@infradead.org, ye.xingchen@zte.com.cn,
        p.zabel@pengutronix.de, oe-kbuild-all@lists.linux.dev,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Wed, Feb 1, 2023 at 8:47 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 01/02/2023 04:09, kernel test robot wrote:
> > Hi Balsam,
> >
> > Thank you for the patch! Yet something to improve:
> >
> >
> >
> > url:    https://github.com/intel-lab-lkp/linux/commits/UPDATE-20230131-234122/bchihi-baylibre-com/thermal-drivers-mediatek-Relocate-driver-to-mediatek-folder/20230124-211910
> > base:   the 4th patch of https://lore.kernel.org/r/20230124131717.128660-5-bchihi%40baylibre.com
> > patch link:    https://lore.kernel.org/r/20230131153816.21709-1-bchihi%40baylibre.com
> > patch subject: [PATCH v12] thermal: drivers: mediatek: Add the Low Voltage Thermal Sensor driver
> > config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20230201/202302011058.17Vvc1pN-lkp@intel.com/config)
> > compiler: s390-linux-gcc (GCC) 12.1.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://github.com/intel-lab-lkp/linux/commit/5646ebf6f10ff0fc60c04d8c57523f7c44526b41
> >         git remote add linux-review https://github.com/intel-lab-lkp/linux
> >         git fetch --no-tags linux-review UPDATE-20230131-234122/bchihi-baylibre-com/thermal-drivers-mediatek-Relocate-driver-to-mediatek-folder/20230124-211910
> >         git checkout 5646ebf6f10ff0fc60c04d8c57523f7c44526b41
> >         # save the config file
> >         mkdir build_dir && cp config build_dir/.config
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=s390 olddefconfig
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=s390 SHELL=/bin/bash
> >
> > If you fix the issue, kindly add following tag where applicable
> > | Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >>> drivers/thermal/mediatek/lvts_thermal.c:20:10: fatal error: dt-bindings/thermal/mediatek,lvts-thermal.h: No such file or directory
> >       20 | #include <dt-bindings/thermal/mediatek,lvts-thermal.h>
> >          |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> So here is your driver... and you decided not only to make reviewers
> life more difficult, but also to fail all automated tools.
>
> No, that's not how patchsets should be sent. You have here clear
> dependency, you cannot send them separately.

I'm sorry, I'll be careful next time.
I apologize for breaking the series.
I will take into account the new change requests in the next full
v13 the series.

>
> Best regards,
> Krzysztof
>

Best regards,
Balsam
