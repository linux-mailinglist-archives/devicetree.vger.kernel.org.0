Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 93A424DA8B
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 21:48:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726723AbfFTTsG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 15:48:06 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:44347 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726184AbfFTTsG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jun 2019 15:48:06 -0400
Received: by mail-lj1-f193.google.com with SMTP id k18so3794943ljc.11
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 12:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DiLGYKI//ln9TQDjClJ3qLkZ4+6ogsSbHs45QXIwYsg=;
        b=jNNUOCYmU/JK5+UWg28Aqbf8xYiFLRnSldyJKKOqmDY0/vwfwE0cxokADlvibQ7WG9
         rKkDfuom+wSxmcPQ+tJKT2gBiSZ9xXNQM2/4mrOgSiE06jLE14C22X5ZRyIqg9MUiKQg
         UJb2kmWO2BWr+EoPSphPXDggbCNB9IhYM0IHV7UFpNZNWbdLw+HXPPXU0eNMASytrLfk
         nb78wyy65As2v8t6QrnFye0EOJEX2L6QyEbxBrSo5VQP54x0Yd40C4WTNeTDXYntDPr6
         QkuuLiU/eLvCA5QTImNc8I2QqSKs/hSxL3sMvyBUEblA2hC6pI012RMnPjdLz/bQ1KbK
         WdfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=DiLGYKI//ln9TQDjClJ3qLkZ4+6ogsSbHs45QXIwYsg=;
        b=SFosbPgpLbVnAFGYw3MB+OCkg+CY891L7pKPgifYlx1ynnBEgve2D0A2h8OHdcGQSG
         PETAgttHttqZbbl75cnIzZIUb7247yKKYzlgn6C4OZXtLqgt91hkTtCAGTkypkPcWQPs
         0WzT4Fw2g5O9oSXpl1OkAXAeoduXoWsH4PXwuTmWi7sTj5cuxf4cgH872qv4FHKDFfKj
         PE0p7hs/G6c7KLnmlsMB4b95X+HvweUmtq7grSEEssQP1JON4akcfQ6YkbU3ZGCkyZGe
         zdnBA9BNim34fqhg+4kpjyMC/8I7Rf5CD0ywjU/FtogHXGofGpRiXaajSMx6y3qKP+sM
         fqvQ==
X-Gm-Message-State: APjAAAXYgcIKe4oLNv8gsuJgJ0i2AhOg25cPT30/FUiLofNfTOKFn6J7
        Owap562U+2q0vENEP9zREyg+Kw==
X-Google-Smtp-Source: APXvYqyFd6TRCOumDBpWc4p1kzxveKVV0+WF6v+02t8D9nWCK7W5yGioY0Fkzuf6ZjwlPM2PnfVURg==
X-Received: by 2002:a2e:9106:: with SMTP id m6mr56628892ljg.164.1561060084407;
        Thu, 20 Jun 2019 12:48:04 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.80.47])
        by smtp.gmail.com with ESMTPSA id g4sm83832lfb.31.2019.06.20.12.48.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Jun 2019 12:48:03 -0700 (PDT)
Subject: Re: [PATCH v7 4/5] dt-bindings: mtd: Add bindings for TI's AM654
 HyperBus memory controller
To:     Vignesh Raghavendra <vigneshr@ti.com>,
        Boris Brezillon <bbrezillon@kernel.org>,
        Marek Vasut <marek.vasut@gmail.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mtd@lists.infradead.org,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        devicetree@vger.kernel.org, Mason Yang <masonccyang@mxic.com.tw>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190620172250.9102-1-vigneshr@ti.com>
 <20190620172250.9102-5-vigneshr@ti.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <d4ddd75d-92ab-4bca-5e2f-853ade714ba2@cogentembedded.com>
Date:   Thu, 20 Jun 2019 22:48:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190620172250.9102-5-vigneshr@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/20/2019 08:22 PM, Vignesh Raghavendra wrote:

> Add binding documentation for TI's HyperBus memory controller present on
> AM654 SoC.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
> 
> v7: Fix example to move HyperBus node out of syscon
> v6: Use generic names for bindings
> 
>  .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 52 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> 
> diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
> new file mode 100644
> index 000000000000..d424a0b88ab6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
[...]
> +Example:
> +
> +	system-controller@47000000 {
> +		compatible = "syscon", "simple-mfd";
> +		reg = <0x0 0x47000000 0x0 0x100>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		hbmc_mux: multiplexer {
> +			compatible = "mmio-mux";
> +			#mux-control-cells = <1>;
> +			mux-reg-masks = <0x4 0x2>; /* 0: reg 0x4, bit 1 */
> +		};
> +

   Empty line not needed here.

> +	};
> +
> +	hbmc: hyperbus@47034000 {
> +		compatible = "ti,am654-hbmc";
> +		reg = <0x0 0x47034000 0x0 0x100>,
> +			<0x5 0x00000000 0x1 0x0000000>;
> +		power-domains = <&k3_pds 55>;
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
> +			 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
> +		mux-controls = <&hbmc_mux 0>;
> +
> +			/* Slave flash node */

   Overindented.

> +		flash@0,0 {
> +			compatible = "cypress,hyperflash", "cfi-flash";
> +			reg = <0x0 0x0 0x4000000>;
> +		};
> +	};
[...]

MBR, Sergei
