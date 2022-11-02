Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BC90616555
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 15:51:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbiKBOvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 10:51:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229708AbiKBOvK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 10:51:10 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 011C52A700
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 07:51:07 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A2EopTU064892;
        Wed, 2 Nov 2022 09:50:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1667400651;
        bh=ATCfvfeh2cJtdQTJVgRZ8kAKxa671yfA3L7iZ9NvMno=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=scucFKSHqYerHdLExO6+282zTjvDv3ZD5sDt+kwBccEf2ni5xtLszrVDMMNNXgv5J
         ukuPIv/I3eLy8ggDyLF5gfjDXJLZkvMx6ELBA4Leu8EWfSvb5zB3wyOfT+KvGlacVg
         IdXUsMRpvoW84rmc7eUkoIg78JObEtqRC/R3oF2g=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A2Eoph0008286
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 2 Nov 2022 09:50:51 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 2 Nov
 2022 09:50:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 2 Nov 2022 09:50:50 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A2Eoo2M081701;
        Wed, 2 Nov 2022 09:50:50 -0500
Date:   Wed, 2 Nov 2022 09:50:49 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Wadim Egorov <w.egorov@phytec.de>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: ti: Add bindings for PHYTEC AM64x
 based hardware
Message-ID: <20221102145049.tpqo4qwhybbq6yuu@entitle>
References: <20221102134923.3438022-1-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221102134923.3438022-1-w.egorov@phytec.de>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14:49-20221102, Wadim Egorov wrote:
> Add devicetree bindings for AM64x based phyCORE-AM64 SoM
> and phyBOARD-Electra RDK.

Please add a immutable link to the product (if possible with board
information) etc.

> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> index 28b8232e1c5b..2b9c045e39bf 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -38,6 +38,12 @@ properties:
>                - ti,am642-sk
>            - const: ti,am642
>  
> +      - description: K3 AM642 SoC PHYTEC phyBOARD-Electra
> +        items:
> +          - const: phytec,am642-phyboard-electra-rdk
> +          - const: phytec,am64-phycore-som
> +          - const: ti,am642

Are there more platforms on the route based on the SoM that we can add
as a diff with a single board? Is this something we can club
with the previous entry in a manner that allows us to not to duplicate
ti,am642 ?

> +
>        - description: K3 AM654 SoC
>          items:
>            - enum:
> -- 
> 2.34.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
