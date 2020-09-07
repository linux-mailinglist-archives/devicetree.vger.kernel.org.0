Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A624260736
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 01:48:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727119AbgIGXsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 19:48:40 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:59732 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727058AbgIGXsj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 19:48:39 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 087NmYJq022598;
        Mon, 7 Sep 2020 18:48:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599522514;
        bh=xNbX/ATBF1fCmBFZkzD9B4HTOPwp1XWxwdPYzdAUKkU=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=R8YV+GWxGOullnv811HoqwpeOx5UWTJYtQLfYfqYufmTAyHPFv/BQeSYQeuae7Dfu
         HU9Lr9hjQVPZ8A7bbMvTYhGIB32PLlBAIqLa9lND/bCc4Yk/3uu/n+m/UrKAn9V8uU
         Wn3zJslLkzCBFxDJXdqJzGlvAGT8qSH1v4kzdrSo=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 087NmY7P017107;
        Mon, 7 Sep 2020 18:48:34 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 7 Sep
 2020 18:48:34 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 7 Sep 2020 18:48:34 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 087NmXv6102495;
        Mon, 7 Sep 2020 18:48:33 -0500
Date:   Mon, 7 Sep 2020 18:48:33 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 0/4] arm64: Initial support for Texas Instrument's
 J7200 Platform
Message-ID: <20200907234833.r376hhl64q55gd7o@akan>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <de8d64eb-05fd-ed7d-61b8-1d8e13649ae8@ti.com>
 <20200907141427.ti6r3h6namv2hezw@akan>
 <9d8d6980-0b22-da45-52af-474c6d96c873@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9d8d6980-0b22-da45-52af-474c6d96c873@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19:53-20200907, Lokesh Vutla wrote:

[... I should have responded to the correct patch..]
> > Besides yaml and compatibility acks, there are a few ancillary
> > comments to fix up.. Kconfig -> I think we should either stay with
> > status quo and create a new config option per SoC OR rename the
> > config to be generic (using j7200 with j721e SoC config is not very
> 
> Please suggest your preference here. I guess separate defconfig for J7200?


I was just scanning through remaining arm64 additions to see what others have
done. We seem to have two options here:
a) Just use ARCH_K3 and no specific SoC configs
b) Specific SoC configs 
In both cases, use += instead of \ to incrementally add dtbs

We have been going with (b) so far, Tero: any specific preference here?

(a) has the aspect of simplicity and reduced dependencies.
(b) Allows downstream kernels to save just a little bit and focus purely
    on SoC of interest.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
