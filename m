Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67CB866E5C0
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 19:15:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230039AbjAQSOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 13:14:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232707AbjAQSMf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 13:12:35 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63ED93F2B5
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:54:28 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id e3so22229307wru.13
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PDzwAFI7NBesRBvPpfeIPtEzZSb+xUUpXwXOHSl1luo=;
        b=Hr42PPN/ETUhkQGNTUqP2occd6d3n44+ZN007SdYA9cv6gNhuuwLqKhtjrAPecDX7K
         KdC2P5AHmQsCPAmrwB8+OqVAo07XHmwec01YcbupJqGHJVam3RQ1I8jl2XnMvPrZljCK
         ZMOQLB70YjCOnNXKZI/38urIgrZaF6buAtGI6z+ltzklGbxq/UmC2e3Gk1ujgnhFz5lg
         1EROEohGLtn3b7YtN+kSvooBR7shAwv2EHtIpz0OE5dCdRyqKzWwMVnL37h4mEHNeztP
         KYMgu2KavRql6RmqsEf4G5E4Dm6i6BGGDLh00BGK9DmOHZNeSdV3ryp2bBuXpmJfWQly
         cgcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PDzwAFI7NBesRBvPpfeIPtEzZSb+xUUpXwXOHSl1luo=;
        b=JGvuVZidwCGHFkQPJQHfqRFh+ckBjjdASp5Nv1rhdtqy8SqfUxg6bdsfVPqIyD/bUx
         VlsdaIXwHZVHNzl2IJ+E7/O5mGom44IOQHH4bzRgp5wVNc08/jWdm0tdIRmUQ8p9eLL2
         3bZqVN2+nNpK+zduLQHkIl33zZgNpuVoK7b5GNYEhRo2xImGhw8TZPU0BofBxjIkDKdw
         FHBMwkMikJuU0NcNDZ5+xf3WmgvFzI5UQhA2N0FNxlY8qEF0AM/XMPyuVSGAc7wfHliL
         bnX8JbTcV03vB+xmuZukN+p1kNd4Ob+HK25XUMW2zCyK+Rj5uZ1FNiCoqZQN6I8C9ain
         0NOg==
X-Gm-Message-State: AFqh2kqhcsm2xfwLBqn6/Nlg2oGZEwTIgnqs4iSuZ1suzi351JKncCXE
        hDc6lYCaRhhDkxk+xu8yFSBYMw==
X-Google-Smtp-Source: AMrXdXu2SY+DU3MzEjMVnIbsWRFlLT57464MW3lnYliLEfIm4ztW1Ty8bc4WuTfr7sZG3hwwh4KuQQ==
X-Received: by 2002:a5d:45cd:0:b0:2bd:d94f:432c with SMTP id b13-20020a5d45cd000000b002bdd94f432cmr3716401wrs.26.1673978066786;
        Tue, 17 Jan 2023 09:54:26 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v14-20020adff68e000000b002365730eae8sm29487213wrp.55.2023.01.17.09.54.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 09:54:26 -0800 (PST)
Message-ID: <5ebee797-aa87-8db4-228c-dfe236ad32f8@linaro.org>
Date:   Tue, 17 Jan 2023 18:54:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 03/19] dt-bindings: bus: add CDX bus controller device
 tree bindings
Content-Language: en-US
To:     Nipun Gupta <nipun.gupta@amd.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
        rafael@kernel.org, eric.auger@redhat.com,
        alex.williamson@redhat.com, cohuck@redhat.com,
        song.bao.hua@hisilicon.com, mchehab+huawei@kernel.org,
        maz@kernel.org, f.fainelli@gmail.com, jeffrey.l.hugo@gmail.com,
        saravanak@google.com, Michael.Srba@seznam.cz, mani@kernel.org,
        yishaih@nvidia.com, jgg@ziepe.ca, jgg@nvidia.com,
        robin.murphy@arm.com, will@kernel.org, joro@8bytes.org,
        masahiroy@kernel.org, ndesaulniers@google.com,
        linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     okaya@kernel.org, harpreet.anand@amd.com, nikhil.agarwal@amd.com,
        michal.simek@amd.com, git@amd.com
References: <20230117134139.1298-1-nipun.gupta@amd.com>
 <20230117134139.1298-4-nipun.gupta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117134139.1298-4-nipun.gupta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 14:41, Nipun Gupta wrote:
> Add device tree bindings for CDX bus controller.

Subject: drop second/last, redundant "device tree bindings". The
"dt-bindings" prefix is already stating that these are bindings.

> 
> Signed-off-by: Nipun Gupta <nipun.gupta@amd.com>
> ---
>  .../bindings/bus/xlnx,cdxbus-controller.yaml  | 68 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/xlnx,cdxbus-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/bus/xlnx,cdxbus-controller.yaml b/Documentation/devicetree/bindings/bus/xlnx,cdxbus-controller.yaml
> new file mode 100644
> index 000000000000..b2f186864021
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/xlnx,cdxbus-controller.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/xlnx,cdxbus-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AMD CDX bus controller
> +
> +description: |
> +  CDX bus controller for AMD devices is implemented to dynamically
> +  detect CDX bus and devices on these bus using the firmware.
> +  The CDX bus manages multiple FPGA based hardware devices, which
> +  can support network, crypto or any other specialized type of
> +  devices. These FPGA based devices can be added/modified dynamically
> +  on run-time.
> +
> +  All devices on the CDX bus will have a unique streamid (for IOMMU)
> +  and a unique device ID (for MSI) corresponding to a requestor ID
> +  (one to one associated with the device). The streamid and deviceid
> +  are used to configure SMMU and GIC-ITS respectively.
> +
> +  iommu-map property is used to define the set of stream ids
> +  corresponding to each device and the associated IOMMU.
> +
> +  The MSI writes are accompanied by sideband data (Device ID).
> +  The msi-map property is used to associate the devices with the
> +  device ID as well as the associated ITS controller.
> +
> +  rproc property (xlnx,rproc) is used to identify the remote processor
> +  with which APU (Application Processor Unit) interacts to find out
> +  the bus and device configuration.
> +
> +maintainers:
> +  - Nipun Gupta <nipun.gupta@amd.com>
> +  - Nikhil Agarwal <nikhil.agarwal@amd.com>
> +
> +properties:
> +  compatible:
> +    const: xlnx,cdxbus-controller

This misses SoC specific compatible. Drop "bus" - redundant. I would
also say - drop controller - do you see any other devices with such
compatible naming? Use naming consistent with other devices in the
kernel. Just open some controllers - SPI, I2C etc. and look there.

> +
> +  iommu-map: true

No mask?

> +
> +  msi-map: true
> +
> +  xlnx,rproc:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle to the remoteproc_r5 rproc node using which APU interacts
> +      with remote processor.
> +
> +required:
> +  - compatible
> +  - iommu-map
> +  - msi-map
> +  - xlnx,rproc
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    cdxbus-controller {

Node names should be generic, so just cdx.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +        compatible = "xlnx,cdxbus-controller";
> +        /* define map for RIDs 250-259 */
> +        iommu-map = <250 &smmu 250 10>;

Best regards,
Krzysztof

