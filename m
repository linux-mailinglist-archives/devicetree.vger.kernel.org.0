Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E5E7609D89
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 11:11:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230321AbiJXJL1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 05:11:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230456AbiJXJL0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 05:11:26 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA0B64DB29
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 02:11:23 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id 126so10346759ybw.3
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 02:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zXMhWjca4naE0pCAheDzGm0IxJuDch6/SpXa6XWdtWM=;
        b=RiUATNYBaLUD42t0rnY0VOqBk1UjGFpIlfK4WE4ieztDIti82XuL9pvCuLtWIAbQfR
         oaTKMxuzwdaotitn18013BoSESOiAmZKXqrIoHBFOV4AtthYZsdAG/HkKolpf7e8kvaZ
         COkQCtZAJlql2llpgZgf9xUm/IaBr4wsfjEvKm2pT8SuZS+2FCcdEbvDZHHHSw5vrONa
         pU4j0US4hDyq0TfZhTWlzbaRgawbDGkfV0Ud+IuYknjUgv0QMpbOcPOBP8faLAeOkG0D
         gEciwNMDr+Ge7SURZn4vhq0wPR4ZoWpB4Qrx/n3/HSgwaHbI2h6e7gMR5qoF6wPb2Jwt
         nqqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zXMhWjca4naE0pCAheDzGm0IxJuDch6/SpXa6XWdtWM=;
        b=IHSW1n8KUDZ4AOdRdKZvjg7w1yd6YVUvJdUDWHg8ZfASifWN+5VpFgWIN1otsvNe3T
         OCujyv4buHf+Ks4wZjI+mFgv7fhBgRMblh4imLDq4k/WFp+8xK1u/zAlsD1Fc0XB7HUE
         zkyYnbOL6oPUvDrsmb8veP9/ro+JEmuzQ4oFNk6M/SmmUYUJIy5eizaAMOGn655FG2Vt
         28YjypeH9bFhnCxK2xb8sANO0vCq2IMJ04BaktMZZz+MrO5bs4e3IBr8mpTETr2tHVex
         AZgApnMTH29zZKzg/OiHCQ52bidX+NbmkOShQjqJHTT71oyBKtETtkiv1J6spwQSotJI
         z9Cg==
X-Gm-Message-State: ACrzQf0tZm949dUwF0g205I0NX8NlhYISDXrxFFbGpPCVqtsuVZBJKjp
        sK22FkDWNXzPGDBjkSi67Kd/AD1NxrCxwuSrB+iRpg==
X-Google-Smtp-Source: AMsMyM4027Be+x4O6dyZmj4bQkztQncmx9H78GrU5MELpebcq1LjfLXe0Zw0Kqh0fmf7ZjRdNfMl/GHr8ry2368PV1o=
X-Received: by 2002:a25:9a88:0:b0:6b9:c29a:2f4b with SMTP id
 s8-20020a259a88000000b006b9c29a2f4bmr28077461ybo.236.1666602683018; Mon, 24
 Oct 2022 02:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20221022234024.87475-1-mw@semihalf.com> <Y1VX4RtzKQZHe/oO@lunn.ch>
 <Y1Vp4BdC50o9roKe@shell.armlinux.org.uk> <CAPv3WKdcQGqofEgV4w_iiQ7FFa0ZF=du8gK9eAD==10HhwEnUA@mail.gmail.com>
 <20221024085102.15712ce9@thinkpad> <Y1ZEBqrxZ1PSLCU6@shell.armlinux.org.uk>
In-Reply-To: <Y1ZEBqrxZ1PSLCU6@shell.armlinux.org.uk>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Mon, 24 Oct 2022 11:11:12 +0200
Message-ID: <CAPv3WKeL30nhrFdVTgAhpYUk7v2zR4F9E3NrBrsGvYtFU-mzRA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: armada-38x: Mark devices as dma-coherent
To:     "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc:     =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hch@lst.de, jaz@semihalf.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pon., 24 pa=C5=BA 2022 o 09:51 Russell King (Oracle)
<linux@armlinux.org.uk> napisa=C5=82(a):
>
> On Mon, Oct 24, 2022 at 08:51:02AM +0200, Marek Beh=C3=BAn wrote:
> > > Sure. In such a case the description of 380 variant (single core)
> > > should remain untouched.
> > >
> > > We need to decide what to do with dual-CPU, i.e. Armada 385/388. How =
about:
> > > - Don't change current behavior, i.e. perform a necessary kernel
> > > configuration in "arm,pl310-cache" driver,
> > > arch/arm/mach-mvebu/coherency.c + &coherencyfab:node in DT
> > > - Satisfy of_dma_is_coherent() by adding `dma-coherent;` in
> > > armada-385.dtsi only (IMO this would describe HW properly)
> > > ?
> >
> > It will describe HW properly, but someone running older kernel compiled
> > with no SMP support will see a performance drop. I wonder how many
> > people do that.
>
> If the kernel is built without SMP support, the page table entries will
> not have the shared bit set, and the system will _not_ be DMA-coherent.
> Having DT mark devices as "dma-coherent" in this case will lead to data
> corruption, because the DMA API will believe them to be DMA-coherent
> when the page tables are not setup for that to work.
>

Thanks, for the explanation. Since we're heavily dependent on what
happens in the kernel we boot, it will be easier to just drop this
patch and keep using the DT as-is.

Best regards,
Marcin
