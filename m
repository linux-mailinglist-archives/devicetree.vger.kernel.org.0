Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3F2E7052D5
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 17:51:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234369AbjEPPv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 11:51:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234107AbjEPPve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 11:51:34 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A56C2DC4C
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 08:50:37 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-61b79b9f45bso129830536d6.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 08:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684252195; x=1686844195;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFGPzaLGza6USyFk2W1xiNgdO9q790qPd9zu8sf1g7E=;
        b=VhoLfrZsWRV5hrL7lwFw2v4CL2xcnV2+9uE7rGefaQdDK6icP0n2NK/wd8TCXF5ogu
         vNxl5ph4qvRgcYFnq2xrRSkxyX7q+oi9uVDGOYz7hfzgp6spDpP8pU/XkGa+2NMUCY15
         MJg7yRQf5bjHhA5js9+ZkSw6dDnNG1V1Ulfek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684252195; x=1686844195;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mFGPzaLGza6USyFk2W1xiNgdO9q790qPd9zu8sf1g7E=;
        b=R967F88r3fLwqIalXx22gkcUco7nJb8pa0zQdSch4LIzwFF+8kEP2VLIvDv47q37QS
         YfC2+ym3Ityj/Q43edAKEpPsfXZvUVrq1WtuS+z0IfEy+TCeg/ZriQLH36Y7dgs0Z4Ja
         LKvpziHN9FID3UrJELBQiVW23UUdsfx/jQqCtpz96p2IQCUOpG28g6LqVjUaYkk1XpfM
         8kVZzMz2ofsKMa9ufZaEkIaQMjUBO6BZgaWVQ0pAJPrxV98jSsR3rPpXiGsPejzjQU4u
         tbTBHFp8ZstviCsnyt6+aonuX6nLenN1Dncr2rZVP2yYf46zsOoN+wf9LFPO61Xjyus+
         hWaw==
X-Gm-Message-State: AC+VfDwz+wBW+jCXF2s2GtNM7v65MAapihfqxZeIEa5Q9syeUM6REI1t
        226m0l1AEG/IwmyJd/4HzcdQjzxUy0Mv9UhNXsk=
X-Google-Smtp-Source: ACHHUZ4rggZ87Q06m/1kqnhmX95Rr/i4DCvP6KloHrQUovGWm5JE0r/jA9oCYsuOsqdjXrBHT6K0vw==
X-Received: by 2002:a05:6214:4008:b0:5e8:63ae:a9a9 with SMTP id kd8-20020a056214400800b005e863aea9a9mr65002200qvb.47.1684252194903;
        Tue, 16 May 2023 08:49:54 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id a9-20020a0ccdc9000000b005f5b71f75f3sm5676016qvn.125.2023.05.16.08.49.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 08:49:53 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-3f38824a025so1848851cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 08:49:53 -0700 (PDT)
X-Received: by 2002:ac8:574a:0:b0:3ee:d8fe:6f5c with SMTP id
 10-20020ac8574a000000b003eed8fe6f5cmr279415qtx.1.1684252193280; Tue, 16 May
 2023 08:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAHwB_NLBLEUiu__fE9F=j0KFssq7Lxfz8WUnbR0C6yi=zsboJw@mail.gmail.com>
 <20230509025153.1321446-1-yangcong5@huaqin.corp-partner.google.com> <CAD=FV=Xp_OoxJH38skQswjK_AWwJ5P2OmgjnXLog9bAht0CL6A@mail.gmail.com>
In-Reply-To: <CAD=FV=Xp_OoxJH38skQswjK_AWwJ5P2OmgjnXLog9bAht0CL6A@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 16 May 2023 08:49:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WjLVSiT_AD=SBo2mD23rCw_3iJRC4rBPrrMHBV2CCn6w@mail.gmail.com>
Message-ID: <CAD=FV=WjLVSiT_AD=SBo2mD23rCw_3iJRC4rBPrrMHBV2CCn6w@mail.gmail.com>
Subject: Re: [v2] drm/panel: Modify innolux hj110iz panel inital code
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     thierry.reding@gmail.com, hsinyi@google.com, sam@ravnborg.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 9, 2023 at 8:42=E2=80=AFAM Doug Anderson <dianders@google.com> =
wrote:
>
> Hi,
>
> On Mon, May 8, 2023 at 7:52=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > There is a problem of screen shake on the old panel. So increase the
> > panel GOP component pull-down circuit size in hardware, and update the
> > initialization code at the same time. The new initialization code mainl=
y
> > modifles the following.
> >
> > a)adjusted for GOP timing. When Display sleep in, raise all GOP signals
> > to VGHO and then drop to GND.
> > b)Increased the Vertical back Porch and Vertical pulse width, so need t=
o
> > update vsync_end and vtotal and CLK in drm_display_mode.
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> > v2: Modify commit message
> >
> >  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 397 +++++++++++-------
> >  1 file changed, 235 insertions(+), 162 deletions(-)
>
> Every time I see the opaque changes to the pile of "DCS_CMD" arrays I
> feel obliged to grumble a bit, but as I've said before I guess it's
> OK-ish...
>
> Thus, this patch seems fine to me:
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> Just to make sure there are no objections, I'll give this ~1 week and
> then I'll land it to drm-misc-next.

Pushed to drm-misc-next:

519ce291168a drm/panel: Modify innolux hj110iz panel initial code
