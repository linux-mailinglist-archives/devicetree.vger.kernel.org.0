Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC0566814F5
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 16:25:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238170AbjA3PZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 10:25:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238172AbjA3PZX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 10:25:23 -0500
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com [IPv6:2607:f8b0:4864:20::a32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE64634021
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 07:25:22 -0800 (PST)
Received: by mail-vk1-xa32.google.com with SMTP id l20so5879973vkm.11
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 07:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FWq5l4TyEr8IR7mmSeMUsAGTq3ylCBFM2oZg8br9OhA=;
        b=UFHiCIIsGs8Y1dofmWtBxUWLG9G4bGklIGTNgM/q7Z0JbVPv0kvnHwyO6hYOLt+V/5
         NNeLsyzgMcXEnX3A2BZMPNgzBv2Ct3akhx3iK80twtV4vxpZkgrrxGco7BKNjn4E5HAs
         eoNRsBW//jq2ghehiAQFnBcocgkqtrxo2DNJC6jBUUxT3ta8Aj0VPqXDpsvmgBx3Zn4G
         9q4GkeLTN7MFnlq2BDuMHm39RGfBY9U3+BLguEJqe31hKRIe1XVV1DOeSQ7HEPivmwqh
         rU7txLTnCU7vJspKbJdxTj4xG2G3dxj6WpMUO1lWiguQrt0rhE4u1dxJDiSELOHlHhGL
         /gXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FWq5l4TyEr8IR7mmSeMUsAGTq3ylCBFM2oZg8br9OhA=;
        b=mge94DIuiL3SqpQKorF1QukU6Q9/hvWYyyPkvvF30WVp+F5Jf+XiW1zt14aY3HuFfy
         ZMEKF36zFytkQRHFE4N1YO4lvJ03rBbjzeZZffzYllsDFVEaevXDSrFXYOr6K5kR51Vh
         jydYOYhWb2HaGPSGU4Lr/BsSUc2eZwLvRT5oDCWe1hiZctpQjebxL9xFtZWItSAS2rjE
         B8b2JWYKo1lXCKmAplkbVZ1gfXbTXF/xqCN9lLIVUi0Ly2HkJlJmKn+hGwKnvjU9H/ri
         gvqCV1gksbcPm0DPLe8jyyVfwFKSUHiy3RGhoDXyPEsyXa+mA6cvTPyMHDX0bAHOtNsT
         AJaQ==
X-Gm-Message-State: AFqh2kq2UyPgPqOdjrqO3ZND1fD4bj/dOrc/GlZNl24VplIfgkvclYez
        X7yt/GNi0A3utlkgiMXMXCKnk2IX1IJFD9S26WewNg==
X-Google-Smtp-Source: AMrXdXv4PC6wQP9hoqOOsDo+zisJ9tSxzJa5oPFAdqYJ10Hx4wmMt1IlFQHk7m3XYCJCfuFLsJkFOQKqeiiD5cbbZpk=
X-Received: by 2002:a1f:1b8f:0:b0:3d8:d753:56bb with SMTP id
 b137-20020a1f1b8f000000b003d8d75356bbmr6392583vkb.39.1675092321847; Mon, 30
 Jan 2023 07:25:21 -0800 (PST)
MIME-Version: 1.0
References: <20230126-b4-ltc2945_shunt_resistor-v4-0-bb913470d8da@criticallink.com>
 <20230126-b4-ltc2945_shunt_resistor-v4-1-bb913470d8da@criticallink.com>
 <20230129201604.GA1583293@roeck-us.net> <CADL8D3ZkGT51FX5UrCQ8afzFxPNGHbi09EdXqE+cQyGRnHR2mw@mail.gmail.com>
In-Reply-To: <CADL8D3ZkGT51FX5UrCQ8afzFxPNGHbi09EdXqE+cQyGRnHR2mw@mail.gmail.com>
From:   Jon Cormier <jcormier@criticallink.com>
Date:   Mon, 30 Jan 2023 10:25:10 -0500
Message-ID: <CADL8D3b0QznFarombRPuAH_iR+PJYqK2c-Rp4TDeD7WtvwWgPg@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: hwmon: adi,ltc2945: Add binding
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bob Duke <bduke@criticallink.com>,
        John Pruitt <jpruitt@criticallink.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 30, 2023 at 10:19 AM Jon Cormier <jcormier@criticallink.com> wrote:
>
> On Sun, Jan 29, 2023 at 3:16 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > On Thu, Jan 26, 2023 at 05:32:23PM -0500, Jonathan Cormier wrote:
> > > Create initial binding for the LTC2945 I2C power monitor.
> > >
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Signed-off-by: Jonathan Cormier <jcormier@criticallink.com>
> >
> > Series applied,
> Great
> > after merging patch 4/5 and 5/5 of the series
> > to avoid spurious 32-bit build failures,
> Huh, I split these per request, curious why they'd cause build
> failures when separated...
Nevermind, I see your other response.
> > and after fixing a continuation line alignment.
> >
> > In the future, please run checkpatch --strict on your patches,
> Will do. I didn't know about this option.
> > and please provide change logs.
> This I did do in every cover letter.
> >
> > Thanks,
> > Guenter
>
> --
> Jonathan Cormier
> Software Engineer
>
> Voice:  315.425.4045 x222
>
>
>
> http://www.CriticalLink.com
> 6712 Brooklawn Parkway, Syracuse, NY 13211



-- 
Jonathan Cormier
Software Engineer

Voice:  315.425.4045 x222



http://www.CriticalLink.com
6712 Brooklawn Parkway, Syracuse, NY 13211
