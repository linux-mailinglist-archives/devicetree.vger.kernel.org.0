Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D874E63D85B
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 15:38:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbiK3Oiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 09:38:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbiK3Oiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 09:38:52 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CDFE2FC3B
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 06:38:50 -0800 (PST)
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4C9A43F327
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 14:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1669819127;
        bh=yJuPcYaDmRotD++RbdlV7xUD6m84JuqaQZoAA3YlHoQ=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=D2w3JM+8UR1ozUGGWW2KivNRdIJa/2joK7WID1sV6kURIeG0T8ti9SVJRCzUtgTzm
         o8k56MDqN/7AnEYDjA81VSvBkvwDhhrxpAmlaJDVlFSjMfL59Z9QGu5MZXI4LNpy/a
         9wwxP+3YJ7aqMLE93KAIUoUJxdGWOs8nZZltr7TjJUfgcODTE9LoDPbuxT/+t4VN2e
         uB1yWh6LLvlvsZDbfRB1W5ypwK+cxaCPRJ3ukrczMfEuPY4j7ODvZti249KE862ZMy
         YI20i0ebkjV1asYScB2coT/SyVpL9iq/u4Yt0K2m+GrGETvalevrNXwSihEsdphWnW
         RrHo97v6Zoqcg==
Received: by mail-yb1-f198.google.com with SMTP id 203-20020a2502d4000000b006f94ab02400so4550341ybc.2
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 06:38:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yJuPcYaDmRotD++RbdlV7xUD6m84JuqaQZoAA3YlHoQ=;
        b=arHOnOFL9B97r1EODX9jvQeSRuFJ19gpMzDFzOfiv2tui0ev5LVHMWvzUwFI685JCu
         59vl45Jr8vdO8EpwGqljOimH4nWN5WgTFjjFaiLtmkjkI7vVKHwn98DijOIeEIKPuIEV
         B32dwsPj3WDsY2R7Cjj2aWhp/4Nm8NoRvgbTVzblZbYlV+Ab9+HonF9ehdLMRpFR3B4z
         m2QxnwdXGjtpgiMvH6Ip2zM5UyvA774Ie6JLezXZPWy5UiffyvPlnxpn8Of9oicqiLWI
         K6x5rgVdy0ZVslkl6b0t9dBr/pCd+m3JM1WzJdNMjrboNZvne4e81O9E3/L/7CWfSWp2
         kucQ==
X-Gm-Message-State: ANoB5pkjbWwuUBDa0DRnMa66+Zx/v2B7CAw2ParY75WWGXpxRlJ0x9nZ
        eYRlzkUoJ0um2u35fAPwiveMWiwaDHWFXMUoTLEVhOZbNsSP2++mJFCVZlVsfdN3j5h4xEjY/+U
        ZDvtPAuyfvSFcBmaT7pip+omYgvyJB62S6d5VhGObBsSyPezgDic5V/w=
X-Received: by 2002:a25:d24b:0:b0:6f1:e822:14e8 with SMTP id j72-20020a25d24b000000b006f1e82214e8mr27924561ybg.467.1669819124622;
        Wed, 30 Nov 2022 06:38:44 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5h/y9Ufc7p86Pb9tYohSEhT0Ol5lHnhilFhXj6V/t+wLileZuNKNQC9L+9a86g1iFspQXp7Tl/67+u+EK8RTE=
X-Received: by 2002:a25:d24b:0:b0:6f1:e822:14e8 with SMTP id
 j72-20020a25d24b000000b006f1e82214e8mr27924544ybg.467.1669819124392; Wed, 30
 Nov 2022 06:38:44 -0800 (PST)
MIME-Version: 1.0
References: <20221118133216.17037-1-walker.chen@starfivetech.com>
 <20221118133216.17037-5-walker.chen@starfivetech.com> <CAJM55Z9bJqpEGbbx1=EBXhmhigxuHw=ObBdTJ7xy+QY=pTJyoQ@mail.gmail.com>
 <f794e9fb-7ce0-2649-9839-b9ce36b80d1d@starfivetech.com>
In-Reply-To: <f794e9fb-7ce0-2649-9839-b9ce36b80d1d@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 30 Nov 2022 15:38:27 +0100
Message-ID: <CAJM55Z8=eTY+i+ggLSiUEKwnPrKgOybKJP5sNFwRNpx_t35HUA@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] riscv: dts: starfive: add power controller node
To:     Walker Chen <walker.chen@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Nov 2022 at 03:12, Walker Chen <walker.chen@starfivetech.com> wrote:
>
> On 2022/11/19 2:36, Emil Renner Berthing wrote:
> > On Fri, 18 Nov 2022 at 14:35, Walker Chen <walker.chen@starfivetech.com> wrote:
> >>
> >> This adds the power controller node for the Starfive JH7110 SoC.
> >> The pmu needs to be used by other modules such as ISP, VPU, etc.
> >>
> >> Signed-off-by: Walker Chen <walker.chen@starfivetech.com>
> >
> > Hi Walker,
> >
> > You called the driver jh71xx which suggests it also applies to the
> > jh7100. Are you missing a node in the jh7100 device tree?
>
> No, there is no power domain controller on the jh7100. Our next generation of chips jh7120 will
> still use this power management unit, so here this driver name is called jh71xx_pmu.c or changed
> to jh71xx_power.c , do you think such a name is appropriate ?
> Your reply will be highly appreciated!

I see. In that case jh71xx seems appropriate, thanks.

> >
> >> ---
> >>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 7 +++++++
> >>  1 file changed, 7 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> >> index c22e8f1d2640..fa7b60b82d71 100644
> >> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> >> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> >> @@ -356,6 +356,13 @@
> >>                         #gpio-cells = <2>;
> >>                 };
> >>
> >> +               pwrc: power-controller@17030000 {
> >> +                       compatible = "starfive,jh7110-pmu";
> >> +                       reg = <0x0 0x17030000 0x0 0x10000>;
> >> +                       interrupts = <111>;
> >> +                       #power-domain-cells = <1>;
> >> +               };
> >> +
> >>                 uart0: serial@10000000 {
> >>                         compatible = "snps,dw-apb-uart";
> >>                         reg = <0x0 0x10000000 0x0 0x10000>;
> >> --
> >> 2.17.1
> >>
> >>
> >> _______________________________________________
> >> linux-riscv mailing list
> >> linux-riscv@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-riscv
>
