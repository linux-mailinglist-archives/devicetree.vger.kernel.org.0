Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB0C62A076C
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 15:08:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726654AbgJ3OIL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 10:08:11 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:45502 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726795AbgJ3OIL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 10:08:11 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09UE87o6103530;
        Fri, 30 Oct 2020 09:08:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1604066887;
        bh=VPypjerSMDPTrE+x+yDzUL4189Rg7ueNAYzyenLcLos=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=KcV1ask6XPX+rRP7K80aSzWvyI2obLorthE24y1VZjys9HZiWyU5y/fHOIOot7zno
         tF7+yuU7eYBsPV/phOav510pGHMf2m6zVHXAgRdgGbzNsYFOnq1Ni3XV+jFTqvcAL+
         AMd6eWRDAPTuc9UolxiGMYglxCnASvAd8nlRDA/4=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09UE87EW033036
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 30 Oct 2020 09:08:07 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 30
 Oct 2020 09:08:07 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 30 Oct 2020 09:08:06 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09UE85uw121532;
        Fri, 30 Oct 2020 09:08:05 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: mark dss as dma-coherent
To:     Nishanth Menon <nm@ti.com>, Nikhil Devshatwar <nikhil.nd@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20201029141159.190621-1-tomi.valkeinen@ti.com>
 <20201029144100.bf35vierhfignips@NiksLab>
 <20201029145217.zjazhjvylgwez4do@husked>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <8532a1c0-29db-d67a-441f-b58b232f7c98@ti.com>
Date:   Fri, 30 Oct 2020 16:08:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201029145217.zjazhjvylgwez4do@husked>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/10/2020 16:52, Nishanth Menon wrote:
> On 20:11-20201029, Nikhil Devshatwar wrote:
>> On 16:11-20201029, Tomi Valkeinen wrote:
>>> DSS is IO coherent on AM65, so we can mark it as such with
>>> 'dma-coherent' property in the DT file.
>>>
>>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
>> Acked-by: Nikhil Devshatwar <nikhil.nd@ti.com>
>>
> 
> Tomi: Do you need to add Fixes: tag to percolate this to stable? if
> yes, please comment, makes it easier for me to queue for 5.10 if
> possible

I don't see this as a fix, but an optimization. Nothing is broken without this.

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
