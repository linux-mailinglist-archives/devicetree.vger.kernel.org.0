Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12A9E611A16
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 20:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbiJ1S0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 14:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229956AbiJ1S0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 14:26:38 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 162911DC4CD
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:26:38 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-35befab86a4so54644517b3.8
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j5EifIBTTA4Q9MeGr5GuWpo/RfwKB+MeKNIB/9GceQo=;
        b=YUvbU1PpsyUC0xVCXSieAxZ6vYr4VEA8nHXSk5P4lFHIX6oEJWc5mCr/kQzfazyxZD
         GXNWik6tau12kCTYEtG1jEVTFeQ8x2qsmTErDuLDS3JTMIFWDf8nxG1b/6dipQTGLJDZ
         Vmh5w9sxSDqx20AH76/n/mZCllNsxjdto+XjXyH2pLBkhk5AAyNVtb82L74Zrfh8BQ9j
         5I5JyxrW5aKRKrFTZL09I9LT2rrVoBduaQRJ6UoFj7kE4yZFAnImYiKzm68Y07t0xrIr
         GURnBWhN2u0b90BaMv1cNUkOopljZM/G4Od+GmpmM0L+7JizDwTdNnOGIZa1IUmsjlA5
         GcHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j5EifIBTTA4Q9MeGr5GuWpo/RfwKB+MeKNIB/9GceQo=;
        b=R4aMRuooQxTaPk7Fx3M4U0HcE69RCWC2xBGG9x6CUwIjrL/01ZbBT09wP1s16XfjO/
         sBat43bN/F8V1Q2D/2YbDBO7d3JSy5Jyp37ZqdqKDyyib8GHgDaRiPlxyqmswV2MnFb8
         NKM0Fdh/yUWbLaBO9Vvv0nbCgUYWX9n/wd0r/FqPxeSENreJ54HCQQHX6RyGTK/2bzEW
         1poFOYNGm5hJ/+vwcPE+MRUSSukqfaycLzkb5ZeS3LBHFhsNT5a0mfB3J0bCNGyhVfuQ
         gwxMQFxe45Z8t0Q7333v8gjd9KgsuB1snyouPB94m22SsopGXoiopVJjb+SELff1geZm
         rsfQ==
X-Gm-Message-State: ACrzQf2mXOpbEpLbTtfKncZP9PJwOUTd7Jnri0S5BvuFPELp+YBOCNDC
        gcsyHEq6GQ9RTTDxr/iTuSoblBc20hYuD+AXgW6/TA==
X-Google-Smtp-Source: AMsMyM7UOWyL2Dv6r9TIrvrO+niGjVrF9GXwAEmH7LXG29idxrg8+LTErqg85FMT3mLbPbDQ2bGc6ZQBpNv9Bl1DiMA=
X-Received: by 2002:a81:164b:0:b0:36f:ced7:985f with SMTP id
 72-20020a81164b000000b0036fced7985fmr773896yww.360.1666981597226; Fri, 28 Oct
 2022 11:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <20221028172215.1471235-1-ajye_huang@compal.corp-partner.google.com>
 <20221028172215.1471235-2-ajye_huang@compal.corp-partner.google.com> <628ac98c-0755-e6f6-e010-f1e772c4b71a@linaro.org>
In-Reply-To: <628ac98c-0755-e6f6-e010-f1e772c4b71a@linaro.org>
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
Date:   Sat, 29 Oct 2022 02:26:30 +0800
Message-ID: <CALprXBY8FUc_w=JO3bp9m1e=1d5Fcvrou_En1JG8Hx0BYuETKw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ASoC: mediatek: dt-bindings: modify machine
 bindings for two MICs case
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        "chunxu . li" <chunxu.li@mediatek.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 29, 2022 at 1:58 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:


> >
> > +  dmic-gpios:
> > +    maxItems: 1
> > +    description: GPIO for switching between DMICs
>
> Switching how? Enabling? What is the meaning of each GPIO pin value?
>
I think I should add more like an example,
  description: dmic-gpios optional prop for switching between two DMICs.
                    Ex, the GPIO can control a MUX HW component to
                    select dmic clk and data form a Front or Rear dmic.

Do you agree with that or have other suggestions? If do, I will send
the v3 patch for you to check, thanks
> >
> > +        dmic-gpios = <&pio 23 0>;
>
> Use defines for flags.

Yes, you are right, I will change it to
dmic-gpios = <&pio 23 GPIO_ACTIVE_HIGH>;
