Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EA6B4C8C38
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 14:03:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233972AbiCANEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 08:04:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232757AbiCANEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 08:04:21 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A6E360074
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 05:03:40 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id gb39so31369440ejc.1
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 05:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=54IDvufnRzrBfjaYnEXmgrUgjbov9TaKLRgPhl0wbI4=;
        b=grH5RaAMgUAuzaEWZV+C3Lpkaew/wWpLX1709iyO5dfVCn62Tccc+o/WP8O25+YgP1
         gh+Til9TZE2yyxeghRZ4m59caMPQj4Af1LWw36Lr6HMGY3/0H5hN8K3U2/uaqqqbp1fm
         SpuBjalvJAZuaJYSktOf6hvKe8bnqcpIAZ66Y/meHFE9Rttl8Xjc1TuAa+S/xKT1CF//
         JTDHa3hz3UYYuR06UhAf5IAb6ldKjmCV7n9XDunmzMPf0/SBnwQi+R/2iV20rbJhTs57
         nD1aHNTr0SYmWKYVfJ1tSnUN4wAuvLc2sIQuPK8uo4sn16h7tlCXDUumdONeVQGI7QdL
         s/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=54IDvufnRzrBfjaYnEXmgrUgjbov9TaKLRgPhl0wbI4=;
        b=iqMCfRfF4QUgra7TGK4ZX3toLwrbXf/3BJIfUZ8spNKpPVAkPPyXSjgqZnAv8sNlaW
         vaffmipybmTaAfeoinJtmBEQQrbfKFQE3m2Qjyu79QfgmPWADC1DValGNJqgTd6neFpI
         hQYnkXQo5irgyaPCSW4WklS0Tcd8OuQ5Kr02Zk4JLHtUFnp1OkCEZgDFCGJHn3oR2YCX
         NZmv0VsrWL67eI0XuiMJfcv5edc8Ni1HN7xPVOp2n1GBmvMg3GEQYGAfSH9onArZ93ve
         O3bNdsqeVj2T89o1hSKPw6cQx0+el2xQyJ0y92cH7PwzNDYIUngMeOLh52QJ0h1BDJAk
         J9mg==
X-Gm-Message-State: AOAM53299ohUhz8AhX+ILUNlEzx0MvaAEJYHhl3BnvIJ/Q8RmK0JumF1
        l6Bwizyvdx+MRQyHE+ruzXN1GyIU5Cv96EiOIhI=
X-Google-Smtp-Source: ABdhPJw0lEjtN3KvaKBtSodtm+IRjb8lAvIfaB2qQ9CSc7Z6xiPafAjJifuYh4hdsgizjTAKCACQL43ptW2+5DJIPfI=
X-Received: by 2002:a17:907:1c8b:b0:6d7:129f:f543 with SMTP id
 nb11-20020a1709071c8b00b006d7129ff543mr599207ejc.198.1646139818246; Tue, 01
 Mar 2022 05:03:38 -0800 (PST)
MIME-Version: 1.0
References: <20220228004605.367040-1-marex@denx.de> <35b981d0d9d763525c427491ca0e25b6e4c03d0f.camel@oss.nxp.com>
 <8eac8a2c-bc6d-0c79-c727-bdaa2cd9abee@denx.de> <a3ab4ec2dd0c7b87698bc7902509a4de6950dd25.camel@oss.nxp.com>
 <33207e88-da9b-96d7-0fef-461cb4496c88@denx.de> <284d65f53dffb6085bde6ef6ecd398f10d4c6c80.camel@oss.nxp.com>
 <8950434843ff7bbd1a527b0c799d9a74a75ee36d.camel@pengutronix.de>
 <7aeed693-dfb7-950f-fdf0-3c90de285392@denx.de> <8bf0b5a1c9ab9faee28077436cdfd49c0cd08792.camel@pengutronix.de>
In-Reply-To: <8bf0b5a1c9ab9faee28077436cdfd49c0cd08792.camel@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Tue, 1 Mar 2022 07:03:26 -0600
Message-ID: <CAHCN7xJ6ypDxZouZV1b1F1EgQFwdTvmY6EEekj+_z-UWbQMD5Q@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: mxsfb: Add compatible for i.MX8MP
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Marek Vasut <marex@denx.de>, Liu Ying <victor.liu@oss.nxp.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, Robby Cai <robby.cai@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 1, 2022 at 5:05 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Dienstag, dem 01.03.2022 um 11:19 +0100 schrieb Marek Vasut:
> > On 3/1/22 11:04, Lucas Stach wrote:
> >
> > Hi,
> >
> > [...]
> >
> > > > Given the two totally different IPs, I don't see bugs of IP control
> > > > logics should be fixed for both drivers. Naturally, the two would
> > > > diverge due to different HWs. Looking at Patch 9/9, it basically
> > > > squashes code to control LCDIFv3 into the mxsfb drm driver with
> > > > 'if/else' checks(barely no common control code), which is hard to
> > > > maintain and not able to achieve good scalability for both 'LCDIFv3'
> > > > and 'LCDIF'.
> > >
> > > I tend to agree with Liu here. Writing a DRM driver isn't that much
> > > boilerplate anymore with all the helpers we have available in the
> > > framework today.
> >
> > I did write a separate driver for this IP before I spent time merging
> > them into single driver, that's when I realized a single driver is much
> > better and discarded the separate driver idea.
> >
> > > The IP is so different from the currently supported LCDIF controllers
> > > that I think trying to support this one in the existing driver actually
> > > increases the chances to break something when modifying the driver in
> > > the future. Not everyone is able to test all LCDIF versions. My vote is
> > > on having a separate driver for the i.MX8MP LCDIF.
> >
> > If you look at both controllers, it is clear it is still the LCDIF
> > behind, even the CSC that is bolted on would suggest that.
>
> Yes, but from a driver PoV what you care about is not really the
> hardware blocks used to implement something, but the programming model,
> i.e. the register interface exposed to software.
>
> >
> > I am also not happy when I look at the amount of duplication a separate
> > driver would create, it will be some 50% of the code that would be just
> > duplicated.
> >
> Yea, the duplicated code is still significant, as the HW itself is so
> simple. However, if you find yourself in the situation where basically
> every actual register access in the driver ends up being in a "if (some
> HW rev) ... " clause, i still think it would be better to have a
> separate driver, as the programming interface is just different.

I tend to agree with Marek on this one.  We have an instance where the
blk-ctrl and the GPC driver between 8m, mini, nano, plus are close,
but different enough where each SoC has it's own set of tables and
some checks.   Lucas created the framework, and others adapted it for
various SoC's.  If there really is nearly 50% common code for the
LCDIF, why not either leave the driver as one or split the common code
into its own driver like lcdif-common and then have smaller drivers
that handle their specific variations.

adam
>
> Regards,
> Lucas
>
>
