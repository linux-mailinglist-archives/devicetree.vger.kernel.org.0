Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EF98588B8B
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 13:51:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233946AbiHCLvd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 07:51:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232187AbiHCLvc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 07:51:32 -0400
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F97205E3
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 04:51:31 -0700 (PDT)
Received: by mail-il1-x12a.google.com with SMTP id g18so8363378ilk.4
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 04:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=EoTgeRCxBFuyoRmK/nVFvAZexnEido63F1iRgCjtE4I=;
        b=qBWKqHfNUzZmDs+T7fVLU/8groGDK4U0c+Nyy+uJifM9msoacv9u+Zmu0k3IAp0UNM
         uHvKfROJES2rkihqnAHchNDsEpnkt/wH14VJBPCxg6cqNzXNgTTLQ2SAyTm5/VF/7MHk
         f+FmbRF9NinVsBjyb6uCJF5Pl+VzPz59wtEuoccBWplRbJyKSMnKyTAr6dby7HFNsxRz
         lydwVBY18kXp5Ps1vtMV6swvmAEHsjTNgvQ3cCcCuyR0lp1FMSyAI3dxGx23aQ26PhZq
         eLbOJy/NZL8tvVpc5LG1kIbXW9pMliv5baIjfYae2cLFdy99LYiPeddMZNLDXVyNUdcD
         k03w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=EoTgeRCxBFuyoRmK/nVFvAZexnEido63F1iRgCjtE4I=;
        b=cPZaV/HyPqFY45mAYJdpZurnQcvlrSbLEQBF6mPPc7I8FK5Yj+gRd/QO39RiPsm/IE
         nX86OAked4rZj/XVUZ3AD9+3LQJiZ9xgzO2/RkIjsh20z5lWxqan6nRH+/RFoInJrV4J
         5m4i4nRXSCOmfuWx7v4wNtz84RLFxWDfVqXR19mQhCBtMxqI2cGJyZKhoe8zZmlkZXqb
         gsC7DSoaOTZH18fJ98Po15TjYYFnGb00BAdKfQXzx/k4JfvksG3Rmw15armevSgGEJmd
         qENFcgfjfELYfkcUTuKwVAOIVsZJVcNFF/MAG9uAjj2UmPUWaeqbwW1B93fE/wipBpL/
         OEZQ==
X-Gm-Message-State: AJIora/Wjc+sg7QCztfMJ5Ao2PV9qqhJhfhb0u/06ij5LQlHugl0MPXn
        GU//RJwSodZT5u6+3fxd5c3H4mgSDR57Aiqu4U0N7w==
X-Google-Smtp-Source: AGRyM1sCCLNYuMs6a2Nj6JufpAZB8vlrUSi4qqDgZ+iq5JepK4E180x3DA1eYjP4c305DkZUQT3A9jYjsb25ysDe5Xo=
X-Received: by 2002:a05:6e02:20ca:b0:2dc:90fa:af35 with SMTP id
 10-20020a056e0220ca00b002dc90faaf35mr10242118ilq.302.1659527490792; Wed, 03
 Aug 2022 04:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org> <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org> <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
 <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org> <CA+VMnFyjwt3ojtm+42U_LzXmdgV=x=ZE7m3SWZ2_FDLR4RM2QQ@mail.gmail.com>
 <9db34922-f3e1-1536-59ce-c95d364ffe2c@linaro.org>
In-Reply-To: <9db34922-f3e1-1536-59ce-c95d364ffe2c@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 3 Aug 2022 17:21:19 +0530
Message-ID: <CA+VMnFztFsOSJW_tuQOL_j1u+_5ZVyNqhDNf2vowR9jxCiCn3g@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 3 Aug 2022 at 17:09, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/08/2022 13:30, Jagan Teki wrote:
> > On Wed, 3 Aug 2022 at 16:57, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 03/08/2022 12:46, Jagan Teki wrote:
> >>> On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 03/08/2022 12:24, Jagan Teki wrote:
> >>>>>> Vendor in filename is needed.
> >>>>>
> >>>>> Yes this follows how similar rockchip vendor notation
> >>>>>
> >>>>> $ ls include/dt-bindings/power/rk3* -l
> >>>>>  include/dt-bindings/power/rk3036-power.h
> >>>>>  include/dt-bindings/power/rk3066-power.h
> >>>>>  include/dt-bindings/power/rk3128-power.h
> >>>>>  include/dt-bindings/power/rk3188-power.h
> >>>>>  include/dt-bindings/power/rk3228-power.h
> >>>>>  include/dt-bindings/power/rk3288-power.h
> >>>>>  include/dt-bindings/power/rk3328-power.h
> >>>>>  include/dt-bindings/power/rk3366-power.h
> >>>>>  include/dt-bindings/power/rk3368-power.h
> >>>>>  include/dt-bindings/power/rk3399-power.h
> >>>>>  include/dt-bindings/power/rk3568-power.h
> >>>>
> >>>>
> >>>> So when are we going to switch to vendor,device pattern if you keep
> >>>> adding files with wrong naming?
> >>>
> >>> Do you mean the above files are following the wrong naming pattern?
> >>
> >> Yes, or at least discouraged naming. The recommended naming which I hope
> >> all new files will follow are vendor,device.h.
> >
> > rockchip-rv1126-power.h
> >
> > Will this be Okay?
>
> After vendor prefix goes coma, so rockchip,rv1126-power.h

Thanks. I will fix it in v3.

Jagan.
