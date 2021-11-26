Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 212F145E393
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 01:05:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230114AbhKZAIp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 19:08:45 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:1390 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351986AbhKZAGo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 19:06:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1637885012; x=1669421012;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=skXtZu+B08GypQvVSh6izlTUDdUzL+y7dk1LX/ilERQ=;
  b=JHb2soko3szlC/oWCu1A3Fwrfs9JAxhSon/itGurqJWmNyIN5byoJt9I
   5C+7n45fgLbCRF2Xpl8nZQ1LrVy6PPn5OAywN2zE0haSaODoIh6Ty0UCs
   I09ji5FfW0t5zNYXeM6cfi3ciV1Cue+fpXOMlUheNYaPI4+44dgnonwuC
   Hag+0/1EWaJjcxnY2BoaiK/mIoxGbH4v9nI/PO6UOfplkKvqcfgJ+PaWX
   F9W8P2aiX1CsMNAJ6Y4jqF7Krb5h7G6PrdeMYeZyLy6u0PUgqaawcL3tF
   gEU5gGW5WRE3H1ioXoZ+nh+zYGmrIX9rqaw3HOJwAfa1KuJ8X+4VhAPuQ
   Q==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631548800"; 
   d="scan'208";a="186672207"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 26 Nov 2021 08:01:30 +0800
IronPort-SDR: nOMxjdKkOYxy3t9ShrNnAD+5nrHLu/FP3UZ/n0Knrvwz57qz6bD9Sn8A3XtuF8+Zbta3J6bukE
 +hfFqkOyJbAh4cCkEFYbpWYZ4NrxmAux6du+kL3U5B8tYLO81Xufr/0PZ/lDAT7PQBMW0QJ9d+
 8mzFkurW0WP8t5iVDe1/MDo46u3R3AECPr0ZDCG2C9vDPvfnI3wL4WSiDWM1T0CDfVl3p62RqA
 syGdi9YJwYPa/QWgARa7fu6iHSHndoI5h2+Rs2WhBcZ922OD/mAAegt3VVhuNUATYcmko4VRaP
 Qv7y1G7aG27TR8EviO8PRQ8/
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 15:36:23 -0800
IronPort-SDR: cdQTIC0b3HtvcQNCyoD1EVdDkUhnDbhRKqbkMsK6b829lsDScUk7kJoSKuiQe7AiRNmHAWnbif
 l75J4zJN7C5eJH242hS1wTV64jv+l3kZg1bp7rvzSvAlZp928Of+ipZcjnZLhyeI/ArotUTlkn
 sC91uvVTQwfIg5EvvYe32jicmMuB+WmgNrSTOeXPtveoQrZhE+uhOi2YFuDwVogeCj9POsKgdY
 sFMWEV3gSLaQ7nZZ3zJIC8VaSVE5zSplAWjI1/bexJ7e7bRAbybcQQj3yWzyp+AhOGzt42MSdy
 B5k=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 16:01:32 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4J0ZfM68NTz1RtVp
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 16:01:31 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1637884891; x=1640476892; bh=skXtZu+B08GypQvVSh6izlTUDdUzL+y7dk1
        LX/ilERQ=; b=qKohmARgvOKxhuc+fRA9gnCOydClERju4jeHU7DxtW3XoNJe0vh
        Fp9Nk/XXZybB4v/3XDQXozphhGS/vm+Aim/yomdqFQXsvkbN7H12AA/qej7mCVRx
        4E3ssNJ8Jw5GGglBIZt18Dpil7L3hgfwlac7BZ9TfwEDFcTDOMzSUEwr3xfCWXje
        yQylstJCrx6LDEIzj0oeEYZyT+GIWauiq3u1s6YyEPzWKJEMnBwZKDtxa6H7Z7OV
        yrr7zesEnqbjd9UNVESivWCh/CHyo8Q1v/CwNyITi0H+EZVFdOTNVvqpjAWpeErq
        qRQWU+YjJpoVzwkg5Ay8ytXCSM2iNyMarog==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 0wtGxsdUwD2P for <devicetree@vger.kernel.org>;
        Thu, 25 Nov 2021 16:01:31 -0800 (PST)
Received: from [10.225.54.48] (unknown [10.225.54.48])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4J0ZfK6v4Zz1RtVl;
        Thu, 25 Nov 2021 16:01:29 -0800 (PST)
Message-ID: <28be175a-8e9b-937a-de35-bcc218006fe9@opensource.wdc.com>
Date:   Fri, 26 Nov 2021 09:01:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.2
Subject: Re: [PATCH] dt-bindings: dma: snps,dw-axi-dmac: Document optional
 reset
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heng Sia <jee.heng.sia@intel.com>
Cc:     "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20211125152008.162571-1-geert@linux-m68k.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital
In-Reply-To: <20211125152008.162571-1-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/11/26 0:20, Geert Uytterhoeven wrote:
> "make dtbs_check":
> 
>     Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
>     arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml: dma-controller@50000000: 'resets' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	    From schema: Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
> 
> The Synopsys DesignWare AXI DMA Controller on the Canaan K210 SoC
> exposes its reset signal.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
> index 90d9274e5464e396..06ddffaada295171 100644
> --- a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
> +++ b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
> @@ -53,6 +53,9 @@ properties:
>      minimum: 1
>      maximum: 8
>  
> +  resets:
> +    maxItems: 1
> +
>    snps,dma-masters:
>      description: |
>        Number of AXI masters supported by the hardware.
> 

Looks good to me.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research
