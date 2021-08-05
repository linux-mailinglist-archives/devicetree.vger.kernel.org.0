Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E0A53E0C8B
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 04:56:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbhHEC44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 22:56:56 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:50226 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbhHEC44 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 22:56:56 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id C08151F40EF5
Message-ID: <c52b31a6e66f46ad2b14ee96868e5c6b212d2b7f.camel@collabora.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add GPU node for rk3568
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>
Date:   Wed, 04 Aug 2021 23:56:30 -0300
In-Reply-To: <b19aa876-f78b-f6af-39e9-ff37fc19f09a@gmail.com>
References: <20210730164515.83044-1-ezequiel@collabora.com>
         <20210730164515.83044-4-ezequiel@collabora.com>
         <b19aa876-f78b-f6af-39e9-ff37fc19f09a@gmail.com>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Johan,

Thanks for the review.

On Fri, 2021-07-30 at 21:38 +0200, Johan Jonker wrote:
> Hi Ezequiel,
> 
> Some comments. Have a look if it's useful.
> 
> On 7/30/21 6:45 PM, Ezequiel Garcia wrote:
> > Rockchip SoCs RK3566 and RK3568 have a Mali Gondul core
> > which is based on the Bifrost architecture. It has
> > one shader core and two execution engines.
> > 
> > Quoting the datasheet:
> > 
> > Mali-G52 1-Core-2EE
> > * Support 1600Mpix/s fill rate when 800MHz clock frequency
> > * Support 38.4GLOPs when 800MHz clock frequency
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
> >  1 file changed, 47 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index bef747fb1fe2..f4f400792659 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -121,6 +121,35 @@ opp-1800000000 {
> >                 };
> >         };
> >  
> 
> > +       gpu_opp_table: opp-table2 {
> 
>         gpu_opp_table: gpu-opp-table {
> 

Makes sense.

> > +               compatible = "operating-points-v2";
> > +
> > +               opp-200000000 {
> > +                       opp-hz = /bits/ 64 <200000000>;
> > +                       opp-microvolt = <825000>;
> > +               };
> 
> Similar to cpu0_opp_table keep the same style and add an empty line
> between nodes.
> 

Makes sense.

> > +               opp-300000000 {
> > +                       opp-hz = /bits/ 64 <300000000>;
> > +                       opp-microvolt = <825000>;
> > +               };
> > +               opp-400000000 {
> > +                       opp-hz = /bits/ 64 <400000000>;
> > +                       opp-microvolt = <825000>;
> > +               };
> > +               opp-600000000 {
> > +                       opp-hz = /bits/ 64 <600000000>;
> > +                       opp-microvolt = <825000>;
> > +               };
> > +               opp-700000000 {
> > +                       opp-hz = /bits/ 64 <700000000>;
> > +                       opp-microvolt = <900000>;
> > +               };
> > +               opp-800000000 {
> > +                       opp-hz = /bits/ 64 <800000000>;
> > +                       opp-microvolt = <1000000>;
> > +               };
> > +       };
> > +
> >         firmware {
> >                 scmi: scmi {
> >                         compatible = "arm,scmi-smc";
> > @@ -332,6 +361,24 @@ power-domain@RK3568_PD_RKVENC {
> >                 };
> >         };
> >  
> > +       gpu: gpu@fde60000 {
> > +               compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
> > +               reg = <0x0 0xfde60000 0x0 0x4000>;
> 
> > +
> 
> remove empty lines
> 

Makes sense.

> > +               interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
> > +                            <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
> > +                            <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> > +               interrupt-names = "job", "mmu", "gpu";
> 
> > +
> 
> dito
> 
> > +               clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
> > +               clock-names = "core", "bus";
> 
> Not sure if it's possible, but could you keep them all a little bit in
> the same order/style as arm,mali-400?
> 
> From arm,mali-utgard.yaml:
> 
>   clock-names:
>     items:
>       - const: bus
>       - const: core
> 

Don't think we can do that in this case, as the first clock
is already expected as the "core" one.

These clocks might need some cleaner specification in the
driver or the dt-binding (or both), but I'd like to defer
that to the driver maintainers.


-- 
Kindly,
Ezequiel

