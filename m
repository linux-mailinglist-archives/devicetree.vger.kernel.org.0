Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC30D326D1C
	for <lists+devicetree@lfdr.de>; Sat, 27 Feb 2021 14:21:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230014AbhB0NTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Feb 2021 08:19:16 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:40910 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbhB0NTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Feb 2021 08:19:15 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11RDIPNI033126;
        Sat, 27 Feb 2021 07:18:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614431905;
        bh=/gMjoi5n/lOUsXf47I+g+3J3i82DoLKJoOthZsT+anU=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=bhDFgJV+fnNZ4uzq6ob2Ij0GXB6AR8vGzO9RLFjQyqCwuofDQ7b3yeTcsN77OtXVo
         jUrN8GoJaJ4GmZF2PjauGqcr3RUyD3MkGYCFEUqImw/EOCRhs9jXJM1Bqh5dkXNN/0
         /vSDw7WikwquK2HT8USBX4dIsCo+vvoIQTY7jtK8=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11RDIPuQ048722
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 27 Feb 2021 07:18:25 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sat, 27
 Feb 2021 07:18:24 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sat, 27 Feb 2021 07:18:24 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11RDIO1G058155;
        Sat, 27 Feb 2021 07:18:24 -0600
Date:   Sat, 27 Feb 2021 07:18:24 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: ti: Add bindings for AM642 SK
Message-ID: <20210227131824.42eyzttpopjdatqm@shallow>
References: <20210226184251.26451-1-lokeshvutla@ti.com>
 <20210226184251.26451-2-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210226184251.26451-2-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 00:12-20210227, Lokesh Vutla wrote:
> AM642 StarterKit (SK) board is a low cost, small form factor board
> designed for TI’s AM642 SoC.
> Add DT binding documentation for AM642 SK.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> index 393f94a64f8d..a9e7f981631e 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -37,6 +37,7 @@ properties:
>          items:
>            - enum:
>                - ti,am642-evm
> +              - ti,am642-sk
>            - const: ti,am642
>  
>  additionalProperties: true
> -- 
> 2.30.0
> 

Just documenting for lore:
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210202081530.14984-2-lokeshvutla@ti.com/
is the previous version with the Ack.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D)/Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
