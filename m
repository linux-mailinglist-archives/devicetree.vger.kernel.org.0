Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 701346972FD
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 02:01:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231481AbjBOBBQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 20:01:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230212AbjBOBBN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 20:01:13 -0500
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2D0B2CC42
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 17:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676422872; x=1707958872;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=XOcFePDBSO8jCjv36R6D31rgCgrBpc9VWxAmEMfwpY4=;
  b=lD9CbTvhFZ2QSaECtzY02pgJzM+prUnU/ikAj5DkFoTUsROnfCPGcI9L
   fcbu2A140NsRzzculROqnzD/AqObmMCm+nGGYlQwUlnRz2tksdORjTCX4
   wMGi05SXE+fH/E0voMUB8HjPBNEGUIN1nffxfhzV0x8enBOHQfslIgIr7
   l58JJRtjnUix300eR7ryuRPf8iQymzD4EVUsXY/JeEEOqSR3ESOAilpPk
   0J1ensvGATPqaqMN02/hZ807UxYioyj73Zjbx21zSFo2+jiC+XQZFsMce
   UVsz4DMcfXlPWl664YcccGTSbG1KIdsHi0cpJ/ZUilwPqyGM1cxls90za
   g==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="327619723"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:01:10 +0800
IronPort-SDR: PD0sLgoskHYwvgEl7vaE1pO1vVcYE2VB2Ttiebaa+j1p5E957B7YQK6y93jIHArgXh2ERZLGTV
 Nr4IWUSEM6mwd/vAwVHTNuwDNIUq8C4gi3IWfn8bULRtj9+UGJ6QTg3r7xpv9mQRet8nKTOAX6
 BftszCeS4/GsH8dWL6CRup2d7nv0CoDLl2jW3mANDIBFstydocmppbDO19bWgQ/o6CvzFvYMfa
 hesg77xbSAIs3XkKdQIT7cP/SAFzfVs33bqkuczvwaU5Pd0MVhkG2v3cUKnNnpKhbSp5ZHttyo
 lms=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 16:12:32 -0800
IronPort-SDR: vKgYdpjALO9TwfXxCtIuBZ3rLXHyEGbNWN97IveHmQ79zDBHXj0CyQEesFCUjp7LwBTvqUQPJt
 gF6vzV0EACc+XIaz5YFaUH1YGwNaINMkF+O0/d/FGGOZzj0j8tcnABWuXJDTUbuHJqico27NpI
 zIZ9JJYwL7dVUPZB4VSQ9NDBTOAhgJL5pVPq01dpwb9kU4uatUDhPVQ7ipNy+EbKG80k2Wcp1S
 APgMK+uspKGr7kMI73bFEvRNtqznVVD8O1cSKyM7jDJg+zln5/vTcpxKdkrEya4eaCbUVCIiDy
 l9I=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:01:11 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGfsK2NW5z1Rwtl
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 17:01:09 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1676422867; x=1679014868; bh=XOcFePDBSO8jCjv36R6D31rgCgrBpc9VWxA
        mEMfwpY4=; b=WNHE1xQ93Ea6SQkhPkA5pUyrPLvA9BPoujU/6PEAcIqZzkDABiq
        eRd75blv0UhK8ZKBxIqUpRVD5Z7sjloq7YJZymU7u3M1NCSW/akF64jG1/cVSQGU
        +H3vgHuiP6WgEN3Y7okc0emg+yCLtFRChf4s6EdOzUobCQeXWy2Sa3nB7hIdfgya
        xjEj4QH4hnOqoDHyh6ioN/qq0AvIWYUadsd7m5JrBsGGFn6k9nNGyBWqcYi763ky
        T9GJXREiDqFWHfy4Egb9g8w0xW38+ivGtXmsuuekzH/RiVQ9MyggjApZBkCC8Xkr
        5PIaPPHRb1g8b5eMRbqAUQeLraxVbwn2kTA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id JcYyCmNBBANK for <devicetree@vger.kernel.org>;
        Tue, 14 Feb 2023 17:01:07 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGfsD4tpXz1RvLy;
        Tue, 14 Feb 2023 17:01:04 -0800 (PST)
Message-ID: <adfcf9a9-8607-9778-1c83-de0092c70e0b@opensource.wdc.com>
Date:   Wed, 15 Feb 2023 10:01:03 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 4/9] PCI: rockchip: Add poll and timeout to wait for
 PHY PLLs to be locked
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
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Mikko Kovanen <mikko.kovanen@aavamobile.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-5-rick.wertenbroek@gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-5-rick.wertenbroek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/14/23 23:08, Rick Wertenbroek wrote:
> The RK3399 PCIe controller should wait until the PHY PLLs are locked.
> Add poll and timeout to wait for PHY PLLs to be locked. If they cannot
> be locked generate error message and jump to error handler. Accessing
> registers in the PHY clock domain when PLLs are not locked causes hang
> The PHY PLLs status is checked through a side channel register.
> This is documented in the TRM section 17.5.8.1 "PCIe Initialization
> Sequence".
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

A couple of nits below. Otherwise:

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

> ---
>  drivers/pci/controller/pcie-rockchip.c | 16 ++++++++++++++++
>  drivers/pci/controller/pcie-rockchip.h |  2 ++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 990a00e08..5f2e2dd5d 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c

[...]

> +	err = readx_poll_timeout(rockchip_pcie_read_addr, PCIE_CLIENT_SIDE_BAND_STATUS,

Nit: long line. Split it after the first comma.

> +		regs, !(regs & PCIE_CLIENT_PHY_ST), RK_PHY_PLL_LOCK_SLEEP_US,
> +		RK_PHY_PLL_LOCK_TIMEOUT_US);
> +

Nit: no need for this blank line.

> +	if (err) {
> +		dev_err(dev, "PHY PLLs could not lock, %d\n", err);
> +		goto err_power_off_phy;
> +	}
> +

-- 
Damien Le Moal
Western Digital Research

