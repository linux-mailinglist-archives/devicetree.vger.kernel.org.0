Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E85C721FF
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 00:10:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731484AbfGWWKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 18:10:43 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:32830 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731838AbfGWWKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 18:10:43 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NMAe7w114631;
        Tue, 23 Jul 2019 17:10:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563919840;
        bh=oFV9Rl15COlNVufQk+aL7I2gNNHPcjN8RZ7HyGgNjpA=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=o2rUjuTKy1Yv1EVj04iWmuneZduogqXc+tdhe+yPeCiNxOoHy56UTPh3HF1L+ZmrJ
         prWDfiyNZYdAuG7HXTyUp2v5xA+AH/gOQrUvk+xM2e31Hz28mvq53/172BdK7Hc9oa
         6rtjAFJhUg8vW4UJQ3e0pB0LVu1I+yFCmwU6VNGk=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NMAeEC075698
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 23 Jul 2019 17:10:40 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 17:10:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 17:10:40 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NMAeCK036446;
        Tue, 23 Jul 2019 17:10:40 -0500
Date:   Tue, 23 Jul 2019 17:10:16 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/4] arm64: dts: ti: k3-am65-main: Add mailbox cluster
 nodes
Message-ID: <20190723221016.ozelg3zhiygt4oia@kahuna>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-2-s-anna@ti.com>
 <20190723113540.xvhsrlbf66lr5aaq@kahuna>
 <664f4a6f-697d-3463-bfd9-1423ad95bf62@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <664f4a6f-697d-3463-bfd9-1423ad95bf62@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:50-20190723, Suman Anna wrote:
> For the OMAP mailboxes, we do not want to enable just the cluster. A
> cluster without any enabled sub-mailboxes or interrupts will fail the probe.
> 
> There are 12 clusters but we won't be enabling all clusters for the MPU
> core running Linux. There are some clusters that are dedicated to
> RTOS-to-RTOS IPC which we don't want to even probe on Linux. This patch
> adds all the clusters, and the next patch enables only the clusters used
> by Linux that have the proper sub-mailboxes and interrupts. Please see
> the NOTE above for the reason why not all the 4 interrupts from each
> cluster are added here.

Please follow the example of uart and disable in the board file. Please
see existing code when posting new nodes.

-- 
Regards,
Nishanth Menon
