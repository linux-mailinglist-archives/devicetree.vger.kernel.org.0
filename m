Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8121937A433
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 12:03:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231319AbhEKKET (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 06:04:19 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:57520 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231243AbhEKKES (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 06:04:18 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14BA34KU105094;
        Tue, 11 May 2021 05:03:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1620727384;
        bh=3LkQCNATfByWQAA2a+RSOMHpj62foCHvetTqco0gq5w=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=fEynL5NyKn4cNu8Gw8uS3rAvWWxpS2PDdkWs5FcSB9X56GVlrZ7p8gRaPJ+1FjGfY
         KYmzhanSQtFdzJ78a0ECXI6acupVnx+aiCtChkEwLwhP1boRzLRqpuBlv2Teyl/4an
         my0D9sZBclYOGfHqGUPBYwo8CldvAayoAZsmPEEA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14BA34RY041435
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 11 May 2021 05:03:04 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 11
 May 2021 05:03:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 11 May 2021 05:03:04 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14BA33QN096595;
        Tue, 11 May 2021 05:03:04 -0500
Date:   Tue, 11 May 2021 15:33:02 +0530
From:   Pratyush Yadav <p.yadav@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am654-base-board: remove ov5640
Message-ID: <20210511100300.asvcz662ju56xwil@ti.com>
References: <20210423083120.73476-1-tomi.valkeinen@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210423083120.73476-1-tomi.valkeinen@ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/04/21 11:31AM, Tomi Valkeinen wrote:
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

Acked-by: Pratyush Yadav <p.yadav@ti.com>

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.
