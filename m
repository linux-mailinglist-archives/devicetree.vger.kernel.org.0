Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3600C77B4C6
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 10:55:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234961AbjHNIyn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 04:54:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235305AbjHNIyf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 04:54:35 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 733A11B5
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 01:54:32 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4fe48d0ab0fso6218364e87.1
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 01:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692003271; x=1692608071;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bm31onNAf81EfSnxprX0u1TIywkuBgIUqW6VNcG8y4E=;
        b=U/5ihpoZE66wZiOblJo7APVlbwVih3SgnpK+x768rT+JKFXLVzMgmS+I0w1d7FwiSK
         zgI7Y4BCAH6cEQZBhSMfMap2PfhxA1OEfcU/rDw5K7oLE16k2JqHsVR7Pa8stNN0rIBU
         EG5aKbTa1rV6ifjDy/jwiDFsYV4rgRg4PsJVeVBUHSNOWj71ql3fnymgW6CaKgORY5w2
         ANiLKw9qODadQou/IxhuTe1MYTPxWyv0gkFRlVT+Ah3dxhLX/9hl9rMDMagZASeiif4D
         Rat/nvNO/FnkgdrrV/YDLYYKML2PGmqlv0u1m2axYZrTBte1SHCE9D3eWJMASUJEE4Xi
         pt8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692003271; x=1692608071;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bm31onNAf81EfSnxprX0u1TIywkuBgIUqW6VNcG8y4E=;
        b=k8oneG2YX1iBrQtFlsUv2BYRes/vd8FvKyNA7uKEdi/U2f9SyXjH2jxjLBm5DBgyU/
         zbS1jXBfRECRSIt06l9IyHvxz0DGPpnORr2AytwNoG+6IcSQfW7QzkKwOP460A2UF2Qj
         KasmOH94lb9oBWIz+tjqweDCD0fPVOk8AWhYtvmrmLYGhEQcgGiv8blAwAIkjTqDBvxh
         m1WgFwbT8ZZDWEagMJfWRAHYsqZ1Z4wF9t+uld1wqGjZXQIHrcKBi9xFPv4E+QHp9m1Y
         2ATIDk0WvKoPmKAsBMDwSnir4f7+uq2ojisid5KmBI5SMErZ3LEbxFiF9WOFpPr/jT8R
         D6Ew==
X-Gm-Message-State: AOJu0YwLA3kErAtNRDt3Q39Lp/90syO58RsFl7DMHgtZZ17xtrCNCvwf
        RTkDNHNdJFeylzl4rnKb/XfwCg==
X-Google-Smtp-Source: AGHT+IHH8lZJVrofd4SZhbvgpOebBMX26/+KxL83jzcSK1Q6uVVU7eZoS3l2wuxOdY4WwF6Sk2XuGw==
X-Received: by 2002:ac2:5f47:0:b0:4fb:91c5:fd38 with SMTP id 7-20020ac25f47000000b004fb91c5fd38mr5418037lfz.0.1692003270687;
        Mon, 14 Aug 2023 01:54:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id r13-20020aa7d14d000000b005256ae8494asm523744edo.17.2023.08.14.01.54.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 01:54:30 -0700 (PDT)
Message-ID: <4270b7d0-d375-0b2a-e472-700cb87be7a0@linaro.org>
Date:   Mon, 14 Aug 2023 10:54:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] dmaengine: Add HiSilicon Ascend SDMA engine support
Content-Language: en-US
To:     Guo Mengqi <guomengqi3@huawei.com>, vkoul@kernel.org,
        dmaengine@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     xuqiang36@huawei.com
References: <20230811034822.107229-1-guomengqi3@huawei.com>
 <20230811034822.107229-2-guomengqi3@huawei.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230811034822.107229-2-guomengqi3@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/08/2023 05:48, Guo Mengqi wrote:
> This patch adds a driver for HiSilicon Ascend SDMA engine.
> 
> The DMA controller can do transfers between device and memory
> or memory to memory. Currently, the controller only support
> single copy. Drives can pass a substreamid to the DMA engine,
> which will enable transfers in user-space addresses.

...

