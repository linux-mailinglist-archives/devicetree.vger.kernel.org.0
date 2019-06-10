Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8043B967
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2019 18:28:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390210AbfFJQZ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jun 2019 12:25:26 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:34393 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389927AbfFJQZ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jun 2019 12:25:26 -0400
Received: by mail-lj1-f194.google.com with SMTP id p17so1286503ljg.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 09:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eipFIuppUEBChZz5jEQKJnDCMNGzgpujxoDXEsClrz0=;
        b=GcbtoBrrxpTZ95MoI5I8PI/IWR4S1C/FKE6nwL2MNQJYCI1uPUShUb/2eNhZ09VLHr
         ceSg3kp6GOu+D2HcrZ7XtTVUc/yl8vPCa1nV9yVOkOnsiY2EmSzZQ9I/eEdMyrbofzKe
         7m1RSAId+c4XJqB8uAAf9noe7TGBhcN8oiXc6Rk2DzjzCF9G8TtpzUU0GYnNIACu6kkI
         mwFOqnG/HQaThHI0C/HCE1ZF0UfQjhOmbKNkEKJxuxbUpbt9RMfIjF+hVxzUfmEyoOVf
         eUrXyKqi9cos/KDis7qsJVzqmszRFnfpzNouAxxflgIBDlp+cG7uGzX2fgCaLuEPVseu
         vzMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=eipFIuppUEBChZz5jEQKJnDCMNGzgpujxoDXEsClrz0=;
        b=sNqNOoF4206ngACbJxalgMkLgyk3H51SPY2Cv1OzfkSk/F2VWW1GlrPW/bCDNrUjza
         +DRB8yQ9LLt0EzLcLccwYo1UOtTb8UaZBof/vyC0ktLYyQVwga1gVXeCmc+kCV6ylXxX
         KGsnG60aevCXs+4DUXTdcWLDhtGQjXbeAkk/hQLjJLzbKiH6tCswnBRbOTdTuC/u0YcH
         /0yuWNRinxEZLS4ZQbE8h+1FDJtQyNekrnJJABL0ax1Hrou+oba5E2fhsOS+mH9FMqfz
         fAcmTbNuILKYuZatlsOQvHT6kWHA/7EaYTRsFThPkhex/zmUEn930HG2Tzo7DsGkOHL2
         OeQQ==
X-Gm-Message-State: APjAAAXUFwM36WaYAeoReNYN7e+udhXvC7d23LSNU2u6/wObws+q+Psc
        LqUBSeaN+Vo/ImKIjkIWyKGzaA==
X-Google-Smtp-Source: APXvYqyznVsw9V2kAPwrtxirNjclrLSAsstJiifDJVxq7J/9R9usmEoDiJrJb+d2UJTKXwgwWbCvvg==
X-Received: by 2002:a2e:9188:: with SMTP id f8mr17623754ljg.33.1560183923858;
        Mon, 10 Jun 2019 09:25:23 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.86.166])
        by smtp.gmail.com with ESMTPSA id 24sm2516567ljs.63.2019.06.10.09.25.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Jun 2019 09:25:23 -0700 (PDT)
Subject: Re: [PATCH v5 4/5] dt-bindings: mtd: Add bindings for TI's AM654
 HyperBus memory controller
To:     Vignesh Raghavendra <vigneshr@ti.com>,
        David Woodhouse <dwmw2@infradead.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Boris Brezillon <bbrezillon@kernel.org>,
        Marek Vasut <marek.vasut@gmail.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mtd@lists.infradead.org,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
        devicetree@vger.kernel.org, Mason Yang <masonccyang@mxic.com.tw>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190609103227.24875-1-vigneshr@ti.com>
 <20190609103227.24875-5-vigneshr@ti.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <a808ffca-02a8-14b0-3422-c0905ab212a6@cogentembedded.com>
Date:   Mon, 10 Jun 2019 19:25:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190609103227.24875-5-vigneshr@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 06/09/2019 01:32 PM, Vignesh Raghavendra wrote:

> Add binding documentation for TI's HyperBus memory controller present on
> AM654 SoC.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
> v5:
> Update binding example to show MMIO mux
> Fix reg property for flash slave.
> 
>  .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 51 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> 
> diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> new file mode 100644
> index 000000000000..c2a2c2b42a92
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> @@ -0,0 +1,51 @@
> +Bindings for HyperBus Memory Controller (HBMC) on TI's K3 family of SoCs
> +
> +Required properties:
> +- compatible : "ti,am654-hbmc" for AM654 SoC
> +- reg : Two entries:
> +	First entry pointed to the register space of HBMC controller
> +	Second entry pointing to the memory map region dedicated for
> +	MMIO access to attached flash devices
> +- ranges : Address translation from offset within CS to allocated MMIO
> +	   space in SoC
> +
> +Optional properties:
> +- mux-controls : phandle to the multiplexer that controls selection of
> +		 HBMC vs OSPI inside Flash SubSystem. Default is OSPI,
> +		 if property is absent.
> +		 See Documentation/devicetree/bindings/mux/reg-mux.txt
> +		 for mmio-mux binding details
> +
> +Example:
> +
> +	fss: fss@47000000 {

   What's FSS?
   Regardless of the answer, the node names should be generic, like "memory-controller@".

> +		compatible = "syscon", "simple-mfd";

   If it's "sycon", the nme should probably be "system-controller".

> +		reg = <0x0 0x47000000 0x0 0x100>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		hbmc_mux: hbmc-mux {

   So, just "multiplexor"?

> +			compatible = "mmio-mux";
> +			#mux-control-cells = <1>;
> +			mux-reg-masks = <0x4 0x2>; /* 0: reg 0x4, bit 1 */
> +		};
> +
> +		hbmc: hbmc@47034000 {

   Should be named "memory-controller@47034000", according to the DT spec.

> +			compatible = "ti,am654-hbmc";
> +			reg = <0x0 0x47034000 0x0 0x100>,
> +				<0x5 0x00000000 0x1 0x0000000>;
> +			power-domains = <&k3_pds 55>;
> +			#address-cells = <2>;
> +			#size-cells = <1>;
> +			ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
> +				 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
> +			mux-controls = <&hbmc_mux 0>;
> +
> +			/* Slave flash node */
> +			flash@0,0 {
> +				compatible = "cypress,hyperflash", "cfi-flash";
> +				reg = <0x0 0x0 0x4000000>;
> +			};
> +		};
> +	};
[...]

MBR, Sergei
