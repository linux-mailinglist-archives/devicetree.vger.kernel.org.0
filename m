Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0B0271390B
	for <lists+devicetree@lfdr.de>; Sun, 28 May 2023 12:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229470AbjE1KgN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 May 2023 06:36:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjE1KgL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 May 2023 06:36:11 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C69CBD
        for <devicetree@vger.kernel.org>; Sun, 28 May 2023 03:36:10 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-bacfa9fa329so1883171276.0
        for <devicetree@vger.kernel.org>; Sun, 28 May 2023 03:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1685270170; x=1687862170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XEIjdMc3t6uK7VpqqvFnGReSqnMu5+aJcFJu5s74a2g=;
        b=K2W9+l1X1Tid3+EJqQQ/fY94BEwTMIpxSrR/hZk7F4AFiiSNIyMXuJNFcqN0IRU5HC
         RgA8PBpQi/Ktc+8+3pl7cM5hXsBD5HEdwmHxdFgHTbeHMkE/yZ1IvmvO4RE/H5u57qFy
         Il09BBOsVDeXUDjTqR5KOm6H9CozAYVh7EeUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685270170; x=1687862170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XEIjdMc3t6uK7VpqqvFnGReSqnMu5+aJcFJu5s74a2g=;
        b=PbWgTaDh2LAEelLZiY/TBydgBrZ5EoqmD8ehECJWmUArRihJzN9fAB1L3tTjc36zwu
         UaqPDw0RyZwN77+wxx/W4aZIUFYq5VBOt3BEXqVRflPNyhLzzu0Hkn8Cpll9l3Z9D1PY
         mdIn9Kq8UkIy8ZAtelyjVZtPX1a/9AXiuK+Iljc+AkSWqcy1y+UruAItINfN+8dVLMpy
         ySS6+8NgV1rXjH3DXBARb79HgJmr5Q05KME1G72uv4a9i8Kfsy6zxLJ8ttHWC73Oeyaa
         HtVYsQcgwqQO8mhLP+sFrwTwgmlc4D1PeujE3ZDHLDVRyZi/6uJcTLmZ2GGEbz29I9Fz
         NIzA==
X-Gm-Message-State: AC+VfDziYTa+hVAHihUSL7YepIhTfWDL4PYtMAnWXG5d4D6vb52iTrNh
        e95TZjqkbLBzJ1HW/el7rfl5pjtlFmhthkxuTXjtcQ==
X-Google-Smtp-Source: ACHHUZ73RHrAo0cPXE0nt0Rv8+FrnJMoVr33kCNPQ9rE3gthn+TWULk+JsMWs3UrFpgcDWlFPFcPjawxAM8CJnkIoSY=
X-Received: by 2002:a25:a549:0:b0:ba8:1089:3338 with SMTP id
 h67-20020a25a549000000b00ba810893338mr7609381ybi.39.1685270169679; Sun, 28
 May 2023 03:36:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
 <20230330131746.1475514-2-jagan@amarulasolutions.com> <beae35a5-b094-087a-8443-5f669a2a37c6@arm.com>
 <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
In-Reply-To: <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Sun, 28 May 2023 16:05:57 +0530
Message-ID: <CAMty3ZAnx2V_gWgi-jpRHbdyVnGYn9Vyyv8H0HVqTijOcCBycA@mail.gmail.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Robin,

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

Any further comments on this? Issue seems to reproducing on latest RK SoC's=
.

Thanks,
Jagan.
