Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 290A97663D4
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 08:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232787AbjG1GBn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 02:01:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjG1GBm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 02:01:42 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47C3626BB
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 23:01:41 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b93fba1f62so26653951fa.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 23:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1690524099; x=1691128899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2jjGYCkpEYu58BQfAwhDMVJPr8BDJrnt1s54RDMlMPA=;
        b=Xttr+If9dSP8sS2Bnhnqtc69/lJZpT1DaBZAMmPg2MJBmWdGsi/VBHS05/Uc/sWlRC
         OVhKevCshEFsByh4ojqpD2dHSCCzu7EoKTd7er9QvutFfTHH5j+1Au6qbn12ubZn/1LI
         RjqavxcaLl+Dt2TXoaQuSMEUvpOCaj+uCn14SeQC6HNcU78WEagJ/XvjfglU0VIImqzK
         8SGoRO8XGdP7Uj+CKFQVwDrdECumHv/v8p4tB9FN7AZ9LIQVHHjhtK461zuZ1eh9RtlN
         /w95v5S7chdD9Dja+DKa88rAorYGhPl05CPlepihysT0Pk6FAOgskDHG56wTnXzKgHhv
         RUug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690524099; x=1691128899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2jjGYCkpEYu58BQfAwhDMVJPr8BDJrnt1s54RDMlMPA=;
        b=fuvxfzUS3JByN6Gq7g7a5emSY946m29MTs2al/bvbHT77oFZQWTvSyldq2x80V87yV
         NjB99d7cJw1gV5AG2JosVTBUEJ1XSV/eEz6ZrrEY9KCSr4tmMYD20KF9UaV5pP4QtWi/
         JqZNosJ3W9DWUD84HQTBEmXLLMwAwf+R+M4FX0AyGVNQsJabgn5jKlPDU8G9SOG7Oz1i
         JM0KF4k69DZdDJz4JQjbdkMAlRP7UYgNMgVpCo0Hl/F+QP9b1oYCKgi3N9CaSPShX04/
         jkO6N5nf2JWYxhb1QTw0xmmoO0pFNMkFEkdVtcgpoUdWmUaDEFJkQK0G3cg7PHjXRaBp
         AKAA==
X-Gm-Message-State: ABy/qLbo3/sqFqZoRdSsGsU2Xp9DbUYrJx+N3hDz1lKtQVThvJxi/U6y
        47ljQ3OaJFDWi9sCGNQCNS+mNa9Z6XsCQZqVpkgHdnAozo4hcvKnTMk=
X-Google-Smtp-Source: APBJJlGRtJ5h9JlYPOw784edK7V79G0d0vYdwCpHUuo8Is7oxaLejqe++lmUOh2FkvVkmSEOAEMEiq2mT/bVif0U91I=
X-Received: by 2002:a2e:7c01:0:b0:2b9:4476:ab28 with SMTP id
 x1-20020a2e7c01000000b002b94476ab28mr977256ljc.38.1690524099313; Thu, 27 Jul
 2023 23:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230720135125.21240-1-eric.lin@sifive.com> <20230720135125.21240-2-eric.lin@sifive.com>
 <cbf0a8fd-3479-1684-fe90-81f2159804ef@linaro.org>
In-Reply-To: <cbf0a8fd-3479-1684-fe90-81f2159804ef@linaro.org>
From:   Eric Lin <eric.lin@sifive.com>
Date:   Fri, 28 Jul 2023 14:01:28 +0800
Message-ID: <CAPqJEFr5h+5+F4TdNuRMaWsrmeedbfGgbgd9wh8sUUQsj2Pw-A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: riscv: sifive: Add SiFive Private L2
 cache controller
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        zong.li@sifive.com, greentime.hu@sifive.com,
        vincent.chen@sifive.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Fri, Jul 21, 2023 at 4:35=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/07/2023 15:51, Eric Lin wrote:
> > This add YAML DT binding documentation for SiFive Private L2
> > cache controller
> >
> > Signed-off-by: Eric Lin <eric.lin@sifive.com>
> > Reviewed-by: Zong Li <zong.li@sifive.com>
> > Reviewed-by: Nick Hu <nick.hu@sifive.com>
>
>
> ...
>
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: sifive,pl2cache1
>
> I still have doubts that it is not used in any SoC. This is what you
> said last time: "is not part of any SoC."
> If not part of any SoC, then where is it? Why are you adding it to the
> kernel?
>

Sorry for the late reply. I didn't describe it clearly last time.
Currently, we have two hardware versions of pl2cache: pl2cache0 and pl2cach=
e1.
The pl2cache0 is used in unmatched board SoC. The pl2cache1 is
utilized in our internal FPGA platform for evaluation; it's our core
IP.

>
>
> > +      - const: cache
> > +
> > +  cache-block-size: true
> > +  cache-level: true
> > +  cache-sets: true
> > +  cache-size: true
> > +  cache-unified: true
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  next-level-cache: true
> > +
> > +required:
> > +  - compatible
> > +  - cache-block-size
> > +  - cache-level
> > +  - cache-sets
> > +  - cache-size
> > +  - cache-unified
> > +  - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    cache-controller@10104000 {
> > +        compatible =3D "sifive,pl2cache1","cache";
>
> Missing space.

OK, I'll fix it in the next version.

>
> > +        cache-block-size =3D <64>;
> > +        cache-level =3D <2>;
> > +        cache-sets =3D <512>;
> > +        cache-size =3D <262144>;
> > +        cache-unified;
> > +        reg =3D <0x10104000 0x4000>;
>
> reg is after compatible.

OK, I'll fix it in the next version.
Thanks for your review.

Best regards,
Eric Lin

>
> > +        next-level-cache =3D <&L4>;
> > +    };
>
> Best regards,
> Krzysztof
>
