Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB9CB67F359
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 01:54:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231548AbjA1Ay2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 19:54:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233302AbjA1Ay1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 19:54:27 -0500
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com [216.71.153.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37F7B7E075
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 16:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1674867259; x=1706403259;
  h=message-id:date:mime-version:subject:to:references:from:
   in-reply-to:content-transfer-encoding;
  bh=8HroFzcMUn53K8eqs6JLXQhk7cTtRl6khnafxvlvf58=;
  b=YaAtHDKiQ4xGvOyu6Ib8BJZ3LvR1DKlxBwXz/6lZRJdg5cXd26vy89zp
   9ETgkLCzy55nmoP+uqOqHWiA9qHEjUNdoaXTlMHxOPBS9sz4njNx1DhoK
   oOLAjb0syLJvE16cCGeqcaeXfUoLVPU4bEJLW8bUJjAtOE/o+cZVJzK66
   oXJrIJeKMTMUQ+n7Q8kuOqg9Az+ctJ7Y/H7DDcotqjaVcQO0oyFE5S7zr
   uqiVLmsytYdXPbs9czjK8qxGma+S7jeBwPaj7+nYb+bDJnLKXEijzCmto
   b+1tUs9NOtfy5sYc0PiQDzl5kiL7sJ5uIb9peNoE2DSQvhxkdEHx8dfOX
   g==;
X-IronPort-AV: E=Sophos;i="5.97,252,1669046400"; 
   d="scan'208";a="221742365"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2023 08:54:18 +0800
IronPort-SDR: Nqik20Bwp5lRVS1oO1H0pZfV/YI8Km4wo+Hw324Dy/KTKBE3l5qH7+FLfNA6ManHD342Qlgw/f
 fTeayqb5HrfObFfQR5CdRLHlrKtSa+Qx224tN6G461Au6itRcAKzEmSEbPH1wydJENQcz3Bbi7
 7LsaP5ho5PRx9B6Am28ZrJv17+lKZnaxVegHqxkfazAiQp83df/TTt8cf/f2e/1kEGhBJQv2Qc
 nZe8sJq5Ca8ZpKRvR1Tod4ZV+g878hvhSrRgxc6SR+Apk1iKSNnwqd5vQidNwb7yURW+jPei7F
 k04=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 27 Jan 2023 16:06:02 -0800
IronPort-SDR: /qT5a3uucQx7HW28eJK3lwUOyh2zSF5RpHydqPWfjrUoF1uuCZbw/kpfiJW6lMDvXOq7Nf343V
 tdT0Eku/RlcUzIJJbopjYv/6z08gPYuAivwCSZvoKmV3EHdpU7+KkxDYisrAvQckbRZw55hGkR
 ANpAI7Z0EIuAN2LKAf92zIpXmKN07iOiGXBMAqQW5vMbnM0mZDEYAFrF/eowcHWAsI9Umr3EBY
 0n21xh2aEdVOmgowXS3ieeqyOUox1LFW+2plPtJI8+CSNRgNwQYkVqwehmjJAKyUeUW9+nB2Qg
 7JY=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 27 Jan 2023 16:54:19 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4P3bYj5qpvz1Rwtl
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 16:54:17 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1674867256; x=1677459257; bh=8HroFzcMUn53K8eqs6JLXQhk7cTtRl6khna
        fxvlvf58=; b=ShftbYmd37Un2N6WXeDLuDn368rIZ7rg0bPyrhOhRV4L+OujvBZ
        9t8qHFpVJ9RP9zP8FBgxqvyARvggZHlQecr5g6REKIL7iS/I5mp/zcILc1CJIDnK
        eNA5e0cb5clxhH30P9AwwNnBnpmc4eCQx23IrsUCGiFiYbpjuCzCe4nihmz/r/pb
        a40GgA7aEk2TxXGdKxBIf7R5q8nNV1GLcsTNR48eKphEVQZb3leRSAv96TRrs2Xi
        HvHLkNGrYeNxQEiJKcsmUXydBaOCiqhmUKI8Wog2rqzVCKrwuTaN1On12FtbYbv5
        aQqi/qfXflV+L3rvEVEDNsMiNU0bzwX0V8Q==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id ovDmUs8UYfWA for <devicetree@vger.kernel.org>;
        Fri, 27 Jan 2023 16:54:16 -0800 (PST)
Received: from [10.225.163.66] (unknown [10.225.163.66])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4P3bYd1nCCz1RvLy;
        Fri, 27 Jan 2023 16:54:12 -0800 (PST)
Message-ID: <75aa04c9-e173-6a2d-6b38-d0e16f3800aa@opensource.wdc.com>
Date:   Sat, 28 Jan 2023 09:54:11 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 2/3] dt-bindings: reference MC peripheral properties in
 relevant devices
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Marek Vasut <marex@denx.de>, Lubomir Rintel <lkundrak@v3.sk>,
        - <devicetree@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mtd@lists.infradead.org, linux-serial@vger.kernel.org,
        linux-watchdog@vger.kernel.org
References: <20230127093217.60818-1-krzysztof.kozlowski@linaro.org>
 <20230127093217.60818-3-krzysztof.kozlowski@linaro.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230127093217.60818-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/27/23 18:32, Krzysztof Kozlowski wrote:
> Several devices can be attached to memory controllers (or memory-mapped
> buses), thus they can come with additional controller-specific
> properties, e.g. devices wired under Intel IXP4XX bus: cfi-flash,
> intel,ixp4xx-compact-flash, NS8250 serial and MAX6369 watchdog.
> 
> Referencing Memory Controller or IXP4XX bus peripheral properties fixes
> few dtbs_check warnings like:
> 
>   intel-ixp42x-gateworks-gw2348.dtb: ide@1,0: Unevaluated properties are not allowed
>     ('intel,ixp4xx-eb-ahb-split-transfers', 'intel,ixp4xx-eb-byte-access', ... ' were unexpected)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research

