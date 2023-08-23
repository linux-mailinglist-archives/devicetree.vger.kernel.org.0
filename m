Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED2517861FA
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 23:13:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237030AbjHWVMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 17:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236922AbjHWVMM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 17:12:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C42D10C8
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:12:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BF8386471F
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 21:12:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0AF1C433CB
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 21:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692825130;
        bh=lzf+7Fs0IFvM3sj0dg6cLJ5UxAQ7qHsr76DTnjzuoGQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=E36PDB4czcyytsv2P8B5SDbAMEqJbzOVlS0n3FSiyAn0FfQKE1Wrktam4PFMc8l/B
         FiVZh5S/erj9zbWYKCfXR6CZfNrToYKChpjtLuAomMJSD5BYm1Yr4KWyVGD14WsXbD
         Dfp800irbgiBybjdMKQvyg+xsExLjJ10TOYNfvmZTx3N/8JRm5SSIcVAWxfyRNKVS1
         PALrJ5WPqTV5eyIiG+Et7Voi6rvOfi0eXtipE1F3+D9hEhEvxzOjwy/KZff3em9AmT
         3nU0cAUNNSs6OwoUVuaSZngMAsYM0Aw6zVs4lzsWTN5wMUtaa7KKJO9BgWojbYABae
         +sDGHI8TcFpGA==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2b962535808so97166461fa.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:12:09 -0700 (PDT)
X-Gm-Message-State: AOJu0YxZWXBNkIYPHBTv6VZdBEBcZuFuTuRQaaWH9fEf7QItF4b2fyYO
        5QMmhSXKghxmRISFwPoRyAfXTc1QBLxPjJvjlw==
X-Google-Smtp-Source: AGHT+IHp37LLTwGbjIooFz/3aSYrNzjkCVVz6yTRDvKO9Am+7llHuwEl/OegSIwqdSNwy1yOIZK1KUxhjjALJIwQ/9I=
X-Received: by 2002:a2e:3610:0:b0:2bc:dea8:ba75 with SMTP id
 d16-20020a2e3610000000b002bcdea8ba75mr2054970lja.26.1692825127827; Wed, 23
 Aug 2023 14:12:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692783907.git.zhoubinbin@loongson.cn> <48aff2aacea030e5d2acc89b0aa1ded52dd74906.1692783907.git.zhoubinbin@loongson.cn>
In-Reply-To: <48aff2aacea030e5d2acc89b0aa1ded52dd74906.1692783907.git.zhoubinbin@loongson.cn>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 23 Aug 2023 16:11:55 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+aEcXxeCNyj3sm3r9w5+5ja8aTXkH=_E54TB0angGQWQ@mail.gmail.com>
Message-ID: <CAL_Jsq+aEcXxeCNyj3sm3r9w5+5ja8aTXkH=_E54TB0angGQWQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] LoongArch: dts: DeviceTree for Loongson-2K0500
To:     Binbin Zhou <zhoubinbin@loongson.cn>
Cc:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

On Wed, Aug 23, 2023 at 4:55=E2=80=AFAM Binbin Zhou <zhoubinbin@loongson.cn=
> wrote:
>
> Add DeviceTree file for Loongson-2K0500 processor, which integrates one
> 64-bit dual emission superscalar LA264 processor core.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  arch/loongarch/boot/dts/Makefile              |   2 +
>  .../boot/dts/loongson-2k0500-ref.dts          |  89 ++++++
>  arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 254 ++++++++++++++++++
>  3 files changed, 345 insertions(+)
>  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500-ref.dts
>  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500.dtsi

This introduces some warnings which don't seem to be addressed by your
fixes to loongson,liointc.yaml:

/home/rob/proj/linux-dt/.build-loongarch/arch/loongarch/boot/dts/loongson-2=
k0500-ref.dtb:
interrupt-controller@1fe11400: reg-names: ['main', 'isr0'] is too
short
        from schema $id:
http://devicetree.org/schemas/interrupt-controller/loongson,liointc.yaml#
/home/rob/proj/linux-dt/.build-loongarch/arch/loongarch/boot/dts/loongson-2=
k0500-ref.dtb:
interrupt-controller@1fe11400: Unevaluated properties are not allowed
('reg-names' was unexpected)
        from schema $id:
http://devicetree.org/schemas/interrupt-controller/loongson,liointc.yaml#
/home/rob/proj/linux-dt/.build-loongarch/arch/loongarch/boot/dts/loongson-2=
k0500-ref.dtb:
interrupt-controller@1fe11400: reg: [[0, 534844416, 0, 64], [0,
534843456, 0, 8]] is too short
        from schema $id:
http://devicetree.org/schemas/interrupt-controller/loongson,liointc.yaml#
/home/rob/proj/linux-dt/.build-loongarch/arch/loongarch/boot/dts/loongson-2=
k0500-ref.dtb:
interrupt-controller@1fe11440: reg-names: ['main', 'isr0'] is too
short
        from schema $id:
http://devicetree.org/schemas/interrupt-controller/loongson,liointc.yaml#
/home/rob/proj/linux-dt/.build-loongarch/arch/loongarch/boot/dts/loongson-2=
k0500-ref.dtb:
interrupt-controller@1fe11440: interrupt-names:0: 'int0' was expected
        from schema $id:
http://devicetree.org/schemas/interrupt-controller/loongson,liointc.yaml#
/home/rob/proj/linux-dt/.build-loongarch/arch/loongarch/boot/dts/loongson-2=
k0500-ref.dtb:
interrupt-controller@1fe11440: Unevaluated properties are not allowed
('interrupt-names', 'reg-names' were unexpected)
        from schema $id:
http://devicetree.org/schemas/interrupt-controller/loongson,liointc.yaml#
/home/rob/proj/linux-dt/.build-loongarch/arch/loongarch/boot/dts/loongson-2=
k0500-ref.dtb:
interrupt-controller@1fe11440: reg: [[0, 534844480, 0, 64], [0,
534843464, 0, 8]] is too short
        from schema $id:
http://devicetree.org/schemas/interrupt-controller/loongson,liointc.yaml#

Rob
