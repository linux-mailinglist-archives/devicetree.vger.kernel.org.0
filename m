Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 84989115A93
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2019 02:15:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbfLGBPu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Dec 2019 20:15:50 -0500
Received: from mail-pl1-f196.google.com ([209.85.214.196]:37263 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726375AbfLGBPt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Dec 2019 20:15:49 -0500
Received: by mail-pl1-f196.google.com with SMTP id bb5so3439707plb.4
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2019 17:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TcZXle/krhNKj/2nCJEOVs7pK4S6zGjMn5udHE26v1Q=;
        b=AVgm9cJg4CCfoMONrJFzWfj47YnxNdM9F5PgW1gRRX14Ghm9zM0ebEM7SUfRIJ7xZQ
         beAYp5bts+KNIc9ymPPn/2gkHHhQxExNAQuTvYAgE+GyWvwFHzp4AUkvEleKdekssNPp
         xoAmhxRSSTP8EtK3pcuGeacPe+ZC2YHAtnZWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TcZXle/krhNKj/2nCJEOVs7pK4S6zGjMn5udHE26v1Q=;
        b=Ea1aodzy1V9XLmGiojW690YjYGC+0G3hZCzQvycNG4A65FXr5KPCDAuWXnF44PKSHh
         OgnQA0P840Fn7A6xm7NNFtSOWSc0eo6m/tgMnoJJtMnkoCUlC+9h5Au7GNQNCcszbkfP
         MVHwwdwyGSZVvBKFqf07LRVCYLbKAxV70Y572e+c3diA3oj11/bZMn8V8HBEIfdAi7LF
         ROk+8ZWC/+qc3QWZKZWNt6nGEcGGBsiiZamKp3qem1XN7IgXBSserD9WlGMzv52V7Mig
         1X62Q9oaGdjZvHIvyAn2GeqrCObwGSGyJNm+14miTjNjNPCf4DzUoOzXqy81tjR2/qZ2
         LbGg==
X-Gm-Message-State: APjAAAXfHbY0IpnvaAASbejFbSYgYwJbfwFsXfra/pox78fKvM3MSGkH
        c5A3OaQbPKFWEJY/1/nf03jyAQ==
X-Google-Smtp-Source: APXvYqzGBIwdDxGqw2dMGU7hGmbzVbaXRN+CoQEemqNI1oALAfa+1Gp/CBftGs0e4dkz0zN6NOIrYQ==
X-Received: by 2002:a17:90a:a386:: with SMTP id x6mr5661494pjp.116.1575681348558;
        Fri, 06 Dec 2019 17:15:48 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id z26sm16072334pgu.80.2019.12.06.17.15.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 17:15:47 -0800 (PST)
Subject: Re: [PATCH 2/2] soc: bcm: iproc: Add Broadcom iProc IDM driver
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-3-ray.jui@broadcom.com>
 <955f1d22-a1df-377a-1ed9-7fdaa4309b33@gmail.com>
From:   Ray Jui <ray.jui@broadcom.com>
Message-ID: <d4740de9-52b2-a4f8-7a4b-4f523c61cb9c@broadcom.com>
Date:   Fri, 6 Dec 2019 17:15:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <955f1d22-a1df-377a-1ed9-7fdaa4309b33@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/5/19 4:22 PM, Florian Fainelli wrote:
> On 12/2/19 3:31 PM, Ray Jui wrote:
>> Add Broadcom iProc IDM driver that controls that IDM devices available
>> on various iProc based SoCs for bus transaction timeout monitoring and
>> error logging.
>>
>> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
>> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
>> ---
> 
> Looks good to me, just a few suggestions below
> 
> [snip]
> 
>> --- /dev/null
>> +++ b/drivers/soc/bcm/iproc/Kconfig
>> @@ -0,0 +1,6 @@
> 
> You would want an
> 
> if SOC_BRCM_IPROC
> 
>> +config IPROC_IDM
>> +	bool "Broadcom iProc IDM driver"
>> +	depends on (ARCH_BCM_IPROC || COMPILE_TEST) && OF
>> +	default ARCH_BCM_IPROC
>> +	help
>> +	  Enables support for iProc Interconnect and Device Management (IDM) control and monitoring
> 
> and endif here to make this a nice menu.
> 

Sure I'll add SOC_BRCM_IPROC at one layer higher and use the if here.

> [snip]
> 
>> +
>> +static int iproc_idm_dev_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct device_node *np = dev->of_node;
>> +	struct platform_device *elog_pdev;
>> +	struct device_node *elog_np;
>> +	struct iproc_idm *idm;
>> +	const char *name;
>> +	int ret;
>> +	u32 val;
>> +
>> +	idm = devm_kzalloc(dev, sizeof(*idm), GFP_KERNEL);
>> +	if (!idm)
>> +		return -ENOMEM;
>> +
>> +	ret = of_property_read_string(np, "brcm,iproc-idm-bus", &name);
>> +	if (ret) {
>> +		dev_err(dev, "Unable to parse IDM bus name\n");
>> +		return ret;
>> +	}
>> +	idm->name = name;
>> +
>> +	platform_set_drvdata(pdev, idm);
>> +	idm->dev = dev;
>> +
>> +	idm->base = of_iomap(np, 0);
>> +	if (!idm->base) {
>> +		dev_err(dev, "Unable to map I/O\n");
>> +		ret = -ENOMEM;
>> +		goto err_exit;
>> +	}
>> +
>> +	ret = of_irq_get(np, 0);
>> +	if (ret <= 0) {
>> +		dev_err(dev, "Unable to find IRQ number. ret=%d\n", ret);
>> +		goto err_iounmap;
>> +	}
> 
> Since this is a standard platform device, you can use the standard
> platform_get_resource() and platform_get_irq(). If you ever needed to
> support ACPI in the future, that would make it transparent and almost
> already ready.
> 

Will do, thanks!

>> +
>> +	ret = devm_request_irq(dev, ret, iproc_idm_irq_handler, IRQF_SHARED,
>> +			       idm->name, idm);
>> +	if (ret < 0) {
>> +		dev_err(dev, "Unable to request irq. ret=%d\n", ret);
>> +		goto err_iounmap;
>> +	}
>> +
>> +	/*
>> +	 * ELOG phandle is optional. If ELOG phandle is specified, it indicates
>> +	 * ELOG logging needs to be enabled
>> +	 */
>> +	elog_np = of_parse_phandle(dev->of_node, ELOG_IDM_COMPAT_STR, 0);
>> +	if (elog_np) {
>> +		elog_pdev = of_find_device_by_node(elog_np);
>> +		if (!elog_pdev) {
>> +			dev_err(dev, "Unable to find IDM ELOG device\n");
>> +			ret = -ENODEV;
>> +			goto err_iounmap;
>> +		}
>> +
>> +		idm->elog = platform_get_drvdata(elog_pdev);
>> +		if (!idm->elog) {
>> +			dev_err(dev, "Unable to get IDM ELOG driver data\n");
>> +			ret = -EINVAL;
>> +			goto err_iounmap;
>> +		}
>> +	}
>> +
>> +	/* enable IDM timeout and its interrupt */
>> +	val = readl(idm->base + IDM_CTRL_OFFSET);
>> +	val |= IDM_CTRL_TIMEOUT_EXP_MASK | IDM_CTRL_TIMEOUT_ENABLE |
>> +	       IDM_CTRL_TIMEOUT_IRQ;
>> +	writel(val, idm->base + IDM_CTRL_OFFSET);
>> +
>> +	ret = device_create_file(dev, &dev_attr_no_panic);
>> +	if (ret < 0)
>> +		goto err_iounmap;
>> +
>> +	of_node_put(np);
> 
> Did not you intend to drop the reference count on elog_np here?
> 

Sorry, I'm not following this comment. Could you please help to clarify 
for me a bit more? Thanks!

> [snip]
> 
>> +static struct platform_driver iproc_idm_driver = {
>> +	.probe = iproc_idm_probe,
> 
> Do not you need a remove function in order to unregister the sysfs file
> that you created in iproc_idm_dev_probe() to avoid bind/unbind (or
> rmmod/modprobe) to spit out an existing sysfs entry warning?
> 

This driver should never be compiled as a module. It's meant to be 
always there to capture IDM bus timeouts.

But you are right that I cannot prevent user from trying to unbind it 
for whatever reason. I'll add a remove routine to take care of this.

Thanks!

Ray
