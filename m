Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6097922BC80
	for <lists+devicetree@lfdr.de>; Fri, 24 Jul 2020 05:33:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726500AbgGXDdj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jul 2020 23:33:39 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:50106 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726493AbgGXDdj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jul 2020 23:33:39 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 06O3XboZ066583;
        Thu, 23 Jul 2020 22:33:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1595561617;
        bh=mjL2iRADnFeNVqMrnss31HTUWRouZ/4k4xQwhBjgLWg=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=JEv6XUlpQrJG3a06egbktPn6fcupYh+T5DnrI2/NS+OA7DF4CT/xpC8fgkzpOa2JE
         S89I43Zm1ZRbe5bjHGkMTfXtolZIV1b+9Dg/mlZHBMUdn9im1YPJ7Wyk42YY4IRMhz
         YNaunHy9VxlO3fAChnuyGO5FxxBZlCFTsLtf/7Wo=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 06O3Xb0G122837;
        Thu, 23 Jul 2020 22:33:37 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 23
 Jul 2020 22:33:37 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 23 Jul 2020 22:33:37 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 06O3XZRE002832;
        Thu, 23 Jul 2020 22:33:35 -0500
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-j721e: Fix interconnect node names
To:     Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Nishanth Menon <nm@ti.com>
CC:     Grygorii Strashko <grygorii.strashko@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20200723211137.26641-1-s-anna@ti.com>
 <20200723211137.26641-3-s-anna@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <98551c8e-a69f-973c-6650-75fc008b5b28@ti.com>
Date:   Fri, 24 Jul 2020 09:03:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200723211137.26641-3-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 24/07/20 2:41 am, Suman Anna wrote:
> The various CBASS interconnect nodes on K3 J721E SoCs are defined
> using the node name "interconnect". This is not a valid node name
> as per the dt-schema. Fix these node names to use the standard name
> used for SoC interconnects, "bus".
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>


Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

