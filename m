Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2E1569DE44
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 11:55:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233893AbjBUKzg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 05:55:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233085AbjBUKzf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 05:55:35 -0500
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com [216.71.154.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C5B322DDB
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 02:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676976933; x=1708512933;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=dottw58DX6NpLcrIxoBfsO6WcV5uJQI3WvU4f4U5ZFg=;
  b=ePZ+bAUs/GAbCK3ij4irgK3NEkyG9UKAk/+D2UjqyEDMGtisL8DJQrGn
   zMlE14t6VlM5ZT24DY4wSyO/k9xqt1HmmYK9ilM4+qw9hFo/Gyv/t7TE5
   BHsRwteG31Flt39qqxtbsTnE5tjTrSbp5nkvepkaDHhY81zMwam0Is99p
   L4G4BQRR6Ex3AKwqAJTHUZwpFNkouTYgS51EIPftpNKxWBsihouncRiaQ
   LYgziYBmZSZIR0G3dqKARVItI7ILHSWT6fgwa24G7bs4MsGM70oibAaQC
   PJCGpaGMCcB9JDmHD1VBWqQwZaCj7Ma+i5061x0kXGh2tR3/sWl+BM55y
   g==;
X-IronPort-AV: E=Sophos;i="5.97,315,1669046400"; 
   d="scan'208";a="222092266"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2023 18:55:33 +0800
IronPort-SDR: FnyW/LjFzAaz+D74/7hgrczJLzS79VrM0iDbza52Ah2204H7gx5knGKPUvZYYwn8lBOi1skxYv
 OtiEN4YQZA6JPdXPcAbvyHBw0oYyYA9BUD4Lwx2KldJBFU+4l22nLEoRCHcavDttvk9p7g8Jsn
 lbsB1JSwV/vlojA7G4Nu6FyxryCNnlpQ/mMbko5G30d1OZTUyaKywreInP8WBIPZsBeOKihK/f
 EpuBIgthzzuwq7TX+291dCtY690eovr8xK7HxNfsznAxFNF6DD5Gn733ZmkL6bsEOj0hVXHt4S
 +7g=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 21 Feb 2023 02:12:33 -0800
IronPort-SDR: g8g5Kr3raurWuFbik+KNo8K1O+ofBDes8Wc4msyvOPo+nGccGKeIQTh7D0M9eiVtsVRjOUEcQ1
 HGzRtBQuTFS3H2KIoR4wcNGpvfMQ0RtTAJPV3syle3J9nvDDViWKW3hBKymR5ND+15bvztOf1Y
 iaHYvegwwgZl1XDy08LJ8QVPOnTimXs6N9GcnTZ10mqEmRFHyGyOSEplBJ2FCo30d0Ocil4byj
 qejt+HOU9Xdjvp5QbO0vUUacJxjBNce2LrpxNDaUTjrqogb9jHOuN7n+1LyGCBln6iiHR8A6KE
 nwQ=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 21 Feb 2023 02:55:34 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PLbmN1kQMz1Rwrq
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 02:55:32 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1676976931; x=1679568932; bh=dottw58DX6NpLcrIxoBfsO6WcV5uJQI3WvU
        4f4U5ZFg=; b=RqStWAGmwTKsaOFcjGMNiMQAycpsAdG0h/DujjZpLQIKf7RN8AR
        hlck4UC7t3C4HPOTq6dLYjS83znf9raxBpss1R2Imt+mIRvlo37r/LQaFFafom5m
        fo1dC3WtrmO8LIVKFXaK8WrSvCKPTEsrWfq30tZ2bZVawdtnF2tH6XJ5zzWCDyX3
        FyGgmFhMi+FcqWn0qU+cpNQ5JO6xC5eKzPQvEmLDA5i/SsuzQ71rt1xFWu4jTwU6
        n5xK/cgsCi+LGWrEf+BFxlmMWE3QUntug+ym4lBV+Wg0DoLwkxOTdwavBF3ruDie
        jvTKml0nhnsb97bbB1ki8MpDlF0E85A0Gpw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 26w1lsuFxFpt for <devicetree@vger.kernel.org>;
        Tue, 21 Feb 2023 02:55:31 -0800 (PST)
Received: from [10.225.163.9] (unknown [10.225.163.9])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PLbmJ0q4rz1RvLy;
        Tue, 21 Feb 2023 02:55:27 -0800 (PST)
Message-ID: <38ae72c9-0f0b-1a94-d2e0-f4ea80e94705@opensource.wdc.com>
Date:   Tue, 21 Feb 2023 19:55:26 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v2 9/9] PCI: rockchip: Add parameter check for RK3399 PCIe
 endpoint core set_msi()
