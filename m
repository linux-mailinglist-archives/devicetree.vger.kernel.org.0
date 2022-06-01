Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 774CF53A97E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 17:00:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350763AbiFAPAk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 11:00:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231872AbiFAPAk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 11:00:40 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17CA46C56D;
        Wed,  1 Jun 2022 08:00:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 25E65B81B9D;
        Wed,  1 Jun 2022 15:00:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C485DC3411F;
        Wed,  1 Jun 2022 15:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654095635;
        bh=YGBTTwSez2bvfmHZWHX0qISMoJt6yn6ld2BIY8Pf8UM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=cG//5M4O1K4VQHiu7hcVQVh/4Zxh9AvFFesY8jMGKFRY1mVp/Yny3u+qVZ/1/1g3W
         aGO4g0cl7gtxfSqd+VtIYgrSqZW4LGMhR1dKfh0ye5gc0Z32vSPvIB6GDxtpKKwmC4
         N/5+tFZ+kAADzxzkIN8NT8EmuuuJy1R7TuEImkMbGsNznkKzQbjZhNRgnSR1UFyX9n
         TomfBZlAkUWQJjPidL49cnfqsedJDtVQ7VpBokgCo5XZdPUl7Qssih6/6F7fkG3IUs
         oOXMrj2QvpbjVnwfxF5d2hScJkMnyov8ihXrPZ6JIcQknb1M+AEvL0msMJIshWMns3
         jaF3mTpkSUccQ==
Received: by mail-vk1-f175.google.com with SMTP id bs5so988404vkb.4;
        Wed, 01 Jun 2022 08:00:35 -0700 (PDT)
X-Gm-Message-State: AOAM532dZbRQwAfT6p9S+x9kQVc04fndpDrFDgitGYFaFP8cWQ01mVWV
        bGWcUNGWFgt5a6Oa5h3hFd7VgHfOlvkgXaJ/Rw==
X-Google-Smtp-Source: ABdhPJymiVPo7vGcy5JwOlMETu5yUO9NIUiNBVFO5/rVGJpoIUAebOk9xJMF8Q2JeIIvSPmHqCU4L2PbSauC0d309Pg=
X-Received: by 2002:a1f:73c1:0:b0:35c:cb95:832 with SMTP id
 o184-20020a1f73c1000000b0035ccb950832mr34656vkc.15.1654095634725; Wed, 01 Jun
 2022 08:00:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220427175956.362987-1-robh@kernel.org>
In-Reply-To: <20220427175956.362987-1-robh@kernel.org>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 1 Jun 2022 10:00:23 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKxyeWosex+WAPS-e_OTp19-zJHEWnzcCK6wt4jcbb5=A@mail.gmail.com>
Message-ID: <CAL_JsqKxyeWosex+WAPS-e_OTp19-zJHEWnzcCK6wt4jcbb5=A@mail.gmail.com>
Subject: Re: [dtschema PATCH] schemas: i2c: Add missing properties and descriptions
To:     devicetree@vger.kernel.org,
        Mailing List <devicetree-spec@vger.kernel.org>
Cc:     Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Matt Johnston <matt@codeconstruct.com.au>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 12:59 PM Rob Herring <robh@kernel.org> wrote:
>
> Add remaining properties and descriptions from i2c.txt binding in Linux
> kernel tree. The Cc list are the authors of i2c.txt.
>
> Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Cc: Eugen Hristev <eugen.hristev@microchip.com>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Cc: Jon Hunter <jonathanh@nvidia.com>
> Cc: Alain Volmat <alain.volmat@foss.st.com>

Ping!

If you are waiting on company approvals, please let me know.


