Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E339261DAB
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 21:40:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731011AbgIHTks (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 15:40:48 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:38570 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732145AbgIHTkr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 15:40:47 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088DBCkM071411;
        Tue, 8 Sep 2020 08:11:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599570672;
        bh=K94NpLuLcZamDWncDjL+O9SnQmyRZwOM566OjMmwI8s=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=nolUPczBc80bVbwUoHTexGdtQQavmAZ/mMiHL+BPc7iW6DVpJnZSD/DDAUm6ecjJI
         OWB7CAjb4c1ZVQgmXZHD44D1uYIwPga6S7phqFKeEY0en3Mzpd0n5Ks2m4ZGW+Cezc
         K1KEoXvkK9sQOOnsluGUpm7rFT1v194PYikLiVx4=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088DBCT8024364;
        Tue, 8 Sep 2020 08:11:12 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 08:11:12 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 08:11:12 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088DBAii065838;
        Tue, 8 Sep 2020 08:11:11 -0500
Subject: Re: [PATCH v2 1/4] dt-bindings: display: ti,am65x-dss: add missing
 properties to dt-schema
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
CC:     Rob Herring <robh+dt@kernel.org>
References: <20200827083045.76356-1-tomi.valkeinen@ti.com>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <673547ac-51d9-bb8d-d001-c289e08568a6@ti.com>
Date:   Tue, 8 Sep 2020 16:11:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200827083045.76356-1-tomi.valkeinen@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob, Tero, Nishanth,

On 27/08/2020 11:30, Tomi Valkeinen wrote:
> Add assigned-clocks, assigned-clock-parents and dma-coherent optional
> properties.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> ---
>  .../devicetree/bindings/display/ti/ti,am65x-dss.yaml  | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Any comments to this and the rest of the series?

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
