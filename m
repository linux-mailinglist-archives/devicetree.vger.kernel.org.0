Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5522039DDB4
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 15:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230226AbhFGNeL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 09:34:11 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:44314 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbhFGNeK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 09:34:10 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 157DWABx060961;
        Mon, 7 Jun 2021 08:32:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623072730;
        bh=LBEQwb0c+DHkpxvRBlg1mCEL41QwUFIaV67psQ5lexc=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=QQk21NmK7iCiEz08s/LVr5v5Fi406rUb7lTjVAbFecJHRtaW5gNuYSHEwD6CNsfKT
         rC6gVx6zy6fHj1GYoHtXVd6vHv6vTN9fJxUWKTJRT33e7usVAEvAvjY+t167yKwhCn
         bgmq9S687TAgcvxu4tlu/wyGwPz+VHBndY87T/F4=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 157DWA6A076889
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 7 Jun 2021 08:32:10 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 7 Jun
 2021 08:32:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 7 Jun 2021 08:32:10 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 157DW9WC022486;
        Mon, 7 Jun 2021 08:32:09 -0500
Date:   Mon, 7 Jun 2021 08:32:09 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Sinthu Raja <sinthu.raja@mistralsolutions.com>
CC:     Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: arm: ti: Add bindings for J721E EAIK
Message-ID: <20210607133209.lnx4cist3ajs557j@conduit>
References: <20210607093314.23909-1-sinthu.raja@ti.com>
 <20210607093314.23909-2-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210607093314.23909-2-sinthu.raja@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15:03-20210607, Sinthu Raja wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
> 
> J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
> for TI’s J721E SoC.
> Add DT binding documentation for J721E EAIK

Need a url for the board.

> 
> Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> ---
> Change in V2:
> - Fix for dt_binding_check error.
> 
>  Documentation/devicetree/bindings/arm/ti/k3.yaml                | 2 ++
>  .../devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml         | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> index c5aa362e4026..923dd7cf1dc6 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -29,6 +29,8 @@ properties:
>  
>        - description: K3 J721E SoC
>          items:
> +          - enum:
> +              - ti,j721e-eaik
>            - const: ti,j721e
>  
>        - description: K3 J7200 SoC
> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> index 6070456a7b67..464cee128811 100644
> --- a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> @@ -135,7 +135,7 @@ examples:
>    - |
>      / {
>          model = "Texas Instruments K3 J721E SoC";
> -        compatible = "ti,j721e";
> +        compatible = "ti,j721e-eaik", "ti,j721e";
I see what we are attempting to do here.

Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
probably should strip off the board specifics out in the
examples. but, that belongs to a different patch.

>          #address-cells = <2>;
>          #size-cells = <2>;
>  
> -- 
> 2.31.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
