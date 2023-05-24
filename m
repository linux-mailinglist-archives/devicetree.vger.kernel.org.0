Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3882870EBE5
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 05:32:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234752AbjEXDcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 23:32:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239193AbjEXDcA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 23:32:00 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE9C7E56
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 20:31:05 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 77F3E846F3;
        Wed, 24 May 2023 05:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684899064;
        bh=9sZDzeq4edg2YZc0Sc/2LYLWX+7rCP6fiNsmkjGOrQI=;
        h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
        b=BZH54kYiwSkOeSzpj/B7xzYErex9rvPnGW0o1Swn0c9qFgzUn36B14puNgceRXSXt
         zPg9UnpWxBerlFbK2AXXHUqqJCKN3rUqRm7i06Oy8vg4So6u2ZfSFrIxT79aygxU0G
         gTNR07D/iHfH0quWGj2ttCrsN0OHmJFqrQMBphUDY4F9qLBCaCPA1tro2u4dAYc3Gq
         8xRpeTmiI0r2y/snhVkwf2moiM9MpNedlGl/x6oHNNALYFLc0ELF4mBDXjHuH2OItV
         N5ixWcetat2ycnNUmAGw90B+C/WjNzvfN2fWqTypLkGbIzMPSig9mZ9oD3RGRRScBY
         O60J7KGbE4Mnw==
Message-ID: <2bfd38fc-b804-e9cd-3f98-4e810386bf5d@denx.de>
Date:   Wed, 24 May 2023 05:30:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From:   Marek Vasut <marex@denx.de>
Subject: Re: [PATCH v2 2/3] nvmem: syscon: Add syscon backed nvmem driver
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
 <20230517152513.27922-2-marex@denx.de>
 <e7859392-fd52-e4ba-d7b2-f77ede98e0e1@linaro.org>
Content-Language: en-US
In-Reply-To: <e7859392-fd52-e4ba-d7b2-f77ede98e0e1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/18/23 16:22, Krzysztof Kozlowski wrote:

[...]

>> +++ b/drivers/nvmem/nvmem-syscon.c
>> @@ -0,0 +1,105 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (C) 2022 Marek Vasut <marex@denx.de>
>> + *
>> + * Based on snvs_lpgpr.c .
>> + */
>> +
>> +#include <linux/mfd/syscon.h>
>> +#include <linux/module.h>
>> +#include <linux/nvmem-provider.h>
>> +#include <linux/of_device.h>
>> +#include <linux/regmap.h>
>> +
>> +struct nvmem_syscon_priv {
>> +	struct device_d		*dev;
>> +	struct regmap		*regmap;
>> +	struct nvmem_config	cfg;
>> +	unsigned int		off;
>> +};
>> +
>> +static int nvmem_syscon_write(void *context, unsigned int offset, void *val,
>> +			      size_t bytes)
>> +{
>> +	struct nvmem_syscon_priv *priv = context;
>> +
>> +	return regmap_bulk_write(priv->regmap, priv->off + offset,
>> +				 val, bytes / 4);
>> +}
>> +
>> +static int nvmem_syscon_read(void *context, unsigned int offset, void *val,
>> +			     size_t bytes)
>> +{
>> +	struct nvmem_syscon_priv *priv = context;
>> +
>> +	return regmap_bulk_read(priv->regmap, priv->off + offset,
>> +				val, bytes / 4);
>> +}
>> +
>> +static int nvmem_syscon_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct device_node *node = dev->of_node;
>> +	struct device_node *syscon_node;
>> +	struct nvmem_syscon_priv *priv;
>> +	struct nvmem_device *nvmem;
>> +	struct nvmem_config *cfg;
>> +	int ret;
>> +
>> +	if (!node)
>> +		return -ENOENT;
>> +
>> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	ret = of_property_read_u32_index(node, "reg", 0, &priv->off);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = of_property_read_u32_index(node, "reg", 1, &priv->cfg.size);
>> +	if (ret)
>> +		return ret;
>> +
>> +	syscon_node = of_get_parent(node);
> 
> This does not look correct. You hard-code dependency that it must be a
> child of syscon node. This is weird requirement and not explained in the
> bindings.
> 
> Why this cannot be then generic MMIO node? Why it has to be a child of
> syscon?

Because I already have a syscon node and I want to expose only a subset 
of it to userspace (bootcounter in my case) . See 1/3, I replied there, 
let's continue the discussion there.

I fixed the rest in prep for V3, sorry for the horrid delays in replies.
