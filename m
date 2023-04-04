Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25BE06D59FB
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 09:51:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230193AbjDDHvV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 03:51:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233481AbjDDHvU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 03:51:20 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 493C610FA
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 00:51:13 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5419d4c340aso598105767b3.11
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 00:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680594672;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVraZ9OiQ2LG500yR9oFq3EcoKtDUlYAiG0JiN0f9o4=;
        b=SOU/Xh8ng2VuJeMrr4Ksoco6qKlH4HKZ2DqScfxkz8i04SduPXQUdqhUtaVehcKRNH
         TOLUqQYjITBN+JzrwHTrYcS5YTt4HyLSQ6jrXq9rxDEyCpGeRaSdxdROiVOqqflUJ2/S
         XrTuKCGIVZa1BedFmr5j8RNEXv7vZvMye1VsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680594672;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVraZ9OiQ2LG500yR9oFq3EcoKtDUlYAiG0JiN0f9o4=;
        b=a8TaAZRZ38WlY8z/cDOkhrAvtcVQEuwzotGRgpJTvvyBCmjzd3XaHNonDjZ/EYZpjF
         sb7oN9XfQz6+yld3+bblY4rGKt2+SHJseVkZfvRLZnIjMSg+P92Ty04/gGPxspV7J2mh
         w6DaNTrmF5f1hQ1Ltm0VhTnIDfJUVIGurEHjMdvWRWU+a6p+MIDKYI+3KIKSM75nxDGN
         keKff1cTlqlAYq/CfrAaUHq2/Us1GNhjWhU6YNL3klpEb97Rs7S90IB+5n3+YGOSF+NR
         rwZYNi5/acXxahJDkRQus7UE27WWAYgtbP8CqHruAgJ7TWjY5CYDP7V3Dai0g+RVwshW
         Sswg==
X-Gm-Message-State: AAQBX9coSDWf1yuPJAHJ6+ZckUu5DAmrjvz9uItC7blORW7F72yn93uB
        E8NT6oY3pSNJCplu7ADmAXSgUnZwUgjHMcD5sbdY/A==
X-Google-Smtp-Source: AKy350YZcUbpacC1MbMakGRPTFlCxf28GFXRT3ao56yRtydrha4wgp3YCMO5vP77rYF8l1UQOjO8XLbejlZFZMAROFM=
X-Received: by 2002:a81:c509:0:b0:52e:e095:d840 with SMTP id
 k9-20020a81c509000000b0052ee095d840mr1078880ywi.0.1680594672257; Tue, 04 Apr
 2023 00:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
 <20230330131746.1475514-2-jagan@amarulasolutions.com> <beae35a5-b094-087a-8443-5f669a2a37c6@arm.com>
In-Reply-To: <beae35a5-b094-087a-8443-5f669a2a37c6@arm.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 4 Apr 2023 13:21:00 +0530
Message-ID: <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
Subject: Re: [PATCH 2/3] iommu/rockchip: Disable the device link during resume
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        iommu@lists.linux.dev, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 30, 2023 at 7:13=E2=80=AFPM Robin Murphy <robin.murphy@arm.com>=
 wrote:
>
> On 2023-03-30 14:17, Jagan Teki wrote:
> > Rockchip iommu is trying to enable the associated device at runtime
> > resume however some devices might enable the iommu during their pm
> > runtime resume operation which indeed leads iommu to use the wrong
> > domain and this leads to device iommu page fault.
> >
> > An example of this behavior has been observed in Rockchip RK3328, where
> > iommu stalls request timeout dring VOP device enablement.
> >
> > Here is the dmesg log for the same:
> >
> > rockchip-drm display-subsystem: bound ff370000.vop (ops vop_component_o=
ps)
> > dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy r=
egulator
> > rk_iommu ff373f00.iommu: Enable stall request timed out, status: 0x0000=
4b
> > dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy r=
egulator
> > rk_iommu ff373f00.iommu: Disable paging request timed out, status: 0x00=
004b
> > dwhdmi-rockchip ff3c0000.hdmi: Detected HDMI TX controller v2.11a with =
HDCP (inno_dw_hdmi_phy2)
> > dwhdmi-rockchip ff3c0000.hdmi: registered DesignWare HDMI I2C bus drive=
r
> > rockchip-drm display-subsystem: bound ff3c0000.hdmi (ops dw_hdmi_rockch=
ip_ops)
> > [drm] Initialized rockchip 1.0.0 20140818 for display-subsystem on mino=
r 0
> >
> > This issue is reproduced if we enable the display in U-Boot however
> > U-Boot is not even touched any iommu register as the U-Boot display
> > uses the simple frame buffer like other Rockchip platforms RK3399,
> > and RK3328 do.
> >
> > When VOP is trying to enable the iommu using runtime resume call
> > pm_runtime_resume_and_get from @vop_enable then the iommu runtime
> > resume call @rk_iommu_resume will try to attach the VOP in the wrong
> > domain via @rk_iommu_enable will lead to the vop iommu page fault.
>
> That sounds like a driver bug. The whole point of the device link is

Do you mean the bug in rockchip-iommu.c or vop?

> supposed to be that the IOMMU gets suspended after the VOP, and resumed
> before it, so it can make sure that whatever translations the VOP was
> using are restored *before* the VOP starts trying to access them again.
> If the IOMMU driver is failing to restore the correct state on resume,
> no amount of DT abuse is the right answer.

Then how can we handle the co-relation b/w them as VOP already
attaching the iommu and at the same time IOMMU trying to enable VOP
device but referring to the wrong domain? Any suggestions?

>
> I can understand if the IOMMU itself expects to be idle for the initial
> configuration at probe time, and gets unhappy if we try to reset it
> while (bypass) VOP traffic for the bootloader framebuffer is still going
> through, but that's an entirely different issue, and again hacking

Does it mean accessing VOP traffic at the bootloader stage effecting
iommu even though the VOP drivers in the bootloader are not using
iommu at all?

Thanks,
Jagan.
