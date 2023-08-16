Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E50177DF9C
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 12:51:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234579AbjHPKuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 06:50:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244201AbjHPKuf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 06:50:35 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A002718
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 03:50:06 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6bca38a6618so5364501a34.3
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 03:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692182930; x=1692787730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t5m5UzpJlRLvwZeV0suPAl3MejkzVUOiX3hWF9GgbnY=;
        b=SIZLCfPs9aH+YpE486zaXOdb61mkGGRDh9Y8KutGAeY79M/EAAssMwEC1dEJFKORid
         aS8a3Nq4ZpKa0X48K9jI3bApIT3qdGNFG7llYR2u7+sipMAY5fnjL83o6jOE/lWM+g+W
         HhSkWp5jOVUkOIpugI9BUetX2MdSzoOqA3U7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692182930; x=1692787730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t5m5UzpJlRLvwZeV0suPAl3MejkzVUOiX3hWF9GgbnY=;
        b=Yhuuy6u5u9FNlkQmtr3bFdTtuq6H7QEkUX+RhUnzlZzJ6CCse1r9JhgY16QbcUyg1A
         RLLE7wwmVFl7kcvpYOyEuS4nPDio7sCCO49xgH4U3Q36SGJSdQWt1a9+Smx9ky+4rCBt
         yz0OkLFzlN11e+YLIAaQUqvrjdaNZ6U9oS9c6bfET7Rkm+Rmjeq1wOQxNuawSFSfA4GO
         F9iRTZd9cAlzRyBm2F3zIAKkiXbxGaw2uLN0xzTrUIOxYTffoJ/e6DxG21MRZew/++nm
         ApuXRKrsjzJx+QUa+S1gMF9wlFd+7zi77+ykP7TM+xBtCO7FG9TeV7XXtDoJGFEmt3FI
         ONUg==
X-Gm-Message-State: AOJu0YymuxLwCm4C770XjDmAsEQ7xltOzo/xYBcF8SE8SxSWCAphDRO4
        7NCUvF3PIBfQCnDGi4SIg6ChySIWHsIOBeghTpVTIw==
X-Google-Smtp-Source: AGHT+IHw+Hn5+HaHJOx4yIHLzCbxLXGJi1570SOwBYj4CutbHBvqVodnckZLDA7MEapvrG2f0e1muho0h/AXY5oEx2o=
X-Received: by 2002:a9d:77c9:0:b0:6b9:1917:b2f3 with SMTP id
 w9-20020a9d77c9000000b006b91917b2f3mr1353972otl.33.1692182930471; Wed, 16 Aug
 2023 03:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230815154412.713846-1-hsinyi@chromium.org> <202A0C36-D1F6-4BB4-BDEC-F36A76B757A2@walle.cc>
 <CAJMQK-iw7ikyHKPPC8+hnpXuRq-_nq_N+21BKgWxD2nx=vAeJA@mail.gmail.com> <fb85c288-2ea9-3343-ff19-cd58940b44ec@linaro.org>
In-Reply-To: <fb85c288-2ea9-3343-ff19-cd58940b44ec@linaro.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 16 Aug 2023 18:48:24 +0800
Message-ID: <CAJMQK-h+j-uFvqqC9-ri_ciTBV=v5F8u2u6SBSArD8m+dONFyg@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add a property to override the quad mode
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Michael Walle <michael@walle.cc>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        "Miquel Raynal )" <miquel.raynal@bootlin.com>,
        "Richard Weinberger )" <richard@nod.at>,
        "Vignesh Raghavendra )" <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 16, 2023 at 3:19=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 15/08/2023 19:21, Hsin-Yi Wang wrote:
> > On Tue, Aug 15, 2023 at 11:59=E2=80=AFPM Michael Walle <michael@walle.c=
c> wrote:
> >>
> >> Hi,
> >>
> >>> On gigadevice gd25lq64c, the quad mode is enabled after BFPT is parse=
d.
> >>> According to datasheet[1], Quad enable (QE) bit needs to be set to 0 =
to
> >>> use write protection (WP) pin. It also recommends setting default val=
ue of
> >>> QE to 0 to avoid a potential short issue.
> >>
> >> So you are using either dual or single io mode. Why can't you use the =
device tree property spi-{tx,rx}-bus-width?
> >
> > I tried setting spi-tx-bus-width and spi-rx-bus-width to either 0 or 1
> > and WP still doesn't work.
> > For this chip, quad_enable will be set to spi_nor_sr2_bit1_quad_enable
> > (QER flag is BFPT_DWORD15_QER_SR2_BIT1_BUGGY)[1]
> >
> > spi_nor_write_sr_and_check() calls
> > spi_nor_write_16bit_sr_and_check()[2] and the function sets QE bit if
> > quad_enable is not NULL.
> >
> > [1] https://elixir.bootlin.com/linux/latest/source/drivers/mtd/spi-nor/=
sfdp.c#L575
> > [2] https://elixir.bootlin.com/linux/latest/source/drivers/mtd/spi-nor/=
core.c#L879
> >
> > Setting spi-{tx,rx}-bus-width still falls to this function and cases.
>
> with tx/rx bus width =3D 2, how quad mode is still possible? IOW, why do
> you need new property? You wrote here about driver, but I ask about
> bindings.
>
This may be a bug in the driver that setting spi-{tx,rx}-bus-width
still enables the QE bit. I proposed another method in the chip's
fixup to deal with this issue instead of creating a new binding
property.
v2: https://lore.kernel.org/lkml/20230816104245.2676965-1-hsinyi@chromium.o=
rg/


> Best regards,
> Krzysztof
>
