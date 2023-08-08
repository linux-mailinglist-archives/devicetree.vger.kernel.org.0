Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 248167740BB
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:09:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232569AbjHHRJQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:09:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232608AbjHHRIl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:08:41 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AE1835AF
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:03:27 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1bba04b9df3so51066855ad.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691510580; x=1692115380;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h1jWjdgcMtkS8z/zWGRD8ihE010a+ozHwBFvKhqo23k=;
        b=iD0lncGZOkTl+BiKGel6wpr6EKDuMNynIMtn+oQZIpLh8cU+xsYmdhmknxlKTc/vih
         MZT4NzzyF+F2Nvo/UepvED0B/9GbErK0G6fxix7l0CSpG2glQchNQjaMiflP96Ueq22r
         Rkkah6Yu9Wn1oNAUbqaJetOzp10MOD9eC+uX4AhB5AM/POvDJNRjC/8ELLBiHSNSOiyf
         zLK1UeksO675OnWLOgzWBBLHpjs/NDNf6wM7ywugwaxvTx40aKybftAhNMezxxA3s2zx
         xrjohfuohhfX5rEvDTQ0a3SIqZq6J1Rb3PWnuBeVE8oupFcDA563TuG8xu6iX0H4hOxi
         vMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691510580; x=1692115380;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h1jWjdgcMtkS8z/zWGRD8ihE010a+ozHwBFvKhqo23k=;
        b=IXcZJVsoVg1z7CmBpC3XwxoKBdd76DYf6vveKVrwCcYfyVNXDjyoCSxfUDAQzppHHc
         NDLo1V5dKwdTkIrVRv3b+q2O+5Bzc3QCdXY1VmHS5QGbbwS2W9caw3KQxRY+q+9Wx071
         3OmpOTVZ9f8Poq3S7tRENWIK+ypu9EKPCD1f+hAcbE2LUR7cQ48uNB1ARt8alcY2tuGz
         wj6fgmWE5rQxkINb6zOlSwUU7ogDHwgqAOj5v5xUWfcQSMvp9GQJSzcfhWMHtqn7yT4a
         v4GXRM+puryXQcZqiW8d+MjWNDfictJlMdMgF2IBt/nM/X43gfuLCwBjJE4jHdnAARRM
         ziGQ==
X-Gm-Message-State: AOJu0YxBVm68GLBpUhHgW20CNYqPzrxGB+tCw7eAuTNGxy959dRGv0Ka
        k9O/7Dj1gmrX6LyT1ja34163GiJ7YO86DsCGrxQzSV+X4YcriaWq
X-Google-Smtp-Source: AGHT+IE/m/O86+1kRO0A1smGtafOuu/t8la0fmfi5L2yurMCmbtwgtH9QAEdX4VoPwi2Z4+7B32cwpghwJP0TuXuQTc=
X-Received: by 2002:a25:5083:0:b0:d47:5994:c0fd with SMTP id
 e125-20020a255083000000b00d475994c0fdmr6301271ybb.49.1691485264866; Tue, 08
 Aug 2023 02:01:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230726150225.483464-1-herve.codina@bootlin.com>
 <20230726150225.483464-25-herve.codina@bootlin.com> <CACRpkdYXCQRd3ZXNGHwMaQYiJc7tGtAJnBaSh5O-8ruDAJVdiA@mail.gmail.com>
 <8f80edf2-c93d-416f-bcab-f7be3badf64a@sirena.org.uk>
In-Reply-To: <8f80edf2-c93d-416f-bcab-f7be3badf64a@sirena.org.uk>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Aug 2023 11:00:53 +0200
Message-ID: <CACRpkdYuJ+4hccip+m9SDv63DZQ1+knFnUm431Ki-K5qi49ExQ@mail.gmail.com>
Subject: Re: [PATCH v2 24/28] pinctrl: Add support for the Lantic PEF2256 pinmux
To:     Mark Brown <broonie@kernel.org>
Cc:     Herve Codina <herve.codina@bootlin.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Randy Dunlap <rdunlap@infradead.org>, netdev@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 7, 2023 at 3:10=E2=80=AFPM Mark Brown <broonie@kernel.org> wrot=
e:
> On Mon, Aug 07, 2023 at 03:05:15PM +0200, Linus Walleij wrote:
> > On Wed, Jul 26, 2023 at 5:04=E2=80=AFPM Herve Codina <herve.codina@boot=
lin.com> wrote:
>
> > > +#include "linux/bitfield.h"
>
> > Really? I don't think there is such a file there.
>
> > Do you mean <linux/bitfield.h> and does this even compile?
>
> #include "" means "try the local directory first then fall back to
> system includes" so it'll work, it picks up extra stuff on top of what
> <> does.  There's a stylistic issue though.

Wow that's a neat trick, I learn something new every day!

But we probably wanna be sure to get the system include.

Yours,
Linus Walleij
