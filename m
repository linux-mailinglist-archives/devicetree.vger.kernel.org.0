Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2F31283ACB
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 17:37:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728055AbgJEPh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 11:37:26 -0400
Received: from mail.kernel.org ([198.145.29.99]:40912 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727974AbgJEPhV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Oct 2020 11:37:21 -0400
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 39D69206DD
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 15:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1601912241;
        bh=QmCHU7ZxDcq6ahUu/Woq4aquYA1/mphg3DrGpWdrRbQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=k+0fVyXfLLXGACLXCvdTmPulSkHgkspFMXi7KefygJKCfJbG/vj/3IAy1vEWoixUC
         Cuq4uSaRIQBQMTlnAWwRZ4oTzPm6mF83Dxxlx63TbUPW0pUUNAWTPcwX8+4SjIs3DL
         EkHoArsgWBhd7GRbKAnW6FXHsVvWc1463jI0sMIc=
Received: by mail-ot1-f46.google.com with SMTP id o8so9020369otl.4
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 08:37:21 -0700 (PDT)
X-Gm-Message-State: AOAM531hcJiJ8C2D17oFZnLIv8RTn4U/eUi1sdj90hhRNPaPaeAvykkO
        doZyM7cDDGVUuxyHK1ULvfY3+BRP11IrIroCKg==
X-Google-Smtp-Source: ABdhPJzsH1uqqAAoHtLEvcKmHTiLoocvbR9S34oDR55xwJDNuRX1Yovmy1gHyfHIqS1U8Incnd+L5O/K2x8K3Jfy/RQ=
X-Received: by 2002:a9d:1c90:: with SMTP id l16mr4428421ota.192.1601912240573;
 Mon, 05 Oct 2020 08:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com> <20201005071403.17450-4-ricardo.canuelo@collabora.com>
In-Reply-To: <20201005071403.17450-4-ricardo.canuelo@collabora.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 5 Oct 2020 10:37:09 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ5E6LSis1LzgEGPN6aEktkFamRn19v0s-x_OZ+8yMTiA@mail.gmail.com>
Message-ID: <CAL_JsqJ5E6LSis1LzgEGPN6aEktkFamRn19v0s-x_OZ+8yMTiA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: mfd: google,cros-ec: add missing properties
To:     =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 5, 2020 at 2:14 AM Ricardo Ca=C3=B1uelo
<ricardo.canuelo@collabora.com> wrote:
>
> Add missing properties that are currently used in the examples of
> subnode bindings and in many DTs.
> This fixes all current dt_binding_check and dtbs_check warnings related
> to this binding.
>
> Signed-off-by: Ricardo Ca=C3=B1uelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/mfd/google,cros-ec.yaml          | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/=
Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index f49c0d5d31ad..c2dc05cdef9f 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -59,18 +59,58 @@ properties:
>        whether this nvram is present or not.
>      type: boolean
>
> +  mtk,rpmsg-name:

This should have been mediatek,rpmsg-name, but I guess we're stuck with it.

> +    description:
> +      Must be defined if the cros-ec is a rpmsg device for a Mediatek
> +      ARM Cortex M4 Co-processor. Contains the name pf the rpmsg
> +      device. Used to match the subnode to the rpmsg device announced by
> +      the SCP.
> +    $ref: /schemas/types.yaml#/definitions/string
> +
>    spi-max-frequency:
>      description: Maximum SPI frequency of the device in Hz.
>
>    reg:
>      maxItems: 1
>
> +  '#address-cells':
> +    enum: [1, 2]
> +
> +  '#size-cells':
> +    enum: [0, 1]

This doesn't really make sense. Either there's a size or there isn't.

[...]

> +  "^regulator@[a-f0-9]+$":
> +  "^ec-codec@[a-f0-9]+$":

What does the number space represent and is it the same for each of
these? If not, then this is kind of broken. There's only 1 number
space at a given level.

Rob
