Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EB44734C23
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 09:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbjFSHLh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 03:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229769AbjFSHLg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 03:11:36 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE64106
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 00:11:35 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-bad0c4f6f50so4656124276.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 00:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687158694; x=1689750694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mUeepgJ1O9cz8Kl0I6X55iLETdP0NbFcT/ejiaDsQQ=;
        b=JbRn+7OdF7AufnePj+eplT2mGaIj2u1IwBrwOH6tnkiQ+PZs8GHeMz+PSQgw3KJbFB
         xLLVUWLWKC5i2olWlGi0A4no/0w434x+iT7QrlYxMTSwpkiEoR1P6OY/rDGxx24DsZk0
         eN8/IbplZdrdxgrKBNffqxm5JKSiz9UG9L2y6lR0Pe5yhIbCpionZUJvsDqI9ncqFMmn
         VHcIp+cHlQdu75zAARyI0bsaRnRk2BQ1G0FUjyVD+gLE+TeieFyYvOYUSmXa+o9Nefx1
         wtgpPZNZNam/ViY6NA69hdLRJNfIzoP6N63WH3BYNsThMSwwGjsCrbiZioR+XdYjJ5yI
         LU+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687158694; x=1689750694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mUeepgJ1O9cz8Kl0I6X55iLETdP0NbFcT/ejiaDsQQ=;
        b=SesESvVl6LWWOttweSwktlerrJ/XVdUCRwfYekbNfsWzMJZJgSZrEEw2IXNEPd9IuB
         7oKVjO+7sMnWxORqQe4Qv7BkQJwItayCQECQx+i/UQcR74mKi6XgOesw1EFSq4WM0CFj
         ai5tSARm19CW6++r1vf/cYhMA5V2ot+9OQzW+V7u07AGGbUADmRekN/+oO9J+XgQ8z1a
         X0P15CDkOUQeDt0tdtC2k5rzMcdTU0i7xzTPXMR76XsFTu1jODEiVXbhVjNsqObAPB2t
         aaeQPToinZ4xWeybMOMYTbaimOIKH18F2bO47Jvpo/MQa92R8Fwg3PDOuU/UxIJAUhgk
         AJCA==
X-Gm-Message-State: AC+VfDwHDZzE2WeC/Oa1lMa19h4EmjqyA3n+NIA0lnolOgYHJPpVDx5J
        kPPBn1Ply+Pwip+Y4v6qnED80KYVcpJzO0Ocn4q/Mw==
X-Google-Smtp-Source: ACHHUZ7xT7ohcHWC/jRL4gObxDq8YAx42oA5crBnwhAm9ubPFQceXHcvTmrEUJcqDaJ6P5ftDa09D2dA/tjHa+CcXCc=
X-Received: by 2002:a25:6a43:0:b0:ba8:2a74:155 with SMTP id
 f64-20020a256a43000000b00ba82a740155mr5461790ybc.32.1687158694570; Mon, 19
 Jun 2023 00:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230417-ux500-sram-v2-0-6e62ad551faa@linaro.org>
 <20230417-ux500-sram-v2-2-6e62ad551faa@linaro.org> <e41ff013-8224-1b96-5cd3-f0632d27191d@gmail.com>
In-Reply-To: <e41ff013-8224-1b96-5cd3-f0632d27191d@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 19 Jun 2023 09:11:23 +0200
Message-ID: <CACRpkdagHDUz4P0Z81ZqyhJD97gfn=p1=fx1dwKTrO8J3zkPrw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] misc: sram: Generate unique names for subpools
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Sun, Jun 18, 2023 at 11:33=E2=80=AFPM Dmitry Osipenko <digetx@gmail.com>=
 wrote:

> >                       if (!label)
> > -                             label =3D child->name;
> > -
> > -                     block->label =3D devm_kstrdup(sram->dev,
> > -                                                 label, GFP_KERNEL);
> > +                             block->label =3D devm_kasprintf(sram->dev=
, GFP_KERNEL,
> > +                                                           "%s", dev_n=
ame(sram->dev));
>
> This broke device-trees that have no label property.

Which system is affected? Asking so I can inspect the DTS file
and figure out how this needs to work.

>  The SRAM DT binding says:
>
> "
> label:
> description:
>         The name for the reserved partition, if omitted, the label is tak=
en
>         from the node name excluding the unit address.
> "
>
> Not sure whether breakage was on purpose, otherwise doc needs to be
> updated or there should be explicit check for the duplicated node names.
>
> Secondly, AFAICS, the dev_name(sram->dev) is the name of the parent SRAM
> device and not of the children sub-nodes, hence it's now always the same
> dev_name(sram->dev) for all sub-nodes.

Sounds like I should go back to the original approach in patch v1:
https://lore.kernel.org/linux-devicetree/20230417-ux500-sram-v1-2-5924988bb=
835@linaro.org/

and also augment the DTS binding text to say it uses the full node name
including the address.

Does that look OK to you, or will this regress your system as well?

Yours,
Linus Walleij
