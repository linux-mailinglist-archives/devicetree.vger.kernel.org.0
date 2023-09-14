Return-Path: <devicetree+bounces-269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DC77A0988
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:42:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA7581C2088C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F8522EEF;
	Thu, 14 Sep 2023 15:35:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513FB10A1E
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 15:35:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C441CC433CB;
	Thu, 14 Sep 2023 15:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694705744;
	bh=Ju8fenjXTyd/K+wHzVsjLNClOY80IHgJMtcyvBlfjmk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=dUCL3TIUh4znuHOvv58BnZG9NZoo+y3KSjsU77qVUNwBJDcPwy47AFaZwdxb0SjUv
	 EOcZksxwPymqdWyc5+kwa2OyUDb+hM7/fLNaFZ97nAJ+k7iY95b45bdssg1GyOspdp
	 0OFvSjt8xXSsqo5OYPxSu0v0k7XFmkGmClUzEG8h+xj/ezjutC6Z3ixUO+EQM+E2VQ
	 yU1pn8ifJmqL22OVygU48SumXZZC9oWymv9lP0wjHO9mS5nhmU0HxfP35eL/yaTJqE
	 njf2iZcXj5BHd4ND4cPlQsEd2Ycywdpd/Omci7F2RHgC2SZkTiPmGdx/0wj/R4htxx
	 vYD7BDRhERZ7w==
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-501bef6e0d3so1854932e87.1;
        Thu, 14 Sep 2023 08:35:44 -0700 (PDT)
X-Gm-Message-State: AOJu0YzCAf1mw7JeAuU7PR7z2zI7Dw8/2vGoLu6OtgRYChgMGToWhepu
	+oFXLxheGLxn1BW9IKmFobqdh2qvOfJBIMKsVA==
X-Google-Smtp-Source: AGHT+IE1RnjvWFNIuSNj4l8UNKkVgGMwvfV29PG1PE7VwgNjeKcvCEsaBa8E2YgJHEyydgRIT0BG3NyT6oXTcXkv/FU=
X-Received: by 2002:a05:6512:110c:b0:502:9fce:b6cc with SMTP id
 l12-20020a056512110c00b005029fceb6ccmr5749162lfg.11.1694705742911; Thu, 14
 Sep 2023 08:35:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230913111644.29889-1-hnagalla@ti.com> <20230913111644.29889-2-hnagalla@ti.com>
In-Reply-To: <20230913111644.29889-2-hnagalla@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 14 Sep 2023 10:35:30 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+4tkCjSiyLMKakdr+z44gAGP1a=P3BFfqLMvs7a-TA2g@mail.gmail.com>
Message-ID: <CAL_Jsq+4tkCjSiyLMKakdr+z44gAGP1a=P3BFfqLMvs7a-TA2g@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: remoteproc: k3-m4f: Add K3 AM64x SoCs
To: Hari Nagalla <hnagalla@ti.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, p.zabel@pengutronix.de, 
	martyn.welch@collabora.com, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, linux-remoteproc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 13, 2023 at 6:17=E2=80=AFAM Hari Nagalla <hnagalla@ti.com> wrot=
e:
>
> K3 AM64x SoC has a Cortex M4F subsystem in the MCU voltage domain.
> The remote processor's life cycle management and IPC mechanisms are
> similar across the R5F and M4F cores from remote processor driver
> point of view. However, there are subtle differences in image loading
> and starting the M4F subsystems.
>
> The YAML binding document provides the various node properties to be
> configured by the consumers of the M4F subsystem.
>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Signed-off-by: Hari Nagalla <hnagalla@ti.com>
> ---
> Changes since v1:
>  - Spelling corrections
>  - Corrected to pass DT checks
>
> Changes since v2:
>  - Missed spelling correction to commit message
>
> Changes since v3:
>  - Removed unnecessary descriptions and used generic memory region names
>  - Made mboxes and memory-region optional
>  - Removed unrelated items from examples
>
> Changes since v4:
>  - Rebased to the latest kernel-next tree
>  - Added optional sram memory region for m4f device node
>
> Changes since v5:
>  - None
>
>  .../bindings/remoteproc/ti,k3-m4f-rproc.yaml  | 136 ++++++++++++++++++
>  1 file changed, 136 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-m4=
f-rproc.yaml
>
> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-m4f-rproc=
.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-m4f-rproc.yaml
> new file mode 100644
> index 000000000000..21b7f14d9dc4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-m4f-rproc.yaml
> @@ -0,0 +1,136 @@
> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/remoteproc/ti,k3-m4f-rproc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI K3 M4F processor subsystems
> +
> +maintainers:
> +  - Hari Nagalla <hnagalla@ti.com>
> +  - Mathieu Poirier <mathieu.poirier@linaro.org>
> +
> +description: |
> +  Some K3 family SoCs have Arm Cortex M4F cores. AM64x is a SoC in K3
> +  family with a M4F core. Typically safety oriented applications may use
> +  the M4F core in isolation without an IPC. Where as some industrial and
> +  home automation applications, may use the M4F core as a remote process=
or
> +  with IPC communications.
> +
> +$ref: /schemas/arm/keystone/ti,k3-sci-common.yaml#
> +
> +properties:
> +
> +  compatible:
> +    enum:
> +      - ti,am64-m4fss
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 2
> +
> +  reg:
> +    items:
> +      - description: IRAM internal memory region
> +      - description: DRAM internal memory region
> +
> +  reg-names:
> +    items:
> +      - const: iram
> +      - const: dram
> +
> +  resets:
> +    maxItems: 1
> +
> +  firmware-name:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: Name of firmware to load for the M4F core
> +
> +  mboxes:
> +    description: |
> +      Mailbox specifier denoting the sub-mailbox, to be used for communi=
cation
> +      with the remote processor. This property should match with the
> +      sub-mailbox node used in the firmware image.
> +    maxItems: 2
> +
> +  memory-region:
> +    description: |
> +      phandle to the reserved memory nodes to be associated with the
> +      remoteproc device. The reserved memory nodes should be carveout no=
des,
> +      and should be defined with a "no-map" property as per the bindings=
 in
> +      Documentation/devicetree/bindings/reserved-memory/reserved-memory.=
yaml
> +      Optional memory regions available for firmware specific purposes.
> +    maxItems: 8
> +    items:
> +      - description: regions used for DMA allocations like vrings, vring=
 buffers
> +                     and memory dedicated to firmware's specific purpose=
s.
> +    additionalItems: true
> +
> +  sram:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    minItems: 1
> +    maxItems: 4
> +    items:
> +      maxItems: 4

You are saying there are 1-4 entries and each entry is 4 cells. What's
in the 4 cells?

From the description and example, looks like you only have 1 cell (a
phandle) so maxItems should be 1.

Your example should fail, but I'm not sure why it doesn't.

Rob

