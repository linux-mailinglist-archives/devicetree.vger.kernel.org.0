Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48270705072
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 16:20:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233373AbjEPOUY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 10:20:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233570AbjEPOUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 10:20:10 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 570A983CC
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 07:19:55 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-3f39600f9b8so45651601cf.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 07:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684246793; x=1686838793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Um1tUxrJi7GYgRkSCDyfBikS3Jewh3k7uhzREmBIwwY=;
        b=ZOCp4xaFxexSDGJYQZSqZNykw1Le/JfuA3Ze1ozd+i7MNRSCmmK1MVQr1IgEDP62qx
         EbnFYB5XOOslcwUFPzeBIa+9x5FhRIm5zNS0QvPnJCZfrknNRWWPRHZxT+Ef2Ng/dNJQ
         y4lSwUtjMY4+R3APscBh1MdGfLarRZNIZnMpk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684246793; x=1686838793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Um1tUxrJi7GYgRkSCDyfBikS3Jewh3k7uhzREmBIwwY=;
        b=Ql1+1Wpg7llnTVR3oFBEu53R4fm+n2HXwKTp41jz906sJLMJys72cE+RS09+KShMn8
         l6Iajya0qHXH7xbZS6srCUFI3tiAc2mYRiCuUMyImmOKov1CIYQcgsak3b0JT6e5KoXN
         l+WikZdVDEV2JVP0Me8dqfYvpthwyYZapWrljDkCIA5Xe2/JsPJ5TXQlk2958PGqG3GV
         5E6CaAjrFR2xCwXQMknxmEiOKTgt1JyOfT+PxGRnOurYVmD3r9y4E12sYY+cEH6lrD3f
         fHks558TjhGeBGaEaaDLVdT1xe36Nt4UFFZF7JGmNek3z8fQjte9EXjiRM1mMyG0lvaf
         k6/Q==
X-Gm-Message-State: AC+VfDwORak4GXJdPdroQLWNbInSPh5dUMuKmAD4igq0dz3yAwatssGH
        bJd5NwZNDLCn/VeLadRYSdYfWPC15DtmDwF54F0=
X-Google-Smtp-Source: ACHHUZ6Dql4F7KaiN36NDMPOLarmB+h3n40LAmTX7rchmffZ2W+RfEetHlNK8X2LEmIjToYxcKe45Q==
X-Received: by 2002:ac8:5c89:0:b0:3f2:13:ee85 with SMTP id r9-20020ac85c89000000b003f20013ee85mr60377981qta.29.1684246793457;
        Tue, 16 May 2023 07:19:53 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id p26-20020ac8409a000000b003ef58044a4bsm4596717qtl.34.2023.05.16.07.19.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 07:19:52 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-3f38824a025so1817231cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 07:19:52 -0700 (PDT)
X-Received: by 2002:ac8:4e86:0:b0:3f5:4eb4:414f with SMTP id
 6-20020ac84e86000000b003f54eb4414fmr3310qtp.13.1684246791898; Tue, 16 May
 2023 07:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230515131353.v2.cover@dianders> <20230515131353.v2.2.I88dc0a0eb1d9d537de61604cd8994ecc55c0cac1@changeid>
 <3cc683e7-28aa-7b6e-1499-3aca953294cc@collabora.com>
In-Reply-To: <3cc683e7-28aa-7b6e-1499-3aca953294cc@collabora.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 16 May 2023 07:19:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UKC9mDab4nYu7OFSOEpsm-CJ=dvcXzHOG-a74JeELQkw@mail.gmail.com>
Message-ID: <CAD=FV=UKC9mDab4nYu7OFSOEpsm-CJ=dvcXzHOG-a74JeELQkw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] irqchip/gic-v3: Disable pseudo NMIs on Mediatek
 devices w/ firmware issues
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        linux-mediatek@lists.infradead.org,
        Eddie Huang <eddie.huang@mediatek.com>,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
        wenst@chromium.org, yidilin@chromium.org,
        Tinghan Shen <tinghan.shen@mediatek.com>, jwerner@chromium.org,
        Weiyi Lu <weiyi.lu@mediatek.com>, Ben Ho <Ben.Ho@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 16, 2023 at 6:23=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 15/05/23 22:13, Douglas Anderson ha scritto:
> > Some Chromebooks with Mediatek SoCs have a problem where the firmware
> > doesn't properly save/restore certain GICR registers. Newer
> > Chromebooks should fix this issue and we may be able to do firmware
> > updates for old Chromebooks. At the moment, the only known issue with
> > these Chromebooks is that we can't enable "pseudo NMIs" since the
> > priority register can be lost. Enabling "pseudo NMIs" on Chromebooks
> > with the problematic firmware causes crashes and freezes.
> >
> > Let's detect devices with this problem and then disable "pseudo NMIs"
> > on them. We'll detect the problem by looking for the presence of the
> > "mediatek,broken-save-restore-fw" property in the GIC device tree
> > node. Any devices with fixed firmware will not have this property.
> >
> > Our detection plan works because we never bake a Chromebook's device
> > tree into firmware. Instead, device trees are always bundled with the
> > kernel. We'll update the device trees of all affected Chromebooks and
> > then we'll never enable "pseudo NMI" on a kernel that is bundled with
> > old device trees. When a firmware update is shipped that fixes this
> > issue it will know to patch the device tree to remove the property.
> >
> > In order to make this work, the quick detection mechanism of the GICv3
> > code is extended to be able to look for properties in addition to
> > looking at "compatible".
> >
> > Reviewed-by: Julius Werner <jwerner@chromium.org>
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> I don't like firmware removing properties from my devicetrees and I'd lik=
e this
> issue to get addressed in another way (use a scratch register? and check =
it in
> Linux drivers to determine if the issue is not present: if scratch contai=
ns BIT(x),
> do not parse the quirk) but that's a different discussion which is a bit =
out of
> context for this patch, so:

Any particular reason why? IMO it's actually a fair bit cleaner to
have firmware remove a property that's specifically documented for the
firmware to remove compared to having firmware adding properties to or
otherwise messing with the device tree. For the removal case, it's
easy from the device tree git history to find out about the property,
when it was added, and that it is expected that some versions of
firmware will remove it. IMO having firmware add properties can be a
little more mysterious, though that has its place too. In general,
though, firmware is expected to be able to be able to touch up the
device tree. It puts things in "chosen", adds bits describing the
firmware, can add things to the device tree to describe components it
is uniquely able to probe (like SDRAM), could enable/disable a
component if it has info about their presence, etc.

I'm happy to hear other opinions on it, but in my mind having a
sideband bit telling us to ignore the quirk is more confusing instead
of less confusing.


> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

Thanks!
