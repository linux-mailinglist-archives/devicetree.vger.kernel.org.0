Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D52BC264B41
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 19:28:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727791AbgIJR2o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 13:28:44 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:59266 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727119AbgIJR2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 13:28:30 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08AHSCtQ011336;
        Thu, 10 Sep 2020 12:28:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599758892;
        bh=db5LcMXOl4QnFyOzo6s+aAheUeqBnA19wKuqe+HERVQ=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=aHDiVKYItG1nrJgH8LlQXJogqkbAhqNcEE4bMNLOlZtiD59XCIpdslp03IuCBJQgx
         T+4K6ycwEiAR1NdRFvVwVvHIS6DstsU8oOhRG+Xc+jMrPU8Pona8ogZ+YgYmADBOub
         8ZuqH22uzlIfl0+y+qXkQJu7qLwO9gRTFybJZqV0=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08AHSC3d050890
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 10 Sep 2020 12:28:12 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 10
 Sep 2020 12:28:12 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 10 Sep 2020 12:28:12 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08AHSBbj038961;
        Thu, 10 Sep 2020 12:28:12 -0500
Date:   Thu, 10 Sep 2020 12:28:11 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 0/5] arm64: Initial support for Texas Instrument's
 J7200 Platform
Message-ID: <20200910172811.3aqgd2iparjh7tj2@akan>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20200908162252.17672-1-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21:52-20200908, Lokesh Vutla wrote:
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
> This series is based on the ti-k3-dts-next from Nishanth's tree[0].
> Boot log: https://pastebin.ubuntu.com/p/Ppng92TR9z/

Thanks a bunch. Will also appreciate a test against linux-next tag
> 
> Changes since v2:
> - Update Makefile to build dtbs using CONFIG_ARCH_K3
> - use 0x00 in all places just to be consistent for all K3 devices
> - Fixed upper case to lower case in reg property.
> 
> [0] git://git.kernel.org/pub/scm/linux/kernel/git/nmenon/linux.git
> 
> Lokesh Vutla (5):
>   arm64: dts: ti: Makefile: Use ARCH_K3 for building dtbs
>   dt-bindings: arm: ti: Convert K3 board/soc bindings to DT schema
>   dt-bindings: arm: ti: Add bindings for J7200 SoC
>   arm64: dts: ti: Add support for J7200 SoC
>   arm64: dts: ti: Add support for J7200 Common Processor Board
> 

Thanks for updating the comments and for your patience.. if you
could address the last batch of comments (sorry for missing them
out in the last review), I think we might be all set..

pending review-by from Rob.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
