Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F30129EECD
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 15:52:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726375AbgJ2OwV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 10:52:21 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:34310 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726166AbgJ2OwV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 10:52:21 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09TEqHhW114340;
        Thu, 29 Oct 2020 09:52:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603983137;
        bh=/WvllRH0/XY+Kb1gFVaJ6ZferN/0XkjqDenoxz14W3c=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=BoV7Ntvq4Qr+ybNF3r/DiHmWEcz5Xmg998ac6EZvzUrDfbNakp+mknP1sw9bdBvh9
         s0o9Pd2agabZiJmRJcdrK0Oe+HnKdOwIWy9i3CS2IVjctT9TsbnnBAdMECsp/RG5DR
         goljBjdedb237dlO/HKYIGxclYs1KJEOr5LajC0Y=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09TEqHGD114981
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 29 Oct 2020 09:52:17 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 29
 Oct 2020 09:52:17 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 29 Oct 2020 09:52:17 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09TEqHQE084645;
        Thu, 29 Oct 2020 09:52:17 -0500
Date:   Thu, 29 Oct 2020 09:52:17 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Nikhil Devshatwar <nikhil.nd@ti.com>
CC:     Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: mark dss as dma-coherent
Message-ID: <20201029145217.zjazhjvylgwez4do@husked>
References: <20201029141159.190621-1-tomi.valkeinen@ti.com>
 <20201029144100.bf35vierhfignips@NiksLab>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20201029144100.bf35vierhfignips@NiksLab>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20:11-20201029, Nikhil Devshatwar wrote:
> On 16:11-20201029, Tomi Valkeinen wrote:
> > DSS is IO coherent on AM65, so we can mark it as such with
> > 'dma-coherent' property in the DT file.
> > 
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Acked-by: Nikhil Devshatwar <nikhil.nd@ti.com>
> 

Tomi: Do you need to add Fixes: tag to percolate this to stable? if
yes, please comment, makes it easier for me to queue for 5.10 if
possible

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
