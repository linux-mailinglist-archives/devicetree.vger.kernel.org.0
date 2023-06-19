Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4E89735542
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 13:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232508AbjFSLDH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 07:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232572AbjFSLCn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 07:02:43 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DB2CF7
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 04:01:45 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-bb2ffa1e235so3556725276.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 04:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687172504; x=1689764504;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFefUUpn1s6a7sJJBpPvKuxmZjNogUs0xOa+QZnqFw4=;
        b=SdRHTtBPelSA/gTKMa772eDiMFG1SNghdBlsxSp2Rs3hhMmvMPa5E9v+esTAq1QdY9
         K+406rprsK8aqTaDcp4fuD4yp7bRyTcDqvMkluqA25WjKVctNPcDX1Dki7Pxn2HNvoN+
         eLUXkp/PNCHCRtCB46RVh05uT/QqpmBM9ulnIPwM2kbhjNeZOSubJROQl6QaPGQcLsdh
         Umo2XYB6sEotu+XeeQR0tOLvaQOPTdGXyLGUFYRm3W/swUNF4R4fuTOH97GOd/snVCfZ
         kccZU4FM4PRr7biN4qCdp1Fh26xz386blriwRdYO+rOtPaK8vTFudKLF6UTxcqSLR5av
         GXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687172504; x=1689764504;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JFefUUpn1s6a7sJJBpPvKuxmZjNogUs0xOa+QZnqFw4=;
        b=M3TryvKkmejukjRRdYfYMYc/TGToKqAdTuT14Hx+MB0R8lheh71O5fGOgdUZdg42aK
         LxV70jV/sp28A8RaIS1Jgbg/jlazQKOb33NeNZplnsVyNTsM8mGQXPspAtvk91NnZ8ti
         AqriacuzsIh+d41IrJJiCKFDvRBR5/rKos2GRD8XgKVAva03FMAbaOVe6CYBEgiBjSVy
         wA+nYo76AdHkuqWEnLoob6H2FKEsbout9WMPvrjalYLNPjrxa7EZoVBG1SkDyNFwIbnp
         872sX32L7M94AbkpAKHemlbDXthL9/vy34VrDnGnUxgqLLmcl/Ln+zT0pgEcgRB4lgO5
         FMRw==
X-Gm-Message-State: AC+VfDxmQT/04XSHhE5GkcRuMbgi8gZ3OmkfvjgsEluLpiybRKfOp7dN
        pR1uIIWldb0kpf5bm/8Ghn8pjh4W+6SbFrivRWbH1iAL13VlqXER
X-Google-Smtp-Source: ACHHUZ6yXD1YVYZsgvEzYDtnMbGbh5qM6C4D1UWyOOsBUjPqOujWNbk15CRXAKCKjGRyVYZdQo7HBjCr2cb2DJnTlZA=
X-Received: by 2002:a25:d4b:0:b0:bc7:21f:4ef6 with SMTP id 72-20020a250d4b000000b00bc7021f4ef6mr6804080ybn.52.1687172504171;
 Mon, 19 Jun 2023 04:01:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230615092001.1213132-1-yann.gautier@foss.st.com>
 <20230615092001.1213132-2-yann.gautier@foss.st.com> <CAPDyKFqJsqmNzeRg8hj55yUEMSycOWsmKVKsMWk4Qu7Y8_dNzg@mail.gmail.com>
 <3b6781cb-8f59-e70a-bcf8-9fb48fa47cbf@foss.st.com> <266de9f5-826a-c1bf-be8d-11f5e27c87dc@foss.st.com>
 <CACRpkdZLtCwPQsPw_Lp3Ppw2ed6gOo+-82_y2WPVJ_oZUHbLoQ@mail.gmail.com> <78f8bd3d-c4a7-7383-441d-69cd8f5c30fb@foss.st.com>
In-Reply-To: <78f8bd3d-c4a7-7383-441d-69cd8f5c30fb@foss.st.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 19 Jun 2023 13:01:07 +0200
Message-ID: <CAPDyKFp5NwzyYJrX6zt9Gm0uNDy=YE3wuYR6dwq4mo1EncNwJQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: mmc: mmci: Add st,stm32mp25-sdmmc2 compatible
To:     Yann Gautier <yann.gautier@foss.st.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        linux-kernel@vger.kernel.org, Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Yang Yingliang <yangyingliang@huawei.com>,
        Xiang wangx <wangxiang@cdjrlc.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 19 Jun 2023 at 09:29, Yann Gautier <yann.gautier@foss.st.com> wrote=
:
>
> On 6/15/23 20:51, Linus Walleij wrote:
> > On Thu, Jun 15, 2023 at 5:19=E2=80=AFPM Yann Gautier <yann.gautier@foss=
.st.com> wrote:
> >
> >>>         - description: Entry for STMicroelectronics variant of PL18x.
> >>>             This dedicated compatible is used by bootloaders.
> > (...)
> >>>         - description: Entry for STMicroelectronics variant of PL18x =
for
> >>>             STM32MP25. This dedicated compatible is used by bootloade=
rs.
> > (...)
> >>> Should I remove (or adapt) both descriptions?
> >>>
> >>>
> >>
> >> At the time the patch was done it was really just used by bootloaders.
> >> But as it is now used in the driver for delay block, I should remove t=
he
> >> second sentence.
> >
> > Remove both.
> >
> > After "This dedicated compatible is used by bootloaders" there is
> > an implicit "in the SDK provided by ST Microelectronics", and that
> > is of no concern for DT bindings, which are (well, in theory) used by
> > e.g. BSD or other operating systems and who knows what they will
> > use and not, we don't put Linux specifics in there, neither Boot
> > loader specifics nor ST SDK specifics.
> >
> > At least that is the little bureaucratic ambition we have.
> >
> > Yours,
> > Linus Walleij
>
> Hi,
>
> Thanks for all the reviews.
> I'll update this patch in the v2, removing bootloader line and using enum=
.
>
> Ulf, should I send the new series now, or do you prefer to review the
> whole series before?

Actually I have already looked through the series and it looks good to
me! Please submit a new version so we can get this queued up for v6.5.

Kind regards
Uffe
