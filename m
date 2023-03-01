Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6220B6A68A1
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 09:13:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjCAINu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Mar 2023 03:13:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229849AbjCAINr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Mar 2023 03:13:47 -0500
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9B2139BBD
        for <devicetree@vger.kernel.org>; Wed,  1 Mar 2023 00:13:45 -0800 (PST)
Received: by mail-ua1-x92b.google.com with SMTP id x1so3093829uav.9
        for <devicetree@vger.kernel.org>; Wed, 01 Mar 2023 00:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=McoBXip6N0wzllPSImTtIlILRkDkokjO1vKAG/mcycc=;
        b=Tmw8Vpx0Flh0EJ9YIzobExLydlByQ1dTM1gZgR846ityPEUe7ycNEZuTrk7zuksAG7
         P9LXGws14CpzFMXQ5tJFp0UU8D9rTUptnK7uX2Ylz0TWfJmDhA4AxhVavhWh3Wqrd1C7
         rXOwoLkcrI7C83YqLuKVz45rRlaeSDUkXOXio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=McoBXip6N0wzllPSImTtIlILRkDkokjO1vKAG/mcycc=;
        b=vCfxOE7a6L9Lo+Um/XZfNZJFbeOe8EPo37ONZIMvCkR2YJkF5FJ49IH9PmLnxYo4uc
         zvVAleSZEVJ+PWfegAVUkS+u54dpDJXjkUOVhzcu6Hl2ehER/kFHRkXmsIrxyyhW17+2
         61wG3BDeQhkCOD+5Ws5NieZzhW62ufWnHFBc/cmDYBlCXkiAjLIsjDN+Ln3c2us9i2XQ
         eZ9x/x0jHLaZxqSPmN+bOmH1QeGI8WljVw0Jxrj5CMDNaLyc0biisekdPJ/ePYOdd8gL
         nokbjpfw7uj+4UAm+tvkoFWbWhP58+SnLQiDFm8OGxXNxbB93xODCh9ux+scmtTclwIG
         7Q8w==
X-Gm-Message-State: AO0yUKWmbarKKlv/c4owMV0f/yP+34m7r+YZB9JRhP5QGpPbumFrYesW
        ZkvFeSa3Om98cKku2nDVt4htq8R3q7il2b32QmXe/Dh00WNOfQ==
X-Google-Smtp-Source: AK7set/4y2CsFDtk/+kTuBAhzQVJG7wyQ420WDaIir/XDYYqlinCDd4UHs4pAft4BmRED3pB7RYXWp8GMSPeHGfZO/g=
X-Received: by 2002:ab0:4ad5:0:b0:68b:90f4:1d8c with SMTP id
 t21-20020ab04ad5000000b0068b90f41d8cmr3405014uae.1.1677658424931; Wed, 01 Mar
 2023 00:13:44 -0800 (PST)
MIME-Version: 1.0
References: <20230228104741.717819-1-angelogioacchino.delregno@collabora.com>
 <20230228104741.717819-19-angelogioacchino.delregno@collabora.com> <CAGXv+5GYc1X0J7tXfqQ0yj5rCFgEcTN5kwB4720vCkNvEKgiOg@mail.gmail.com>
In-Reply-To: <CAGXv+5GYc1X0J7tXfqQ0yj5rCFgEcTN5kwB4720vCkNvEKgiOg@mail.gmail.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 1 Mar 2023 16:13:34 +0800
Message-ID: <CAGXv+5H+KkLFQD9D9Op+=XjEcBd+ehGWGq--E28A94=8pvmLEQ@mail.gmail.com>
Subject: Re: [PATCH v3 18/18] arm64: dts: mediatek: mt8183-evb: Override
 vgpu/vsram_gpu constraints
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 1, 2023 at 12:54=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> On Tue, Feb 28, 2023 at 6:48=E2=80=AFPM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> >
> > Override the PMIC-default voltage constraints for VGPU and VSRAM_GPU
> > with the platform specific vmin/vmax for the highest possible SoC
> > binning.
> >
> > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@co=
llabora.com>
> > Suggested-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
