Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A29E72A156
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 19:36:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230384AbjFIRgU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 13:36:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229901AbjFIRgT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 13:36:19 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 082881FDB
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 10:36:19 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-55b5472ab85so549244eaf.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 10:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20221208.gappssmtp.com; s=20221208; t=1686332178; x=1688924178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZlzCKJ8vNzmG2x1B8/CIujYb4s/MD4Gsf3U2Ul+tPvA=;
        b=1MDow+4nnMjrRxi5JX0Ddm85aJeKsXi7Ek/1In3zOiHHlPByMVG8ft1qOrAlewXZt/
         2tTRGrIdC6x01wQXVktITFQy3XbfvRCWeQKgqLvMp8OBq4qaiA5pK211wcksg7BHqcDs
         y0dp7b22UmRs8AxfrZF20UTb3OeHmX7dt0JG12aKHkE+m3iY1aNN1cMRkkeuq2uKz+lB
         yRKOLMNTmx6+MRnpV0DRC1gu1PzkNuD7KSeOBjozf9QbeWcJcD6Ngo1jlEwyFBjXawFM
         HhcXoSuzYvAmgSKhw3gGPQY+0yilCKwvBmlU9s1HUu6u2XphLc+BbkBVppvyxbyEh6g0
         ZP5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686332178; x=1688924178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZlzCKJ8vNzmG2x1B8/CIujYb4s/MD4Gsf3U2Ul+tPvA=;
        b=buAcos/iVZRjEr2xwUNe1M1tWOigK1uTUYPdgl8KowCWRDDGlEGwjc3ZVdw5jRQjo6
         rryRgqt3so1PS+ioudUz/rzwMf5IGEDynZ2TL1/O9LPrGG1RNroYVFs5aMP0i1SIhImI
         rJSBkvuyYsVKp4v7C6cVXvicQaC5VYKkJns/3OeraXSsLtIXN9fpOWvO0EJoSC44oDcL
         voYHRruhJEDUat/OCakrlH35LkWWvxYnji4zyo0hYs1LWUUFxvpUraYmL5p90Y4bjgJL
         oYpkzptTMA3kWiZ/eNs1cqyIYsvAk8Rh0Jhzf+s6mNd97+eVOCZ60OoJXVBFXKS/bklL
         miIA==
X-Gm-Message-State: AC+VfDy/87aQCQxXT2sNvW+2j/CBcWHEho/bynu+QD3xaltU8VzqF/PG
        1FLHzNRwoKE+i4SXWTjqS4Ylp15Q1N4gVVIucb3ioQ==
X-Google-Smtp-Source: ACHHUZ7i8q3/7AanT7LV3srZXNKWa7zw/AHhI+SWdQiy4p+4j+Ac4AEEI11e5pJNBkbcEdorU+Ub5OBjdZKhiqZ+OX8=
X-Received: by 2002:a05:6808:10c9:b0:398:e4c:d5c2 with SMTP id
 s9-20020a05680810c900b003980e4cd5c2mr2647299ois.9.1686332177895; Fri, 09 Jun
 2023 10:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230522193219.1477158-1-tharvey@gateworks.com> <20230609160008.GA1132019-robh@kernel.org>
In-Reply-To: <20230609160008.GA1132019-robh@kernel.org>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 9 Jun 2023 10:36:04 -0700
Message-ID: <CAJ+vNU2w+eU=SGROpyWtkBhdqo+M4XDe9m9FecEeXT=dbEr6rw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: mfd: gateworks-gsc: remove
 unnecessary fan-controller nodes
To:     Rob Herring <robh@kernel.org>, Lee Jones <lee@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 9, 2023 at 9:00=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, May 22, 2023 at 12:32:16PM -0700, Tim Harvey wrote:
> > Remove the unnecessary #address-cells and #size-cells nodes from
> > the fan-controller. These are not needed as the fan controller does not
> > have any children.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > v2:
> >  - udpated commit log to explain why the nodes are unnessesary
> >  - added Krzysztof's rb tag
> >  - added Connor's ab tag
> > ---
> >  .../devicetree/bindings/mfd/gateworks-gsc.yaml         | 10 ----------
> >  1 file changed, 10 deletions(-)
>
> This is not going to get applied if you don't send it to Lee.

Lee,

Sorry, I missed adding you to this thread. Can you pick it up or do
you need me to re-send to the list and you?

Best Regards,

Tim

>
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml b=
/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
> > index acb9c54942d9..dc379f3ebf24 100644
> > --- a/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
> > @@ -122,12 +122,6 @@ patternProperties:
> >        compatible:
> >          const: gw,gsc-fan
> >
> > -      "#address-cells":
> > -        const: 1
> > -
> > -      "#size-cells":
> > -        const: 0
> > -
> >        reg:
> >          description: The fan controller base address
> >          maxItems: 1
> > @@ -135,8 +129,6 @@ patternProperties:
> >      required:
> >        - compatible
> >        - reg
> > -      - "#address-cells"
> > -      - "#size-cells"
> >
> >  required:
> >    - compatible
> > @@ -194,8 +186,6 @@ examples:
> >              };
> >
> >              fan-controller@2c {
> > -                #address-cells =3D <1>;
> > -                #size-cells =3D <0>;
> >                  compatible =3D "gw,gsc-fan";
> >                  reg =3D <0x2c>;
> >              };
> > --
> > 2.25.1
> >
