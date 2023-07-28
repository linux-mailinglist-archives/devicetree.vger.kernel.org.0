Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D59A766527
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 09:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234069AbjG1HUt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 03:20:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234080AbjG1HUs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 03:20:48 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43C1B2129
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 00:20:45 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b974031aeaso27010901fa.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 00:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1690528843; x=1691133643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LkEJgaTxs/ddkAEFRCk2052gAcbygjssKU7AjsGzwec=;
        b=PKQK3qh1VT8jWnxGjPqzEVsJuktxUM1+9+LsRoGobu0ema7mHkV2H7s6B44fGP6u0y
         vYu6LWth0HrM+LQQpLoXSUx5GaLx8NtfKPAWlWnIYc0/RLtOewMQhwXBz2FShmr9NO02
         MYxGpnAgxWm1C1bmbIs+P8NwK/IwN99YZkfj/PnK7QNXzBTEWJyq3RY55mpICMpteKf7
         IcztGUSxxtggRc0qNgriTRKa9zOJmvGxUIbPZ16XNNAeAB0vyYPHFgKFibRMZPxwaNOu
         MiSVRpatWcyzTLZjpEQyCYAX6xzBAw4hIaD9CbgmNd1rOnYRTeSrtCIzXGsUOXLf0vta
         kmng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690528843; x=1691133643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LkEJgaTxs/ddkAEFRCk2052gAcbygjssKU7AjsGzwec=;
        b=kY4LgoWDpaTATSeqgSAR8RkySfWJuR2QHBX+t6HjwfZiAocmWnx5zYsdW6LLdYcdUH
         IAJ6TU2DfBSP9FulgdFdS0RGmV0YGWb0C/A5BwnpmYh+8qRDrLZAYs2x73Gx4GkiKvjB
         0k8gPwVr+qLvhxwnY2VaNjQ/mHnBTCnJCsfvW44shmIz4w38MAc5JRlt0q3mRB7pf4gE
         JJ0772U0Cu/RvPQoCf4t/7juIpxNekgK2Hh87C9g2C2p7T0uox+EhaFLUcW5kIWVGTHl
         SAb6FuMQabQQLhRuO2+jO/adkcKLbbXRLP0JEb9tsre50m4cjx8oUrfsCqvpYkpAcufr
         5bEw==
X-Gm-Message-State: ABy/qLbP8d6a5DkgTPG2/fb7Q84veCPP5J5dXWa3eG7Wm95sjMzCW4mo
        jMjfqM9g3Fm7eY5TCAhlsebKDtGJIl17DTkBpCPA5Q==
X-Google-Smtp-Source: APBJJlEYv4VXz8ssay967YiIFAwaE1Bq5ymyjMJx4WO3gnt0z/waK2x38yUfDHp5coKHkN/e3yk5XwZu3CgAkivseE8=
X-Received: by 2002:a2e:84c6:0:b0:2b9:ac48:d804 with SMTP id
 q6-20020a2e84c6000000b002b9ac48d804mr1129754ljh.38.1690528843528; Fri, 28 Jul
 2023 00:20:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230720135125.21240-1-eric.lin@sifive.com> <20230720135125.21240-2-eric.lin@sifive.com>
 <cbf0a8fd-3479-1684-fe90-81f2159804ef@linaro.org> <CAPqJEFr5h+5+F4TdNuRMaWsrmeedbfGgbgd9wh8sUUQsj2Pw-A@mail.gmail.com>
 <20230728-penpal-prelude-29a952c03827@wendy>
In-Reply-To: <20230728-penpal-prelude-29a952c03827@wendy>
From:   Eric Lin <eric.lin@sifive.com>
Date:   Fri, 28 Jul 2023 15:20:32 +0800
Message-ID: <CAPqJEFo3LPuwm6dtgdMP243jYtT23LjaFvXDVQiF876WmOw1bQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: riscv: sifive: Add SiFive Private L2
 cache controller
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        zong.li@sifive.com, greentime.hu@sifive.com,
        vincent.chen@sifive.com
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

On Fri, Jul 28, 2023 at 2:47=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Fri, Jul 28, 2023 at 02:01:28PM +0800, Eric Lin wrote:
> > Hi Krzysztof,
> >
> > On Fri, Jul 21, 2023 at 4:35=E2=80=AFPM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> > >
> > > On 20/07/2023 15:51, Eric Lin wrote:
> > > > This add YAML DT binding documentation for SiFive Private L2
> > > > cache controller
> > > >
> > > > Signed-off-by: Eric Lin <eric.lin@sifive.com>
> > > > Reviewed-by: Zong Li <zong.li@sifive.com>
> > > > Reviewed-by: Nick Hu <nick.hu@sifive.com>
> > >
> > >
> > > ...
> > >
> > > > +properties:
> > > > +  compatible:
> > > > +    items:
> > > > +      - const: sifive,pl2cache1
> > >
> > > I still have doubts that it is not used in any SoC. This is what you
> > > said last time: "is not part of any SoC."
> > > If not part of any SoC, then where is it? Why are you adding it to th=
e
> > > kernel?
> > >
> >
> > Sorry for the late reply. I didn't describe it clearly last time.
> > Currently, we have two hardware versions of pl2cache: pl2cache0 and pl2=
cache1.
> > The pl2cache0 is used in unmatched board SoC.
>
> Wait a second, does the fu740 on the unmatched not have a ccache as
> it's L2 cache?
>

Hi Conor,
Sorry, I misremember the L2 cache on the unmatched board.
I just check again. The unmatched board L2 cache is ccache not
pl2cache0. You are right. Thanks.

Best regards,
Eric Lin

> > The pl2cache1 is
> > utilized in our internal FPGA platform for evaluation; it's our core
> > IP.
