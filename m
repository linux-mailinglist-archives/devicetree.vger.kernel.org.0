Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82A9C697469
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 03:38:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232579AbjBOCi6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 21:38:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjBOCi5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 21:38:57 -0500
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com [68.232.141.245])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13C45234D0
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 18:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676428735; x=1707964735;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=LRGknKhxil6Qohqe+Jm3wtRMBjwrnnr85uMuaDhF6bI=;
  b=GQGSx0HQf3ea9Li49hWMq1/RZ8gLvC1BhDX/81dvgtYESWoaLYbO8NWS
   JgZ6BSaUC+NEu1VAql8s1QbNTA31dH3eSQ6uSiCCYxfuQslXjER+Y51oT
   hhcEoZeN2/X07NJhSaGvDhDo5asc7mi+QnRboZcx09azIE0u56ZV+tKVY
   kO57ieZeqI4TowFNu+Bj+YV0A73QjOo7Pee+vxNDPPkaGIybwN/aki8Ba
   sOQ+2BbI+2SOQLmL/gHGFPSbKXQkmgQQlhJWqNlnXdNGLpy/sctmGjhuR
   vBSIVPyy7KoyeadhjNCJP3P1ufHL80ey5dsoGOyh1GlkXvW9m6Q7VCqdO
   g==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="335295973"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 10:38:55 +0800
IronPort-SDR: hdxvRRucQO0j4rSH8B5+EUkXjgPGMmynK6cbhrVfdIdE1Y0yT3MlWpWJ0CfsHMB53V29hT/+Fy
 0KiBMEg/tgMdbp4S9cXDvwNBNmpA2vRzCPNGfVuWju6fcHXGDyrNHI2N2sydMCg7pUhyqxBQQh
 1uw6opAtXAcL3T6/vmA4+1fILs0a0/pTdKNM42F4uZH16TYxGBbZImGnQ/6w1juTJuY1r8pOdJ
 eGDtO0C/nEbw3gbSKJOMKnF2YAU3r2r1S5s4RAgHx7S/z+5MgxXcevJaS+z2Pq7XpPx6US5T0V
 JJk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:50:17 -0800
IronPort-SDR: 4B5G6z4acEic4NZVo50XJ1bs0JBWHHTQ9JVsnMa3RDTVe/dSUMv7qPhmr52FzHxg8yr4Gmpd/F
 mbRiLD0MqQI898Vua5b2WJRcjhyiphVvOUdmWBRvQSom1EGNiy7dJKbDtwqTRPQGfYdWwQSuxT
 g7SNYKcKz4M4lIIDOo4z76oXbi3hw6VEN3QrGEYON2zGoUdLoFSEkVZZcFie/oH4PoqzrDWuuz
 7apPXjuz110R1z+1A3N27PcDc+q4droa3o+ldjLXsMzOC5qVHXXBifC+nWee1jUkT/ZxCDRaBY
 nfM=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 18:38:54 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGj264YK8z1RwtC
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 18:38:54 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1676428733; x=1679020734; bh=LRGknKhxil6Qohqe+Jm3wtRMBjwrnnr85uM
        uaDhF6bI=; b=HFn/XTBOmCRXwNl1rv11Q40ZgxO+WDnGEOvySfbGvYcTidahx62
        0dVss0hxRSODx5fmEDRcNRrAHVRULPb3zexnP5C/mfGiyT6aeU3BOxWRtMwjOJ20
        B2GOfq0VTpQeTF8/ZoDgSiQst/+PTxvXfh06iiHVdxMPDEaffExqQK3d6zbPOb/k
        aJcrxb8uak5xKl3NmDtG0eMHfhOaCoDo67SwHXZbY4nVgVeQD6CutSyDih5ZtImx
        5eh8YjmMo6I2absY993+zR8I2QAFKKlc2fVkSODrt/eTiSxshauQ8EXXvLSpw2Zm
        oIr7IE34agdo4CiA1rbFyt7aWmy7dWyz3mw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 7iZDsKsHYpLk for <devicetree@vger.kernel.org>;
        Tue, 14 Feb 2023 18:38:53 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGj222VYbz1RvLy;
        Tue, 14 Feb 2023 18:38:50 -0800 (PST)
Message-ID: <ccdc6924-c35f-4a29-fabb-587271fc929c@opensource.wdc.com>
Date:   Wed, 15 Feb 2023 11:38:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 7/9] PCI: rockchip: Fix legacy IRQ generation for
 RK3399 PCIe endpoint core
Content-Language: en-US
To:     Rick Wertenbroek <rick.wertenbroek@gmail.com>,
        alberto.dassatti@heig-vd.ch
Cc:     xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch,
        stable@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Mikko Kovanen <mikko.kovanen@aavamobile.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-8-rick.wertenbroek@gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-8-rick.wertenbroek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/14/23 23:08, Rick Wertenbroek wrote:
> Fix legacy IRQ generation for RK3399 PCIe endpoint core according to
> the technical reference manual (TRM). Assert and deassert legacy
> interrupt (INTx) through the legacy interrupt control register
> ("PCIE_CLIENT_LEGACY_INT_CTRL") instead of manually generating a PCIe
> message. The generation of the legacy interrupt was tested and validated
> with the PCIe endpoint test driver.
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 38 +++++------------------
>  drivers/pci/controller/pcie-rockchip.h    |  6 ++++
>  2 files changed, 14 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index cbc281a6a..ca5b363ba 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -328,45 +328,23 @@ static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
>  					 u8 intx, bool is_asserted)
>  {
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
> -	u32 r = ep->max_regions - 1;
> -	u32 offset;
> -	u32 status;
> -	u8 msg_code;
> -
> -	if (unlikely(ep->irq_pci_addr != ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR ||
> -		     ep->irq_pci_fn != fn)) {
> -		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
> -					     AXI_WRAPPER_NOR_MSG,
> -					     ep->irq_phys_addr, 0, 0);
> -		ep->irq_pci_addr = ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR;

By the way, ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR is now unused. Remove it
too please.

-- 
Damien Le Moal
Western Digital Research

