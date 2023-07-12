Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8A67750FB6
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 19:34:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233233AbjGLReb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 13:34:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233278AbjGLRea (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 13:34:30 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39DF41FDE
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 10:34:29 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b703a0453fso116593791fa.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 10:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20221208.gappssmtp.com; s=20221208; t=1689183267; x=1691775267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HT8r/UmjyiV4Mg80v9aMCsPu5X2SzHMkE39zee8yF1M=;
        b=CoRZfqI5+Ojs2K4mfukJbVoE0BjZCTjMaSlrU8mQ4EdO+67NSTRtK3xWH0nHC43nXp
         euuL+t/OQcAVBrHuUVXlBo4vtldRc1UymEwMS/vNlljCo+9HMl0fOlVLPsZg+WcCZQmR
         IyAuwzgWdqV1l6+din2C5Pm1J8LR51nDtOe0xvMxlSvTiCjGDKqiBL4rf9C1L8EypJAz
         LBlEq0RCpgaOC7nPxJFQlkOxrw7f8+uVCHk0G3OpyOkPwOJ38lH0PKrj611s1A4cFXlE
         3WySIS/LsYEub/OKfEtzmeL76FA7wBLOX4hmM8ciOEsT+EHjuefK4ncqq2s5TEAlTwtG
         hTsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689183267; x=1691775267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HT8r/UmjyiV4Mg80v9aMCsPu5X2SzHMkE39zee8yF1M=;
        b=SFcyuDWfxQV3M0jPicVehN3VikdZ3ll27Nolx5W4NFqqZDwpU8i5BxCWnS7/oPooOQ
         /Pp+XCErIIj118izzSNddVd19BsA4dDUAVUNxWBQpRBVgT5BEeNTIR3cnfFqKAuV1q35
         KKKkLJ5h+A+nN1Yl+6FeRpuMXDLy4Y7W4YJOg4Qb6ZmEC98FxCj4L68KVj/G71EA/Krc
         rN0hciVMpoX6UY56ivOLR76Y4qqXvZBvalcQTJcjfeDPvhYEoh9vZPUSeCRrj8l3mtp3
         nn4Kds7x89U6aBf+9pcvw1jqa+cw0srMUgs+e78LqrFhc2Rz6KQtQRc97ZnwHk1LeQiI
         iPBw==
X-Gm-Message-State: ABy/qLZr+AkmoIe7tuAeB8/9xb+qh2l1tdx/R/eqjhYFMrsaJEqWS0sn
        xe5o78AuO2tNf5gz04fKtUULodN6E6NDorwu+Awl8w==
X-Google-Smtp-Source: APBJJlGKRtWIKYFd9l6dVbzYKtlr4dgG9la2quqkLfXgUoiM7QU4QOmqaXf35MMSaKUb+r8Mo83FFJrwM91ICm+w4uI=
X-Received: by 2002:a2e:b045:0:b0:2b6:e618:b597 with SMTP id
 d5-20020a2eb045000000b002b6e618b597mr19138758ljl.28.1689183267182; Wed, 12
 Jul 2023 10:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230706081554.1616839-1-alex@shruggie.ro> <8c188fbd-eaa4-4063-9153-d7b8c2772f8b@lunn.ch>
In-Reply-To: <8c188fbd-eaa4-4063-9153-d7b8c2772f8b@lunn.ch>
From:   Alexandru Ardelean <alex@shruggie.ro>
Date:   Wed, 12 Jul 2023 20:34:15 +0300
Message-ID: <CAH3L5Qrbrq0eAV762tQr_WWOS7G2Lxk3Yvz8egK=0FZNBE3NfA@mail.gmail.com>
Subject: Re: [PATCH 1/2] net: phy: mscc: add support for CLKOUT ctrl reg for
 VSC8531 and similar
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, hkallweit1@gmail.com, linux@armlinux.org.uk,
        olteanv@gmail.com, marius.muresan@mxt.ro
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 8, 2023 at 9:28=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, Jul 06, 2023 at 11:15:53AM +0300, Alexandru Ardelean wrote:
> > The VSC8531 and similar PHYs (i.e. VSC8530, VSC8531, VSC8540 & VSC8541)
> > have a CLKOUT pin on the chip that can be controlled by register (13G i=
n
> > the General Purpose Registers page) that can be configured to output a
> > frequency of 25, 50 or 125 Mhz.
> >
> > This is useful when wanting to provide a clock source for the MAC in so=
me
> > board designs.
> >
> > Signed-off-by: Marius Muresan <marius.muresan@mxt.ro>
> > Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
>
> Please take a look at
> https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html
>
> The patch subject should indicate which tree this is for,
> net-next.

ack
will mark it as such on V2


>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
>     Andrew
