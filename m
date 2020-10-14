Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B3A428DFFC
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 13:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388303AbgJNLsl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 07:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388261AbgJNLsY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 07:48:24 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC58C061755
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 04:48:16 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id t25so4333187ejd.13
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 04:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gJmE+QzQPKhmVzRh7Mt/ZkUz7d1ef3q7Sc2eKrUP1ek=;
        b=D5mF2XYQNP+94me/VxKUFpADGfBIU3L6stuWHfhcFjpvl8cFllEzVr2R8gPiy6Y7H5
         7Jn3E05QFxVTs6FWqON6/czE5exVhvHc+PXVrpU6cNV+QSHwvK363vZMM69bEwZ7xq1k
         1wMTxa2lATKEQ127Aj9A7/xrT5lOpm18mHUOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gJmE+QzQPKhmVzRh7Mt/ZkUz7d1ef3q7Sc2eKrUP1ek=;
        b=kSuBShdoezS9fsXXMcf4Nrw8vIP1NhT46m3upY/a5ArcHcD3NSKuGOsNuCa3olGtVD
         0LpZRDNF4DWgwjqO+mF1Rd9/136ZKt/0B3HGICQSaxKBoEfuEB9PQkksufF+V4tjj4rw
         TmWSFdXT34dp/yR3khUHAv793ibXYhaG+Y1ef9wHSM3ZoPFyJ8te0TPmHJYgl54YxCnu
         Tdm6UUbYsuL7cr+G+GwbEm49dWMntSE9DyK4T7FL5O3MbBonQQ4DZORztb5EYqRELJkj
         mUFviJtkS8vwa/vFk++OiQpG0eWAiIOpyD4wzmXT/hEXdzWIwvlRdL7SFTJH5UaPrlmP
         qkKg==
X-Gm-Message-State: AOAM5309mPfJrub9GTlJvKLqKbDWcpQiq33Gp59sYgrxEMqu7aLvjowT
        RMVYVB1UNYvVuzDpevFEq2ko2hO2TywiZA==
X-Google-Smtp-Source: ABdhPJyLJ5YN+j0jhoub4G6m+Ro8baGKJSeb6Qx5gEw5eorD4NNuebqTNmcOo7FvPkuyYpGRJ9Icgg==
X-Received: by 2002:a17:906:bc4b:: with SMTP id s11mr4941210ejv.437.1602676094354;
        Wed, 14 Oct 2020 04:48:14 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id f23sm1609227ejd.5.2020.10.14.04.48.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 04:48:13 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id n6so3390779wrm.13
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 04:48:12 -0700 (PDT)
X-Received: by 2002:adf:ab05:: with SMTP id q5mr4966749wrc.32.1602676092220;
 Wed, 14 Oct 2020 04:48:12 -0700 (PDT)
MIME-Version: 1.0
References: <20201013130503.2412-1-dongchun.zhu@mediatek.com>
 <20201013130503.2412-2-dongchun.zhu@mediatek.com> <20201013161938.GE13341@paasikivi.fi.intel.com>
 <1602641418.4733.80.camel@mhfsdcap03> <20201014083139.GG13341@paasikivi.fi.intel.com>
In-Reply-To: <20201014083139.GG13341@paasikivi.fi.intel.com>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Wed, 14 Oct 2020 13:48:00 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BVzN=49s4S98E9mGNuxzOt4633dAw9mbyu3Sr-rA61qw@mail.gmail.com>
Message-ID: <CAAFQd5BVzN=49s4S98E9mGNuxzOt4633dAw9mbyu3Sr-rA61qw@mail.gmail.com>
Subject: Re: [PATCH v15 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
To:     Sakari Ailus <sakari.ailus@linux.intel.com>
Cc:     Dongchun Zhu <dongchun.zhu@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Cao Bing Bu <bingbu.cao@intel.com>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>,
        Sj Huang <sj.huang@mediatek.com>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        Louis Kuo <louis.kuo@mediatek.com>,
        =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= 
        <shengnan.wang@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 14, 2020 at 10:31 AM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> On Wed, Oct 14, 2020 at 10:10:18AM +0800, Dongchun Zhu wrote:
> > Hello Sakari,
> >
> > Thanks for your timely review.
> >
> > On Tue, 2020-10-13 at 19:19 +0300, Sakari Ailus wrote:
> > > Hi Dongchun,
> > >
> > > On Tue, Oct 13, 2020 at 09:05:02PM +0800, Dongchun Zhu wrote:
> > > > Add YAML device tree binding for OV02A10 CMOS image sensor, and the
> > > > relevant MAINTAINERS entries.
> > > >
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > ---
> > > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 162 +++++++++++++++++++++
> > > >  MAINTAINERS                                        |   7 +
> > > >  2 files changed, 169 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > >
> >
> > [snip]...
> >
> > > > +  ovti,mipi-clock-voltage:
> > > > +    description:
> > > > +      An array of 2-tuples items, and each item consists of link frequency and
> > > > +      MIPI clock voltage unit like <freq-kHz volt-unit>. Clock voltage unit is
> > > > +      dependent upon link speed, indicating MIPI transmission speed select that
> > > > +      controls D-PHY timing setting by adjusting MIPI clock voltage to improve
> > > > +      the clock driver capability.
> > > > +    $ref: "/schemas/types.yaml#/definitions/uint32-array"
> > > > +    minItems: 2
> > > > +    default: [390000, 4]
> > >
> > > Why do you have the link frequency here as well?
> > >
> > > In principle this does belong to the endpoint as link frequencies are
> > > specific to that, but I don't mind; there's just a single port anyway.
> > >
> >
> > This is an optional property which we model as an array of <link speed,
> > clock voltage> pairs. An example to have all link speeds up to 390MHz
> > use the value 4 for current driver. If one wants to select different
> > voltage for different link, they could do so as well.
>
> If you think you'd need that, then you need to put this to the endpoint.

The mipi-clock-voltage property is not a property of the endpoint. The
link frequency there does not set the link frequency - it only
specifies which link frequency the given voltage should be used for.

Best regards,
Tomasz
