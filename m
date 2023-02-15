Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CC586973C1
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 02:41:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232374AbjBOBjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 20:39:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232948AbjBOBjs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 20:39:48 -0500
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com [216.71.153.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6952A2A6CF
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 17:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676425186; x=1707961186;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=oy+5bs8bztFCfWMEixVu7mADVC2yPYRnwRT4aa/6byw=;
  b=jS+P+4ipKccX/IqkXOxyZPUHfCS7oGtWFrPtGiVwswFdBvocqK546I/k
   AEfPfz8S5ldm5hatZ+1UxwZHUoPu+/Zl+uGmuSK8zUuSU+P4Kuc+Za4Hl
   B0PC1TIAUOI5V+jpGHLgN8zGEWcvP40J6cvZZhP5muObtRVUxB4dBGBCJ
   ZhiMQaTDKR0FOpwg7zbz8tn8n3mX+6mc9McO+pIfJPRjn9u/fi8NAvLPM
   BDu+Tgf5hqgQZrfQdFUiVSdpoYkPuYXN3tP1DGxZ1q4ugX6OL8lZMoKfB
   NRpEzz1qY0y/sWem9cR3weKqK7SO0b4VstlTT18NldI0SmdiWAyz5Lt7R
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="223117980"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:39:46 +0800
IronPort-SDR: ku+Os1fdsbXLkQP7Ocexz0unaAjVF2CaBP6a6SmcnJ0H2/+sRidbVTUkbC/bX3dTm+3jIIPI9B
 mJ+o84SwQuuWpQlyKrB9ewh0/0Uefkd1DEqdPmbS/ajhtv6VnuxMpJ8cnFVrySHfh7PfEMhyUK
 Az+M03zZMIH/B5LriwZ8nOWBr2WN8tGmc+V56kg3eI789bqq5bCfNhu27Yai7TH5eQZW3SCiWI
 gtJsGxzvYgjOzXygqgyvmH36VgLLdSl4JLZ0aIG+zogiE7EnUgrB2kQsWecTt8n02FcoPX8O2o
 lYc=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 16:56:53 -0800
IronPort-SDR: fSipUaVWtsmKNNWs1Wn+CjgA4Zw+f8DS+fndUnOmXYgk4BtXkP/ATCqjdcMu/bOni2yOt3Uf4R
 OTUZSKESCaf6tghbTqfkbJiIXsFXgFBjdpmqNnTl51SiPIgFGdMC5B5hBDDtA+jK0NlOhkPaox
 EKSrfSrRkrTsv+F2Wg92E+EpNTm1Ef0eNwWicHw1xj7bjK1SvGi7RnV4az/Z5+5EdoqmdWE6yA
 BIAuKtFL4TExn6+mP3kkobaQwonMtl7rHys89AL1PlUj8k9PjY0h9EciZ4okPyXYqCSkR7WKcU
 x6M=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:39:46 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGgjs3Jp5z1Rwt8
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 17:39:44 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1676425184; x=1679017185; bh=oy+5bs8bztFCfWMEixVu7mADVC2yPYRnwRT
        4aa/6byw=; b=fOcVMEdSFlGAd1ybZTpNogWSvYjl6ZCDZG1CJdrrh3tdQynF8wa
        MiE+19cVjiqq46ifzKZt3mxvuVEwCLksA7+QuHAQFOrZXLb3FSsKJ9slXisXT5RL
        XtBXMPaA9sCvCGH4/YoQC/LBjVRj/wkb8gVLj5pjWMOFbRu7bhcOw2qStLyVJbNf
        An1Mz9pv71TC3lt6OYaeHptV0N2JoQwSvZc2ceRcyXlNadb74ugk8Bi6Da47/Iq1
        SX01+63gwt+kDdCYfffcA0zaZJo/RUHyNng7i880SK1HA1qWSrszc+APpciLlVrt
        aaI4vSIi1tGdYbKPTNcod6fNrykE32mZZPQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id WaPHhI8p8NGh for <devicetree@vger.kernel.org>;
        Tue, 14 Feb 2023 17:39:44 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGgjn1BCDz1RvLy;
        Tue, 14 Feb 2023 17:39:40 -0800 (PST)
Message-ID: <ebbddcfa-99e5-efda-0eab-fbd61a33e2c3@opensource.wdc.com>
Date:   Wed, 15 Feb 2023 10:39:39 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 9/9] PCI: rockchip: Add parameter check for RK3399 PCIe
 endpoint core set_msi()
Content-Language: en-US
To:     Rick Wertenbroek <rick.wertenbroek@gmail.com>,
        alberto.dassatti@heig-vd.ch
Cc:     xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch,
        Rob Herring <robh+dt@kernel.org>,
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
 <20230214140858.1133292-10-rick.wertenbroek@gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-10-rick.wertenbroek@gmail.com>
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
> The RK3399 PCIe endpoint core supports only a single PCIe physcial
> function (function number 0), therefore return -EINVAL if set_msi() is
> called with a function number greater than 0.
> The PCIe standard only allows the multi message capability (MMC) value
> to be up to 0x5 (32 messages), therefore return -EINVAL if set_msi() is
> called with a MMC value of over 0x5.
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index b7865a94e..80634b690 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -294,6 +294,16 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>  	u32 flags;
>  
> +	if (fn) {
> +		dev_err(&epc->dev, "This endpoint controller only supports a single physical function\n");
> +		return -EINVAL;
> +	}

Checking this here is late... Given that at most only one physical
function is supported, the check should be in rockchip_pcie_parse_ep_dt().
Something like:

	err = of_property_read_u8(dev->of_node, "max-functions",
                                  &ep->epc->max_functions);

        if (err < 0 || ep->epc->max_functions > 1)

                ep->epc->max_functions = 1;

And all the macros with the (fn) argument could also be simplified
(argument fn removed) since fn will always be 0.

> +
> +	if (mmc > 0x5) {
> +		dev_err(&epc->dev, "Number of MSI IRQs cannot be more than 32\n");

Long line. Please split it after the comma.

> +		return -EINVAL;
> +	}
> +
>  	flags = rockchip_pcie_read(rockchip,
>  				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
>  				   ROCKCHIP_PCIE_EP_MSI_CTRL_REG);

Another nice cleanup: define ROCKCHIP_PCIE_EP_MSI_CTRL_REG to include the
ROCKCHIP_PCIE_EP_FUNC_BASE(fn) addition so that we do not have to do it
here all the time.

-- 
Damien Le Moal
Western Digital Research

