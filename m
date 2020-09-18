Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6C96270466
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 20:54:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726192AbgIRSyc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 14:54:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:55116 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726121AbgIRSyc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Sep 2020 14:54:32 -0400
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BE448221EC
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 18:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1600455271;
        bh=MTIW355N5770LNhcizrqElTPdd1Z+DWoNy1nh/Pxcl4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Z65fD12qWO+Hysp4hF9eF3cwQFnHUIMY4Vq6zn0+8yflj7K8k8Bt/MfTu8ETyyztR
         +YRRz3NBHOETOtVvwh/zsDArvpdUwaAIB+ldQnWtuvi5eYASPNFCfvsgNyzbUhk7dX
         DVRni2BN0VMebNzgQJbEf46+Z+cUrR8ze5DBIsBo=
Received: by mail-oi1-f177.google.com with SMTP id u126so8168639oif.13
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 11:54:31 -0700 (PDT)
X-Gm-Message-State: AOAM531uZVdCg+Z01DZvI3PRoyBhwv5RL8Cb9uDMbIZrmthF03EBaB/5
        +jH0ccmwoboa619DCReS4lbt7kFrtygtM+nX8Q==
X-Google-Smtp-Source: ABdhPJxa6SLEyrvMzE3y4VWtdB3vRAq+p/PX6Wl96kp1WSzwdGBy4xUeNHXIzNU74uh8nZT63Cc+aFS3bX0n680JWbg=
X-Received: by 2002:aca:1711:: with SMTP id j17mr10713572oii.152.1600455270993;
 Fri, 18 Sep 2020 11:54:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1600357241.git.robin.murphy@arm.com> <3647765303e8936d45a69fe7c1f92b8d1b45de4b.1600452762.git.robin.murphy@arm.com>
In-Reply-To: <3647765303e8936d45a69fe7c1f92b8d1b45de4b.1600452762.git.robin.murphy@arm.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 18 Sep 2020 12:54:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKQUyp4tUrw149yF5PHgz6HQ3_Szy1PD=L8=pzU_vWotw@mail.gmail.com>
Message-ID: <CAL_JsqKQUyp4tUrw149yF5PHgz6HQ3_Szy1PD=L8=pzU_vWotw@mail.gmail.com>
Subject: Re: [PATCH v2.1 1/3] perf: Add Arm CMN-600 DT binding
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, "Saidi, Ali" <alisaidi@amazon.com>,
        tsahee@amazon.com, harb@amperecomputing.com,
        tuanphan@os.amperecomputing.com, james.yang@arm.com,
        patrik.berglund@arm.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 18, 2020 at 12:24 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Document the requirements for the CMN-600 DT binding. The internal
> topology is almost entirely discoverable by walking a tree of ID
> registers, but sadly both the starting point for that walk and the
> exact format of those registers are configuration-dependent and not
> discoverable from some sane fixed location. Oh well.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>
> fix up $id as well, oops...
>
>  .../devicetree/bindings/perf/arm,cmn.yaml     | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/arm,cmn.yaml

Do you expect this to cover more than cmn-600? If not, use the
compatible string for the file name.

>
> diff --git a/Documentation/devicetree/bindings/perf/arm,cmn.yaml b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
> new file mode 100644
> index 000000000000..e4fcc0de25e2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2020 Arm Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/perf/arm,cmn.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm CMN (Coherent Mesh Network) Performance Monitors
> +
> +maintainers:
> +  - Robin Murphy <robin.murphy@arm.com>
> +
> +properties:
> +  compatible:
> +    const: arm,cmn-600
> +
> +  reg:
> +    items:
> +      - description: Physical address of the base (PERIPHBASE) and
> +          size (up to 64MB) of the configuration address space.
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 4
> +    items:
> +      - description: Overflow interrupt for DTC0
> +      - description: Overflow interrupt for DTC1
> +      - description: Overflow interrupt for DTC2
> +      - description: Overflow interrupt for DTC3
> +    description: One interrupt for each DTC domain implemented must
> +      be specified, in order. DTC0 is always present.

What's DTC?

> +
> +  arm,root-node:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Offset from PERIPHBASE of the configuration
> +      discovery node (see TRM definition of ROOTNODEBASE).

You can enforce some alignment:

multipleOf: 0x4000

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - arm,root-node
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    pmu@50000000 {
> +        compatible = "arm,cmn-600";
> +        reg = <0x50000000 0x4000000>;
> +        /* 4x2 mesh with one DTC, and CFG node at 0,1,1,0 */
> +        interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
> +        arm,root-node = <0x104000>;
> +    };
> +...
> --
> 2.28.0.dirty
