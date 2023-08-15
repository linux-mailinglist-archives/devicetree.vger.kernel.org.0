Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7398A77D0F0
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 19:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234120AbjHORYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 13:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238886AbjHORYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 13:24:11 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB78483
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 10:23:34 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6bc9d16c317so4512480a34.1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 10:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692120127; x=1692724927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MM9euffrr+V/1uq4G/APEfY56DZEA1NA8IRMKebX+WA=;
        b=g5L59vBep0r+/ftR+REWdJrS6nXl1s1W1biL/1VPx5rGQotoKUGwnHslJpYPCDZAOF
         AMKl73/0gdHxuwNmrwV/zm9rnTtp3RdE3KbtVT51jCPUaEI8vgdaIaOwRz0xKL2dSOrb
         aXO5MtavbYMX/1gkvgUnfTzMkPnbUln80MGfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692120127; x=1692724927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MM9euffrr+V/1uq4G/APEfY56DZEA1NA8IRMKebX+WA=;
        b=e2viWpQxAJbyKEQTq4K7q6ccAAE0vD2WG7IgHfMqsqMbD8jgQ9Vd1zILdjl/tF/sLZ
         Sdu1BXxnibRLUpdM9EKwCgm0GQGiwXWmP6YEAJCwI5aHiUtaTRrFcJjegGXESZjqfwld
         iuU6h7qjCdyrlobgVldyWB9xSXK9MehDYZtjX/GikjayhZERRSc/jkstGeF8z/T6P9yZ
         nLFOXWe90Bna8cZD++sa7koeQGI9TE+S5PMAqkICYCen/WRnZtp2p5BMefJHzpPx2NrZ
         WfLyj8xYw2s2FCledvmV4AWbdaGQncUako2olosOKfqPeTxT/x2ScwiOQCZhgSkI7Mvc
         IFuQ==
X-Gm-Message-State: AOJu0Yy/9QW52Poco/TDef6czD+b7NrUvsbflagW0F8EBvrEMVhqsJWq
        ybE8ZImKWj9IXzcnthrHvNKT9h3+9QjJ61asSDvtkxjLQRcCuJTJgXA=
X-Google-Smtp-Source: AGHT+IHgC2abKSNjRtwoIG7RPv/B0LrW+zFvRJCKfHpiwIXf0dkMMKZr7PMY0mgXqpc3ZPNNCyBizoMu6rSLlcxkZZs=
X-Received: by 2002:a05:6830:1e85:b0:6bb:1629:ab44 with SMTP id
 n5-20020a0568301e8500b006bb1629ab44mr11361067otr.7.1692120126879; Tue, 15 Aug
 2023 10:22:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230815154412.713846-1-hsinyi@chromium.org> <202A0C36-D1F6-4BB4-BDEC-F36A76B757A2@walle.cc>
In-Reply-To: <202A0C36-D1F6-4BB4-BDEC-F36A76B757A2@walle.cc>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 16 Aug 2023 01:21:40 +0800
Message-ID: <CAJMQK-iw7ikyHKPPC8+hnpXuRq-_nq_N+21BKgWxD2nx=vAeJA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add a property to override the quad mode
To:     Michael Walle <michael@walle.cc>
Cc:     Tudor Ambarus <tudor.ambarus@linaro.org>,
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
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 15, 2023 at 11:59=E2=80=AFPM Michael Walle <michael@walle.cc> w=
rote:
>
> Hi,
>
> >On gigadevice gd25lq64c, the quad mode is enabled after BFPT is parsed.
> >According to datasheet[1], Quad enable (QE) bit needs to be set to 0 to
> >use write protection (WP) pin. It also recommends setting default value =
of
> >QE to 0 to avoid a potential short issue.
>
> So you are using either dual or single io mode. Why can't you use the dev=
ice tree property spi-{tx,rx}-bus-width?

I tried setting spi-tx-bus-width and spi-rx-bus-width to either 0 or 1
and WP still doesn't work.
For this chip, quad_enable will be set to spi_nor_sr2_bit1_quad_enable
(QER flag is BFPT_DWORD15_QER_SR2_BIT1_BUGGY)[1]

spi_nor_write_sr_and_check() calls
spi_nor_write_16bit_sr_and_check()[2] and the function sets QE bit if
quad_enable is not NULL.

[1] https://elixir.bootlin.com/linux/latest/source/drivers/mtd/spi-nor/sfdp=
.c#L575
[2] https://elixir.bootlin.com/linux/latest/source/drivers/mtd/spi-nor/core=
.c#L879

Setting spi-{tx,rx}-bus-width still falls to this function and cases.

>
> >Add a disable-quad-mode property in devicetree that platform can use it =
to
> >override the quad mode status parsed from BFPT to use write protection.
> >
> >[1]
> >https://www.elm-tech.com/ja/products/spi-flash-memory/gd25lq64/gd25lq64.=
pdf
>
> should be a link on the vendor Homepage if possible.

Right, https://www.gigadevice.com.cn/Public/Uploads/uploadfile/files/202207=
14/DS-00012-GD25LQ64C-Rev3.4.pdf
is a more proper datasheet source. The QE description is also in page
13.

>
> -michael
>
