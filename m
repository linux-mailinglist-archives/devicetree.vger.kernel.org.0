Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D1B35736DD
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 15:07:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235819AbiGMNHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 09:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235805AbiGMNHp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 09:07:45 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43913F5D
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 06:07:40 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id o4so15447877wrh.3
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 06:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ZDp5NtLIxNT/y/y4TV28JKQZE5KPsmeDwau7U2nvfbI=;
        b=ykcE/L76OyKjfmB6gW/9PEIXPb7KX9wbY5QZt6rzoJ7cx+NshQnf3zYFk9CJJmZ/WM
         Yjn5tpbDrFkjNkWS+WFrkqjSfGYuauzrhkLnPgPWJ+ijDPIFajS1TTDtmC2uQEI2eXJq
         v/PjSpgG/525Lm1jJ94ez4EFFEytapEdMWKLq79xQRBWSawK2YgrGJjhf+6mviSVU3q3
         kOx9C54FFQzStrBSdTBuFlQdgkenCIZH2XWgb8DLkaqKQZ3XbPUtvaJN7A3d1aNdPv+L
         MOY47XiJ+MoxEz7XvBmRhEiBH0MhBUFHBMZQFzRyd4+1IQ/e0LRFMgzPqoPQQ++2EeCE
         bFRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ZDp5NtLIxNT/y/y4TV28JKQZE5KPsmeDwau7U2nvfbI=;
        b=DUADfMQADqfRnYe5J3mJKiTQ/6sd3AJX61ngtBQlkSV71PcTq6Ni4Q1hHp2xrjhe6W
         CwwApEEtiw4R6CMp5Ws79zLgonBIqAnSqbL7VOyRUYI9lPBmHPhWjWW2p20lHqqYc4Ez
         rcojoCUlbGUXmxPuxpC8poC/g3+iLxlx7Tgv6L5/yMQlkZqjw2+1P9esWfECRSzok8/K
         1WjlnC+gCmmkllw29mVbjdirpGriK2cCuOWxfwjXPoVQnPtZyZIsqY6sbz/dXM6Vwtzz
         t1/IM+TGHNm14wXrLyAykeWguK9mREyuJ2yhRKHSBZy3kY9GTHPa7nUQFX9F3ZJfY58c
         HirA==
X-Gm-Message-State: AJIora8o9V2EsFS/IcY2CzeeDZwujYdw0iYglnbLdZEw1Z7QZ39+Jbdb
        jhgF/vWWhg7lxqCKAet2EMkiug==
X-Google-Smtp-Source: AGRyM1v3Wejcmcef1+JLx2OGnt8FIDdBIQxbNYoMtF21Qn+Urzq7T2tg4YCX+P2hq8vPNX2sKjEQ7Q==
X-Received: by 2002:a5d:5747:0:b0:21d:65e9:be07 with SMTP id q7-20020a5d5747000000b0021d65e9be07mr3162978wrw.215.1657717658781;
        Wed, 13 Jul 2022 06:07:38 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id l29-20020a05600c1d1d00b0039749b01ea7sm2628398wms.32.2022.07.13.06.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 06:07:38 -0700 (PDT)
Date:   Wed, 13 Jul 2022 14:07:35 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     ChiaEn Wu <peterwu.pub@gmail.com>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>,
        "Krogerus, Heikki" <heikki.krogerus@linux.intel.com>,
        Helge Deller <deller@gmx.de>,
        ChiaEn Wu <chiaen_wu@richtek.com>,
        Alice Chen <alice_chen@richtek.com>,
        cy_huang <cy_huang@richtek.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Linux LED Subsystem <linux-leds@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        USB <linux-usb@vger.kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
        szuni chen <szunichen@gmail.com>
Subject: Re: [PATCH v4 13/13] video: backlight: mt6370: Add Mediatek MT6370
 support
Message-ID: <Ys7Dl1oApfww27MJ@google.com>
References: <20220704053901.728-1-peterwu.pub@gmail.com>
 <20220704053901.728-14-peterwu.pub@gmail.com>
 <CAHp75VdwEc9AW1w8ejsxkw+sBTF1dumd99QyzTY9BZaXiViRWQ@mail.gmail.com>
 <CABtFH5K-2+2hbpvpq2nPE5AsznkQxZF2r3MVC64Q39DJhVuUtA@mail.gmail.com>
 <CAHp75VevDwdAKLYEWJgnMDvzuPuFibLuVqH-GKazEOT76wM6_A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHp75VevDwdAKLYEWJgnMDvzuPuFibLuVqH-GKazEOT76wM6_A@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Jul 2022, Andy Shevchenko wrote:

> On Wed, Jul 13, 2022 at 12:53 PM ChiaEn Wu <peterwu.pub@gmail.com> wrote:
> > Andy Shevchenko <andy.shevchenko@gmail.com> 於 2022年7月5日 週二 清晨5:14寫道：
> > > On Mon, Jul 4, 2022 at 7:43 AM ChiaEn Wu <peterwu.pub@gmail.com> wrote:
> 
> Please, remove unneeded context when replying!
> 
> ...
> 
> > > > +               brightness_val[0] = (brightness - 1) & MT6370_BL_DIM2_MASK;
> > > > +               brightness_val[1] = (brightness - 1)
> > > > +                                   >> fls(MT6370_BL_DIM2_MASK);
> > >
> > > Bad indentation. One line?
> >
> > Well... if indent to one line, it will be over 80 characters(or called columns?)
> > From my understanding, it is not allowed, right??
> 
> It's allowed to some extent.Use your common sense.
> Here it's obviously broken indentation.

Refrain from going crazy though - hard limit is 100 chars.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