> +
> +static int sdma_device_probe(struct platform_device *pdev)
> +{
> +	int ret;
> +	struct device *dev;
> +	struct sdma_dev *sdev;
> +	struct sdma_hardware_info info;
> +
> +	dev = &pdev->dev;
> +
> +	if (!pdev->dev.bus) {
> +		pr_debug("the sdma dev bus is NULL\n");

How is this possible?

> +		return -EPROBE_DEFER;
> +	}
> +
> +	if (!pdev->dev.bus->iommu_ops) {
> +		pr_debug("defer probe sdma device\n");

Anyway, no pr_xxx, but dev_xxx. Is it really, really possible?


> +		return -EPROBE_DEFER;> +	}
> +
> +	sdev = devm_kzalloc(dev, sizeof(*sdev), GFP_KERNEL);
> +	if (!sdev) {
> +		pr_err("alloc sdma_device failed\n");
> +		return -ENOMEM;
> +	}
> +
> +	sdev->pdev = pdev;
> +	dev_set_drvdata(&pdev->dev, sdev);

Come on, you just stored pdev->dev under dev!
> +
> +	ret = of_sdma_collect_info(pdev, &info);
> +	if (ret < 0) {
> +		pr_err("collect device info failed, %d\n", ret);

dev_err

Please work on this driver to start looking like other kernel drivers.


> +		return ret;
> +	}
> +
> +	sdev->io_base = ioremap(info.base_addr, SDMA_IOMEM_SIZE);
> +	if (!sdev->io_base) {
> +		pr_err("ioremap failed\n");
> +		ret = -ENOMEM;
> +		return ret;
> +	}
> +
> +	/* Fill in dmaengine */
> +	sdma_init_dma_device(&sdev->dma_dev, dev);
> +
> +	ret = sdma_init_channels(sdev, &info);
> +	if (ret < 0)
> +		goto unmap_iobase;
> +
> +	ret = iommu_dev_enable_feature(&pdev->dev, IOMMU_DEV_FEAT_IOPF);
> +	if (ret) {
> +		pr_err("iommu failed to init iopf, %d\n", ret);
> +		goto destroy_channels;
> +	}
> +
> +	ret = iommu_dev_enable_feature(&pdev->dev, IOMMU_DEV_FEAT_SVA);
> +	if (ret) {
> +		pr_err("iommu failed to init sva, %d\n", ret);
> +		goto disable_iopf;
> +	}
> +
> +	sdev->streamid = pdev->dev.iommu->fwspec->ids[0];
> +
> +	snprintf(sdev->name, SDMA_DEVICE_NAME_LENGTH_MAX, "sdma%d", sdev->idx);
> +	pr_info("%s device probe success\n", sdev->name);

No, drop.

> +
> +	ret = dma_async_device_register(&sdev->dma_dev);
> +	if (ret) {
> +		dev_err(dev, "failed to register slave DMA engine: %d\n", ret);
> +		goto disable_sva;
> +	}
> +
> +	return 0;
> +
> +disable_sva:
> +	iommu_dev_disable_feature(&pdev->dev, IOMMU_DEV_FEAT_SVA);
> +disable_iopf:
> +	iommu_dev_disable_feature(&pdev->dev, IOMMU_DEV_FEAT_IOPF);
> +destroy_channels:
> +	sdma_destroy_channels(sdev);
> +unmap_iobase:
> +	iounmap(sdev->io_base);
> +	return ret;
> +}
> +
> +static int sdma_device_remove(struct platform_device *pdev)
> +{
> +	struct sdma_dev *psdma_dev = dev_get_drvdata(&pdev->dev);
> +
> +	dma_async_device_unregister(&psdma_dev->dma_dev);
> +
> +	iommu_dev_disable_feature(&pdev->dev, IOMMU_DEV_FEAT_SVA);
> +	iommu_dev_disable_feature(&pdev->dev, IOMMU_DEV_FEAT_IOPF);
> +
> +	sdma_destroy_channels(psdma_dev);
> +
> +	iounmap(psdma_dev->io_base);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id sdma_of_match[] = {
> +	{ .compatible = "hisilicon,sdma" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, sdma_of_match);
> +
> +static struct platform_driver sdma_driver = {
> +	.probe    = sdma_device_probe,
> +	.remove   = sdma_device_remove,
> +	.driver   = {
> +		.name           = SDMA_DEVICE_NAME,
> +		.of_match_table = sdma_of_match,
> +	},
> +};
> +
> +static int __init sdma_driver_init(void)
> +{
> +	return platform_driver_register(&sdma_driver);
> +}
> +module_init(sdma_driver_init);
> +
> +static void sdma_driver_exit(void)
> +{
> +	platform_driver_unregister(&sdma_driver);
> +}
> +module_exit(sdma_driver_exit);

module_platform_driver


Best regards,
Krzysztof

