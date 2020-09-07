Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDB2725FA18
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 14:04:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729033AbgIGMEB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 08:04:01 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:38774 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728608AbgIGMDM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 08:03:12 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 087C2iWL076412;
        Mon, 7 Sep 2020 07:02:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599480164;
        bh=yEM6N3MeVwacpnEvhyaJzqL08F/bOYvbZvXe+EuknXw=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=VEyPMWCqiP3MOomLxwQ3cR8LL/KuxBlvwVlQVZhqo7I9vm0TPvhIyQrwaF7RbWLsZ
         ZvmsiX8J/jLHUsCmnyh2q9HiiGIURSEb34HTtqBMowb65sa3EBLDCsXGdEQLzHANfP
         iwiizo41WiKejlpQDVt41SelmaQYG8liZtmL5uGw=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 087C2irZ045978;
        Mon, 7 Sep 2020 07:02:44 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 7 Sep
 2020 07:02:44 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 7 Sep 2020 07:02:44 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 087C2eQn098954;
        Mon, 7 Sep 2020 07:02:41 -0500
Subject: Re: [PATCH v2 0/4] arm64: Initial support for Texas Instrument's
 J7200 Platform
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <de8d64eb-05fd-ed7d-61b8-1d8e13649ae8@ti.com>
Date:   Mon, 7 Sep 2020 17:32:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200827065144.17683-1-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 27/08/20 12:21 pm, Lokesh Vutla wrote:
> This series adds initial support for latest new SoC, J7200, from Texas Instruments.
> 
> The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
> It is targeted for for automotive gateway, vehicle compute systems,
> Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
> The SoC aims to meet the complex processing needs of modern embedded products.
> 
> See J7200 Technical Reference Manual (SPRUIU1, June 2020)
> for further details: https://www.ti.com/lit/pdf/spruiu1
> 
> Changes since v1:
> - Swapped Patch 1 and 2 as suggested by Nishanth.
> - Added description for each SoC in yaml bindings.
> 
> Testing:
> - ./scripts/checkpatch --strict
> 	- Few warningns about Line length exceeding 100 columns.
> 	  But these are corresponding to comments
> - v8make dtbs_check
> - DT_SCHEMA_FLAGS="-u"
>   DT_SCHEMA_FILES="Documentation/devicetree/bindings/arm/ti/k3.yaml"
>   v8make dtbs_check
> - DT_SCHEMA_FLAGS="-u"
>   DT_SCHEMA_FILES="Documentation/devicetree/bindings/arm/ti/k3.yaml"
>   v8make dt_binding_check

This series has been lying around for soo long with no major comments. It will
be nice to get this merged. I understand we are waiting for Acks on yaml
documentation but it would be bad to miss a merge window for a new platform
because we are waiting for Acks on yaml conversion.

Thanks and regards,
Lokesh
