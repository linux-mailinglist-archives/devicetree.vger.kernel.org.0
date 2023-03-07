Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 515896ADA37
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:22:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230335AbjCGJWz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:22:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230358AbjCGJWv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:22:51 -0500
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 492DE53718
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:22:37 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-536af432ee5so234884797b3.0
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 01:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678180956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JYW/40WXc1mZFSpERayfTf6+aBHoaVcoZeiR5Zlwa5k=;
        b=OD1tiV5gfwq1q30wOH/HZwVUKillOPvqvmg+zHS4gzKsQo2PAhv32wRMkqMwr0riXU
         M12yyfFTeiR7ipa5Jy6dagZNn1RUquURdzmlh8SjnfOIIBQv7/NbJj9R3UrL03xeX+ur
         z0oiiQqZjR7hsWuPFIplhJuPlJvmHjc6c3x/URIVHraoVPFPQJHFlaIuPUdyL98T5lyr
         lL2LLvmD8lXOr1S9sqsq65QBP8OdzyRXmCjzrZnJKx1JjW53xnp52Qy/Q8QfggNDozQC
         fMQtpdQzu4gOp5JnSP3rqjWqqIZOLU5Wb0H6UvB5t4dS+/bxklQv0kzEmFgAXLvY1kVF
         U8qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678180956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYW/40WXc1mZFSpERayfTf6+aBHoaVcoZeiR5Zlwa5k=;
        b=oURvCcOCTeGVCOIeKNGLXGu6CWBOMhCyYhuSUvB22JbvMUE9BHzz5GoCJeGRwF3pLG
         PzLZ3MX99BRqMyYHAet4Ic1wmklemUa1cliVEhXVvWGloDVcAtSgqdtx9cvqbrrcaHWG
         6G84CB8sASOhhCsTUKyFOUxmA6C0rQxu9uNeAkBam4Vp6IlPyqwUNjR9zzSx4AKQv6fS
         RhyjvFfPRbNHoHKr3pFb2UFQGNZ23kjOwdOKTqqW3vEYziu8X5YpP/c4GAUIFExptQCY
         00OYSLE3XsMeUxyBEgQiLQ69vZkL9wx5ZLWVvCDUDW33bLgUADV21gNifxmA082MXjf8
         TWAg==
X-Gm-Message-State: AO0yUKWeRZm+EovVt1a61lulBDFous5Hm4jI+An1CgK04MyBeP8nJ8L9
        7pAeRx8rQNJ4MUhsS2JeM3L0FB8XXc4a8XBL97Di1Q==
X-Google-Smtp-Source: AK7set8aVuKJvLzBh+CzD4AGBJpKjDwrv/rCWM61y1Bvum+SRltrS9eFgNVY29/1Yu+ZTWWFG05LKOPXxp39Q0Hdhlw=
X-Received: by 2002:a81:ac4b:0:b0:533:9ffb:cb12 with SMTP id
 z11-20020a81ac4b000000b005339ffbcb12mr9037322ywj.10.1678180956477; Tue, 07
 Mar 2023 01:22:36 -0800 (PST)
MIME-Version: 1.0
References: <20230220023320.3499-1-clin@suse.com> <CACRpkdYknZo3Q7_CeSkOL2XwwAmKERskx24o-toaVy=rs0Yf5Q@mail.gmail.com>
 <ZAZ3JZQ4Tuz5vyH1@surfacebook>
In-Reply-To: <ZAZ3JZQ4Tuz5vyH1@surfacebook>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Mar 2023 10:22:25 +0100
Message-ID: <CACRpkdbksZ59ndrRAQpTGa01GTq4c_2EcOQ2mtz1PLjqU8_nug@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add pinctrl support for S32 SoC family
To:     andy.shevchenko@gmail.com
Cc:     Chester Lin <clin@suse.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, s32@nxp.com,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Larisa Grigore <larisa.grigore@nxp.com>,
        Ghennadi Procopciuc <Ghennadi.Procopciuc@oss.nxp.com>,
        Andrei Stefanescu <andrei.stefanescu@nxp.com>,
        Radu Pirea <radu-nicolae.pirea@nxp.com>,
        Matthias Brugger <mbrugger@suse.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 7, 2023 at 12:28 AM <andy.shevchenko@gmail.com> wrote:
> Mon, Mar 06, 2023 at 02:28:56PM +0100, Linus Walleij kirjoitti:
> > On Mon, Feb 20, 2023 at 3:33 AM Chester Lin <clin@suse.com> wrote:
> >
> > > Here I want to introduce a new patch series, which aims to support IOMUX
> > > functions provided by SIUL2 [System Integration Unit Lite2] on S32 SoCs,
> > > such as S32G2. This series is originally from NXP's implementation on
> > > nxp-auto-linux repo[1] and it will be required by upstream kernel for
> > > supporting a variety of devices on S32 SoCs which need to config PINMUXs,
> > > such as PHYs and MAC controllers.
> > >
> > > Thanks,
> > > Chester
> > >
> > > Changes in v5:
> > > - dt-bindings: No change
> > > - driver:
> > >   - Refactor register r/w access based on REGMAP_MMIO and regmap APIs.
> > >   - Tag PM functions with '__maybe_unused'.
> > >   - Add mask check while parsing pin ID from a pinmux value.
> > >   - Simplify s32_pinconf_mscr_* functions.
> >
> > This looks really good any no more comments arrived, so patches are applied
> > for v6.4!
> >
> > Thanks for your work on this so far Chester! (I suppose there will be
> > maintenance
> > for this family going forward.)
>
> Can you unpull this?

If need be.

Are there serious issues with the patch set such that they cannot be fixed
by add-on patches?

Yours,
Linus Walleij
