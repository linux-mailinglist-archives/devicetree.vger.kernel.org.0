Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1678C1A2EF2
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2020 08:04:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725828AbgDIGEg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Apr 2020 02:04:36 -0400
Received: from mail-il1-f196.google.com ([209.85.166.196]:41299 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725785AbgDIGEg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Apr 2020 02:04:36 -0400
Received: by mail-il1-f196.google.com with SMTP id t6so9149358ilj.8
        for <devicetree@vger.kernel.org>; Wed, 08 Apr 2020 23:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=U0k2Xztg7j9SvQNMVkx71cxXQ6AFkKJ2SAjXAl+0SNI=;
        b=iwH0JI7iD6GVpaav0sLt57UZsJUsWbjl8vAtI16qx9IfbT5hpfC9Q/m3Z58vYlN3H9
         bIrELcVGbZoqw9UdiwqsRYQGBHTLiFtAz0Y4o8n1zlUe/B12WZbb3W3VakafXfD3XyCB
         a1qVjM3f9Dm9vIgn6dhIpLoUO1u7oiYA+wquQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=U0k2Xztg7j9SvQNMVkx71cxXQ6AFkKJ2SAjXAl+0SNI=;
        b=XYsLp8yWcyWTx0RSqxtnCkbF+Wa1KAd7Q8RU6cgLflx3czy9pWmWecrIEPr6UHrblT
         8NrqB98iyCUpDg+j6kZ3F+PdnB6lWi4nu+QiJSWgzIx87Piezxjm3GVwkTu+J/HDqcPm
         PzlfOCKayX1SHCtrrUboBoPgfc/WlN7q6PzTEpjs2yqe2/fzJtS+Uj3prjaVcizATYjL
         UZ1z5V9NByqNHKjLKf5S0mUazzFG6d+NczM8Ce4FE9eVtY9p+QWJBnkJ+4IuV15zWFUl
         7gd/SPF4HE3tO2wYZ7ACpkyoJUHpuHLv9guQMSpyuAHM0lLH2HB2QmUasmlZiIIgpkKX
         7fzw==
X-Gm-Message-State: AGi0PubbKStphLYqkrPh+yUg2JEuUC+hgXvbfpgZS7dxflFaZhfeUpAx
        bLLwNORywDT5CFJ3B8xjCuYHunbjpXgks0GbLSyo6A==
X-Google-Smtp-Source: APiQypKsq4Dq9SLFz7Ua4KMnDBywchOcH84tfaonrDZ/Ffl3NFOaaK4qj/XhAmQiYl67GiykhWkxoDEVzS/bOgUAZQY=
X-Received: by 2002:a05:6e02:6cd:: with SMTP id p13mr11240229ils.150.1586412275898;
 Wed, 08 Apr 2020 23:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191118104252.228406-1-hsinyi@chromium.org> <CAFqH_528vidMhTFxNZ=b7SFD2K12UwtdX3uTUzW4YUgeDWkg5A@mail.gmail.com>
 <CAAOTY_8RMboOuKVKPANZ1QN+mt0jvOr13o84VhWKGY1QZqbPDg@mail.gmail.com> <e22e0400-56e0-2ff4-72d8-5231b7fa58fc@collabora.com>
In-Reply-To: <e22e0400-56e0-2ff4-72d8-5231b7fa58fc@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 9 Apr 2020 14:04:09 +0800
Message-ID: <CAJMQK-iQvkQDnhL-LqCz57+3_GqU3EM5m=S2vGsOZuyGeXM74w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: Add gce setting in mmsys and display node
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 9, 2020 at 12:47 AM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Hi Chun-Kuang
>
> Many thanks to let us know this, I completely missed.
>
> On 8/4/20 18:09, Chun-Kuang Hu wrote:
> > Hi, Hsin-Yi:
> >
> > Enric Balletbo Serra <eballetbo@gmail.com> =E6=96=BC 2020=E5=B9=B44=E6=
=9C=888=E6=97=A5 =E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=8811:48=E5=AF=AB=E9=81=
=93=EF=BC=9A
> >>
> >> Missatge de Hsin-Yi Wang <hsinyi@chromium.org> del dia dl., 18 de nov.
> >> 2019 a les 11:43:
> >>>
> >>> In order to use GCE function, we need add some informations
> >>> into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-even=
ts).
> >>>
> >>> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> >>
> >> With the fix provided by Hsin-Yi [1] and after the mmsys patches
> >> landed I get GCE function working on mt8173, so
> >>
> >> Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> >>
> >> [1] https://lore.kernel.org/lkml/20200406051131.225748-1-hsinyi@chromi=
um.org/
> >>
> >> Thanks,
> >>  Enric
> >>
> >>> ---
> >>> - This is based on series "support gce on mt8183 platform"
> >>>   https://patchwork.kernel.org/cover/11208309/
> >>> - gce setting in 8183:
> >>>   https://patchwork.kernel.org/patch/11127105/
> >>> ---
> >>>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 16 ++++++++++++++++
> >>>  1 file changed, 16 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/bo=
ot/dts/mediatek/mt8173.dtsi
> >>> index 15f1842f6df3..e84ec3f95d81 100644
> >>> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> >>> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> >>> @@ -911,6 +911,11 @@ mmsys: clock-controller@14000000 {
> >>>                         assigned-clocks =3D <&topckgen CLK_TOP_MM_SEL=
>;
> >>>                         assigned-clock-rates =3D <400000000>;
> >>>                         #clock-cells =3D <1>;
> >>> +                       mboxes =3D <&gce 0 CMDQ_THR_PRIO_HIGHEST 1>,
> >>> +                                <&gce 1 CMDQ_THR_PRIO_HIGHEST 1>;
> >
> > Because of patch [1], atomic_exec parameter should be removed.
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
/commit/?h=3Dnext-20200408&id=3D19d8e335d58a961a7ed377e5e2e63664b92c0b9c
> >
>
> Many thanks to point this. Hsin-Yi, as the mt8173 device-tree will not la=
nd in
> current merge window (Matthias correct me if I am  wrong) maybe you could=
 send a
> new version of the device-tree including these changes?
>
>
> >>> +                       mediatek,gce-client-reg =3D <&gce SUBSYS_1400=
XXXX 0 0x1000>;
> >>> +                       mediatek,gce-events =3D <CMDQ_EVENT_MUTEX0_ST=
REAM_EOF>,
> >>> +                                             <CMDQ_EVENT_MUTEX1_STRE=
AM_EOF>;
> >
> > Because of patch [2], these events should be moved to mutex node.
> >
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
commit/?h=3Dv5.6&id=3D60fa8c13ab1a33b8b958efb1510ec2fd8a064bcc
> >
>
> Hsin-Yi, note this will also impact your fixes patch [1].
>
> [1] https://lore.kernel.org/lkml/20200406051131.225748-1-hsinyi@chromium.=
org/
>
> Thanks,
>  Enric
>
> > Regards,
> > Chun-Kuang.
> >
Thanks for pointing this out.

v2: https://lore.kernel.org/lkml/20200409055012.199320-1-hsinyi@chromium.or=
g/
