Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 618E95B28B5
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 23:45:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbiIHVpK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 17:45:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229794AbiIHVpC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 17:45:02 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8EDC222A1
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 14:44:58 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id s14so7449plr.4
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 14:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=7cEaCTFyaruFBQRCttlZEmia+ULTPMhy557A0I+PZVU=;
        b=r7Hw9u+WhhXId/awZajCPDbApW+bjJwxEAaaYBciy88dwMgIIwcHCuAygQAf3SuDq/
         NnH6+zZnZ17RE07KVPkHaDMfb3Ji/uHyhD4f97mFKWrwgPjUaEGuEFVshX5IJIX0ItZk
         B5ocCUuYrty1K/1JOC/Cs7GfcSRvdeT9+AgFbeui68vO24zuLov/NUaBdMEyBOHAfyM3
         X5f+hGy9EMzxLu15leKfLH080sZiSayByBnC8FLN69A+SLa976IGpPtIdsUpHjxLeA6+
         LKBplBOAdlpeHWORgcyXgpuB9nP77GPFan9NAnKWB4lSUyX+79kfr7CeDBTbEPwyfvCz
         oYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=7cEaCTFyaruFBQRCttlZEmia+ULTPMhy557A0I+PZVU=;
        b=sYgmuJcSdL03JiSIlTnDJhhjxis+frxaJEPsRDtn0yF/GcYReE7y3f+KKHVLb9ug0G
         uU6ZnVAtE3cRj6CnNbOAXeIcIcU95++Ik0JR37VkmKHC2G8FaHFgB8WBlcucEHtXQ7nJ
         hLbVzTwiHAyGkTf4OdmDu36f9Vpf5xtwUb/rwPpwHzV8/huqckyypN7g2K2xiSJz/tiY
         s3IXh/mnQ9uF8Zur7qEiqVlEo9t7ySm2LHq9PTYABcQ+UXVu3ZSivPYoGtDddjvk0GiM
         fcnZvlhQYCmvk5pvgIq74CtaFHtvpb0TAA6E5mDgg0nDU7puViKN0rMZBlNkHk3/bG9W
         ffug==
X-Gm-Message-State: ACgBeo3DiH4VMdvr8Y+NRgCu4+0DtatYcWE2rgFKajMJs2zV9VgwgUro
        /EM4KJUZBw/gLaoSrCekr+rmp7fE9eEL0kZGEcmwJXGwscwhVA==
X-Google-Smtp-Source: AA6agR6TzsZ+ZEK//4aI0INXPyodXEgiwr1yjZI6T5OxSxvQy4B9svETdk4ngzWXX1yG2zD3zF8Tn+thxoTxI4Lbjnw=
X-Received: by 2002:a17:903:41c6:b0:174:3acf:8294 with SMTP id
 u6-20020a17090341c600b001743acf8294mr10633273ple.118.1662673498193; Thu, 08
 Sep 2022 14:44:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220902230500.2624739-1-tharvey@gateworks.com> <20220908211916.GA3348959-robh@kernel.org>
In-Reply-To: <20220908211916.GA3348959-robh@kernel.org>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Thu, 8 Sep 2022 14:44:46 -0700
Message-ID: <CAJ+vNU1NEYWvev3s=1rPPNCRovBqa0p=JTXLHLpV7fOWf-dFLg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add i.MX8M Mini Gateworks GW7904 board
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 8, 2022 at 2:19 PM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Sep 02, 2022 at 04:04:59PM -0700, Tim Harvey wrote:
> > Add DT compatible string for i.MX8M Mini based Gateworks GW7904 board.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: NXP Linux Team <linux-imx@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 7431579ab0e8..ce89fac1898e 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -831,6 +831,7 @@ properties:
> >                - gw,imx8mm-gw7901          # i.MX8MM Gateworks Board
> >                - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
> >                - gw,imx8mm-gw7903          # i.MX8MM Gateworks Board
> > +              - gateworks,imx8mm-gw7904   # i.MX8MM Gateworks Board
>
> A useful comment would be ones that distuiguish these boards. It's
> obvious from the compatible it's a i.MX8MM board from Gateworks.

But isn't it clear that you need to go to the device-tree itself to
understand the details?

As far as basic features go sometimes there is very little difference
in these board models. It would be a struggle to list all the board
details (which I do in the dts commit) in a way that doesn't take up
too much space in fsl.yaml.

Best Regards,

Tim
