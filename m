Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CF7C57CEAC
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 17:11:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiGUPLz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 11:11:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbiGUPLz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 11:11:55 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89B5076E89
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 08:11:53 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 7so3328845ybw.0
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 08:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bTl/DYyFkGoVcVlCmDzUnWqz4f/Cu4hQQNPeA8lO/5Y=;
        b=ZThSPjbu0jvVI4SRAOzrz8bhXUXAopYNgNzzEJ/WTfpXoZRwuyM9FO03mIK/lSMq/V
         DgFSwlzoMWPXzQBjHAciJThhaTpoxCQRKtcaOV7YZNHSRAQT8QXa8afs0Iggzej2L4XR
         IhfcEfcWXDtV0LHX4uIDjGGDF18jb6vxhXysfMnuN4hYyTVkqfI3SXJZoIZyyS4M5elG
         NqQl3jeMekQwWPaUYJ9aw46FDfiVca0iA0AgK3DoR4UJeWN4AdxuLbHy6/lMmROIbdbN
         e6L0E7ZIzPESzHOcRpDeCCVk/pp0ATMprGVxFpub+hRloWEU1dcY8e9Yoe4lPrz2AntM
         zKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bTl/DYyFkGoVcVlCmDzUnWqz4f/Cu4hQQNPeA8lO/5Y=;
        b=n1tGVRCKpzxAXI6hAqWhrcnwG+pc1IcYiyGMNROQrNyzSaSQx2CqD32C2MhIKJ6bdY
         5jCKDQzm7iwcdFa5LzHPm6/DZJ8oeRjrsFZYY85JYZPfRFHFFPS11/r3jGOP4DniyX4L
         dJ+omjrdaPZoyusH70AwXN/6lr/E5E0Y+qbiQYvjewhthlQEBPKcVVb6ORZamasQy+we
         E/QFYR0Hl3wP6Cc/bkIh92xI338/krA6PjjB6AwDrsaR3Aqzs8xlSQbrysK/tfLqq0yr
         Zrd4rv+l4opRoZCcCaoXFHNnVmFT6wfPN16igd1i0fXbVh2RSHX2xlOJjsAXW5VioapU
         KvHA==
X-Gm-Message-State: AJIora/RHq+f6xtAuAj/A2KJ6VWXdjUC7eTTUZMCopFnczHxPikPBa/W
        hVk2QzY5SmvACFcR9U49ff8SbR9nqqw7O34N8FNXyvgQotlmQw==
X-Google-Smtp-Source: AGRyM1smtkp10E+SwllhO5OWSXPHmgjinCfKisOg7j+4zpsj9aM5Qpc1tpwRgqfDPhq4SEfSNu1noSoJxS9nMJJFQ9c=
X-Received: by 2002:a05:6902:1082:b0:670:9307:b0eb with SMTP id
 v2-20020a056902108200b006709307b0ebmr9206843ybu.335.1658416312653; Thu, 21
 Jul 2022 08:11:52 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
In-Reply-To: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
From:   "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date:   Thu, 21 Jul 2022 16:11:24 +0100
Message-ID: <CA+V-a8t6FFbv=Fj7HyQZiZ1kYWahg1uXYS5d9NtEdDbPjpj0Hg@mail.gmail.com>
Subject: Re: dtbs_check issue
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
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

+CC devicetree@vger.kernel.org.

