Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13EC539DDC3
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 15:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230194AbhFGNhx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 09:37:53 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59872 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbhFGNhx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 09:37:53 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 157DZsio103659;
        Mon, 7 Jun 2021 08:35:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623072954;
        bh=vmoqxpmHMQ5nw4SKawbYBZ4aUy8CohE599BkJfNyJ8U=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=O91OP1PD8SDXkQEYwK5kVvggwoQyLX9N0xYyV0KhBYMwIEENoKkDy73GYzjXQP2+P
         1wufx3iTqsr9DzdAHL4CHCWJRqSc9LdBIWWD70PTRSFDU+G3GNzRZWWUuI3rDL3EiO
         fF7Yy2Mje5NlOJ9NV7DkTyJJOOclOInc/3UNxCxo=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 157DZsR6128899
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 7 Jun 2021 08:35:54 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 7 Jun
 2021 08:35:54 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 7 Jun 2021 08:35:54 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 157DZsnw129973;
        Mon, 7 Jun 2021 08:35:54 -0500
Date:   Mon, 7 Jun 2021 08:35:54 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Sinthu Raja <sinthu.raja@mistralsolutions.com>
CC:     Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: Re: [PATCH V2 0/2] arm64: Initial support for Texas Instruments
 J721E EAIK
Message-ID: <20210607133554.rkamd6zfiq35wuut@judgingly>
References: <20210607093314.23909-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210607093314.23909-1-sinthu.raja@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15:03-20210607, Sinthu Raja wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
> 
> J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
> for TI’s J721E SoC. This series intoduces the basic support for J721E
> EAIK
> 
> Changes in v2:
> - Fix for dt_binding_check error.
> - Modified base commit to the recent RC1.
> 
> Sinthu Raja (2):
>   dt-bindings: arm: ti: Add bindings for J721E EAIK
>   arm64: dts: ti: Add support for J721E EAIK
> 
>  .../devicetree/bindings/arm/ti/k3.yaml        |   2 +
>  .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  |   2 +-
>  arch/arm64/boot/dts/ti/Makefile               |   2 +
>  arch/arm64/boot/dts/ti/k3-j721e-eaik.dts      | 342 ++++++++++++++++++
>  4 files changed, 347 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-eaik.dts
> 
> 
> base-commit: 6efb943b8616ec53a5e444193dccf1af9ad627b5


This might be a little too late for 5.14 window, i have provided
some basic comments on the same.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
