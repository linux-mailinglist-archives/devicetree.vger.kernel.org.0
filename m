Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC8F840DD74
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238379AbhIPPDc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:03:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235474AbhIPPDb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:03:31 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28917C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:11 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id g16so10013522wrb.3
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=csQ1MWc5sV0qhfV6R4T1gxw/hYapqEzRXs9dv7ZLsGQ=;
        b=LYPGj0poWIctsfOuBHXwVqe8+7faAzwKMZkHv8w/oBHTuxFYsuDi/WTO1vYXzcLhMB
         K6Wdiaswd88e0undEeQLqPzp1lzE/JaRg2Dk6JJWOxbi6ZJg5XlVREThmdUzuFes9DIk
         PbjY+q8R2GBTg8YswrbFJvLEiLyw+mTGj+Q6n78/jowXZeMNRgG6V7KsDr7lt8uN2NL8
         z/zl6nJiqeqmKLMC/4Iwd4X85As5F/FBKTFf5fI+OCNnRXDLANYVOAqr8JI3VpTajms6
         V2MOUpNUFLBT1yMBZCTK84tT3aYhJVQ9Th5k3fyKVshAR25CWEdVkpDe2bJnea3JXE4Y
         urEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=csQ1MWc5sV0qhfV6R4T1gxw/hYapqEzRXs9dv7ZLsGQ=;
        b=HhLpsT3XTG/8/TU6JtEkJywEiYLykD5f8xVMggEONvoaWnH7qjt+DYnSPX3VnIkIyM
         q1J9VC0ItoZndTYbf5axZ/17WTu95WQZlVnbeDppm5/Kf50LBZjDo85q/1XB0TwJxKpa
         vHCse+01gg1exbGzdRhTcHAQ5G+HF+Rhh+S/1r+dqmwiDhKbhk770jQqSORPnohTECdN
         YRpup5fSDC/avek/LcInwBbTrzH9kFZekiNCkdTgew82BQRCZuxa1EDZDOfrSsg1TXS2
         YlocApxJlNMZZyKL+uU7LXdTsVN19NnxVPiIiI8iAvi0ciKEZBNNR6UnuER+MA3YeaJ3
         BfXw==
X-Gm-Message-State: AOAM532w556DhTczZO7cOoyvw2eHcxjb8wws1ZGv5mVxNQl54+LHOQRI
        ZJqwsmHT+KhQ0NkP4ElLKTt0ug==
X-Google-Smtp-Source: ABdhPJyytYPgs97uBMV0kIWC2G4lKa6lnjW2JayT2BL8liWzxGpiTeW5ACLrmyPYxEeCjzEC2i+Bmw==
X-Received: by 2002:a5d:5541:: with SMTP id g1mr6792001wrw.402.1631804529677;
        Thu, 16 Sep 2021 08:02:09 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id d7sm3771387wrf.3.2021.09.16.08.02.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:02:09 -0700 (PDT)
Subject: Re: [PATCH v6 05/22] soc: qcom: apr: Add GPR support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-6-srinivas.kandagatla@linaro.org>
 <83c503aa-7cb2-e6fa-e22a-b359a9cb9059@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <4f71f5c7-42c4-6419-5f79-26ed83695793@linaro.org>
Date:   Thu, 16 Sep 2021 16:02:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <83c503aa-7cb2-e6fa-e22a-b359a9cb9059@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre,

On 15/09/2021 16:47, Pierre-Louis Bossart wrote:
> 
>> +gpr_port_t *gpr_alloc_port(struct apr_device *gdev, struct device *dev,
>> +				gpr_port_cb cb,	void *priv)
>> +{
>> +	struct packet_router *pr = dev_get_drvdata(gdev->dev.parent);
>> +	gpr_port_t *port;
>> +	struct pkt_router_svc *svc;
>> +	int id;
>> +
>> +	port = kzalloc(sizeof(*port), GFP_KERNEL);
>> +	if (!port)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	svc = port;
>> +	svc->callback = cb;
>> +	svc->pr = pr;
>> +	svc->priv = priv;
>> +	svc->dev = dev;
>> +	spin_lock_init(&svc->lock);
>> +
>> +	spin_lock(&pr->svcs_lock);
>> +	id = idr_alloc_cyclic(&pr->svcs_idr, svc, GPR_DYNAMIC_PORT_START,
>> +			      GPR_DYNAMIC_PORT_END, GFP_ATOMIC);
>> +	if (id < 0) {
>> +		dev_err(dev, "Unable to allocate dynamic GPR src port\n");
>> +		kfree(port);
>> +		spin_unlock(&pr->svcs_lock);
>> +		return ERR_PTR(-ENOMEM);
>> +	}
>> +
>> +	svc->id = id;
>> +	spin_unlock(&pr->svcs_lock);
>> +
>> +	dev_info(dev, "Adding GPR src port (%x)\n", svc->id);
> 
> nit-pick: isn't this a bit verbose?

Yes, Its now removed.

> 
>> +
>> +	return port;
>> +}
>> +EXPORT_SYMBOL_GPL(gpr_alloc_port);
> 
>> +struct gpr_pkt {
>> +	struct gpr_hdr hdr;
>> +	uint32_t payload[0];
>> +};
> 
> looks like a zero-length array?
> 
looks like I missed this one, its fixed now.

--srini
> should this be
> 
> struct gpr_pkt {
>      struct gpr_hdr hdr;
>      uint32_t payload[];
> };
> 
> ?
> 
