Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E713B35C822
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 16:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238998AbhDLOEX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 10:04:23 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:55082 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238881AbhDLOEW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 10:04:22 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13CE3svD036245;
        Mon, 12 Apr 2021 09:03:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1618236234;
        bh=zgjIJOX67F133GyE7jFMloTf8XSU9KafolLWOzdOCHU=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=GLttpQixOpKg7csaL/7+ly+3UWCRc8q8OQgJAAgKdWXjfBk9NNszg8B4w9DxB//GD
         7AQVV0/v23QxBM1lIZ8H2pUxsO5MdkPo/TTpA4PjqjKn4gNjCVbihRxjgnq/2GlrPh
         Rpv7iHWOdE3ksXsbV1szHIy6QacEz6GJWmuk7VY8=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13CE3sLL081025
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 12 Apr 2021 09:03:54 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 12
 Apr 2021 09:03:54 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 12 Apr 2021 09:03:54 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13CE3sLX042972;
        Mon, 12 Apr 2021 09:03:54 -0500
Date:   Mon, 12 Apr 2021 09:03:54 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC:     Benoit Parrot <bparrot@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Tony Lindgren <tony@atomide.com>,
        Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am654-base-board: remove ov5640
Message-ID: <20210412140354.bpwclelhcmepuepg@remodeler>
References: <20210412075306.102884-1-tomi.valkeinen@ideasonboard.com>
 <20210412075306.102884-2-tomi.valkeinen@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210412075306.102884-2-tomi.valkeinen@ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10:53-20210412, Tomi Valkeinen wrote:
> AM654 EVM boards are not shipped with OV5640 sensor module, it is a
> separate purchase. OV5640 module is also just one of the possible
> sensors or capture boards you can connect.
> 
> However, for some reason, OV5640 has been added to the board dts file,
> making it cumbersome to use other sensors.
> 
> Remove the OV5640 from the dts file so that it is easy to use other
> sensors via DT overlays.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  .../arm64/boot/dts/ti/k3-am654-base-board.dts | 27 -------------------
>  1 file changed, 27 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> index fe3043943906..76358b4944e1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts

will be good if you can submit this patch separately. dra7 and am654 are
maintained in different trees.


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
