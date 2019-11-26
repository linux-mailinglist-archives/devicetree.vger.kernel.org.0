Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B2995109B6B
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2019 10:43:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727275AbfKZJnH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Nov 2019 04:43:07 -0500
Received: from mx07-00252a01.pphosted.com ([62.209.51.214]:10708 "EHLO
        mx07-00252a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727636AbfKZJnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Nov 2019 04:43:05 -0500
Received: from pps.filterd (m0102628.ppops.net [127.0.0.1])
        by mx07-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xAQ9ZCK4012387
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2019 09:37:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org; h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=od7NtWv8A1ft46ESIAn5eCrlELpL9JojAJd+KINECi4=;
 b=yj/42p8M5m7IE8Ht/7o0/YFharUMGlOYox7IFIQoFEp+X0CJKnG6o7cszwmadDYA+gBI
 NaezpF3RrC+VBxFBOuhSX3zMBUm192U7kmMPxO8RKjuHAK2asOaOAVTJeSwGfbRXtSXc
 NW9eZkhwWmF3e6914M2B745l0ybdIHZZNL+vWWVUD+D7geHfL7Ox3jKf+61xpSryRn+I
 is7l8ZgXclE9+jxA4zJ1w3xi5DAfJYLucdrQj0y6Q+0ot8pcDJj1VLe73AfXUtsUweE+
 lNv9yXNw3q2tXzXlix8BsUBbJwya9M8NOg03ODuXEHFQ86mdKaQaT4pNkKZw3YIAuHiR Jw== 
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        by mx07-00252a01.pphosted.com with ESMTP id 2weu29hee6-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2019 09:37:09 +0000
Received: by mail-wm1-f72.google.com with SMTP id k7so882785wmj.3
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2019 01:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=od7NtWv8A1ft46ESIAn5eCrlELpL9JojAJd+KINECi4=;
        b=UM3FQllSTPplmabTC7jU+LvD7cb2Fa240ifZRDTJXFxChlEsJNHcaR/AfbBSmXRdnz
         2eiiq9qJPnT7Bm3WqcNbdo8c4vDT5hRaMcQ8ASCvNqNXVLwg/s1NqhwXvB53f2NG9AmT
         lVVGP/N/bHbHh3OgwN8MRxsK7oMBDUm+LtHpx8j3LDajq+Xk2K7AjT8aqk6HZn0WacaN
         56T4do1RvngA5k9avohIS2oeWpX1pZvBfn7UJ00yurrTqZ7o88io8MPygmKqimVdQo0y
         OtpPjyMbh16nPQzTN8uBuuXF+zqug9rEoU7H0q3piiYbiYM4EcyUjpEUGzCPnfstzE5E
         0+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=od7NtWv8A1ft46ESIAn5eCrlELpL9JojAJd+KINECi4=;
        b=lo+AxBdyozXuh3KPPIfrfsP8JT5W9dWHz+/Dvopydf11keJ2fTRIuhGmOXoParfu3m
         601fkqGoE20vOIEtCJu4yGB24MZabzupcEpLqI8l/+2wcM4bDER3hKPhqzaHTjD2f65t
         erbBBOOPHVt/rLdmgUytDst24mWrCUsmHpr8qML/8b21MGTofMmBl+0/I7JDNfX3btem
         iHTaS6ruonM/2IglibVY7Zf1IDHew4QT74NcgnXL4KMovpDcUGpPQgqgbL1pxibU0g8z
         jWOxDOec73pyWrc+8mScpBAIA9OmrKOIuspU9jq9WN2Ez+DYJx8r4hpqhRd3numeVDK1
         +gGA==
X-Gm-Message-State: APjAAAWDSyZ9WmhnCcZR7kZfas1A26nQ8JEjGCKn+08u8YIS8U6RJlm7
        z2QIjKH9MApAosdjKsv0WB0jo7LBWLYtmAeV94kz/T78F+0SW1caqIMSusJYF4K+DjCxREqvbzY
        to1KBU60JEqJTPxsqPjEVxQ==
X-Received: by 2002:a5d:4946:: with SMTP id r6mr28487130wrs.155.1574761028346;
        Tue, 26 Nov 2019 01:37:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqwBt2FmyEREb7ZvdP/DpQYA/wjkntFQB86TPOEh4oNOeIIRXcU33m0OX9mwck9d8Gn6k8YdQg==
X-Received: by 2002:a5d:4946:: with SMTP id r6mr28487093wrs.155.1574761027986;
        Tue, 26 Nov 2019 01:37:07 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:f57f:65b0:b998:e2ca? ([2a00:1098:3142:14:f57f:65b0:b998:e2ca])
        by smtp.gmail.com with ESMTPSA id e16sm2372706wme.35.2019.11.26.01.37.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2019 01:37:07 -0800 (PST)
Subject: Re: [PATCH v3 3/7] ARM: dts: bcm2711: Enable PCIe controller
To:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        andrew.murray@arm.com, maz@kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
Cc:     james.quinlan@broadcom.com, mbrugger@suse.com,
        f.fainelli@gmail.com, jeremy.linton@arm.com,
        linux-pci@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-4-nsaenzjulienne@suse.de>
From:   Phil Elwell <phil@raspberrypi.org>
Message-ID: <ede90a60-8194-4035-01c2-2673f4a8cfe7@raspberrypi.org>
Date:   Tue, 26 Nov 2019 09:37:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191126091946.7970-4-nsaenzjulienne@suse.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-26_01:2019-11-26,2019-11-26 signatures=0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nicolas,

On 26/11/2019 09:19, Nicolas Saenz Julienne wrote:
> This enables bcm2711's PCIe bus, which is hardwired to a VIA
> Technologies XHCI USB 3.0 controller.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> This will likely need a rebase once the RPi GENET patches land.
> 
> Changes since v2:
>    - Remove unused interrupt-map
>    - correct dma-ranges to it's full size, non power of 2 bus DMA
>      constraints now supported in linux-next[1]
>    - add device_type
>    - rename alias from pcie_0 to pcie0
> 
> Changes since v1:
>    - remove linux,pci-domain
> 
> [1] https://lkml.org/lkml/2019/11/21/235
> 
>   arch/arm/boot/dts/bcm2711.dtsi | 41 ++++++++++++++++++++++++++++++++++
>   1 file changed, 41 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index 667658497898..2e121fc8b3d0 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -288,6 +288,47 @@ IRQ_TYPE_LEVEL_LOW)>,
>   		arm,cpu-registers-not-fw-configured;
>   	};
>   
> +	scb {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +
> +		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
> +			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
> +
> +		pcie0: pcie@7d500000 {
> +			compatible = "brcm,bcm2711-pcie";
> +			reg = <0x0 0x7d500000 0x9310>;
> +			device_type = "pci";
> +			#address-cells = <3>;
> +			#interrupt-cells = <1>;
> +			#size-cells = <2>;
> +			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pcie", "msi";
> +			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +			interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143
> +							IRQ_TYPE_LEVEL_HIGH>;
> +			msi-controller;
> +			msi-parent = <&pcie0>;
> +
> +			ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000
> +				  0x0 0x04000000>;
> +			/*
> +			 * The wrapper around the PCIe block has a bug
> +			 * preventing it from accessing beyond the first 3GB of
> +			 * memory. As the bus DMA mask is rounded up to the
> +			 * closest power of two of the dma-range size, we're
> +			 * forced to set the limit at 2GB. This can be
> +			 * harmlessly changed in the future once the DMA code
> +			 * handles non power of two DMA limits.
> +			 */
> +			dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
> +				      0x0 0xc0000000>;

The comment doesn't match the data here - I think for now the size field 
needs to be reduced to 2GB to match the comment.

Phil

> +			brcm,enable-ssc;
> +		};
> +	};
> +
>   	cpus: cpus {
>   		#address-cells = <1>;
>   		#size-cells = <0>;
> 
