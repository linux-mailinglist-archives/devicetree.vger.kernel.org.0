Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35E814E5D1D
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 03:18:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241253AbiCXCUH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Mar 2022 22:20:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348098AbiCXCSr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Mar 2022 22:18:47 -0400
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C62D92D1F
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 19:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1648088237; x=1679624237;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=C8ZC1JfJidJGGKJTTvn2HdT8RQJSx0oDAfiC+lrKKkQ=;
  b=ZTwTXoiH/KvFyatmAABlLBmI4Rh19mEiF6SPK8E58VebjqT8TKY73HD0
   iwraa7roe2bBP6/npbTfVd1SoPuyYjTk1Y0jh2CRUS8aE2hembVynry8b
   xQkOKTksalrdZk5wjIFNiZxQBSrs/sGmGy2OCG8gGX6AMFjnE0rs6ei0Y
   7h1w/9/Ltbe7F1PzVacE4NqNZORq+KNwKvx3kIA+OpqTxFtJUYFjaRR1l
   xUDaBXIq8bi5sS/KuR25SHlqCwVkgqFcCtDRNlIUvS7hdf23dM3wheFSi
   dXm6VEJpIfYRhcx99iDPz8gzlp4WraUP/NvSevo9kb/93ZO3peOn76F7d
   A==;
X-IronPort-AV: E=Sophos;i="5.90,206,1643644800"; 
   d="scan'208";a="197043556"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 24 Mar 2022 10:17:16 +0800
IronPort-SDR: 32pc32lz/f98KZnkWeOl4EeSvwCAXQKdKCyqStodHZlTbfI2M4eB6QtseCBbUHw8LjlqK+pUVh
 73wNjIJBKW1LPG3wtZDlUbuTUNCTdegdgrz4rG1GNFTdrXCn8CEjtznAbnIkTn08q4TzpBnmZO
 SkWnw/BaMF7pJNY03k4TKOzIfYZl0syt4LOaJoL5W40QwWKZPlkk6R1qswZsoouQaagBfQ+c7t
 swg5SxHbLQdVWDTux/wIF5KBL8lCMBNHFIc6NoEmqolsI5iBbzhaSDMA16FjXYPD8ffoBipfFQ
 xEs1lWtNg02RPTGhbRDi6Nyg
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2022 18:48:13 -0700
IronPort-SDR: qMMgt4ekbKqQwrk4ny5XiPYIscj6tCYvR67/eSCv/eM9tXj0wyKAv8s0u8rgQLdJUslA3r3ASS
 BhkCMRF//MaNe944cKtKayauj8tVNgoNjdiYuwz5Y+hRM9OH5SLs+p9VsHeHaK7ojh6L/MNTtC
 i6o233YZb21Micg5dyMqAJh72p2d8Z8FxY965MjI4mrRQh11or7oLAApX3J3yDkWoBVuCwugFV
 Ir5SwdtsjzrSkGFTtdd2v5rVVqM0xkyS1vb9pfeUNoNcvojEeJEnCzeTfcsvExaS4agUDrh1zk
 vT8=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2022 19:17:16 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KP84W3s96z1SVnx
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 19:17:15 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1648088234; x=1650680235; bh=C8ZC1JfJidJGGKJTTvn2HdT8RQJSx0oDAfi
        C+lrKKkQ=; b=hlAF+h84k1jzb3N6RXBwTSkxk6yOUy7EIqh//RaECaEn9o2zcbl
        BsoMMgu8oA5M23Hz//ii7fDZ87FIdRshfwL8S6sCgLd6lJzGRiVzsqWypYHPhFI7
        MKgtKgxsY8g2lb+VHvcgagrGZiIPIzonayuFVpqS/ZhEvq9lvsMjKvbSlggHENeN
        Dto1VhQ8g/rSJoTdDLtCCZtoZQOB0JZScW1969kmANqUDrYJMvlAvQpJH4dQMff4
        OjuwdEE8SJy0JXFwoe8nnKdKFVZIJvpNg8+IfIRPnsN18l6VUrz+XbuPoNsxK06o
        wZ+LYMqXODnS1/aAt6NYF/gaoy7qBslhRwQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id PpWpVm6rZ8Ne for <devicetree@vger.kernel.org>;
        Wed, 23 Mar 2022 19:17:14 -0700 (PDT)
Received: from [10.225.163.114] (unknown [10.225.163.114])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KP84T2DKKz1Rvlx;
        Wed, 23 Mar 2022 19:17:13 -0700 (PDT)
Message-ID: <eb79ee49-53aa-57eb-94af-90997aa6cbed@opensource.wdc.com>
Date:   Thu, 24 Mar 2022 11:17:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH 21/21] MAINTAINERS: Add maintainers for DWC AHCI SATA
 driver
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
 <20220324001628.13028-22-Sergey.Semin@baikalelectronics.ru>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220324001628.13028-22-Sergey.Semin@baikalelectronics.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/24/22 09:16, Serge Semin wrote:
> Add myself as a maintainer of the new DWC AHCI SATA driver and
> its DT-bindings schema.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> ---
>  MAINTAINERS | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cd0f68d4a34a..19c9ea0758cc 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10919,6 +10919,15 @@ F:	drivers/ata/ahci_platform.c
>  F:	drivers/ata/libahci_platform.c
>  F:	include/linux/ahci_platform.h
>  
> +LIBATA SATA AHCI SYNOPSYS DWC CONTROLLER DRIVER
> +M:	Serge Semin <fancer.lancer@gmail.com>
> +L:	linux-ide@vger.kernel.org
> +S:	Maintained
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git

Wrong tree. This should be libata tree.

> +F:	Documentation/devicetree/bindings/ata/baikal,bt1-ahci.yaml
> +F:	Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
> +F:	drivers/ata/ahci_dwc.c
> +
>  LIBATA SATA PROMISE TX2/TX4 CONTROLLER DRIVER
>  M:	Mikael Pettersson <mikpelinux@gmail.com>
>  L:	linux-ide@vger.kernel.org


-- 
Damien Le Moal
Western Digital Research
