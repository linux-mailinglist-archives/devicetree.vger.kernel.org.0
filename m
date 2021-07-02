Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 136063BA4EF
	for <lists+devicetree@lfdr.de>; Fri,  2 Jul 2021 23:06:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231221AbhGBVI6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jul 2021 17:08:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230274AbhGBVI5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jul 2021 17:08:57 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D14AC061762
        for <devicetree@vger.kernel.org>; Fri,  2 Jul 2021 14:06:25 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id m26so10897690pgb.8
        for <devicetree@vger.kernel.org>; Fri, 02 Jul 2021 14:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OpVpNG5PdIOsyE2/baO4DULhvG00e5R4dqnavh04Ink=;
        b=YnRY4frEsLOR2X5JQDhXEVJjrrC12WG4u3FQOj+g2HohLvPTbY+W8HqenFA8DYsiBm
         Jg4IBRVzheBDrtbtPNHBP+bsXQvdg6SWTJpPOzs3rSyVQZt30juoJUu265W/K0miviaA
         ZSGZBPAFyJAwiDl61isghwjEA8e0uQUqhkbsfgXtoNPZit4sY2BPJJtnFZ7St/El1fXT
         lePrlDM2Vlc0zgdI6HJrUkJ02fYjf+hz+8TvjDTHr6fOhswBePCqVpqO+GqjrzIEiWuP
         KL2/npP16iMg8+YiUtwvMR8KbF+9W1KqYUUUuY8TFD2pkZ3Gaj90ggRgBJSw+K/kMBxN
         BUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OpVpNG5PdIOsyE2/baO4DULhvG00e5R4dqnavh04Ink=;
        b=qz8aoCRUa+vnGrP8gar3J6GRRxNosgKPq+/95MUzb2JgSmOkRNSlNT/711GtMZuQvE
         MKHM9q2Pxobmc7ck1OB/56U8jBpv3dNgvX58yqKK/1CQR0ESm+57Ylvmi3kWZZsYoSSm
         MD+gwd9cuT0zXf5vgX4fD6ulh1ZkoUJAONp7tcoQc5I2WOOJMMynghRCt3Y0eFVeLqlM
         bdPP6+fbs4mpNWZ3NI9jxcZGT+b0wo9BBb0NoDqUSSsJIMfyXfijyWcvr+cx9ermp0JZ
         WbnQlVAuA6WNqKZ+96uZ9BExPDIPiTg03s+XxYFSBcst21UcYitUHlYKazclUldsRGUW
         6Enw==
X-Gm-Message-State: AOAM531z1b9FQi9c3jgqnGpfkLNGIhfJXdMjm1WkRRsZr12USftuXy4W
        ZhUYmcthZVa+IbTbdor1TAOPmA==
X-Google-Smtp-Source: ABdhPJzkAP433AVzFBS/AZjSe9EjtY4rwpCx74jnpJV7AUXJbksu88JccTFnHfpjCdDLi6sZYUNP3g==
X-Received: by 2002:a65:4389:: with SMTP id m9mr1852746pgp.184.1625259984817;
        Fri, 02 Jul 2021 14:06:24 -0700 (PDT)
Received: from x1 ([2601:1c0:4701:ae70:f236:257f:88f9:445e])
        by smtp.gmail.com with ESMTPSA id b65sm4409256pfa.32.2021.07.02.14.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jul 2021 14:06:24 -0700 (PDT)
Date:   Fri, 2 Jul 2021 14:06:22 -0700
From:   Drew Fustini <drew@beagleboard.org>
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Michael Zhu <michael.zhu@starfivetech.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Fu Wei <tekkamanninja@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Huan Feng <huan.feng@starfivetech.com>
Subject: Re: [RFC PATH 2/2] gpio: starfive-jh7100: Add StarFive JH7100 GPIO
 driver
Message-ID: <20210702210622.GC1035183@x1>
References: <20210701002037.912625-1-drew@beagleboard.org>
 <20210701002037.912625-3-drew@beagleboard.org>
 <CAHp75Vc7kFk_SC8MSmFE5mBt53=4yUnxpSpr=cxZ+7eA-t1r5g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHp75Vc7kFk_SC8MSmFE5mBt53=4yUnxpSpr=cxZ+7eA-t1r5g@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 02, 2021 at 07:03:19PM +0300, Andy Shevchenko wrote:
> On Thu, Jul 1, 2021 at 3:23 AM Drew Fustini <drew@beagleboard.org> wrote:
> >
> > Add GPIO driver for the StarFive JH7100 SoC [1] used on the
> > BeagleV Starlight JH7100 board [2].
> >
> > [1] https://github.com/starfive-tech/beaglev_doc/
> > [2] https://github.com/beagleboard/beaglev-starlight
> 
> > Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> > Signed-off-by: Huan Feng <huan.feng@starfivetech.com>
> > Signed-off-by: Drew Fustini <drew@beagleboard.org>
> 
> Seems some Co-developed-by are missing.

Thank you for suggesting this.  Huan Feng originally wrote the driver.
Emil and I have made some changes to reorganize and clean it up for
submission.

Do you think all three of us should list Co-developed-by: for our names
in addition to the SOB?

> Brief look into the code brings the Q. Can't you utilize gpio-regmap
> here? Why not?

Michael Walle asked about this yesterday and it was my first time
looking at regmap and gpio-regmap.  I've been reading the code and it
does look like I should try convert this driver over to using
gpio-regmap.

The open question in my mind is how to handle the interrupt type (edge
trigged on positive or negative, level triggered on high or low).
Hopefully I can find some other examples that can help me think about
how to do that correctly.

Thanks,
Drew
