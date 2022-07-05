Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E43CF567831
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 22:10:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbiGEUKB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 16:10:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbiGEUJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 16:09:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34D33192BF
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 13:09:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BD8B161BC4
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 20:09:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26CC5C341C7
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 20:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657051790;
        bh=uqBO+Sd3XgwWFUSdYCMLjGo4Ho2ngsPJEUpSteUZVN0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=nzkejFYLzRtYfgFAN0vfTNzE06Z6y1HEBOE620kowTlQwjp+0TZPbfkhTwybMIuiB
         PoTHjwp1ug9kao64rxNORFVJPUaJa/9K56Mr4UJ+9TBpPHsquZYnk1o+015uJn+eRZ
         g+2j0aWaSRFZ9k19j61yauXix3EgSALSoRp4lfGIhkl8PdxjgejDUy71RivYOKO1gG
         WXHC5erlDvYQ2AWm1FU86rTwLrGCoB1RPTWp5k4KKu/3/V80IfX850AYvR5s2MuIC3
         dA2gfaJbUcqLpW0wWoTUMXfL9FpyGgBf8z+Swuym0bQN61+q5P0RDY4lSHZJbL6nHH
         ZB0Lfwsz6Qa4A==
Received: by mail-vs1-f54.google.com with SMTP id u187so1773025vsb.3
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 13:09:50 -0700 (PDT)
X-Gm-Message-State: AJIora+bpIzcj672lf1CHMbavrEjQjfJjrgpAnRgovJBRyc0l/RjzYD0
        EkEcysTuoAI6YX9aRzD+eCief4sBbs8Fv3xMHA==
X-Google-Smtp-Source: AGRyM1sesfKHvuGSg2oCHKQwFZRnq4GyIP0/kuhRyyGMkf9jG3VxsUhp3xMCdVoZOmTzyB9grRHxavhp8xkBWV91+5Q=
X-Received: by 2002:a67:c082:0:b0:356:eccb:f5c9 with SMTP id
 x2-20020a67c082000000b00356eccbf5c9mr4519120vsi.85.1657051789058; Tue, 05 Jul
 2022 13:09:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220705175450.11886-1-kabel@kernel.org>
In-Reply-To: <20220705175450.11886-1-kabel@kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 5 Jul 2022 14:09:36 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+9H3YQgugiRpXsiLuHpfvKDYVSgLVsXq2kcbz-Uaqocg@mail.gmail.com>
Message-ID: <CAL_Jsq+9H3YQgugiRpXsiLuHpfvKDYVSgLVsXq2kcbz-Uaqocg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: bus: add device tree bindings for fsl,p1021rdb-pc-cpld
To:     =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>
Cc:     devicetree@vger.kernel.org,
        =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 5, 2022 at 11:54 AM Marek Beh=C3=BAn <kabel@kernel.org> wrote:
>
> Add binding for CPLD bus interface of Freescale P1021RDB Combo Board
> CPLD Design.
>
> Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>
> ---
>  .../bindings/bus/fsl,p1021rdb-pc-cpld.yaml    | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc=
-cpld.yaml
>
> diff --git a/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.y=
aml b/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> new file mode 100644
> index 000000000000..822dfb93dcd8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/fsl,p1021rdb-pc-cpld.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: CPLD Bus Inteface for Freescale P1021RDB Combo Board CPLD Design
> +
> +maintainers:
> +  - Pali Roh=C3=A1r <pali@kernel.org>
> +
> +description: |
> +  A simple bus enabling access to peripherals on boards with use Freesca=
le
> +  P1021RDB Combo Board CPLD Design.
> +
> +  The "fsl,p1021rdb-pc-cpld" follows the "simple-bus" set of properties,=
 as
> +  specified in the Devicetree Specification. It is an extension of "simp=
le-bus"
> +  because some registers are CPLD specific and allows to identify if boa=
rd has
> +  wired CPLD according to Freescale P1021RDB Combo Board CPLD Design.
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: fsl,p1021rdb-pc-cpld
> +  required:
> +    - compatible
> +
> +properties:
> +  $nodename:
> +    pattern: "^cpld(@[0-9a-f]+(,[0-9a-f]+)?)?$"
> +
> +  compatible:
> +    items:
> +      - const: fsl,p1021rdb-pc-cpld
> +      - const: simple-bus
> +
> +  '#address-cells':
> +    enum: [ 1, 2 ]
> +
> +  '#size-cells':
> +    enum: [ 1, 2 ]
> +
> +  reg:
> +    maxItems: 1
> +
> +  ranges: true
> +
> +required:
> +  - compatible
> +  - '#address-cells'
> +  - '#size-cells'
> +  - reg
> +  - ranges
> +
> +additionalProperties:
> +  type: object
> +
> +examples:
> +  - |
> +
> +    localbus {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <1>;
> +
> +        cpld@3,0 {
> +            #address-cells =3D <1>;
> +            #size-cells =3D <1>;
> +            compatible =3D "fsl,p1021rdb-pc-cpld", "simple-bus";
> +            reg =3D <0x3 0x0 0x20000>;

Not really a simple-bus if it has registers to init/program the bus.

> +            ranges =3D <0x0 0x3 0x0 0x20000>;
> +        };
> +    };
> --
> 2.35.1
>
