Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9F4154AC59
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 10:49:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354459AbiFNIr0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 04:47:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241624AbiFNIpl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 04:45:41 -0400
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEFB12AD4
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 01:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1655196340; x=1686732340;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=730WLOxUDl/tCCXOxzEMJE/Etnsc1xvpiRS8SMWclV4=;
  b=oSWDItf5RFPPk17+Ytd1laEVJe9aChOUYDMUjEhW8VEHTB8YXBGHTbAF
   YQaM5Gz7wjikDhQ+ZDD1Z4S5KocwFvg3VGPouC3SmqjGm/bD9bGXYcVSC
   Kr7nQmxFIjDSlU3pe33zMb/M0olZuyvw7VltiP5+LZtRQhEEdeo19ogvn
   0BRSd18vbpBFakReKUhOv7MMzqtCsrXeaqblyfKO0sTZI49mHHqrU+8nC
   3oYc7Bb5MlUo0xf2XpRpGS6qUccPg//ntWEhuNRK/xEiI3iuXcZa3Ck35
   SYKdxaYVxOH0jSaO+BjifgqCagHRAyStH2b4ANuAON+arEugB5r6z0xpg
   A==;
X-IronPort-AV: E=Sophos;i="5.91,299,1647273600"; 
   d="scan'208";a="307388534"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 14 Jun 2022 16:45:40 +0800
IronPort-SDR: a//OlxU8BmmAA7gaALDE8rnvFJbnXL8ljjdsaI3fEn4KVMJ42eBHCY+PghRKX+gVbVm7fZ1LKE
 R4SuYHRQAzXaChslie+XQDtLzMnRCmZdbje1KgbIdojAS/V71glyNozv3PQQeXDhJ4d+lVR4sW
 B9a2C0zHvAwMP4zV1DSbsSt2VFzt/Xkpa1KPVq1VOxDbNl6G+WSr3qaCsqyPULIrPVAGJxoiGH
 10p5NaLRCLb9EcM14LZxrUrFbg0z4PdwSFpkqhFTj5XiRSu7uJ+stJ2ADplpikW9eN9qCnLeZY
 ccCcVfLCECHpP4ZUnBs/faOS
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Jun 2022 01:08:39 -0700
IronPort-SDR: v6+E6+N+Wh0DfAFuCetXTC5oBeH05fIYUWpZLsgHIAmz2sX3bBYceR8Fxpqtwks/BaDC2V1G93
 xEGfSZPJC+Vo7/QldNcJrzbhAZlsnpoYqxGBLvIl6g8vLyzr4d4iWKH+rsGehGAZow0KbYqSOC
 ss4jXgJL4SY/8QrrUVzu8r6KIj+P6og8fIEb6qas/Ql5cMMvnQRkuavR6lzmDhj0v2B3Sqzy0m
 R8rCRIMvSJVjVGt1tp65H6E/mkUqsTksfyJd0uYMq1tdHbN1620N8MLG8Kp/W6Z9u3/c08Tjv/
 EAc=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Jun 2022 01:45:40 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4LMhpq4VPDz1SHwl
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 01:45:39 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1655196338; x=1657788339; bh=730WLOxUDl/tCCXOxzEMJE/Etnsc1xvpiRS
        8SMWclV4=; b=iMAF22D08tLP22EwyW2EGAImbpK8eQcBbDj01cr5hIdTvMvn9pl
        Z/xRZHFpQs+YVoEdTBqfq0NqDouapToDlh8A9TSpdO9Dp0Bk8kza4wB95o4kOUCh
        bKBxD34JxEGV1T/fUMszf/o+rIlyL4nCfwxD4dH2MwSnQPm5FH5bRPjMTE2Y3dAz
        derj6ZqUDHj4Y6mieLfh0do48fDsyz3OA4etLnu5zXg85LW/mwcXOZT/3HKB1QS+
        O7n1pg/UpQLtzJY5Ikore7lRjNXFehJmKUBmoSYW0mLnHU77J9XxbPrakqxVcf9q
        vTyT1w9p0RSWdf30ruP4Q40mQQEr7dEcIIQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id cD6HGIzztOIv for <devicetree@vger.kernel.org>;
        Tue, 14 Jun 2022 01:45:38 -0700 (PDT)
Received: from [10.225.163.77] (unknown [10.225.163.77])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4LMhpn0mkyz1Rvlc;
        Tue, 14 Jun 2022 01:45:36 -0700 (PDT)
