Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DD9C7080F8
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 14:15:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231418AbjERMPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 08:15:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbjERMPP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 08:15:15 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CD72186
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 05:15:14 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-ba841216e92so2781287276.1
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 05:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1684412113; x=1687004113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgFOSV/UZQum0un5ddf5wbQcMT/9BA1IjZd6FVUmCYU=;
        b=GOJI+vZ+hkzomUZOEnr8zjRGHiv2hqqLvNHs/wcE90qc088sPT3caF7Kl5tUxrifex
         n2L8AGuDLnTohuTkvhKkFOOVisGil9d+2zd/M6gc9yEGZxZIrywXb8SCHe97XZmcDpjn
         WbqMg90rREBOiQIM4jBYWxYUcfib5PymxKcWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684412113; x=1687004113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgFOSV/UZQum0un5ddf5wbQcMT/9BA1IjZd6FVUmCYU=;
        b=OEhkUlhSlmU6srKPkQuv9N6tXBuQOUfJ2V8eD/9Z3sLLN8ol6uK1WwOn4msqQDF7VJ
         JwzZsHoKECQJVRVIDkrPBi3Kc17i7IkEGFtReQV2LvQs6b04RH/hIDWpbZFy9OeJp1lC
         CUpGlgspZX0sFyX0bc5uqHYWbNcnHK2XtQG3Yy67Z6zqMgaA8U+0Ev6d3SOqrSUBy9bw
         zBR5FBXW73rnSe1ikDgBM60amDXWpFLSMB0WrrnwS07hJwVYq3il3aXe465gGBCMrZjS
         S1sbk6D6NAWFvzxHszHcS+gt+r2m7jjBo9Ek3eP2U5QBDrz/v7DPI328UML9WFNSuAv1
         D4rw==
X-Gm-Message-State: AC+VfDzxyjzdVvLwJKefHJpvybIO11ejzWUMRDnYYHtohCxrZ17C9ECP
        DVrrPtEwDlYzh8igQur7o564UxDQlmDsPLC6OM4ASg==
X-Google-Smtp-Source: ACHHUZ7nFwLw8vU2gQmUrRhe5rNw2YJS/jctgIgXoQk+5ckkK64KcX4r0qAl4gnBCbLNwU3FrQdfHumNxwfG1gN0gdY=
X-Received: by 2002:a25:c42:0:b0:ba8:aaef:bc53 with SMTP id
 63-20020a250c42000000b00ba8aaefbc53mr766483ybm.6.1684412113261; Thu, 18 May
 2023 05:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
 <20230330131746.1475514-2-jagan@amarulasolutions.com> <beae35a5-b094-087a-8443-5f669a2a37c6@arm.com>
 <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
In-Reply-To: <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 18 May 2023 17:45:01 +0530
Message-ID: <CAMty3ZBDAwY+3qApU_mQJ7ZNEw52SpbV3TeOk38TSicG9CoiVg@mail.gmail.com>
Subject: Re: [PATCH 2/3] iommu/rockchip: Disable the device link during resume
To:     Heiko Stuebner <heiko@sntech.de>, Simon Xue <xxm@rock-chips.com>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        iommu@lists.linux.dev, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiko/Kever/Simon,

On Tue, Apr 4, 2023 at 1:21=E2=80=AFPM Jagan Teki <jagan@amarulasolutions.c=
om> wrote:
>
> On Thu, Mar 30, 2023 at 7:13=E2=80=AFPM Robin Murphy <robin.murphy@arm.co=
m> wrote:
> >
> > On 2023-03-30 14:17, Jagan Teki wrote:
> > > Rockchip iommu is trying to enable the associated device at runtime
> > > resume however some devices might enable the iommu during their pm
> > > runtime resume operation which indeed leads iommu to use the wrong
> > > domain and this leads to device iommu page fault.
> > >
> > > An example of this behavior has been observed in Rockchip RK3328, whe=
re
> > > iommu stalls request timeout dring VOP device enablement.
> > >
> > > Here is the dmesg log for the same:
> > >
> > > rockchip-drm display-subsystem: bound ff370000.vop (ops vop_component=
_ops)
> > > dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy=
 regulator
> > > rk_iommu ff373f00.iommu: Enable stall request timed out, status: 0x00=
004b
> > > dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy=
 regulator
> > > rk_iommu ff373f00.iommu: Disable paging request timed out, status: 0x=
00004b
> > > dwhdmi-rockchip ff3c0000.hdmi: Detected HDMI TX controller v2.11a wit=
h HDCP (inno_dw_hdmi_phy2)
> > > dwhdmi-rockchip ff3c0000.hdmi: registered DesignWare HDMI I2C bus dri=
ver
> > > rockchip-drm display-subsystem: bound ff3c0000.hdmi (ops dw_hdmi_rock=
chip_ops)
> > > [drm] Initialized rockchip 1.0.0 20140818 for display-subsystem on mi=
nor 0
> > >
> > > This issue is reproduced if we enable the display in U-Boot however
> > > U-Boot is not even touched any iommu register as the U-Boot display
> > > uses the simple frame buffer like other Rockchip platforms RK3399,
> > > and RK3328 do.
> > >
> > > When VOP is trying to enable the iommu using runtime resume call
> > > pm_runtime_resume_and_get from @vop_enable then the iommu runtime
> > > resume call @rk_iommu_resume will try to attach the VOP in the wrong
> > > domain via @rk_iommu_enable will lead to the vop iommu page fault.
> >
> > That sounds like a driver bug. The whole point of the device link is
>
> Do you mean the bug in rockchip-iommu.c or vop?
>
> > supposed to be that the IOMMU gets suspended after the VOP, and resumed
> > before it, so it can make sure that whatever translations the VOP was
> > using are restored *before* the VOP starts trying to access them again.
> > If the IOMMU driver is failing to restore the correct state on resume,
> > no amount of DT abuse is the right answer.
>
> Then how can we handle the co-relation b/w them as VOP already
> attaching the iommu and at the same time IOMMU trying to enable VOP
> device but referring to the wrong domain? Any suggestions?
>
> >
> > I can understand if the IOMMU itself expects to be idle for the initial
> > configuration at probe time, and gets unhappy if we try to reset it
> > while (bypass) VOP traffic for the bootloader framebuffer is still goin=
g
> > through, but that's an entirely different issue, and again hacking
>
> Does it mean accessing VOP traffic at the bootloader stage effecting
> iommu even though the VOP drivers in the bootloader are not using
> iommu at all?

Any suggestions on this issue? we found similar issues even with
upcoming RK SoCs - RV1126, RK3566, RK3588.

Thanks,
Jagan.
