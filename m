Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EF5C3A8DD1
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 02:46:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231703AbhFPAsy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 20:48:54 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:43690 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230265AbhFPAsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 20:48:54 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15G0kiZ2084288;
        Tue, 15 Jun 2021 19:46:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623804404;
        bh=7rtfbVLXaE7PkbHl5uhDEpLyQlkGcTjAEC/u8n3uBzk=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=JaaVv/ifzJsTRBUAXkJ2qJg4fvaOPlZ4N9I9cSv6l+uMOzpctPFwBYr7oAOiFREAO
         1qowiRh0t1L3s0lNsv/uQhJyN7cDPgkPZikLLP2YelXSmXDJtR6pHEBtNP29Uxt5Ow
         A/MIOEck12yyRe7mf7OR0F7d5ZNJ9EEm2WAPmM7g=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15G0kiJL014393
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Jun 2021 19:46:44 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 15
 Jun 2021 19:46:44 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 15 Jun 2021 19:46:44 -0500
Received: from [10.250.35.153] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15G0ki55016273;
        Tue, 15 Jun 2021 19:46:44 -0500
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Fix compatible used in
 ti,pruss-intc
To:     Sudeep Holla <sudeep.holla@arm.com>, <devicetree@vger.kernel.org>
CC:     Rob Herring <robh+dt@kernel.org>
References: <20210607184257.2010276-1-sudeep.holla@arm.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <46d8d576-012b-dedc-02c6-283c75a170ce@ti.com>
Date:   Tue, 15 Jun 2021 19:46:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210607184257.2010276-1-sudeep.holla@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/7/21 1:42 PM, Sudeep Holla wrote:
> As per soc/ti/ti,pruss.yaml schema, only ti,am4376-pruss0 and
> ti,am4376-pruss1 are valid compatibles. Replace ti,am4376-pruss with
> ti,am4376-pruss1 based on example in soc/ti/ti,pruss.yaml
> 
> This fixes the below warning with 'make DT_CHECKER_FLAGS=-m dt_binding_check':
> 
>     interrupt-controller/ti,pruss-intc.example.dt.yaml:0:0: /example-1/pruss@0:
>     failed to match any schema with compatible: ['ti,am4376-pruss']
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Suman Anna <s-anna@ti.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks for catching and fixing this Sudeep.

Acked-by: Suman Anna <s-anna@ti.com>

> ---
>  .../devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
> index 9731dd4421a1..051beb45d998 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
> @@ -134,7 +134,7 @@ additionalProperties: false
>      /* AM4376 PRU-ICSS */
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>      pruss@0 {
> -        compatible = "ti,am4376-pruss";
> +        compatible = "ti,am4376-pruss1";
>          reg = <0x0 0x40000>;
>          #address-cells = <1>;
>          #size-cells = <1>;
> 