Content-Language: en-US
To:     Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc:     alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
        rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
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
 <ebbddcfa-99e5-efda-0eab-fbd61a33e2c3@opensource.wdc.com>
 <CAAEEuhpDTmAvBZhC9RCueOvqbLb=AttV1KxJrOUBcjHQrpVXmA@mail.gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhpDTmAvBZhC9RCueOvqbLb=AttV1KxJrOUBcjHQrpVXmA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/21/23 19:47, Rick Wertenbroek wrote:
> On Wed, Feb 15, 2023 at 2:39 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> On 2/14/23 23:08, Rick Wertenbroek wrote:
>>> The RK3399 PCIe endpoint core supports only a single PCIe physcial
>>> function (function number 0), therefore return -EINVAL if set_msi() is
>>> called with a function number greater than 0.
>>> The PCIe standard only allows the multi message capability (MMC) value
>>> to be up to 0x5 (32 messages), therefore return -EINVAL if set_msi() is
>>> called with a MMC value of over 0x5.
>>>
>>> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
>>> ---
>>>  drivers/pci/controller/pcie-rockchip-ep.c | 10 ++++++++++
>>>  1 file changed, 10 insertions(+)
>>>
>>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
>>> index b7865a94e..80634b690 100644
>>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
>>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
>>> @@ -294,6 +294,16 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
>>>       struct rockchip_pcie *rockchip = &ep->rockchip;
>>>       u32 flags;
>>>
>>> +     if (fn) {
>>> +             dev_err(&epc->dev, "This endpoint controller only supports a single physical function\n");
>>> +             return -EINVAL;
>>> +     }
>>
>> Checking this here is late... Given that at most only one physical
>> function is supported, the check should be in rockchip_pcie_parse_ep_dt().
>> Something like:
>>
>>         err = of_property_read_u8(dev->of_node, "max-functions",
>>                                   &ep->epc->max_functions);
>>
>>         if (err < 0 || ep->epc->max_functions > 1)
>>
>>                 ep->epc->max_functions = 1;
>>
> 
> Yes, this could be moved to the probe, thanks.
> 
>> And all the macros with the (fn) argument could also be simplified
>> (argument fn removed) since fn will always be 0.
> 
> These functions cannot be simplified because they have to follow the signature
> given by "pci_epc_ops" (include/linux/pci-epc.h). And this signature has the
> function number as a parameter. If we change the function signature we won't
> be able to assign these functions to the pc_epc_ops structure

I was not suggesting to change the functions signature. I was suggesting
dropping the fn argument for the *macros*, e.g.

ROCKCHIP_PCIE_EP_FUNC_BASE(fn) -> ROCKCHIP_PCIE_EP_FUNC_BASE

since fn is always 0.

That said, I am not entirely sure if the limit really is 1 function at most. The
TRM seems to be suggesting that up to 4 functions can be supported...

[...]

>> Another nice cleanup: define ROCKCHIP_PCIE_EP_MSI_CTRL_REG to include the
>> ROCKCHIP_PCIE_EP_FUNC_BASE(fn) addition so that we do not have to do it
>> here all the time.
> 
> Yes, this could be an improvement but this is the way it is written
> everywhere in this
> driver, I chose to keep it so as to remain coherent with the rest of the driver.
> Cleaning this is not so important since this code will not be
> rewritten / changed so
> often. But I agree that it might be nicer. But, on the other side if
> at some point
> support for virtual functions would be added, the offsets would need
> to be computed
> based on the virtual function number and the code would be written
> like it is now,
> so I suggest keeping this the way it is for now.

Yes, sure, this can be cleaned later.

A more pressing problem is the lack of support for MSIX despite the fact that
the controller supports that *and* advertize it as a capability. That is what
was causing my problem with the Linux nvme driver and my prototype nvme epf
function driver: the host driver was seeing MSIX support (1 vector supported by
default), and so was allocating one MSIX for the device probe. But on the EP
end, it is MSI or INTX only... Working on adding that to solve this issue.

-- 
Damien Le Moal
Western Digital Research

