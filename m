Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8F565150F9
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 18:36:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239270AbiD2QkJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 12:40:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234707AbiD2QkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 12:40:08 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DC40130
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 09:36:50 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id j6so7339856pfe.13
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 09:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4AhDhjWUwI2Tn5CahkqmhzJNHD5HQcuQ3C3nm662LO4=;
        b=ZdRUbmRvvcg9rqXLGiCVN4eDpXjZirOYZwfuSdri1DmaLsbHCUPYz6ditV4Zh+OsTJ
         YGEOxkRyT2umQVM4d3EC5TRftA2vZA7CCMPb/dJuLWr2JJn/6IM+cZlnyLjA99ssGnTM
         PF/XhOhPhl5uQon8mcIc4DGAXcNQzIy73bbr6hMdSIfkQa1E2Lz/oQae6x2f14hs0u/i
         5kaM2F5OJjOoLpdPoM4Q26Q6YrbAbHoVLxDSPeoB5yIH7eg7e/b69sIA/8y+ArOZpsHM
         8+K4/oMDpE19FdyJmwB9JXMDAXPHmVaqFqW57oXMQMYnZclzHNnVsXveR4xdcxBmubDB
         8fNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4AhDhjWUwI2Tn5CahkqmhzJNHD5HQcuQ3C3nm662LO4=;
        b=PiI5ikNulipO28CfPBg1a4m8lkoU8YXfyaw8QWYUbtCSB6/+O4XTebllpJX+mHs4eG
         1MkqfR4d9s1Yx3o4f50IpLOJzE0UrOcD8N+6WNxfY76RUhaD7Koo0wmpX82pxPH7hAWe
         fB7oD6TmVISUKm6eKlj8bcddBzkN3WvKpqT5TazA+ES/IT5QtXTp90HW/8JZdg8D4jYI
         uPr/Sub8y/WM7xCs5nxdEl/CKPqkbzuSv0Gmd9rHvjY9cBalbWNGYEqo+9YDDkJkEtvf
         HcV2DM3bWnjHiwmJ+FEARbNNm4XR/ettP7gi92nPJxgd0ztD7kWl6zKkeMxFtWo08viN
         wcqA==
X-Gm-Message-State: AOAM531Xo4o0hvkBoEeBdi8RsifxWWZmiXFUQy79/Bp10L5tO4KZoLus
        z7N+2VdvPkK0nBrgIcdZPTNWmqnYZxJmMV5yVBO+8g==
X-Google-Smtp-Source: ABdhPJw+o86C+wUIMV8SACUxDWyPWaJYaJvHGulqCMpaWQRoUSS6ySuQi0M4o7t89bMyCN4zDSo+e5KI1gU6qCVR3Fo=
X-Received: by 2002:a63:194b:0:b0:3ab:71e5:161 with SMTP id
 11-20020a63194b000000b003ab71e50161mr184626pgz.115.1651250209745; Fri, 29 Apr
 2022 09:36:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220429161347.7947-1-tharvey@gateworks.com> <CAOMZO5Do-Vy_s4m99uUTnL1sdJUhghjzZJKp4V-SG4rAK=kTzg@mail.gmail.com>
In-Reply-To: <CAOMZO5Do-Vy_s4m99uUTnL1sdJUhghjzZJKp4V-SG4rAK=kTzg@mail.gmail.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 29 Apr 2022 09:36:38 -0700
Message-ID: <CAJ+vNU0Lhgo1Hz_BtbEJb+JPbHj8UWtf5hm1uA0b=H5SeKi3Kg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mm-venice-gw7902: fix pcie bindings
To:     Fabio Estevam <festevam@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 29, 2022 at 9:18 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Tim,
>
> On Fri, Apr 29, 2022 at 1:13 PM Tim Harvey <tharvey@gateworks.com> wrote:
> >
> > Update the pcie bindings to the correct dt bindings:
> >  pcie_phy:
> >   - use pcie0_refclk
> >   - add required clock-names
> >  pcie:
> >   - remove pcie_phy clock as it comes from phy driver
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
>
> It seems you missed the Fixes tag.
>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Fabio,

it didn't really 'fix' anything but dt syntax. PCIe works without this patch.

Best Regards,

Tim
