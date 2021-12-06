Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07AE546937B
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 11:22:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234597AbhLFK0X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 05:26:23 -0500
Received: from lelv0142.ext.ti.com ([198.47.23.249]:51868 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233542AbhLFK0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 05:26:22 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1B6AMkZg030469;
        Mon, 6 Dec 2021 04:22:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1638786166;
        bh=Qasjrre4ZxM2eYJamYMaAN2vWZlRxpjtw/ekMfoSJ2U=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=i0Yfei6z2ufLBYfuprgj6WzMka6zJCnotw7YKHRR5BHmSbLEnW5M+P5rN5ln7Ufn+
         wspJ2Bvk0ANB3CdCAShpNf99teVGTbE5cqFC1jK2uVLyLT9EBlJD1Lqs6ACVYYZABP
         Gp86NAhVW+hh7D5cXvwDtjlYc3XsjDFhky0CFkyQ=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1B6AMjod008898
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 6 Dec 2021 04:22:45 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 6
 Dec 2021 04:22:45 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 6 Dec 2021 04:22:45 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1B6AMirg083910;
        Mon, 6 Dec 2021 04:22:45 -0600
Date:   Mon, 6 Dec 2021 15:52:44 +0530
From:   Pratyush Yadav <p.yadav@ti.com>
To:     Dinh Nguyen <dinguyen@kernel.org>
CC:     <devicetree@vger.kernel.org>, <broonie@kernel.org>,
        <robh+dt@kernel.org>
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document
 "cdns,qspi-nor-ver-00-10"
Message-ID: <20211206102242.e2ql7kcgzivh75v4@ti.com>
References: <20211203181714.3138611-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20211203181714.3138611-1-dinguyen@kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/12/21 12:17PM, Dinh Nguyen wrote:
> The QSPI controller on Intel's SoCFPGA platform does not implement the
> CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> results in a crash.
> 
> The module/revision ID is written in the MODULE_ID register. For this
> variance, bits 23-8 is 0x0010.

When I looked at your original patches I was under the impression that 
this was a SoCFPGA specific thing and did not apply to other 
implementation of the IP in general.

If this is indeed a generic thing and we can detect it via the MODULE_ID 
register [0], then why not just read that register at probe time and 
apply this quirk based on the ID? Why then do we need a separate 
compatible at all?

[0] I would like to see it stated explicitly somewhere that version 
0x0010 does not support the WR_COMPLETION_CTRL register.

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.
