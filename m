Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0DE7478684
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 09:52:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232618AbhLQIwt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 03:52:49 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59890 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232465AbhLQIwt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 03:52:49 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BH8qlii046957;
        Fri, 17 Dec 2021 02:52:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1639731167;
        bh=Ai4XlmnDFOanBbFQ+og7CI+riCJ80kxq2xpN2aau6Xo=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=ecfiSishlMk8n6+wjL+PXwPNEXtCJZaVlHLsOn5hUAvhZ2osByjtBrGs79Ak6ZYtm
         f3syE1QbVVZmXKTzFuTI25j2wd5lwfNrG6282NHixZO43Vn3H8luawqzLJY6XiW40y
         LhjoKLQyLu1NqL3YWKgzhc6i5+BaNKCrq00JGgwc=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BH8qk4x114508
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 17 Dec 2021 02:52:47 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Fri, 17
 Dec 2021 02:52:46 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Fri, 17 Dec 2021 02:52:46 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BH8qjt9075815;
        Fri, 17 Dec 2021 02:52:46 -0600
Date:   Fri, 17 Dec 2021 14:22:45 +0530
From:   Pratyush Yadav <p.yadav@ti.com>
To:     Dinh Nguyen <dinguyen@kernel.org>
CC:     <devicetree@vger.kernel.org>, <robh+dt@kernel.org>
Subject: Re: [PATCHv3 1/2] dt-bindings: spi: cadence-quadspi: document
 "intel,socfpga-qspi"
Message-ID: <20211217085243.bmj45gc4awnmkmp3@ti.com>
References: <20211216224902.374403-1-dinguyen@kernel.org>
 <20211216224902.374403-2-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20211216224902.374403-2-dinguyen@kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/21 04:49PM, Dinh Nguyen wrote:
> The QSPI controller on Intel's SoCFPGA platform does not implement the
> CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> results in a crash.
> 
> Introduce the dts compatible "intel,socfpga-qspi" to differentiate the
> hardware.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>

Acked-by: Pratyush Yadav <p.yadav@ti.com>

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.
