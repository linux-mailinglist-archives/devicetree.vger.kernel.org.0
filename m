Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F2C62FF127
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 17:56:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731975AbhAUQ41 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 11:56:27 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:50096 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732078AbhAUPyO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:54:14 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LFqZ4r081815;
        Thu, 21 Jan 2021 09:52:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611244355;
        bh=JlVsNC+CsdN0+kdGxlKGdM85HjCHRVo8er/bgIk/OJI=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=MKr/5l2/NJv/LaCcQATyBiBsW/L/UlcKJhmUAyn9ZGPzMcgv/GlNKVLAAA0Gx8Du0
         Ii1WNHWb+tU+8U+KlLZCZLpLP+VMFcLnTzZpPIENvHfBX4WJs6xKasCyow7zirT0tp
         DLdlozlpZ8FmOURLuQ0TNQLDno7d2nVOjo8Hod3U=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LFqZ0a109232
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:52:35 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:52:34 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:52:34 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LFqYCt059402;
        Thu, 21 Jan 2021 09:52:34 -0600
Date:   Thu, 21 Jan 2021 09:52:34 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>
Subject: Re: [PATCH 0/2] arm64: Initial support for Texas Instruments AM642 SK
Message-ID: <20210121155234.b4n7vftozwvff5yb@deniable>
References: <20210121143924.26213-1-lokeshvutla@ti.com>
 <7b2f5b91-7a08-9ad0-fae4-473639f65508@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7b2f5b91-7a08-9ad0-fae4-473639f65508@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21:11-20210121, Kishon Vijay Abraham I wrote:
> 
> 
> On 21/01/21 8:09 pm, Lokesh Vutla wrote:
> > AM642 StarterKit (SK) board is a low cost, small form factor board
> > designed for TI’s AM642 SoC. This series introduces basic support for
> > AM642 SK.
> > 
> > Depends on Dave's series for adding AM642 SoC:
> > https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=418539
> 
> Tested this with MMC rootfs after applying
> https://lore.kernel.org/linux-devicetree/20210113115908.3882-3-a-govindraju@ti.com/
> 
> Logs: https://pastebin.ubuntu.com/p/xGRMjXb5q5/
> 
> Tested-by: Kishon Vijay Abraham I <kishon@ti.com>


Thanks, but can you confirm this works with logs against linux-next?
I see you have tested against 5.11.0-rc1 which does need the patch
applied.



-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
