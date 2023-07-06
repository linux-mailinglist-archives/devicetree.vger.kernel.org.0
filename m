Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FE6E74A460
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 21:26:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjGFT0O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 15:26:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjGFT0N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 15:26:13 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32A251BD3
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 12:26:12 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-992dcae74e0so130777966b.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 12:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1688671570; x=1691263570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QwiJDSaQJG4lpB+RWHzg/aQo8bzBN6e2ZdzlXuST6zU=;
        b=I46+KFW7OEboHnlAREa6XAM6C6bxDJFGnR4lUtJu6MoMpPhcMUaYLNeVdNfKlSqHnX
         0aKT8S3D0y7ysuZQeuoQSAA6Yxvo2AG7gWr1baGFzhNY5/tACO2vjFe8nw6vA2juV7lR
         MBx0kabtFf7WuM41nFQE+ZQhTTQXwylRoQ/24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688671570; x=1691263570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QwiJDSaQJG4lpB+RWHzg/aQo8bzBN6e2ZdzlXuST6zU=;
        b=Eefn3dufKYyNISIJMpZvAADsinD5+7Skq6h8xZG1xvZZlp6Mbsl5RXDY/X/T90AS5P
         6f5czlrP6vyJOQqX8gZ7p0QZ2LniQeyrQP460/pXHJA1t6lK12lDaEc4i0EaujUzVNk8
         7gsen6A3+cZGwizqvMCeQTQ958o+mjwqAyPiKxPBgwcX5bpluS2DspMJX63oODGxfrd5
         e8dgtQiNyD4y11emejzxs1NxDuRjEtaUEbKnsrR03hkEwfsnUZ5oeHxZcPPJgLIaBBCx
         YlCZaY778dp5mI22X8PIwghHchzeokXtozQx3xP1o1ddn5AMQQxRGXp1pe8X89/ATNjx
         nsMg==
X-Gm-Message-State: ABy/qLaxxDaUtQB6Yu6QAow7RiPcSwyxOYYkyixsZaRDHA2QB2n7cUrR
        dWk1o6/ilBM9hDQtRGnWU43JIJPRpkApz7Wwnh4/NCPR
X-Google-Smtp-Source: APBJJlHJLzo021XxGsyUZ4237/5Qzp5tkzvR16E3JQrPxggkDHGRxRmE1F3tCUQuTTL/gC3XR6Z0WQ==
X-Received: by 2002:a17:907:b8f:b0:98d:76f8:217b with SMTP id ey15-20020a1709070b8f00b0098d76f8217bmr2004142ejc.73.1688671569926;
        Thu, 06 Jul 2023 12:26:09 -0700 (PDT)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com. [209.85.208.47])
        by smtp.gmail.com with ESMTPSA id q17-20020a17090622d100b009934855d8f1sm1162647eja.34.2023.07.06.12.26.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 12:26:09 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-51ddbf83ff9so2115a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 12:26:09 -0700 (PDT)
X-Received: by 2002:a50:d0d2:0:b0:51a:1d77:e69d with SMTP id
 g18-20020a50d0d2000000b0051a1d77e69dmr11060edf.3.1688671569035; Thu, 06 Jul
 2023 12:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230627050148.2045691-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WR=fnhCxC37Eo3hinh2MV=eTNuXG+GrwgR6K_pV4Rbaw@mail.gmail.com>
 <CAD=FV=UcFn7Wq_Ock6RCT0mPhgjpJwF7dJjcbwcoESW9nni62Q@mail.gmail.com> <CACRpkdb_6n+CKUHYu5nAtCEKK_VwO2hGUUCHny56oSYt_vTfLw@mail.gmail.com>
In-Reply-To: <CACRpkdb_6n+CKUHYu5nAtCEKK_VwO2hGUUCHny56oSYt_vTfLw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 6 Jul 2023 12:25:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WwRiAzfV0Unk8ipnWJkTiDYraJHAwH+Oq5Q0=4TJ6ESA@mail.gmail.com>
Message-ID: <CAD=FV=WwRiAzfV0Unk8ipnWJkTiDYraJHAwH+Oq5Q0=4TJ6ESA@mail.gmail.com>
Subject: Re: [v2] drm/panel: Fine tune Starry-ili9882t panel HFP and HBP
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        neil.armstrong@linaro.org, devicetree@vger.kernel.org,
        sam@ravnborg.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, hsinyi@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 4, 2023 at 12:39=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> On Fri, Jun 30, 2023 at 2:42=E2=80=AFAM Doug Anderson <dianders@chromium.=
org> wrote:
>
> > ...this means that it lands in drm-misc-next-fixes, so I've pushed it t=
here.
> >
> > 59bba51ec2a5 drm/panel: Fine tune Starry-ili9882t panel HFP and HBP
>
> I guess that means we need to merge drm-misc-next-fixes back to the
> drm-misc-next branch so that I can rebase my series breaking out the
> ili9882t driver to its own file?

It looks like this fix is on its way to the main DRM tree:

https://lore.kernel.org/r/20230706112203.GA30555@linux-uq9g

Presumably if we wait a few days things will sort themselves out. If
something needs to happen sooner then we'll have to get the drm-misc
maintainers involved. Probably at this point it makes sense to wait?

-Doug
