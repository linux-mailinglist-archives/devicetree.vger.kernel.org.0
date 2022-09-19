Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C2025BCB0C
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbiISLuX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:50:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbiISLuW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:50:22 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD31529816
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:50:19 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id h9-20020a9d5549000000b0063727299bb4so19566374oti.9
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=T1jl9h1mF/lluuCk6lV1iZjkbTEOUG54gz7Ilekn2W8=;
        b=EjegsREusputF7GmP2d4I2uKqbMAYzil1+SnGDvF7xJ5IF3xekCoajh63un8NY/W1v
         4Dc3dpIPIAxZ/ItDnXcwVHtJ+uR12Is+2RqwnCGS5kJeFO5lunMJwdBtouJqSgLclGtX
         mhlHTzXsaOtujZ/EnjeMdg+ysS+C7TS6dnYEQRwCjP+VZYcP/v7hvykDw9kQGrXHSNIB
         Akoj09ChOP15/+8A3xM3GcCNFeAvZM8zFVdML2OQqDtFfIzTUS/Nq3JXDX1XWtKUOVv7
         sT5sLA81dnSPJpLytORkpmzCkmQvGoNs0IkwDs+doqiSw7uTvdbj7JN6hiB3BxsTLqoW
         3r0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=T1jl9h1mF/lluuCk6lV1iZjkbTEOUG54gz7Ilekn2W8=;
        b=zme4evteONZLPOW7UezdM3jq4wjviysxzYV1wUBk9BpynW144oG4nbk8XIzBkGsENk
         0KpT7mv9CB3TNYqzcv6M6QqnzE38alaVw7tqdJG4EDBa1B91mmIgGd5+LX38JdZJdeHO
         BiJ9ZiNK99n0b6w07DZQ/45ddOZXm4Qgf8YWExNHhQh9TP/CR9akCWIvaT1fMIAWdUTH
         EMGReEC/1E3ZeLuTmHUUWYCIDuSurlH/ezZfWE6WC4/b/65kKw0RwVnM3ZJUoWENjwSD
         04j9us73kzg9ykv2fjc9rnJFIaV3yThJT0EVFjCnjqlPAAyaI8UI0DKQrUlP0nUK5XTf
         z6zQ==
X-Gm-Message-State: ACrzQf2A3PQ/5j4L3rFzRIH7N/Rur+flsV9DRUAIQhkPW4G8kffGZU5q
        OletLEeGnt19I/3J//IbRZRUTqrGmeGlR5sWq0c=
X-Google-Smtp-Source: AMsMyM6ZYW6N4EY7vqDePQd8x94xB4t4UCsIlHZSI7Ye2o5G0sUMkItz07d5EfdBJZXT1IT2mH9PzDY9xKnPc64yvxc=
X-Received: by 2002:a05:6830:150e:b0:655:bc7d:1e5d with SMTP id
 k14-20020a056830150e00b00655bc7d1e5dmr7736053otp.272.1663588219091; Mon, 19
 Sep 2022 04:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
 <20220917042721.527345-2-sergio.paracuellos@gmail.com> <762c78b2-17be-8a9a-81c2-d642b94b96ac@kernel.org>
In-Reply-To: <762c78b2-17be-8a9a-81c2-d642b94b96ac@kernel.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 13:50:07 +0200
Message-ID: <CAMhs-H9m-s0VQXH1tDe_=gJm7BRin47Hm54zY6inqdSMwH5j=A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] MAINTAINERS: update Mediatek MT7621/28/88 i2c
 driver doc file
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        sr@denx.de
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 19, 2022 at 1:25 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 17/09/2022 06:27, Sergio Paracuellos wrote:
> > Mediatek MT7621 i2c driver Bindings have been migrated from text
> > to YAML. Hence, properly update this file accordingly.
>
> So you allow to have a warning added in patch #1 and then you fix it?
>
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> > Changes in v2:
> > - Add this new patch to the series to align MAINTAINERS files
> >   with new YAML doc
> >
> >  MAINTAINERS | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 08620b9a44fc..bac21d599181 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -12669,7 +12669,7 @@ MEDIATEK MT7621/28/88 I2C DRIVER
> >  M:   Stefan Roese <sr@denx.de>
> >  L:   linux-i2c@vger.kernel.org
> >  S:   Maintained
> > -F:   Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
> > +F:   Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
>
> This must be squashed, otherwise it is not bisectable and you have warnings.

Understood will squash both patches together in the next version.

Thanks,
    Sergio Paracuellos
>
>
> Best regards,
> Krzysztof
