Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02843656212
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 12:12:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231934AbiLZLMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 06:12:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231593AbiLZLMY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 06:12:24 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCA962BD8
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 03:12:23 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id gt4so10440523pjb.1
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 03:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7rZU9dTo4wiGfju+EwyLkXwgkgO09mbh8HYe4DpIC1w=;
        b=wTNiiwzt/3kspxRepwC1qVDxgDCwVGnFpuQ1eXIMlcaAuIHSpkyw/XlLbSm1ZP0B3I
         GlwC3aCchJJn6IYLy5ZLChBNDbOG8IjAiIr/TMUoZfdH9aF72YnYFO02Ql3ghe13h3qJ
         Z5awNX+Knrx9vtLeBheG8khM9CESWwj8/0DmJVL4VCLbSr38cacUOX9wYhTu5JUqqiiN
         wmAzq+rfAoww/vSGnSElcmAaAJyNopFw+Sldm9e/WM8yagDND0yiWHU1KSatLmUBye26
         3sxFKfDEaEt00UQHwezBKZUcGyCy5jLR0KP1F7syonxVNSKh3Uhg2b2SWL7EB0OG86+E
         ql6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7rZU9dTo4wiGfju+EwyLkXwgkgO09mbh8HYe4DpIC1w=;
        b=gen/wKidqrWiQ9Z+9RFdzL9imCNwR0XoXatm/d/RVdZRurvJNwN1nedGW1F78aVohu
         QrC8l4LFrGE9B6RtSpVcIeYh0+xuPri+93reZMseStlulpExXV/7jDV2WjDcn4nEd928
         FXt14TGHBnqrMCvypxyt9lxsyvOnznpFJ2M4o7pTjazuWl9dUQu//2ddcAMRZOeyoftV
         nMlwFYFXEtS6nkrZfj2NVx0OEFfdfzdImcmvkRT7hOGeQrSciUPxQpkxAV79OkllPDmD
         +toI47MRgmwhqKOzYE+fH+XNdD7VbaFlIpNGQGxyIQ6ItnwdmfY+cdKETOfjqU2aIhgZ
         1wog==
X-Gm-Message-State: AFqh2kqhVNzggTwnFZW28NHbxe+rhg7Y8vPdAzFaHU6gz89U8M/naQNV
        3fRp5ibbmk37MEZqCiXc7TxBAfyF4rkS9lnxX58jpA==
X-Google-Smtp-Source: AMrXdXvBV4igNAgXU1JyRiRa+FjCfnx1fNUHpTVHdpvoED/8dwGrSMCqMjrYL0r7mq0TDsyV/NPDQIp+e8Le7sjgZBY=
X-Received: by 2002:a17:903:4294:b0:192:7e73:f21c with SMTP id
 ju20-20020a170903429400b001927e73f21cmr137439plb.23.1672053143381; Mon, 26
 Dec 2022 03:12:23 -0800 (PST)
MIME-Version: 1.0
References: <20221226063625.1913-1-anand@edgeble.ai> <20221226063625.1913-3-anand@edgeble.ai>
 <CA+VMnFwq=iHBMtpu6QQKdPDoMz8zU-4WyNOJmvHaCRgXx4RVNg@mail.gmail.com>
In-Reply-To: <CA+VMnFwq=iHBMtpu6QQKdPDoMz8zU-4WyNOJmvHaCRgXx4RVNg@mail.gmail.com>
From:   Anand Moon <anand@edgeble.ai>
Date:   Mon, 26 Dec 2022 16:42:12 +0530
Message-ID: <CACF1qnf+gAWqAqrqDVd_rtUJvnkB4soyxURkOuikmaRrrt1JDg@mail.gmail.com>
Subject: Re: [PATCHv2 linux-next 3/4] ARM: dts: rockchip: rv1126: Add GMAC node
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Richard Cochran <richardcochran@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

Thanks for the review comments.

On Mon, 26 Dec 2022 at 15:20, Jagan Teki <jagan@edgeble.ai> wrote:
>
> On Mon, 26 Dec 2022 at 12:07, Anand Moon <anand@edgeble.ai> wrote:
> >
> > Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
> > add GMAC node for RV1126 SoC.
> >
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > ---
> > drop SoB of Jagan Teki
> > ---
> >  arch/arm/boot/dts/rv1126.dtsi | 63 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> > index 1cb43147e90b..bae318c1d839 100644
> > --- a/arch/arm/boot/dts/rv1126.dtsi
> > +++ b/arch/arm/boot/dts/rv1126.dtsi
> > @@ -90,6 +90,69 @@ xin24m: oscillator {
> >                 #clock-cells = <0>;
> >         };
> >
> > +       gmac_clkin_m0: external-gmac-clockm0 {
> > +               compatible = "fixed-clock";
> > +               clock-frequency = <125000000>;
> > +               clock-output-names = "clk_gmac_rgmii_clkin_m0";
> > +               #clock-cells = <0>;
> > +       };
> > +
> > +       gmac_clkini_m1: external-gmac-clockm1 {
> > +               compatible = "fixed-clock";
> > +               clock-frequency = <125000000>;
> > +               clock-output-names = "clk_gmac_rgmii_clkin_m1";
> > +               #clock-cells = <0>;
> > +       };
>
> These seems not needed,

Ok, I will drop this in next version.

Thanks
-Anand
