Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 447C1726614
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 18:35:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbjFGQfZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 12:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjFGQfY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 12:35:24 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D43F010CA
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 09:35:23 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6b296cadbffso723184a34.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 09:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20221208.gappssmtp.com; s=20221208; t=1686155722; x=1688747722;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMrFVIrD87+YmHza3/ad/xmyTl0CWoopOL5lZLVffkg=;
        b=YL+ZOlLuh1QwHdONfePG0Pc261M7VTfob0HkvLQFX2rwlJ9QYuwXeynWkBg5OHbwrX
         PWwWJ2uGDJQq1ODl7DAb8o6vOAMQuzd19w1ifmxHYqH914oSCZDz8t0U4FCb9RFsdPxd
         4EWa+VM41XjeKtUgKOPE1mRdxRCq4JXiSTyqlk3MnlPTF3lpish/wa+SnEtwr2nwJ/ek
         gQHDQrLEIFjycCkynooUQhnEpc/JtaZVZ2p44mHea+RkEhuYKHXoDfDX30hN2RxxDN1U
         3CSPFYWm99uX7/GGgw8KSqVUHRZypmA8sShTsyHdKcAH2GNSWw2HISzlYmKUrkN9IoYV
         Usag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686155722; x=1688747722;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lMrFVIrD87+YmHza3/ad/xmyTl0CWoopOL5lZLVffkg=;
        b=bkVNUIxTj6cuAK5qH0XopSBlAmojbrw7WN638FliiHQ6IItunuZDuOMiZ8dUhqRNIa
         Y51C29xw19QWPr/mpffVzBp3BbmpvxEY6SUI3yF30r9WkbNONNy7p/Zd7EXVs1XVd8XM
         WmNu9PTgm/MYOsDTPvndE0HGdrU5nMtbQsMdQZ58gP7sXdizPkenEYhUxG7YXvA3w9Oa
         svlpqF2Cmpw2xsmsHRgI+N0Xm0dJh98jZlmvSEFTa8OSICuoJTKioTlwGBXMy3RNW7ck
         BvFOu7VBDgkzhUo9qjRu2YYSlFSwMF1KO4CxEHDCQ+e2IwKqSUgWK1gb7oqStvPrHl6r
         rAHQ==
X-Gm-Message-State: AC+VfDzIdikUFDCIh5Wldfb1/5bY5oeg1MzmUJRjBome6aafqOfeqju8
        76kQ1WD5j8AfLMajMj5Yn+GvMhdRWrAYiMzo4NAdVw==
X-Google-Smtp-Source: ACHHUZ5txOkS2bCOcCUliKdknm78gQawzIksPAegofbAayd9ohoHue7+lFR4WVQhjmRkQOYi7jXvkGrpyKdIcMTeqxI=
X-Received: by 2002:a05:6358:e95:b0:129:ccaf:c6c1 with SMTP id
 21-20020a0563580e9500b00129ccafc6c1mr531212rwg.17.1686155722294; Wed, 07 Jun
 2023 09:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230607162438.2009738-1-tharvey@gateworks.com>
 <4bee93d7-0613-3b15-d34d-c62cbb367547@linaro.org> <20230607-decorator-cage-a823b3a0e2f7@spud>
In-Reply-To: <20230607-decorator-cage-a823b3a0e2f7@spud>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Wed, 7 Jun 2023 09:35:10 -0700
Message-ID: <CAJ+vNU2UCmqjUKVczsJVnJv=8FJFBeO4Wom8bK3mf0JDWszLjw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Gateworks i.MX8M Mini GW7905-0x board
To:     Conor Dooley <conor@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 7, 2023 at 9:31=E2=80=AFAM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Wed, Jun 07, 2023 at 06:27:28PM +0200, Krzysztof Kozlowski wrote:
> > On 07/06/2023 18:24, Tim Harvey wrote:
> > > Add DT compatible string for a Gateworks GW7905-0x board based on
> > > the i.MX8M Mini from NXP.
> > >
> > > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documen=
tation/devicetree/bindings/arm/fsl.yaml
> > > index 2510eaa8906d..b19444dc23da 100644
> > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > @@ -915,6 +915,7 @@ properties:
> > >                - gw,imx8mm-gw7901          # i.MX8MM Gateworks Board
> > >                - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
> > >                - gw,imx8mm-gw7903          # i.MX8MM Gateworks Board
> > > +              - gateworks,imx8mm-gw7905-0x # i.MX8MM Gateworks Board
> >
> > Are you sure you are using correct prefix? Anyway, keep alphabetical
> > order, so before "gw".
>
>   "^gw,.*":
>     description: Gateworks Corporation
>                  use "gateworks" vendor prefix
>     deprecated: true
>
>  ;)
>
>  I'd be more interested in whether that -0x is a wildcard!

The 0x has to do with our part numbering scheme. The gw7905 is the
baseboard and the 0x is the SOM and we have SOM's with part loading
options that do not affect device-tree as reserved for 00 to 09.

I'll fix the sorting for v2.

Thanks,

Tim