> Cc: Matt Johnston <matt@codeconstruct.com.au>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Cc list,
>
> I need your or your company's permission to relicense i2c.txt contents
> (used in 'description') to BSD-2-Clause. Please ack and provide a
> copyright if desired.
>
>  dtschema/schemas/i2c/i2c-controller.yaml | 143 +++++++++++++++++++++++
>  1 file changed, 143 insertions(+)
>
> diff --git a/dtschema/schemas/i2c/i2c-controller.yaml b/dtschema/schemas/i2c/i2c-controller.yaml
> index 91eac62a6bc8..c2e803ebcc3f 100644
> --- a/dtschema/schemas/i2c/i2c-controller.yaml
> +++ b/dtschema/schemas/i2c/i2c-controller.yaml
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: BSD-2-Clause
>  # Copyright 2018 Linaro Ltd.
> +# Copyright 2022 Arm Ltd.
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/i2c/i2c-controller.yaml#
> @@ -28,6 +29,91 @@ properties:
>      minimum: 1000
>      maximum: 3000000
>
> +  i2c-scl-falling-time-ns:
> +    description:
> +      Number of nanoseconds the SCL signal takes to fall; t(f) in the I2C
> +      specification.
> +
> +  i2c-scl-internal-delay-ns:
> +    description:
> +      Number of nanoseconds the IP core additionally needs to setup SCL.
> +
> +  i2c-scl-rising-time-ns:
> +    description:
> +      Number of nanoseconds the SCL signal takes to rise; t(r) in the I2C
> +      specification.
> +
> +  i2c-sda-falling-time-ns:
> +    description:
> +      Number of nanoseconds the SDA signal takes to fall; t(f) in the I2C
> +      specification.
> +
> +  i2c-analog-filter:
> +    type: boolean
> +    description:
> +      Enable analog filter for i2c lines.
> +
> +  i2c-digital-filter:
> +    type: boolean
> +    description:
> +      Enable digital filter for i2c lines.
> +
> +  i2c-digital-filter-width-ns:
> +    description:
> +      Width of spikes which can be filtered by digital filter
> +      (i2c-digital-filter). This width is specified in nanoseconds.
> +
> +  i2c-analog-filter-cutoff-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Frequency that the analog filter (i2c-analog-filter) uses to distinguish
> +      which signal to filter. Signal with higher frequency than specified will
> +      be filtered out. Only lower frequency will pass (this is applicable to a
> +      low-pass analog filter). Typical value should be above the normal i2c bus
> +      clock frequency (clock-frequency). Specified in Hz.
> +
> +  mctp-controller:
> +    type: boolean
> +    description:
> +      Indicates that the system is accessible via this bus as an endpoint for
> +      MCTP over I2C transport.
> +
> +  multi-master:
> +    type: boolean
> +    description:
> +      States that there is another master active on this bus. The OS can use
> +      this information to adapt power management to keep the arbitration awake
> +      all the time, for example. Can not be combined with 'single-master'.
> +
> +  scl-gpios:
> +    maxItems: 1
> +    description:
> +      Specifies the GPIO related to SCL pin. Used for GPIO bus recovery.
> +
> +  sda-gpios:
> +    maxItems: 1
> +    description:
> +      Specifies the GPIO related to SDA pin. Optional for GPIO bus recovery.
> +
> +  single-master:
> +    type: boolean
> +    description:
> +      States that there is no other master active on this bus. The OS can use
> +      this information to detect a stalled bus more reliably, for example. Can
> +      not be combined with 'multi-master'.
> +
> +  smbus:
> +    type: boolean
> +    description:
> +      States that additional SMBus restrictions and features apply to this bus.
> +      An example of feature is SMBusHostNotify. Examples of restrictions are
> +      more reserved addresses and timeout definitions.
> +
> +  smbus-alert:
> +    type: boolean
> +    description:
> +      states that the optional SMBus-Alert feature apply to this bus.
> +
>    no-detect:
>      type: boolean
>      description:
> @@ -38,4 +124,61 @@ patternProperties:
>    '@[0-9a-f]+$':
>      type: object
>
> +    properties:
> +      reg:
> +        items:
> +          items:
> +            - oneOf:
> +                - maximum: 0x7f
> +                - minimum: 0x40000000
> +                  maximum: 0x4000007f
> +                - minimum: 0x80000000
> +                  maximum: 0x800003ff
> +                - minimum: 0xc0000000
> +                  maximum: 0xc00003ff
> +        description: |
> +          One or many I2C slave addresses. These are usually a 7 bit addresses.
> +          However, flags can be attached to an address. I2C_TEN_BIT_ADDRESS is
> +          used to mark a 10 bit address. It is needed to avoid the ambiguity
> +          between e.g. a 7 bit address of 0x50 and a 10 bit address of 0x050
> +          which, in theory, can be on the same bus.
> +          Another flag is I2C_OWN_SLAVE_ADDRESS to mark addresses on which we
> +          listen to be devices ourselves.
> +
> +      host-notify:
> +        description:
> +          Device uses SMBus host notify protocol instead of interrupt line.
> +          Requires being connected to an adapter that supports this feature.
> +
> +      interrupts:
> +        description:
> +          I2C core will treat "irq" interrupt (or the very first interrupt if
> +          not using interrupt names) as primary interrupt for the slave.
> +
> +      interrupt-names:
> +        anyOf:
> +          - {} # Any name is allowed.
> +          - items:
> +              enum:
> +                - irq
> +                - wakeup
> +                - smbus_alert
> +            description:
> +              Names which are recognized by I2C core,  other names are left to
> +              individual bindings.
> +
> +      wakeup-source:
> +        description:
> +          Device can be used as a wakeup source. The device should also have
> +          "wakeup" interrupt for the device. If "wakeup" interrupt name is not
> +          present in the binding, then primary interrupt will be used as wakeup
> +          interrupt.
> +
> +    required:
> +      - reg
> +
> +dependentRequired:
> +  i2c-analog-filter-cutoff-frequency: [ i2c-analog-filter ]
> +  i2c-digital-filter-width-ns: [ i2c-digital-filter ]
> +
>  additionalProperties: true
> --
> 2.34.1
>
