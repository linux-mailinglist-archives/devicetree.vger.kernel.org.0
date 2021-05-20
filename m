Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4872C38AA5B
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 13:12:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240089AbhETLM1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 07:12:27 -0400
Received: from ssl.serverraum.org ([176.9.125.105]:52853 "EHLO
        ssl.serverraum.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238623AbhETLK3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 07:10:29 -0400
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ssl.serverraum.org (Postfix) with ESMTPSA id A4BA42224A;
        Thu, 20 May 2021 13:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
        t=1621508946;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=eVUJgs1p5fe+9QkISwzxw/EsNFv7YD+zOveSV6XjbtA=;
        b=oMQeWSoU8mWLMhI/HsaMHaO6dZSrEZ2GheRwV6dVGHEwwXeRRNWbxZc7uZAz+Pk+gFXbaT
        krA80e6rDICmt7OZXFPlZCmGAJRXRClTH4Z16N2fdkCv5u7xw+Y4QBdDr/SKRNke+6eRLV
        QySU/N4cSv8Y1rvVzf7dcdMvhNWW3eU=
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Thu, 20 May 2021 13:09:05 +0200
From:   Michael Walle <michael@walle.cc>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Helmut Grohne <helmut.grohne@intenta.de>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Subject: Re: [PATCH v20 10/19] dt-binding: memory: pl353-smc: Convert to yaml
In-Reply-To: <20210519182636.1110080-11-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-11-miquel.raynal@bootlin.com>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <fd29436201e8e5932a8a027472f1064a@walle.cc>
X-Sender: michael@walle.cc
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 2021-05-19 20:26, schrieb Miquel Raynal:
[..]

> +examples:
> +  - |
> +    smcc: memory-controller@e000e000 {
> +      compatible = "arm,pl353-smc-r2p1", "arm,primecell";
> +      reg = <0xe000e000 0x0001000>,
> +            <0xe1000000 0x5000000>;
> +      clock-names = "memclk", "apb_pclk";
> +      clocks = <&clkc 11>, <&clkc 44>;
> +      ranges = <0x0 0x0 0xe1000000 0x1000000 /* Nand CS region */
> +                0x1 0x0 0xe2000000 0x2000000 /* SRAM/NOR CS0 region */
> +                0x2 0x0 0xe4000000 0x2000000>; /* SRAM/NOR CS1 region 
> */
> +      #address-cells = <2>;
> +      #size-cells = <1>;
> +
> +      nand0: nand-controller@0,0 {

what about nfc (or nfc0) here? If I use this reference on my board it
looks kinda odd:

&nand {
        status = "okay";

        nand@0 {
                reg = <0>;
                nand-use-soft-ecc-engine;
                nand-ecc-algo = "bch";
        };
};

-michael
