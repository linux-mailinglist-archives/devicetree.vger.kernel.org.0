Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9183717896
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 09:48:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234742AbjEaHr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 03:47:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234659AbjEaHr6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 03:47:58 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC5E4125
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 00:47:55 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6af6fe73f11so4279644a34.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 00:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685519275; x=1688111275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fp09oC0XYB4JLRhyX/gn6pp2c8Dkb0vyY2wv2QtPbqo=;
        b=dHEcw0s50T0TavPx92KHGlt9fp0NKlq/J+csm/EiO82Ju0SOcL7jA0MxjB/iE46/ap
         Tk5ahhLN8HaYB3aWi3hZC/N+3W4ivoJ7LOT4H+Cc/YYlp9EwgnnHR7ZtsMN7DmQBKOLI
         6YeTmONHbCw9vaHbBNnyK0N/c4jiD6tcdvRgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685519275; x=1688111275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fp09oC0XYB4JLRhyX/gn6pp2c8Dkb0vyY2wv2QtPbqo=;
        b=XjfoE4HGpsV3Xq8zU1ST8KE4QYgoz37+hcINEKudcR+YiMk6JBczt+aZeQE260K+AQ
         NcXFvy0kAKIu5nsUifjTPnD7gsuFoqFmt7OxSF1ArJxnIKo9GDGj369IAag8DHlzKDFO
         BzGzFHULUob0qC799ZcXzDr6uEYX5whYcn+8aHvJHFaH8sYyhDvIHynNKbr0drKP9gZb
         3OZGkTaE3E8mTGVh4GRp2vx1noazXkiAlLVXfS+rIpzJvL+Uk4erXhwSYeXtv3tk37S2
         da3zmYvaW4HXglYdQcaYjM04JlkNy3gfwpMM1EPyHX+MkMfXkxTa9f9Ix66lcEVvP1BD
         CdPw==
X-Gm-Message-State: AC+VfDyrjZBOU/TJ+vcgrpCAu/2qxJ2PP5pQbCaeIQmRSrOx9jVS0XSM
        rw/IbJn9E0x+pR7AdwMFpx4Q7js/KwGEXFwwwX/MPA==
X-Google-Smtp-Source: ACHHUZ63/Qzq4BBuqzthn/qLvJxVn4qXwUCGwkGxl3urL6Mv36TaDqIJZrF0tqMfyK7JNofIH0vkQgnak10KDGpNp+A=
X-Received: by 2002:a9d:5616:0:b0:6af:74c7:e949 with SMTP id
 e22-20020a9d5616000000b006af74c7e949mr1401878oti.29.1685519274922; Wed, 31
 May 2023 00:47:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230220093343.3447381-1-hsinyi@chromium.org> <CAGXv+5E4_k1jKTnninYkuT6Tf=skB00AowHpM+hc8j_VFM-RfQ@mail.gmail.com>
 <CAJMQK-hnK69iVJhqW_8UtKHHLQ3608Cb74Jk_b+xHH0BBu4yVw@mail.gmail.com>
 <d39b0e77-e013-fe7e-9523-9bdbaacb5853@collabora.com> <90ad9b86-e03c-8e80-88d6-d514bbe9cacd@gmail.com>
In-Reply-To: <90ad9b86-e03c-8e80-88d6-d514bbe9cacd@gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 31 May 2023 15:47:28 +0800
Message-ID: <CAJMQK-jmT1YDf0y6FYUUFHkQ0b-ZHD9S4X2zpkrmNoz5Dz4ctQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183: kukui: Add scp firmware-name
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 31, 2023 at 3:30=E2=80=AFPM Matthias Brugger <matthias.bgg@gmai=
l.com> wrote:
>
>
>
> On 30/05/2023 09:12, AngeloGioacchino Del Regno wrote:
> > Il 30/05/23 07:12, Hsin-Yi Wang ha scritto:
> >> On Tue, Feb 21, 2023 at 11:25=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.=
org> wrote:
> >>>
> >>> On Mon, Feb 20, 2023 at 5:34 PM Hsin-Yi Wang <hsinyi@chromium.org> wr=
ote:
> >>>>
> >>>> The upstream SCP firmware path is /lib/firmware/mediatek/mt8183/scp.=
img
> >>>>
> >>>> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> >>>
> >>> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> >>
> >> hi Matthias,
> >>
> >> Kindly ping on the patch, thanks!
> >
> > Agreed. Matthias, please pick this one.
> >
> > Hsin-Yi, can you also please send a version of this patch for stable?

I sent a patch based on stable:
https://patchwork.kernel.org/project/linux-mediatek/patch/20230531074421.88=
8652-1-hsinyi@chromium.org/

> >
>
> Applied thanks!

Thanks!
