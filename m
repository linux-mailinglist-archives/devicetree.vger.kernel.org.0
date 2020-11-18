Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BEFD2B8703
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 22:50:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725823AbgKRVuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 16:50:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgKRVuE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 16:50:04 -0500
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C5D0C0613D4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 13:50:03 -0800 (PST)
Received: by mail-pg1-x542.google.com with SMTP id t21so2236387pgl.3
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 13:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UjAMs34ZYlT0Do14MXpEXXJ8/dpwxVUTLeiX5q6UwqA=;
        b=rTdRAcOIrMqHkdoGrROzKYLeWWfoAEX2IRuSWAYiNFlX1rf4P1CDHYKp1tbcYFIw1L
         +RXZDn/LDRJr453j6EaHeADd3TkvXsVyvun31Rz9BV1Mht1GyoxhyAteUR0PkxZE7rpl
         fFwPrXz6E/fzQeiLVkMYws5ko0l7ob6EX0iUDH40KBt/3722c7NVzVgQPBn/DJSP3Q2Z
         zppiH0lBfGg9vbViBfvfY3lZ12xBd5FdOr1oq+27sIHzobjHNDxD4SqZjE22ZTH7YIQm
         DhK+Ki3gIPgQOAVXHVTk6LbUmSmii/p4smCMjD6wVcC+1kO0dH7E5rCSCf58fpzzahKr
         yOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=UjAMs34ZYlT0Do14MXpEXXJ8/dpwxVUTLeiX5q6UwqA=;
        b=QmOMVF54qYKh43MK64vFFu/VOAZf5f+T05ig1Wbc+he1Gi9PZW8DlcmLSmVOMs/WP9
         L4xtGolzLZZ13vQMuqHCC5+wzGzc3d/t4/Tn+S5LtUXFkWoDO+EcfCR6sTWLprK+2hz6
         E6VmRzln0nJUiCLdLbsNBBXL+taoTwdFssHRLhl4C80APdRrY3MaGOx4zCM9DSJHZPK7
         GSdp9Ziowt/1prnpMDQ6EEo40NQdruqKj8v46DkNVWKNUZqGofMidoHBVFtncfSHxED9
         y5BiI5RsClxGZo4bLsj5K7iMo6zQsUhuggrHAVvgcVatI/fME/kZUOGxzZzQlk5psAM+
         CO5w==
X-Gm-Message-State: AOAM533FtO3Ho2TvV4IgWjC78dXT4il5TMw5hG/ixb6CAnKm8n9tUcDI
        cHMDCPVRVywueGcaIkiSepo=
X-Google-Smtp-Source: ABdhPJxqRUBUyHw6EEY4BmttyhJMZejLnaOfKHpwXyv9AhArUORjMd6izusJcEsfzZFOVfioFFCmPg==
X-Received: by 2002:a63:1619:: with SMTP id w25mr10008891pgl.34.1605736202800;
        Wed, 18 Nov 2020 13:50:02 -0800 (PST)
Received: from [10.67.48.230] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id t26sm29353806pfl.72.2020.11.18.13.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 13:50:02 -0800 (PST)
Subject: Re: [PATCH 2/2] reset: brcm-pmc: add driver for Broadcom's PMB
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201118132440.15862-1-zajec5@gmail.com>
 <20201118132440.15862-3-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <a720dabf-e73b-4a7b-3d66-a682ff13b888@gmail.com>
Date:   Wed, 18 Nov 2020 13:50:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201118132440.15862-3-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/18/20 5:24 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> PMB can be found on BCM4908 and many other chipsets (e.g. BCM63138).
> It's needed to power on and off SoC blocks like PCIe, SATA, USB.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Since this is a driver for the PMB and not the PMC, the subject should
probably reflect that.

> ---
>  drivers/reset/Kconfig          |   7 +
>  drivers/reset/Makefile         |   1 +
>  drivers/reset/reset-brcm-pmb.c | 307 +++++++++++++++++++++++++++++++++
>  3 files changed, 315 insertions(+)
>  create mode 100644 drivers/reset/reset-brcm-pmb.c
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 84baec01aa30..af10fb92691c 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -41,6 +41,13 @@ config RESET_BERLIN
>  	help
>  	  This enables the reset controller driver for Marvell Berlin SoCs.
>  
> +config RESET_BRCM_PMB
> +	tristate "Broadcom PMB reset controller"
> +	depends on ARCH_BCM4908 || COMPILE_TEST

Not sure the depends on ARCH_BCM4908 is warranted here, but it certainly
does not hurt to scope the driver to the platform it is applicable to.

[snip]

> +static int brcm_pmb_reset_xlate(struct reset_controller_dev *rcdev,
> +				const struct of_phandle_args *reset_spec)
> +{
> +	u8 type = reset_spec->args[0];
> +	u8 device = reset_spec->args[1];
> +
> +	if (type > 0xff)
> +		return -EINVAL;
> +
> +	return (type << 8) | device;

Does not the device also need to be capped at 8 bits?

> +}
> +
> +static const struct reset_control_ops brcm_pmb_reset_control_ops = {
> +	.assert = brcm_pmb_assert,
> +	.deassert = brcm_pmb_deassert,
> +};
> +
> +static const struct of_device_id brcm_pmb_reset_of_match[] = {
> +	{ .compatible = "brcm,bcm4908-pmb", .data = &brcm_pmb_4908_data, },
> +	{ },
> +};
> +
> +static int brcm_pmb_reset_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct brcm_pmb *pmb;
> +	struct resource *res;
> +
> +	pmb = devm_kzalloc(dev, sizeof(*pmb), GFP_KERNEL);
> +	if (!pmb)
> +		return -ENOMEM;
> +
> +	pmb->data = of_device_get_match_data(dev);

Not that it would likely support ACPI in the future but you can use
device_get_match_data() to be firmware (OF or ACPI) implementation
agnostic here.

Other than that, everything else looks good to me, thanks Rafal!
-- 
Florian