Message-ID: <611c8eeb-fa7e-286c-bef2-0e24cc2b6b2e@opensource.wdc.com>
Date:   Tue, 14 Jun 2022 17:45:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 18/23] ata: libahci_platform: Add function returning a
 clock-handle by id
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
 <20220610081801.11854-19-Sergey.Semin@baikalelectronics.ru>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220610081801.11854-19-Sergey.Semin@baikalelectronics.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/10/22 17:17, Serge Semin wrote:
> Since all the clocks are retrieved by the method
> ahci_platform_get_resources() there is no need for the LLD (glue) drivers
> to be looking for some particular of them in the kernel clocks table
> again. Instead we suggest to add a simple method returning a
> device-specific clock with passed connection ID if it is managed to be
> found. Otherwise the function will return NULL. Thus the glue-drivers
> won't need to either manually touching the hpriv->clks array or calling
> clk_get()-friends. The AHCI platform drivers will be able to use the new
> function right after the ahci_platform_get_resources() method invocation
> and up to the device removal.
> 
> Note the method is left unused here, but will be utilized in the framework
> of the DWC AHCI SATA driver being added in the next commit.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> 
> ---
> 
> Changelog v2:
> - Fix some grammar mistakes in the method description.
> 
> Changelog v4:
> - Add a note regarding the new method usage.
> ---
>  drivers/ata/libahci_platform.c | 27 +++++++++++++++++++++++++++
>  include/linux/ahci_platform.h  |  3 +++
>  2 files changed, 30 insertions(+)
> 
> diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
> index 8b542a8bc487..418961f954af 100644
> --- a/drivers/ata/libahci_platform.c
> +++ b/drivers/ata/libahci_platform.c
> @@ -95,6 +95,33 @@ void ahci_platform_disable_phys(struct ahci_host_priv *hpriv)
>  }
>  EXPORT_SYMBOL_GPL(ahci_platform_disable_phys);
>  
> +/**
> + * ahci_platform_find_clk - Find platform clock
> + * @hpriv: host private area to store config values
> + * @con_id: clock connection ID
> + *
> + * This function returns a pointer to the clock descriptor of the clock with
> + * the passed ID.
> + *
> + * RETURNS:
> + * Pointer to the clock descriptor on success otherwise NULL
> + */
> +struct clk *ahci_platform_find_clk(struct ahci_host_priv *hpriv, const char *con_id)
> +{
> +	struct clk *clk = NULL;
> +	int i;
> +
> +	for (i = 0; i < hpriv->n_clks; i++) {
> +		if (!strcmp(hpriv->clks[i].id, con_id)) {
> +			clk = hpriv->clks[i].clk;

			return hpriv->clks[i].clk;

> +			break;
> +		}
> +	}
> +
> +	return clk;

And then "return NULL;" here and you do not need the clk variable.

> +}
> +EXPORT_SYMBOL_GPL(ahci_platform_find_clk);
> +
>  /**
>   * ahci_platform_enable_clks - Enable platform clocks
>   * @hpriv: host private area to store config values
> diff --git a/include/linux/ahci_platform.h b/include/linux/ahci_platform.h
> index 6d7dd472d370..3418980b0341 100644
> --- a/include/linux/ahci_platform.h
> +++ b/include/linux/ahci_platform.h
> @@ -13,6 +13,7 @@
>  
>  #include <linux/compiler.h>
>  
> +struct clk;
>  struct device;
>  struct ata_port_info;
>  struct ahci_host_priv;
> @@ -21,6 +22,8 @@ struct scsi_host_template;
>  
>  int ahci_platform_enable_phys(struct ahci_host_priv *hpriv);
>  void ahci_platform_disable_phys(struct ahci_host_priv *hpriv);
> +struct clk *
> +ahci_platform_find_clk(struct ahci_host_priv *hpriv, const char *con_id);

Please make this:

struct clk *ahci_platform_find_clk(struct ahci_host_priv *hpriv,

                                   const char *con_id);

>  int ahci_platform_enable_clks(struct ahci_host_priv *hpriv);
>  void ahci_platform_disable_clks(struct ahci_host_priv *hpriv);
>  int ahci_platform_deassert_rsts(struct ahci_host_priv *hpriv);


-- 
Damien Le Moal
Western Digital Research