On Thu, Jul 21, 2022 at 4:07 PM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> Hi,
>
> We have the below entries in renesas.yaml in arm directory [0]
>
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/arm/renesas.yaml?h=next-20220721#n418
>
>       - description: RZ/G2UL (R9A07G043)
>         items:
>           - enum:
>               - renesas,smarc-evk # SMARC EVK
>           - enum:
>               - renesas,r9a07g043u11 # RZ/G2UL Type-1
>               - renesas,r9a07g043u12 # RZ/G2UL Type-2
>           - const: renesas,r9a07g043
>
>       - description: RZ/G2{L,LC} (R9A07G044)
>         items:
>           - enum:
>               - renesas,smarc-evk # SMARC EVK
>           - enum:
>               - renesas,r9a07g044c1 # Single Cortex-A55 RZ/G2LC
>               - renesas,r9a07g044c2 # Dual Cortex-A55 RZ/G2LC
>               - renesas,r9a07g044l1 # Single Cortex-A55 RZ/G2L
>               - renesas,r9a07g044l2 # Dual Cortex-A55 RZ/G2L
>           - const: renesas,r9a07g044
>
>       - description: RZ/V2L (R9A07G054)
>         items:
>           - enum:
>               - renesas,smarc-evk # SMARC EVK
>           - enum:
>               - renesas,r9a07g054l1 # Single Cortex-A55 RZ/V2L
>               - renesas,r9a07g054l2 # Dual Cortex-A55 RZ/V2L
>           - const: renesas,r9a07g054
>
> I have added a new schema renesas.yaml [1] in
> Documentation/devicetree/bindings/riscv/ folder for Renesas RISV
> SoC's.
>
> [1] https://paste.debian.net/1247954/
>
> properties:
>   $nodename:
>     const: '/'
>   compatible:
>     oneOf:
>       - description: RZ/Five (R9A07G043)
>         items:
>           - enum:
>               - renesas,smarc-evk # SMARC EVK
>           - const: renesas,r9a07g043f1
>           - const: renesas,r9a07g043
>
> additionalProperties: true
>
> -----------------x----------------------------x----------------------
>
> I have the DTS arch/riscv/boot/dts/renesas/r9a07g043-smarc.dts with
> below property:
>                           compatible = "renesas,smarc-evk",
> "renesas,r9a07g043f1", "renesas,r9a07g043";
>
> And when I run the dtbs_check I get the below error:
>
> prasmi@prasmi:~/work/linux$ make ARCH=riscv
> CROSS_COMPILE=riscv64-linux-gnu- dtbs_check
>   LINT    Documentation/devicetree/bindings
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   DTC     arch/riscv/boot/dts/renesas/r9a07g043-smarc.dtb
>   CHECK   arch/riscv/boot/dts/renesas/r9a07g043-smarc.dtb
> /home/prasmi/work/linux/arch/riscv/boot/dts/renesas/r9a07g043-smarc.dtb:
> /: compatible: 'oneOf' conditional failed, one must be fixed:
>     ['renesas,smarc-evk', 'renesas,r9a07g043f1', 'renesas,r9a07g043']
> is too long
>     /home/prasmi/work/linux/arch/riscv/boot/dts/renesas/r9a07g043-smarc.dtb:
> /: compatible: 'oneOf' conditional failed, one must be fixed:
>         ['renesas,smarc-evk', 'renesas,r9a07g043f1',
> 'renesas,r9a07g043'] is too short
>         'shimafuji,kingfisher' was expected
>         'renesas,r9a07g043f1' is not one of ['renesas,h3ulcb',
> 'renesas,m3ulcb', 'renesas,m3nulcb']
>         'renesas,r9a07g043' is not one of ['renesas,r8a7795',
> 'renesas,r8a7796', 'renesas,r8a77961', 'renesas,r8a77965']
>         'renesas,r9a07g043' is not one of ['renesas,r8a779m0',
> 'renesas,r8a779m1', 'renesas,r8a779m2', 'renesas,r8a779m3',
> 'renesas,r8a779m4', 'renesas,r8a779m5', 'renesas,r8a779m8']
>     'renesas,smarc-evk' is not one of ['renesas,kzm9d']
>     'renesas,smarc-evk' is not one of ['renesas,genmai',
> 'renesas,gr-peach', 'renesas,rskrza1']
>     'renesas,smarc-evk' is not one of ['renesas,rza2mevb']
>     'renesas,smarc-evk' is not one of ['renesas,kzm9g']
>     'renesas,smarc-evk' is not one of ['renesas,ape6evm']
>     'renesas,smarc-evk' is not one of ['renesas,armadillo800eva']
>     'renesas,smarc-evk' is not one of ['iwave,g21m']
>     'renesas,smarc-evk' is not one of ['iwave,g21d']
>     'renesas,smarc-evk' is not one of ['iwave,g20d']
>     'renesas,smarc-evk' is not one of ['iwave,g20m', 'renesas,sk-rzg1m']
>     'renesas,smarc-evk' is not one of ['iwave,g20m']
>     'renesas,smarc-evk' is not one of ['iwave,g22m', 'renesas,sk-rzg1e']
>     'iwave,g22d' was expected
>     'renesas,smarc-evk' is not one of ['iwave,g23s']
>     'renesas,smarc-evk' is not one of ['hoperun,hihope-rzg2m',
> 'beacon,beacon-rzg2m']
>     'renesas,smarc-evk' is not one of ['hoperun,hihope-rzg2-ex']
>     'renesas,smarc-evk' is not one of ['beacon,beacon-rzg2n',
> 'hoperun,hihope-rzg2n']
>     'renesas,smarc-evk' is not one of ['si-linux,cat874']
>     'renesas,smarc-evk' is not one of ['si-linux,cat875']
>     'renesas,smarc-evk' is not one of ['beacon,beacon-rzg2h',
> 'hoperun,hihope-rzg2h']
>     'renesas,smarc-evk' is not one of ['renesas,bockw']
>     'renesas,smarc-evk' is not one of ['renesas,marzen']
>     'renesas,smarc-evk' is not one of ['renesas,lager', 'renesas,stout']
>     'renesas,smarc-evk' is not one of ['renesas,henninger',
> 'renesas,koelsch', 'renesas,porter']
>     'renesas,smarc-evk' is not one of ['renesas,blanche', 'renesas,wheat']
>     'renesas,smarc-evk' is not one of ['renesas,gose']
>     'renesas,smarc-evk' is not one of ['renesas,alt', 'renesas,silk']
>     'renesas,smarc-evk' is not one of ['renesas,h3ulcb',
> 'renesas,salvator-x', 'renesas,salvator-xs']
>     'renesas,smarc-evk' is not one of ['renesas,m3ulcb',
> 'renesas,salvator-x', 'renesas,salvator-xs']
>     'renesas,smarc-evk' is not one of ['renesas,m3ulcb', 'renesas,salvator-xs']
>     'renesas,smarc-evk' is not one of ['renesas,m3nulcb',
> 'renesas,salvator-x', 'renesas,salvator-xs']
>     'renesas,smarc-evk' is not one of ['renesas,eagle', 'renesas,v3msk']
>     'renesas,smarc-evk' is not one of ['renesas,condor', 'renesas,v3hsk']
>     'renesas,smarc-evk' is not one of ['renesas,ebisu']
>     'renesas,smarc-evk' is not one of ['renesas,draak']
>     'renesas,smarc-evk' is not one of ['renesas,falcon-cpu']
>     'renesas,smarc-evk' is not one of ['renesas,falcon-breakout']
>     'renesas,smarc-evk' is not one of ['renesas,spider-cpu']
>     'renesas,smarc-evk' is not one of ['renesas,spider-breakout']
>     'renesas,smarc-evk' is not one of ['renesas,white-hawk-cpu']
>     'renesas,smarc-evk' is not one of ['renesas,white-hawk-breakout']
>     'renesas,smarc-evk' is not one of ['renesas,h3ulcb', 'renesas,salvator-xs']
>     'renesas,smarc-evk' is not one of ['renesas,m3nulcb', 'renesas,salvator-xs']
>     'renesas,smarc-evk' is not one of ['renesas,rzn1d400-db']
>     'renesas,smarc-evk' is not one of ['renesas,rzv2mevk2']
>     'renesas,emev2' was expected
>     'renesas,r7s72100' was expected
>     'renesas,r7s9210' was expected
>     'renesas,sh73a0' was expected
>     'renesas,r8a73a4' was expected
>     'renesas,r8a7740' was expected
>     'renesas,r8a7742' was expected
>     'iwave,g21m' was expected
>     'iwave,g20m' was expected
>     'renesas,r8a7743' was expected
>     'renesas,r8a7744' was expected
>     'renesas,r8a7745' was expected
>     'iwave,g22m' was expected
>     'renesas,r8a77470' was expected
>     'renesas,r8a774a1' was expected
>     'hoperun,hihope-rzg2m' was expected
>     'renesas,r8a774b1' was expected
>     'hoperun,hihope-rzg2n' was expected
>     'renesas,r8a774c0' was expected
>     'si-linux,cat874' was expected
>     'renesas,r8a774e1' was expected
>     'hoperun,hihope-rzg2h' was expected
>     'renesas,r8a7778' was expected
>     'renesas,r8a7779' was expected
>     'renesas,r8a7790' was expected
>     'renesas,r8a7791' was expected
>     'renesas,r8a7792' was expected
>     'renesas,r8a7793' was expected
>     'renesas,r8a7794' was expected
>     'renesas,r8a7795' was expected
>     'renesas,r8a7796' was expected
>     'renesas,r8a77961' was expected
>     'renesas,r8a77965' was expected
>     'renesas,r8a77970' was expected
>     'renesas,r8a77980' was expected
>     'renesas,r8a77990' was expected
>     'renesas,r8a77995' was expected
>     'renesas,r8a779a0' was expected
>     'renesas,falcon-cpu' was expected
>     'renesas,r8a779f0' was expected
>     'renesas,spider-cpu' was expected
>     'renesas,r8a779g0' was expected
>     'renesas,white-hawk-cpu' was expected
>     'renesas,r8a779m0' was expected
>     'renesas,r8a779m1' was expected
>     'renesas,r8a779m2' was expected
>     'renesas,r8a779m3' was expected
>     'renesas,r8a779m4' was expected
>     'renesas,r8a779m5' was expected
>     'renesas,r8a779m6' was expected
>     'renesas,r8a779m7' was expected
>     'renesas,r8a779m8' was expected
>     'renesas,r9a06g032' was expected
>     'renesas,r9a07g043f1' is not one of ['renesas,r9a07g043u11',
> 'renesas,r9a07g043u12']
>     'renesas,r9a07g043f1' is not one of ['renesas,r9a07g044c1',
> 'renesas,r9a07g044c2', 'renesas,r9a07g044l1', 'renesas,r9a07g044l2']
>     'renesas,r9a07g043f1' is not one of ['renesas,r9a07g054l1',
> 'renesas,r9a07g054l2']
>     'renesas,r9a09g011' was expected
>     'renesas,r9a07g044' was expected
>     'renesas,r9a07g054' was expected
>     From schema:
> /home/prasmi/work/linux/Documentation/devicetree/bindings/arm/renesas.yaml
>
> And this is strangely coming from the arm renesas.yaml schema.
>
> -----------------x----------------------------x----------------------
>
> Now when I remove all the SMARC boards from arm renesas.yaml schema,
> dtbs_check passes through successfully.
>
>       - description: RZ/G2UL (R9A07G043)
>         items:
>           - enum:
>               - renesas,smarc-evk # SMARC EVK
>           - enum:
>               - renesas,r9a07g043u11 # RZ/G2UL Type-1
>               - renesas,r9a07g043u12 # RZ/G2UL Type-2
>           - const: renesas,r9a07g043
>
>       - description: RZ/G2{L,LC} (R9A07G044)
>         items:
>           - enum:
>               - renesas,smarc-evk # SMARC EVK
>           - enum:
>               - renesas,r9a07g044c1 # Single Cortex-A55 RZ/G2LC
>               - renesas,r9a07g044c2 # Dual Cortex-A55 RZ/G2LC
>               - renesas,r9a07g044l1 # Single Cortex-A55 RZ/G2L
>               - renesas,r9a07g044l2 # Dual Cortex-A55 RZ/G2L
>           - const: renesas,r9a07g044
>
>       - description: RZ/V2L (R9A07G054)
>         items:
>           - enum:
>               - renesas,smarc-evk # SMARC EVK
>           - enum:
>               - renesas,r9a07g054l1 # Single Cortex-A55 RZ/V2L
>               - renesas,r9a07g054l2 # Dual Cortex-A55 RZ/V2L
>           - const: renesas,r9a07g054
>
> Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> dtbs_check failures.
>
> Any pointers on how I can get around this issue?
>
> Cheers,
> Prabhakar
