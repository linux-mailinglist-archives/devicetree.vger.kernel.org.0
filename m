Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 965A74A6F48
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 11:59:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232101AbiBBK6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 05:58:18 -0500
Received: from esa4.hgst.iphmx.com ([216.71.154.42]:29392 "EHLO
        esa4.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbiBBK6R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 05:58:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1643799497; x=1675335497;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=6k7tE3M6bpnJHQHnhJCh/DCDGRD7sVYF5zWLizvvIyY=;
  b=fVq9kN4V/NTx8zfoQSiqTEjdB+WHAJxo0AkTnNqxRbiELYjDAQ6n+Zb2
   UTV/9KlzM8NSIboGmzwjF7iCciHN2mvx1FE1WfScQukIU0Mdq6bJx7Bed
   W/ZwAR3BY5eDF9Y5D5bixcTVQddd0SsBwWlAY2D22hB4CfIkDFupnfQh/
   ljqpqhYs0jsfnE/W5Swb2nULYcO8gJ58Iq87puek0MgE0qqJqyA+pmGD0
   eXr/enFQezrVUSTu7DkQPLzxKj8oortq+ZVFPMYaMBv/66+p92rmgb6T/
   WYInUXFNnk1sQtZF35VbckSPLaQhfSE0BOoTB/C5hL51R2tECG4sqaVCN
   w==;
X-IronPort-AV: E=Sophos;i="5.88,336,1635177600"; 
   d="scan'208";a="190912187"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2022 18:58:17 +0800
IronPort-SDR: xbkRP3/PI5si0l8L4/DajJ8djk9fxbIsPaO+xG75W4CmRHEAjGEfq2HoFG958RdWatC0AceIXZ
 FQtKJqtkbJ4NqE2RJbL+hgJIDdKrxkecxdIkkZLpaNNEmRmrCxPF4M8i5eO5Fx6ZEX+JCudm0d
 8p+D1fNBwaZtD07sXz79eJcQz1c0TfOJ8iAcqHjSaRe+UrI34s/hHsO/a5kJ7HYxlpQNFrN85g
 lZkJoXgYzbfJH6MxC6GY4m1zBaVKpoWZzvMvYNj8wMBOP8Cl1WhrRA+FQmWZEGjZzao2kd54ci
 Smp/bZgJtFci25h6axPUEdEM
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2022 02:30:13 -0800
IronPort-SDR: qyVd6sOKUvelfmOqSTAkXYFrg+aaDQK+0tqo6GgX4i2Qv5xrCTGR/jM7JvvMzs+3JSg/2N8Pjt
 nHBo7HXC1FJCIy0W22BDW3ayCnNxX2sdHwPnIaeF8IaWcQ3y5THfp7L8R3dkWH9o5YlkVtO2uI
 x+DqupBCmWPH/nMXdcAroD0f+dwos07YCrAiIuia5WxW4Ri2vL/auTSpkLXeUkuO+euOu/fgDr
 xlxvy3HB1/GRFp4u5ufzwJD60Eb3D6jVMmcPqgxM/AZ3VtfVIutfm7I94ygLN0HEZKepxxvZXi
 ff8=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2022 02:58:18 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Jpdl52ykhz1SVp1
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 02:46:25 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1643798784; x=1646390785; bh=6k7tE3M6bpnJHQHnhJCh/DCDGRD7sVYF5zW
        LizvvIyY=; b=Xi88hxJNWip64lmBn8x6HoOeVthH818CFRxVaCnDn8mgkRPaZgb
        GFmn0hAJpD/CUOTOWiCcPI6NVcs+60OBFUkXygG3cGdlPTtDnOueL9C3lJgVhjyC
        Bx10geEuzaoLMONAjHmOt7H1ba2816Rp5KSaryC6S/zUOs1HyrV0eeuXg9gWZVM4
        hVuUhL6tqs978ud++ixMb63wir16MeuLVHgyHZ46Y0tmtBEt1z0YAjspJUDf5YlA
        fdXf7pYV6aZiES5+1jUOtj/nZ5T48vJhrsXo7DStb1sEiv7GLAV4XroURnsut5Je
        Y1hmmlDYg/ANxWhbqlD9IniYHe7jAJ/2kVQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id fqXbDyJrY7Dx for <devicetree@vger.kernel.org>;
        Wed,  2 Feb 2022 02:46:24 -0800 (PST)
Received: from [10.225.163.62] (unknown [10.225.163.62])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Jpdl36PLqz1RvlN;
        Wed,  2 Feb 2022 02:46:23 -0800 (PST)
Message-ID: <c49abe7a-bc95-a692-29d3-eb37ee6f2e1b@opensource.wdc.com>
Date:   Wed, 2 Feb 2022 19:46:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: ata: convert ata/cortina,gemini-sata-bridge
 to yaml
Content-Language: en-US
To:     Sergei Shtylyov <sergei.shtylyov@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Corentin Labbe <clabbe@baylibre.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220129204004.1009571-1-clabbe@baylibre.com>
 <CACRpkdb9R-BwdVzyeaQOjagsQU=2-06VNqKPG9fMa7C93eDC7A@mail.gmail.com>
 <2b0fa854-16e7-3d0b-a04a-971249646fab@opensource.wdc.com>
 <bc80cd49-c95e-6b9a-1210-7d3832766b02@gmail.com>
 <5a1d66d3-d3c2-ab77-f874-c3d6b10a0d2b@opensource.wdc.com>
 <d16a1be7-d856-f6b7-5a1a-9f09f42195ee@gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <d16a1be7-d856-f6b7-5a1a-9f09f42195ee@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/22 18:24, Sergei Shtylyov wrote:
> On 2/2/22 1:56 AM, Damien Le Moal wrote:
> 
>>>>> Thanks for doing this Corentin!
>>>>>
>>>>> On Sat, Jan 29, 2022 at 9:40 PM Corentin Labbe <clabbe@baylibre.com> wrote:
>>>>>
>>>>>> This patch converts ata/cortina,gemini-sata-bridge binding to yaml
>>>>>>
>>>>>> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
>>>>>
>>>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>>>>
>>>>> Knowing that drivers/ata is a bit sparsely maintained I suggest that Rob apply
>>>>> this patch when he feels it looks good.
>>>>
>>>> What do you mean ? I am doing my best here to maintain ata !
>>>> But I definitely do not have all the hardware supported for testing :)
>>>
>>>    I can probably help reviewing the PATA drivers if you want, just like Bart Z. did.
>>> But I don't have much of the PATA hardware (what I have is in my old PCs I haven't
>>> booted in a long while)...
>>
>> More reviews are always welcome ! Thanks !
> 
>    How about me submitting an "official" PATA reviewer entry in MAINTAINERS?

Sure. That works for me.

> 
> [...]
> 
> MBR, Sergey


-- 
Damien Le Moal
Western Digital Research
