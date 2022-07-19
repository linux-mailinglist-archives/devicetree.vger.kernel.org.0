Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB08957A407
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 18:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235627AbiGSQQb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 12:16:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235705AbiGSQQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 12:16:30 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1153F4B49D
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 09:16:29 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id s18-20020a17090aa11200b001f1e9e2438cso3477138pjp.2
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 09:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=1/iQNc3gXhjz0NA1343D9qw+UVAwvTADGGcwrjN+3GM=;
        b=oxbpN3Gyqd2c/4XkRBh7oWvtJtFAUi6DioLRIU+O5ISqhEpCFnaxo9hd8bA8EKIVA+
         cprpb1sL3DW86MpjliDUr0wkpsfQ0sU7ASSbPyvfDA4G03OrMBifHEUuy9VivSAxt0YH
         8yRLBsfHCiY4kw2bPI3AzHkMciY4zCxsVlwIVN7VBgLFwr1pnyV3FDmjm8kBHuZTTe8p
         6Lu59uObwDL/GjBoDgd8TIr+m5ShFiF7hk/UDihQwLxYTlVX58gW+zXSPabIKs9ibSbI
         qb4pdUf3uQh4BTLjuEE9pTt0VvGkdnv00TWvSHaiGZgyCLRxToTmLFybECxjBBZxHqfZ
         7F0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=1/iQNc3gXhjz0NA1343D9qw+UVAwvTADGGcwrjN+3GM=;
        b=3NopkWmsv7I/N+xTgTdIyqi9onAUM3vjue4fppawbvzpNMHHdND+d0M3KuIImNwPs3
         XsK55bNnDIDnW6w4ct3RPoPIggsXTgXtipMwyEostRpn3fwthwyKApllESA98Q84Mn04
         uoWwkQ9omyauJb+CMGVzH5h8LxOeKMAb2kb6Dy8krrFIqNTInviHyPW456wLalk9ZXur
         yZx2gSlgoLv2t+6zGvW4J/rirQjI2W5KopmSGP+NryGPVoT9NyE+Pvom6V2AmrGY8Vtn
         /KadpIajIQ43NtB+eZo3Yh6GNtgRfHbq4csUrPxxnjvTkE5V9Ae0m6doHlJ4NJ2qvqIw
         zONw==
X-Gm-Message-State: AJIora/97OS94lF/ZCFFFyLyEji70r4ajpQmxbg9kNYzlR0uVC8inJND
        eKn2b3k09zfkIcNOFkaebciP9Q==
X-Google-Smtp-Source: AGRyM1uYwT+C2WlLmTkVjjapJiIuQe2wO03DCM5Zxd2mMcaMZEGKC9SCfBNEuA3IPhSKeBiNCQp5Zg==
X-Received: by 2002:a17:903:248:b0:168:cf03:eefe with SMTP id j8-20020a170903024800b00168cf03eefemr33889666plh.124.1658247388439;
        Tue, 19 Jul 2022 09:16:28 -0700 (PDT)
