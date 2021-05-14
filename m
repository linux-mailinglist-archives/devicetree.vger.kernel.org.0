Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E852138139D
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 00:11:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbhENWNG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 18:13:06 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:60824 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbhENWNG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 18:13:06 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EMBmqx003134;
        Fri, 14 May 2021 17:11:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621030308;
        bh=YlWgC7LdFqF3h4t5wMyrPS9wacr/MUVHUbBLwQNPPIA=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=zLk24d+g7jhsdvuOaUGjrvVQB1hfJtrvUNJdvBwGdqk/MWbgafA1Zy6B/dmfq6ik7
         Z3C7K21ezi/zc+9I2Y2etNwaEpMSNz/b53iLtfwqCQTo+B1OSQ1hxauKgtFHoTvpJO
         JgYtV2ab5M4elOwG3TvwUjkOzi0sEEnv8ChWyCsk=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EMBmeL074765
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 17:11:48 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 17:11:48 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 17:11:48 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EMBm0n011199;
        Fri, 14 May 2021 17:11:48 -0500
Date:   Fri, 14 May 2021 17:11:48 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <kristo@kernel.org>,
        Gowtham Tammana <g-tammana@ti.com>,
        Praneeth Bajjuri <praneeth@ti.com>,
        Vaibhav Gupta <v_gupta@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/3] Add crypto nodes for J7200 and AM64x
Message-ID: <20210514221148.m42zldo6lfxn5l4m@underfed>
References: <20210514210725.32720-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210514210725.32720-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:07-20210514, Suman Anna wrote:
> The following series adds the crypto nodes including the underlying
> rng nodes for J7200 and AM64x SoCs. Patches are on top of 5.13-rc1.
> 
> Note that AM64x supports only a limited number of algos compared to
> the other K3 SoCs. The AM64x driver support accounting for this is
> merged in v5.13-rc1. Also, the IP appears at the same address on
> J7200 and AM64x but is in different domains.
> 
> I have verified the basic crypto self-tests, extra-tests and some
> basic tcrypt tests on both J7200 EVM and AM64x EVM boards.
> 

Thanks..

While this is an appropriate description for a subset of hardware,
this maybe missing the pieces needed for certain "high security"
(HS-*) device variants. Public channels, shared data flows and lack of
full control on RNG (we can read RNG, but not seed it) come to mind
immediately and further, I am not completely sure I understand how
this plays well with DKEK with OPTEE.

I know that u-boot does have capability to disable some of these, but:
a) TF-A can definitely boot to linux kernel without the need for u-boot.
b) We still need to be able to leverage h/w acceleration support that
   the high security devices is already capable of.

As a result, I am not entirely sure what we can do with this series
without breaking existing "high-security" devices (which can boot mainline
linux today with TF-A).

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
