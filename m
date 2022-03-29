Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 420244EA918
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 10:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233806AbiC2IWM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 04:22:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233777AbiC2IWH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 04:22:07 -0400
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com [216.71.153.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76C073336B
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 01:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1648542022; x=1680078022;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=AYrQtlhqVh2hDSgzcQ5+Kpv4dRRHUmkrluQwNnS8EkQ=;
  b=QMThhccqiJsuZV2NIE5nwVCArU+c8Ocy33mEMkMIPA1cqCUgqzLmbgeG
   3xEvoM0H95vspMaKfAsgi3yLUOIpN4SRBAIsjp4VhJI4htxAPLKzQ+200
   8gvRi6M4gJrx6PGUHMWsp+/Qy38Lb4bxrW4tCuYskhTPUt7BGb8PF201U
   rLe4P/T5/P48iIM2HrjpIG3w3Zc61l9fIk7ClCu0ovHR4zApiBn6yauZR
   TY8dmPBTGnZk5wIChC84kJj7V8H4M7AgsVNHl8UjVRUcpvXNAAcDCM7tw
   ioWjfIcjGUtkDcq04lUaw462e2fm0p2jYhcpqQIE98xaovtGLl5hZZeMT
   g==;
X-IronPort-AV: E=Sophos;i="5.90,219,1643644800"; 
   d="scan'208";a="201365922"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 29 Mar 2022 16:20:21 +0800
IronPort-SDR: C6NsHH7+V+5YbGAnRQJvWkuNkpw2JTz2/IFG9odER/kbcLrRXSvvVHn/nw4BnmQyQ6QThDVMMQ
 HX8kUPU7mzPUTVwAacxW9vgnrjlm6zuRUmV0UaJRA0LG2hrcbAricznkAsfZcgwaKonQhqtbVp
 cQ2kJ0zRM0gKuU0JVXmK38hQQk0fHmVIQmxRlSr4tmEgPsqsfeO0PiSb3sh9kESYSSPYeBVRAI
 aR4k5Lp1KdAIcBINB8aTgjLw6fkb25nZDoElTH4RB6Vmkeyik0keQC96UOm5ubKdEWRXGS2KYc
 RLR+uPr6hpSTIjCkZf9z1Yne
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 29 Mar 2022 00:52:06 -0700
IronPort-SDR: g6qvTiHcUKMcy5R4kpNgMof28ogocj2hkG9IR7klhRNYcXU/CV4Ys9HvXRIzyCKAgk9Eibtwdl
 aJNnMJn4Y27A7DkkiZLzzNPYVqs8z+sjQ2KPQqRur+OcqtN/yyuVCeAGww+eHybZeQ2Akr6aJV
 RSWYUN0mGqeElj4Xh9N2GVswacw2oWpx4zHrwU7GSVI9LCXPJn3trblHZ5ccSCTSP9AXL28gxV
 QggvVsOqH628wT04bOVd0c3X5kqsZdzBkxz4btWYY9IDX1c2griAax6NCoiYYTwfa9k9bMGu/7
 zDU=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 29 Mar 2022 01:20:22 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KSMv96rCnz1SVp0
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 01:20:21 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1648542021; x=1651134022; bh=AYrQtlhqVh2hDSgzcQ5+Kpv4dRRHUmkrluQ
        wNnS8EkQ=; b=TEjUpXy5ecajpkRWD6i90A6dtLRMsnlF9jXHbzuHQ7Tx/gmzCAp
        4TFjIMVlXTgJzfifINZOS7fB80oYaeMmFURWcIf1QLdMde/JwNpJcrkHGT05ieUW
        SxPUB1OLqZCS9JdkcWkVRWJ+rWpyi2vDByvZBnrLKm3Pxk1dfPsDuIfNG2rSaUuM
        1E2Y79T9PMN6PgoYG3GoWfPdmi+8hnqfgxz9oOfCY8ptbDaSRiSYRyRJvK6f3Re4
        5YNe/RRGTM/8focEhVO6s6814qUqJX3lgPdEz0ooz+HMTKnc0BB1Mp3QLSsHZvGa
        7LuWtffk0yzfcwcYQt8EvGK9DDNSEcrgong==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id gjJ_LbfRFAOH for <devicetree@vger.kernel.org>;
        Tue, 29 Mar 2022 01:20:21 -0700 (PDT)
Received: from [10.225.163.121] (unknown [10.225.163.121])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KSMv75G6Nz1Rvlx;
        Tue, 29 Mar 2022 01:20:19 -0700 (PDT)
Message-ID: <19912886-4032-633e-e4a7-ef47ae389ffd@opensource.wdc.com>
Date:   Tue, 29 Mar 2022 17:20:18 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 03/21] ata: libahci_platform: Explicitly set rc on
 devres_alloc failure
Content-Language: en-US
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220324001628.13028-1-Sergey.Semin@baikalelectronics.ru>
 <20220324001628.13028-4-Sergey.Semin@baikalelectronics.ru>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220324001628.13028-4-Sergey.Semin@baikalelectronics.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/24/22 09:16, Serge Semin wrote:
> It's better for readability and maintainability to explicitly assign an
> error number to the variable used then as a return value from the method
> on the cleanup-on-error path. So adding new code in the method we won't
> have to think whether the overridden rc-variable is set afterward in case
> of an error. Saving one line of code doesn't worth it especially seeing
> the rest of the ahci_platform_get_resources() function errors handling
> blocks do explicitly write errno to rc.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> ---
>  drivers/ata/libahci_platform.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
> index 18296443ccba..1bd2f1686239 100644
> --- a/drivers/ata/libahci_platform.c
> +++ b/drivers/ata/libahci_platform.c
> @@ -389,7 +389,7 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
>  	struct ahci_host_priv *hpriv;
>  	struct clk *clk;
>  	struct device_node *child;
> -	int i, enabled_ports = 0, rc = -ENOMEM, child_nodes;
> +	int i, enabled_ports = 0, rc = 0, child_nodes;

You I did say that I do not like this. Especially considering that this
function uses rc only in the case of an error return. Having it uselessly
initialized to 0 does not make sense and goes against your goal of
avoiding problems in case it is not set in an error path. returning
"ERR_PTR(0)" is the same as returning NULL, which defeats the purpose of
using ERR_PTR/PTR_ERR.

Please drop this patch.

>  	u32 mask_port_map = 0;
>  
>  	if (!devres_open_group(dev, NULL, GFP_KERNEL))
> @@ -397,8 +397,10 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
>  
>  	hpriv = devres_alloc(ahci_platform_put_resources, sizeof(*hpriv),
>  			     GFP_KERNEL);
> -	if (!hpriv)
> +	if (!hpriv) {
> +		rc = -ENOMEM;
>  		goto err_out;
> +	}
>  
>  	devres_add(dev, hpriv);
>  


-- 
Damien Le Moal
Western Digital Research
