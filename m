Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 165C8260F0D
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 11:55:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728709AbgIHJzj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 05:55:39 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:40400 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728798AbgIHJzi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 05:55:38 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0889tWag121642;
        Tue, 8 Sep 2020 04:55:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599558932;
        bh=/WVMwnfmaojk6zh6M1fbb3D/yfnAjVDfwaKQq5TPu4E=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=TaxgCbh9EQHV7HXoyeZ0ms/9mdAVCuKP0/XgR0PypvsTfyPVwZnGnQQn8uzTeHYen
         p8Xs/Sd1sZeh8ra2/vKpFMONOvsLobJIhUF0rIk0PiAWvHe/4l4wKMJX1VdrqZ0Klj
         u53TL6ZBvP3aybDLn5zCo+S1Pz4hISTaTbs3vIxw=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0889tWqY067516
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 04:55:32 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 04:55:32 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 04:55:32 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0889tUst020783;
        Tue, 8 Sep 2020 04:55:30 -0500
Subject: Re: [PATCH v2 0/4] arm64: Initial support for Texas Instrument's
 J7200 Platform
To:     Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <de8d64eb-05fd-ed7d-61b8-1d8e13649ae8@ti.com>
 <20200907141427.ti6r3h6namv2hezw@akan>
 <9d8d6980-0b22-da45-52af-474c6d96c873@ti.com>
 <20200907234833.r376hhl64q55gd7o@akan>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <d89cf38a-da57-b1ca-dc80-0c2cca2ada38@ti.com>
Date:   Tue, 8 Sep 2020 12:55:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907234833.r376hhl64q55gd7o@akan>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2020 02:48, Nishanth Menon wrote:
> On 19:53-20200907, Lokesh Vutla wrote:
> 
> [... I should have responded to the correct patch..]
>>> Besides yaml and compatibility acks, there are a few ancillary
>>> comments to fix up.. Kconfig -> I think we should either stay with
>>> status quo and create a new config option per SoC OR rename the
>>> config to be generic (using j7200 with j721e SoC config is not very
>>
>> Please suggest your preference here. I guess separate defconfig for J7200?
> 
> 
> I was just scanning through remaining arm64 additions to see what others have
> done. We seem to have two options here:
> a) Just use ARCH_K3 and no specific SoC configs
> b) Specific SoC configs
> In both cases, use += instead of \ to incrementally add dtbs
> 
> We have been going with (b) so far, Tero: any specific preference here?
> 
> (a) has the aspect of simplicity and reduced dependencies.
> (b) Allows downstream kernels to save just a little bit and focus purely
>      on SoC of interest.

If possible, I think we should aim for a) at least for now. We have the 
soc type detection code in place anyways that can be used on driver 
level. Creating compile time flags should be avoided imo as much as 
possible and just go with runtime detection. I can't see why saving 
maybe a megabyte of memory with SoC specific kernels would be of any 
importance on K3 arch with the memory amounts we have in our disposal.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
