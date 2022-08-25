Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7962B5A19B3
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 21:41:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243705AbiHYTlB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 15:41:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243724AbiHYTk6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 15:40:58 -0400
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6076037190
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 12:40:56 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id o1so2158870ilq.1
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 12:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=Mp/M94imtMp0jJ0m95vZRgFQ6Gqg+QeMNpVULtUhaXk=;
        b=ynGE7RUSojTjL9WzDZrxRipJuCM+m4PFV3MY0zYsWtrqm8iklKxkt5jFMcf0SJWnG7
         l3tkFv32Pw7s4VXmQPtoJ5oKAE/JkKcEoBlzdGO/PcXA6VGKDmktkQzY4ZIxpc4Ex7vO
         xGbdfP+pN1QOMZsLw/1pzllyFVVt9gds2CUl+fyR4Ch9X2edK1ZfvTeQhgkR3V/voph4
         jJftwO/cGUpBlgMCNw0EWs23eB/4vWQgvlCjwpyqYeI9MaNDDrgQUYJ71gR8nteT2Mn+
         14pBuAjOf+iYR+c+rzbZVJpYRKCj/zGWy3KfHJAfMC9GiCXs+dxZwmMc+lqMaz3Ix1pM
         EYsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=Mp/M94imtMp0jJ0m95vZRgFQ6Gqg+QeMNpVULtUhaXk=;
        b=CWvHhBnTyE19p5Se71Fpv5mWaoEIdt2NJkKv9StQsctWtVwygWAvdAORTR5/Mq7Zqf
         cZk84OzUyA+aBRm9fPcvKPBIuB3xHbVId8eR75PpNheTkO9S0w3UYNXcfLs2cGNsa4Sh
         ycBXhWDXEeKtfJSRHTcLZT1jNcPQtqpk29+oollIF/wp0wzPlZ+N3lHQRdAuH2Fmae/g
         wNV9rjWqLUsDuZ7Ru6iGLOWTcv9toxWMVOmzq7acSjclrogRjI8xJiMVS6YVTF36m8Ce
         3wvUBJPmfjKaNJroKp5vBI8QT/vHHchgz7caNNZ9vNxv7Ni8ctSI7U5zqT8VwFYoKXxO
         hGiA==
X-Gm-Message-State: ACgBeo3rC2r1J6TMkPlIeOimspozMytzmndbPk7n6iVb7Cm8V+BRxDNL
        y4d+yyzWjbDMB2n2pqFu41sDyPMMh/ZMEP3SoBxpWA==
X-Google-Smtp-Source: AA6agR4cJHD7iiGgYkLBSnaph82MzYJrqaU0nX8SY6ujKQZ/MabUvbF+9ZhlqTEcyx1ErU+TmhtGUB/eGrih2knb4BU=
X-Received: by 2002:a05:6e02:16cc:b0:2e9:8789:5fd with SMTP id
 12-20020a056e0216cc00b002e9878905fdmr2642829ilx.302.1661456455745; Thu, 25
 Aug 2022 12:40:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220823184242.3554472-1-jagan@edgeble.ai> <2b1ebdad-b407-6867-4caf-2f2f5e1528bb@linaro.org>
In-Reply-To: <2b1ebdad-b407-6867-4caf-2f2f5e1528bb@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Fri, 26 Aug 2022 01:10:45 +0530
Message-ID: <CA+VMnFyeUS_DsmGY4sVSLkk9XX5eHo89ZoUCrRr3UeoUfK6iHQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Document Chongzhou
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 24 Aug 2022 at 19:09, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/08/2022 21:42, Jagan Teki wrote:
> > Chongzhou is a professional is a manufacturer of LCD panels
> > from Shenzhen.
> >
> > Add vendor prefix for it.
> >
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/D=
ocumentation/devicetree/bindings/vendor-prefixes.yaml
> > index 2f0151e9f6be..e8ee5084cb89 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -244,6 +244,8 @@ patternProperties:
> >      description: ChipOne
> >    "^chipspark,.*":
> >      description: ChipSPARK
> > +  "^chongzhou,.*":
> > +    description: Shenzhen Chongzhou Electronic Technology Co., Ltd
>
> Maybe there are some transliteration differences, but isn't this
> "Changzhou" (o->a)?

Not sure it is 'a'

It is clearly mentioned in the datasheet as

=E6=B7=B1=E5=9C=B3=E5=B8=82=E5=B4=87=E6=B4=B2=E7=94=B5=E5=AD=90=E7=A7=91=E6=
=8A=80=E6=9C=89=E9=99=90=E5=85=AC=E5=8F=B8
Shenzhen Chongzhou Electronic Technology Co., Ltd

Thanks,
Jagan.
