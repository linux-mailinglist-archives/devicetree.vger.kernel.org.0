Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D3D06572F2
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 06:28:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229912AbiL1F2j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 00:28:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbiL1F2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 00:28:38 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A8D8DD3
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 21:28:37 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id ge16so11566781pjb.5
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 21:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9cAM4RhmUF/0okz7iGJZyGhb8wvgosg7Pe52G62TzuE=;
        b=JGTuVx/19KQlpCvCoeEmPy73oDMhAn7fVSSmJgfHEX+2S7PV4Hksc4YduZq9w/truH
         uJuU7bxjIiESuewVZq8SHZ9CNJylx1p6sYC7LeJqINs+8+geWB6fGwuNQ5FWmvmjFkmo
         cjJ2NKoqj1SfJhKB+YlzR6M+/EyPs6lR0kUzg6JR1YYEZD/NYVTABQWVr3MRhrcKQeEY
         RarBkVkfPt4crvf+YmnXF42s+cJ64RA5roSOrtnJKa/vyXnsvt/VEm8iOPkn/4fEyb8m
         8N8C/+xYegf7pnFB7dh0Ys4ZwhGVnlkvPDvBsmN2Q91KZnOPuhBtjg/DL3KruKZDtF7i
         BeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9cAM4RhmUF/0okz7iGJZyGhb8wvgosg7Pe52G62TzuE=;
        b=InT11QVoiuQbJ2+FhigoWO3VUkYZrLCLilsveGlDfuuhp4FtBopdFUigt4aE6hzRGy
         Cd14fRMAvCTQYyrMb+fkhIPPaVvNbxGVkqs0zjNpczogDda1OJkygHYy28XIoDu//1a6
         EvJAl+bGwQ6kqzCu0UPpRqc/FzgWY73qo9l94SCCWqnAnN9LkOCXoQO5GM7iJ9KsMIcu
         KfnHQ9lHHsI2IWDRbNjm7FfIPEdEZot+fb4+wvI+DRQy/gSWV8eLsQ7BYgPJq3it1+SL
         B0iL1b1RXBiegMoxzk6IriTgHfhegTau1TLfKIWobxrROA/Y0542I8dgmEedpqXcw6GD
         SxzQ==
X-Gm-Message-State: AFqh2kpTdtQRfkeyTA7TCfg7c9RJLaKWQCT7cNzjIW5FAdo1Ogs8cL6Z
        aA4+8QwyTcCDZbpOScztKz4bJIOhC3aiN6jSw9VNQw==
X-Google-Smtp-Source: AMrXdXucD2UuV6eCz/qiNghJ5GxgT3TnOtddAezIMiy5Cbg7XzHb/zmA7oU/ii3ws+/T5IFcS9BIisTXbPI+gj6CLxI=
X-Received: by 2002:a17:90b:1281:b0:225:be82:ba21 with SMTP id
 fw1-20020a17090b128100b00225be82ba21mr1650901pjb.209.1672205316516; Tue, 27
 Dec 2022 21:28:36 -0800 (PST)
MIME-Version: 1.0
References: <20221227104837.27208-1-anand@edgeble.ai> <20221227104837.27208-3-anand@edgeble.ai>
 <732352f3-fda0-039e-4fef-ceb6f5348086@gmail.com>
In-Reply-To: <732352f3-fda0-039e-4fef-ceb6f5348086@gmail.com>
From:   Anand Moon <anand@edgeble.ai>
Date:   Wed, 28 Dec 2022 10:58:25 +0530
Message-ID: <CACF1qnfEjGCQ2e5DQqszc6Ak0XR5+NB-PSBFJtnC1P5O9hNGqA@mail.gmail.com>
Subject: Re: [PATCHv3 linux-next 3/4] ARM: dts: rockchip: rv1126: Add GMAC node
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Johan

On Tue, 27 Dec 2022 at 17:25, Johan Jonker <jbx6244@gmail.com> wrote:
>
>
>
> On 12/27/22 11:48, Anand Moon wrote:
> > Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
> > add GMAC node for RV1126 SoC.
> >
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > v3: drop the gmac_clkin_m0 & gmac_clkin_m1 fix clock node which are not
> > used, Add SoB of Jagan Teki.
> > V2: drop SoB of Jagan Teki.
> > ---
> >  arch/arm/boot/dts/rv1126.dtsi | 49 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> > index 1cb43147e90b..e20fdd0d333c 100644
> > --- a/arch/arm/boot/dts/rv1126.dtsi
> > +++ b/arch/arm/boot/dts/rv1126.dtsi
> > @@ -90,6 +90,55 @@ xin24m: oscillator {
> >               #clock-cells = <0>;
> >       };
> >
>
> > +     gmac: ethernet@ffc40000 {
>
> Nodes with a reg property are sort on reg address.
> Heiko can fix that.. ;)
>
>         timer0: timer@ff660000 {
>         gmac: ethernet@ffc40000 {
>         emmc: mmc@ffc50000 {
>

will sort these on reg address. In the future. or the next version.

Thanks.
-Anand
