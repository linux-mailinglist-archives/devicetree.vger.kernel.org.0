Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E534854ABAE
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 10:23:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240415AbiFNIXm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 04:23:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240620AbiFNIXl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 04:23:41 -0400
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18A5D369D9
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 01:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1655195020; x=1686731020;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=MmvF2pvUPJk+l0G2cFMgXO+laIHLHX4qzgsWbZlC+FM=;
  b=QCIItuFAQcpJ1jQdKdCedubREQk3Uf0YxXoD+NxcSPhTsdcQK28xcDWC
   fG/iRDU2OikBjLbRAo+xvIEDiRpIIBVDuXfjTrMcB4hK+SVfCzj6ccRC+
   PZQ5SNQ0nZ82Gi20HuLhXXkjCIS9Mm0gUs0f0gONfsWMmT+l2cFkS1lIF
   v/O3BHzfhLWI5ycYYeIquIcY9xnAgtxaUPr6nw1EKqXroacPRtaVF7G+D
   oWKf+yVo1rfFeO5WJfQU/dPGBjPMt5CfgCzlMMl0zaNPcHkn4JIW60Mx9
   tTyexjWhpdoxGA8hWvkW2ceuyjct5pAENelFwYoI6TVFloRW5YgAXMZSJ
   w==;
X-IronPort-AV: E=Sophos;i="5.91,299,1647273600"; 
   d="scan'208";a="307384171"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 14 Jun 2022 16:23:38 +0800
IronPort-SDR: aNX7qgxVsHCPKLSdZkM28I9V+IllRDmiSvrQyyV6ewaoifFocacZlySAvsjhbtVYCa0uD+xUCo
 yi5k9CrYxBF5Q1/Lom3uLJTpRMc307Ba+SrwzIe3N+8xnTOZz93UfLgEBJ7b8mdqGElXTK9lZZ
 erUhlOxrvUdXTJXrUnhH3pNsAl0eaNnLr20YdYpc73kKUfwJHJOXmgUHWil3k/IaAYxUXkV6gS
 NkWp997+KiXRo2dZ/enxq+WhGsx1+Y0tRJt+E1LmTPWuUQecfHce2Qy3ipxAUG6gEEOH7lvbQE
 /f/YJi3sD6LIiIOj+C08CtBv
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Jun 2022 00:46:36 -0700
IronPort-SDR: MRCGTegQEn79MVAM+Nn95J/Ik7CpM3j2F7+pTRmGW2OKOhGZAeOkv7hHkG7DtCvqcue9FiszII
 A5obibDS5PDkQlwa5geEVOng6B5LvKUmtDaB/JJOkEzR93ZM5Ff7oW3+f2VDJvexzHrwjtJn6s
 qnLwz6a/uc0ad1GOEq0OnN6ks1ZMBri+Ixm8ET4lBQqtaqdP2llVY3P79c27aD47w72/oYlpLb
 QFjMO7S8CYwMdIzblcupzjucmE7zmsmQKMrkV9KEZn6CAUCFGwGa9HV2ipcibwfiwe9sMTGcD0
 o2Y=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Jun 2022 01:23:38 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4LMhKP4MDqz1SVp2
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 01:23:37 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1655195016; x=1657787017; bh=MmvF2pvUPJk+l0G2cFMgXO+laIHLHX4qzgs
        WbZlC+FM=; b=cZgBSiPGopdTy3/f3GexXyiQJGRLQCM5ePdjjqM+Mw5uensNmg5
        02s/0vZmih6XWX3v/F4UyynmVBuVpMJ2CVW7sEVuq8T7d/YwePnO7JHp8VfZ+w+d
        JSNT7ngTk1d/PUJ8YQ40msTkvWOXYLjJdvPXV+7PuO2TLoVRNiMbnLgpLSZnHyv7
        A6BHlclzYoVKYxydhG30lwNfoZiVED4rP/waEx06tT1RuVq+FDfldH2bsjCGpntQ
        Bwwu1aIOQ3ZgrRiHm5hSpQEhLTjh1okSo1jCfDt5uC9ujFkmQMc9zxFNcNlFT0N6
        aEZ0ufp9l94E4+baq7rH9HpKd+88a+Era9g==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id yAPJ74jGc9d9 for <devicetree@vger.kernel.org>;
        Tue, 14 Jun 2022 01:23:36 -0700 (PDT)
Received: from [10.225.163.77] (unknown [10.225.163.77])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4LMhKM12P2z1Rvlc;
        Tue, 14 Jun 2022 01:23:34 -0700 (PDT)
Message-ID: <c388835e-3bc1-a69c-82a7-6036c7adec1b@opensource.wdc.com>
Date:   Tue, 14 Jun 2022 17:23:33 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 08/23] ata: libahci_platform: Sanity check the DT child
 nodes number
Content-Language: en-US
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.de>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220610081801.11854-1-Sergey.Semin@baikalelectronics.ru>
 <20220610081801.11854-9-Sergey.Semin@baikalelectronics.ru>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220610081801.11854-9-Sergey.Semin@baikalelectronics.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/10/22 17:17, Serge Semin wrote:
> Having greater than AHCI_MAX_PORTS (32) ports detected isn't that critical
> from the further AHCI-platform initialization point of view since
> exceeding the ports upper limit will cause allocating more resources than
> will be used afterwards. But detecting too many child DT-nodes doesn't
> seem right since it's very unlikely to have it on an ordinary platform. In
> accordance with the AHCI specification there can't be more than 32 ports
> implemented at least due to having the CAP.NP field of 5 bits wide and the
> PI register of dword size. Thus if such situation is found the DTB must
> have been corrupted and the data read from it shouldn't be reliable. Let's
> consider that as an erroneous situation and halt further resources
> allocation.
> 
> Note it's logically more correct to have the nports set only after the
> initialization value is checked for being sane. So while at it let's make
> sure nports is assigned with a correct value.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> Reviewed-by: Hannes Reinecke <hare@suse.de>
> 
> ---
> 
> Changelog v2:
> - Drop the else word from the child_nodes value checking if-else-if
>   statement (@Damien) and convert the after-else part into the ternary
>   operator-based statement.
> 
> Changelog v4:
> - Fix some logical mistakes in the patch log. (@Sergei Shtylyov)
> ---
>  drivers/ata/libahci_platform.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
> index 814804582d1d..8aed7b29c7ab 100644
> --- a/drivers/ata/libahci_platform.c
> +++ b/drivers/ata/libahci_platform.c
> @@ -451,15 +451,22 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
>  		}
>  	}
>  
> -	hpriv->nports = child_nodes = of_get_child_count(dev->of_node);
> +	/*
> +	 * Too many sub-nodes most likely means having something wrong with
> +	 * the firmware.
> +	 */
> +	child_nodes = of_get_child_count(dev->of_node);
> +	if (child_nodes > AHCI_MAX_PORTS) {
> +		rc = -EINVAL;
> +		goto err_out;
> +	}
>  
>  	/*
>  	 * If no sub-node was found, we still need to set nports to
>  	 * one in order to be able to use the
>  	 * ahci_platform_[en|dis]able_[phys|regulators] functions.
>  	 */
> -	if (!child_nodes)
> -		hpriv->nports = 1;
> +	hpriv->nports = child_nodes ?: 1;

This change is not necessary and makes the code far less easy to read.

>  
>  	hpriv->phys = devm_kcalloc(dev, hpriv->nports, sizeof(*hpriv->phys), GFP_KERNEL);
>  	if (!hpriv->phys) {


-- 
Damien Le Moal
Western Digital Research
