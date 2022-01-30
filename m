Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D69A4A3BEE
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 00:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234943AbiA3X4p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jan 2022 18:56:45 -0500
Received: from esa4.hgst.iphmx.com ([216.71.154.42]:14550 "EHLO
        esa4.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbiA3X4p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jan 2022 18:56:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1643587004; x=1675123004;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=IbL3PjiyRfSGjP+MCmktAmlDzb3Y8TTYlrkcO9OhZQI=;
  b=YSC7DeN0k3m25MCXqTVUGF5wwxBys/BiS2Shbl38v511PKygB3tnNs8T
   S46+um2DtSEWD0U7FwsCNL4mEfsH6hq6a7pD0k23dN7dBuLaC+u4CldXd
   S702ImLzHOlGWwX/kNruD+Ri23TARQ6YhJc8JFKWdtuDWXHED3w2NyySI
   jCDqkhKt4JODBZ12LsDdfEgGhNF+9izDFnIv6myHzoNACwTJELdLa8YgY
   KvW+5aLsAgULii+vWoXPttm/7Jmji9gROqhnFxpEU7dbAENwn/HR54gJ1
   vNK/64c4ebzZQgoTQ2wR6+WPy1M+0tNBn2+KkjCMxKrjuUwdWa5DfqlFs
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,329,1635177600"; 
   d="scan'208";a="190709153"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 31 Jan 2022 07:56:44 +0800
IronPort-SDR: JEX8dcGVKWhKe3r8iZXns7PugkgTwTIAReNc92oyiI5wN8qHOyKSuUeUT/Xo7Lf7s+GTmU/v40
 Jx3EGOtjTWzMeAqJqsitu90Ilqi7nuectoVsnj++b/8ObyO39cFkV1D5AzXY2GaoXh6q5Toj8s
 tkmTOOeGimCq1z94KU6n1Fm1LmFRfligbNsqXT3Przc0w/BrFSbowUTLBPijhhSbFaxvrZuxk6
 qP8tY+1JwVdcOLD0ZmXaDf60HcgLVwVc7us/5gxD21Mdyu0FfyYYusd/3VcccecIOvWA5bPJBz
 Ub3I1sRbvXLIeMQ8Yusz5ouh
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jan 2022 15:28:43 -0800
IronPort-SDR: Y05bu/L0MPeIMmmO/Eg7hsU93FAFhmJgYsZ4RHzEmLtFW1sWhnktTzbvmJT7k+Z0QOt5MvNunB
 EgOuArnm0LIJAP1kxILbqRtlowGmLUdXZCFMLRns6Ij4cwmTfgumyUfzHDsdU/PEyYkP8/sj0O
 DdLBRUZuZldbkdqNrFVSozUflHi9cgEVc0S08E473XwjC9+5e0fwEqGM6caga/HodbEGFVDu+K
 oDlpvh3mgGwF2Bnq4SNhofRMcI5HO1nkdhAq69Elbc3aDxpmE4W1nujvbGPVbsnTrqKcESWd0m
 WCM=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jan 2022 15:56:45 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Jn7QN1SC6z1Rwrw
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 15:56:44 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1643587003; x=1646179004; bh=IbL3PjiyRfSGjP+MCmktAmlDzb3Y8TTYlrk
        cO9OhZQI=; b=JULyRYtYipNE/m5z1jJGU5ATjuHiE9rnEEW+XL6e1V4x1tPaiAZ
        xRy10TPAkFvy+a5jqT2e9Rjgu/jlFz2NKJmAqe1KnJUMSvZuY43aIpC0lAr9NnLY
        ukfDr5ZrwYCNg9tFj2pcv7rIKHDxIAeuNC1MJbe3nkoG79fXD1Y7OoE1PmcanLVD
        uFU6Zkli4VNI+fGxfDsqrX1QqQQwHnOqkehSd7Yci50vp98nZ9Jq01uQQMkRbIV3
        W9dlrsyGAtK9ZNKqhvP922EcpkLinSYzAQUIMj3TaYdVLMKV2KoiNTmEqgbk5AoK
        7LY4dzjh1+zPFAB8pEJSRAo3TXzjvKRWfeQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id ePQEeVoxSAbv for <devicetree@vger.kernel.org>;
        Sun, 30 Jan 2022 15:56:43 -0800 (PST)
Received: from [10.225.54.48] (unknown [10.225.54.48])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Jn7QL4KyMz1RvlN;
        Sun, 30 Jan 2022 15:56:42 -0800 (PST)
Message-ID: <2b0fa854-16e7-3d0b-a04a-971249646fab@opensource.wdc.com>
Date:   Mon, 31 Jan 2022 08:56:41 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.5.1
Subject: Re: [PATCH] dt-bindings: ata: convert ata/cortina,gemini-sata-bridge
 to yaml
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>,
        Corentin Labbe <clabbe@baylibre.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220129204004.1009571-1-clabbe@baylibre.com>
 <CACRpkdb9R-BwdVzyeaQOjagsQU=2-06VNqKPG9fMa7C93eDC7A@mail.gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital
In-Reply-To: <CACRpkdb9R-BwdVzyeaQOjagsQU=2-06VNqKPG9fMa7C93eDC7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022/01/30 9:26, Linus Walleij wrote:
> Thanks for doing this Corentin!
> 
> On Sat, Jan 29, 2022 at 9:40 PM Corentin Labbe <clabbe@baylibre.com> wrote:
> 
>> This patch converts ata/cortina,gemini-sata-bridge binding to yaml
>>
>> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Knowing that drivers/ata is a bit sparsely maintained I suggest that Rob apply
> this patch when he feels it looks good.

What do you mean ? I am doing my best here to maintain ata !
But I definitely do not have all the hardware supported for testing :)

That said, I am perfectly fine with Rob taking device tree patches if that is
not a problem for him.

> 
> Yours,
> Linus Walleij


-- 
Damien Le Moal
Western Digital Research