Received: from p14s (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id 72-20020a17090a09ce00b001efd39b7e39sm13705857pjo.37.2022.07.19.09.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 09:16:27 -0700 (PDT)
Date:   Tue, 19 Jul 2022 10:16:25 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Puranjay Mohan <p-mohan@ti.com>
Cc:     linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        nm@ti.com, ssantosh@kernel.org, s-anna@ti.com,
        linux-arm-kernel@lists.infradead.org, rogerq@kernel.org,
        grygorii.strashko@ti.com, vigneshr@ti.com, kishon@ti.com,
        robh@kernel.org
Subject: Re: [PATCH v5 6/6] remoteproc: pru: add support for configuring
 GPMUX based on client setup
Message-ID: <20220719161625.GB3393732@p14s>
References: <20220607045650.4999-1-p-mohan@ti.com>
 <20220607045650.4999-7-p-mohan@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220607045650.4999-7-p-mohan@ti.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 07, 2022 at 10:26:50AM +0530, Puranjay Mohan wrote:
> From: Tero Kristo <t-kristo@ti.com>
> 
> Client device node property ti,pruss-gp-mux-sel can now be used to
> configure the GPMUX config value for PRU.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> [s-anna@ti.com: simplify the pru id usage]
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Puranjay Mohan <p-mohan@ti.com>
> ---
> V4->v5
> * This patch was included in v4 and had some checkpatch errors that have
>   been resolved in v5
> ---
>  drivers/remoteproc/pru_rproc.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/remoteproc/pru_rproc.c b/drivers/remoteproc/pru_rproc.c
> index 2977eb50631b..f2c6c55f0f20 100644
> --- a/drivers/remoteproc/pru_rproc.c
> +++ b/drivers/remoteproc/pru_rproc.c
> @@ -123,6 +123,7 @@ struct pru_private_data {
>   * @dbg_single_step: debug state variable to set PRU into single step mode
>   * @dbg_continuous: debug state variable to restore PRU execution mode
>   * @evt_count: number of mapped events
> + * @gpmux_save: saved value for gpmux config
>   */
>  struct pru_rproc {
>  	int id;
> @@ -141,6 +142,7 @@ struct pru_rproc {
>  	u32 dbg_single_step;
>  	u32 dbg_continuous;
>  	u8 evt_count;
> +	u8 gpmux_save;
>  };
>  
>  static inline u32 pru_control_read_reg(struct pru_rproc *pru, unsigned int reg)
> @@ -250,6 +252,7 @@ struct rproc *pru_rproc_get(struct device_node *np, int index,
>  	struct device *dev;
>  	const char *fw_name;
>  	int ret;
> +	u32 mux;
>  
>  	try_module_get(THIS_MODULE);
>  
> @@ -273,6 +276,22 @@ struct rproc *pru_rproc_get(struct device_node *np, int index,
>  
>  	mutex_unlock(&pru->lock);
>  
> +	ret = pruss_cfg_get_gpmux(pru->pruss, pru->id, &pru->gpmux_save);
> +	if (ret) {
> +		dev_err(dev, "failed to get cfg gpmux: %d\n", ret);
> +		goto err;
> +	}
> +
> +	ret = of_property_read_u32_index(np, "ti,pruss-gp-mux-sel", index,
> +					 &mux);
> +	if (!ret) {
> +		ret = pruss_cfg_set_gpmux(pru->pruss, pru->id, mux);
> +		if (ret) {
> +			dev_err(dev, "failed to set cfg gpmux: %d\n", ret);
> +			goto err;
> +		}
> +	}
> +
>  	if (pru_id)
>  		*pru_id = pru->id;
>  
> @@ -310,6 +329,7 @@ void pru_rproc_put(struct rproc *rproc)
>  
>  	pru = rproc->priv;
>  
> +	pruss_cfg_set_gpmux(pru->pruss, pru->id, pru->gpmux_save);
>  	pru_rproc_set_firmware(rproc, NULL);
>

  CC      drivers/remoteproc/pru_rproc.o
/home/mpoirier/work/remoteproc/kernel-review/drivers/remoteproc/pru_rproc.c: In function ‘pru_rproc_get’:
/home/mpoirier/work/remoteproc/kernel-review/drivers/remoteproc/pru_rproc.c:279:8: error: implicit declaration of function ‘pruss_cfg_get_gpmux’ [-Werror=implicit-function-declaration]
  279 |  ret = pruss_cfg_get_gpmux(pru->pruss, pru->id, &pru->gpmux_save);
      |        ^~~~~~~~~~~~~~~~~~~
/home/mpoirier/work/remoteproc/kernel-review/drivers/remoteproc/pru_rproc.c:288:9: error: implicit declaration of function ‘pruss_cfg_set_gpmux’ [-Werror=implicit-function-declaration]
  288 |   ret = pruss_cfg_set_gpmux(pru->pruss, pru->id, mux);
      |         ^~~~~~~~~~~~~~~~~~~

I get this on both rproc-next and today's linux next.  

>  	mutex_lock(&pru->lock);
> -- 
> 2.17.1
> 
