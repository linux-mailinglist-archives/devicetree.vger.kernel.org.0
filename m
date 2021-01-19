Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02C5C2FC239
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 22:27:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728835AbhASSp0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 13:45:26 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:50402 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392248AbhASShQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 13:37:16 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10JIZfrd009939;
        Tue, 19 Jan 2021 12:35:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611081341;
        bh=pDMP3c1jeYLIRBUPsCdw7uRjdMimY1ehzfpyIpyfYEI=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=HCTb/hRQASPo02EUBFTG0hdlXg73NHlm07Tg5+kRXNYFhF5wo6MYHMLE0PwTzx5aL
         Swjz6oD4zZzMX3gLraEn6ghLqZgb2egVYYDVN/L2JKxIIZxGS2mh+s029MSB9vzmxc
         Fsf5g+NlX3D/p66Se4IFtMYCR/anXq7F7FBNctik=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10JIZflA117038
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 19 Jan 2021 12:35:41 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 Jan 2021 12:35:40 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 Jan 2021 12:35:40 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10JIZeKD062444;
        Tue, 19 Jan 2021 12:35:40 -0600
Date:   Tue, 19 Jan 2021 12:35:40 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
CC:     Dave Gerlach <d-gerlach@ti.com>, <devicetree@vger.kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Aswath Govindraju <a-govindraju@ti.com>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 3/5] arm64: dts: ti: Add support for AM642 SoC
Message-ID: <20210119183540.jz4ywzaeybyp5asc@swear>
References: <20210119163927.774-1-d-gerlach@ti.com>
 <20210119163927.774-4-d-gerlach@ti.com>
 <20210119172412.smsjdo2sjzqi5vcn@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210119172412.smsjdo2sjzqi5vcn@bogus>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17:24-20210119, Sudeep Holla wrote:
[..]
> > +	pmu: pmu {
> > +		compatible = "arm,armv8-pmuv3";
> 
> Is this just copy paste from some DTS or do we really don't know which CPU
> this platform has 😄 ? Reading further down, I thought it was Cortex A53, no ?

Heh, Nice catch :).. yeah, this should be arm,cortex-a53-pmu -> I think the
original dts predates Documentation/devicetree/bindings/arm/pmu.yaml

I better fixup other dts as well (separate series ofcourse)..

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
