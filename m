Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73B0669724A
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 00:59:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229660AbjBNX7E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 18:59:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233098AbjBNX6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 18:58:53 -0500
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B902A31E1B
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 15:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676419119; x=1707955119;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=0wzbE5dbKeg6zwPSACvcz44HHBT+V6cdN+UmWihI6ko=;
  b=cp8vlLg+QSNDl0ner2939ThO91W4kik3F6DbJOF+vKgPcWoN7+DlKSKF
   DTBtoY3qr5Ry5FbxjCqxGzuNpigkcxjDXV/3H8D1cr41S6kLnoFFNGL8A
   UJSJySfCnBi2+fFihrQGQQXxnYiH2s8ZoLTvlQRLGKwHKUJTkNK1GSjm+
   PPUviWxyfq4ivLynw11QLAtYiH90TdlBKG8sYLNqobq8HK4LTdblvCLPT
   64YWYB0PDe5jHHrWPvBevYXpIi4GI026SiHdaVl6Qc0FFk4uUBQwOSLoy
   uMhRbhkYySMnzw+1vqlKEE1bD1IFnQSenaKZYOww6Tt5tcd8pcfW0kv5L
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="223337719"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 07:58:21 +0800
IronPort-SDR: WWbxnZVZccWw0806wyrihVqlEsaX6bpl3ongjz6rULcIjDv5NOpXXXddk5P2w2ixRb0P9iuNdw
 Oc/EmrtLLLlENr1/GwCn0cMXOKImHrsgMTa9pNsGfEsGvHtOU+ksCQGAJ0N1s0wx9oTg0+VRjG
 OPXqS4Hy7rPMf1I4If4NyaoWbAYjhX41vadusaNmVzV9jj1FV5mkb/EVm1XtO223/k6LVITCdW
 ozQVRX3mZ51tyFlmFF9AEHB7F2y20Hnpg6RjoTtvRB6qAm1HdX0fQCLNFJKxNhPQCYYoyKuCl9
 +Pk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 15:09:44 -0800
IronPort-SDR: MSfuW1eiEs43mIjAyuLD3RV906qDo9PHIUrfTdOZhq2HMyaPVwo56jV5wfjtAMQwd/wp1XR3Y/
 M81ePvw675ZHR6iJagHmQIsX67PXFC+DA5V0CAFbgSM+cUvGorPw3kGf8oJ0fkQOB6YUYKyMsu
 DLMC8M8/bzXOmLYEfh2K2Err+VXtCEV17FUEWWCYJX9nCH6G2U9RitmO74w5MI1gp2/MPk2eGC
 aIiR/rWwqW0vCB0hHzVPIDW77XuQA4XmF+9S4Popjl72/BEUIrlTQJIfQS6rYA1PPbzEH3asNi
 s3w=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 15:58:22 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGdSs1Qvfz1Rx15
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 15:58:21 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1676419100; x=1679011101; bh=0wzbE5dbKeg6zwPSACvcz44HHBT+V6cdN+U
        mWihI6ko=; b=nhXWsH1w2yUI7rcUShKvBVvquthT7csOKjfHohg73oprsbOPmZJ
        Trnzjb3ZgU+4gk8qjDRxw2Tv+ixOPtvRt8n7rLaJzbqMg/3thVaZ7sZBr18jZUA/
        z0bg3UCtvtxN0rm793uev6UJIGaHtwItlwcdvZM0vEr9zq58xCQ4raacivhrKfUN
        HGA1RE6kMSO631u9NgPoqWoqxW17YH3kPmumVgmdLn0SAPWnqCb2QBrIREBy6oBJ
        836YHVC4u7NF6G4re+p0Twqs9a1IsJVL53mo8JU++ISQiEPHdMDhmby5ryWH4vS2
        qY0DzbxL0XEGslkDq817CK8CfgyFUqrMfdg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 5Nvyl9pnRMnD for <devicetree@vger.kernel.org>;
        Tue, 14 Feb 2023 15:58:20 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGdSn36S3z1RvLy;
        Tue, 14 Feb 2023 15:58:17 -0800 (PST)
Message-ID: <f8db1d50-5771-44e0-cb39-64425966f35f@opensource.wdc.com>
Date:   Wed, 15 Feb 2023 08:58:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 3/9] PCI: rockchip: Assert PCI Configuration Enable bit
 after probe
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
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-4-rick.wertenbroek@gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-4-rick.wertenbroek@gmail.com>
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
> Assert PCI Configuration Enable bit after probe. When this bit is left to
> 0 in the endpoint mode, the RK3399 PCIe endpoint core will generate
> configuration request retry status (CRS) messages back to the root complex.
> Assert this bit after probe to allow the RK3399 PCIe endpoint core to reply
> to configuration requests from the root complex.
> This is documented in section 17.5.8.1.2 of the RK3399 TRM.
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research

