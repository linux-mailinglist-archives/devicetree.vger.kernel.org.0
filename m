Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1F8B59801A
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 10:30:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234825AbiHRIa0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 04:30:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbiHRIaZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 04:30:25 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E98A832E0
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:30:24 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id by6so1007160ljb.11
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=qXTt19eF4mwiE0Ime+Awj3mOruDp7C/SRIF6tAJVQDo=;
        b=t7xTMCHGMRGLK+umdFpXOwWkrNzQGqXrBos0quyiAm91vb4vugRXWXDWChF8XhbJxB
         Z45VYXaaZ8B8aKebBHy/CEHVLDE3haCPej78R/834Q1wEXLBO1nz1v9kT291x8t4Jz9g
         wxbdqTkch+nDEdgvqB1VPrP3zh8PF+xzINxshq+4Mwdqpm6sVoyWcolF1+3nif69HhkY
         UcHP9C+h9WvpVGpJFjIhZ2WJQ00SeRm/6JH+vqVADiB9FY0lQFBfFAcqsYm1TVEqtcY8
         Oex1ibpkBYs9UWAumFjN0IRr7fdNetDAX1sBSNgpKHGMj98kpZqJ1w4iYC3cUB58jP3l
         L/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=qXTt19eF4mwiE0Ime+Awj3mOruDp7C/SRIF6tAJVQDo=;
        b=1MUAC4jZHa1XPc2+Wn0d7CQpPJlMvB/DVYAdTsZ24ZmoIkQ9B6IRzbfwjLbFP0Ig/s
         q6zAA8xBJSP09ik0N0Gzp63v6LSDpz6bJyOL6XWc+Se/noegKTt82u4QVzY/wLRellaA
         u9070HZEpyZtedpyoyCLJeeHM2CeIdb/YqnVxtv9CRFQs4Qo6qkM4MKJ7hCpolLv7Vh4
         N26xsDIecQRedi052UV009fYYLtW9pvphQkpnYSzJ1HD32JKm3QJ8h2bAV3uw3A+tcik
         Uognt4VphLMVXbCSrD78LOa3nPfrLjd/+hzflS0XIt56FCKnbUt+qC9lEn0MmztJMZty
         fwkQ==
X-Gm-Message-State: ACgBeo0tsCnPCWSAfpICq0pJEggFZ4NefhxLTLw50iQewzAHQoxWsnOp
        5AocT6wOg5/zuG6fHbgmHds08Q==
X-Google-Smtp-Source: AA6agR5ruAqqxhSW0Jr0u0T2N6TAA417fghniyaD0s8eQMiBgW9TCyIVBnHWO9ViolQ/0JtLpXNFSw==
X-Received: by 2002:a05:651c:179f:b0:261:83f5:4b5e with SMTP id bn31-20020a05651c179f00b0026183f54b5emr557765ljb.197.1660811422712;
        Thu, 18 Aug 2022 01:30:22 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id q129-20020a2e5c87000000b002618e5c2664sm125538ljb.103.2022.08.18.01.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 01:30:22 -0700 (PDT)
Message-ID: <188425fd-8cc7-fb2e-9ee3-ff37937cac54@linaro.org>
Date:   Thu, 18 Aug 2022 11:30:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v5 1/4] perf/amlogic: Add support for Amlogic meson G12
 SoC DDR PMU driver
Content-Language: en-US
To:     Jiucheng Xu <jiucheng.xu@amlogic.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Chris Healy <cphealy@gmail.com>,
        kernel test robot <lkp@intel.com>
References: <20220817113423.2088581-1-jiucheng.xu@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817113423.2088581-1-jiucheng.xu@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 14:34, Jiucheng Xu wrote:
> This patch adds support Amlogic meson G12 series SoC
> DDR bandwidth PMU driver framework and interfaces.
> 
> The PMU not only can monitor the total DDR bandwidth,
> but also the bandwidth which is from individual IP module.
> 
> Example usage:

Thank you for your patch. There is something to discuss/improve.

}
> +
> +static int dmc_g12_irq_handler(struct dmc_info *info,
> +			       struct dmc_counter *counter)
> +{
> +	unsigned int val;
> +	int ret = -EINVAL;
> +
> +	val = readl(info->ddr_reg[0] + DMC_MON_G12_CTRL0);
> +	if (val & DMC_QOS_IRQ) {
> +		dmc_g12_get_counters(info, counter);
> +		/* clear irq flags */
> +		writel(val, info->ddr_reg[0] + DMC_MON_G12_CTRL0);
> +		ret = 0;
> +	}
> +	return ret;
> +}
> +
> +static struct dmc_hw_info g12a_dmc_info = {

This and other ones should be also const.

> +	.enable		= dmc_g12_counter_enable,
> +	.disable	= dmc_g12_counter_disable,
> +	.irq_handler	= dmc_g12_irq_handler,
> +	.get_counters	= dmc_g12_get_counters,
> +	.set_axi_filter	= dmc_g12_set_axi_filter,
> +
> +	.dmc_nr = 1,
> +	.chann_nr = 4,
> +	.capability = 0X7EFF00FF03DF,
> +	.fmt_attr = g12_pmu_format_attrs,
> +};
> +

Best regards,
Krzysztof
