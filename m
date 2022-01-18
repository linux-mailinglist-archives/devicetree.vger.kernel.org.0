Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61641492D77
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 19:37:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244937AbiARSgu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 13:36:50 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:43764
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348128AbiARSgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jan 2022 13:36:49 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E41C640045
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 18:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642531008;
        bh=Xr6SgdUN1TZh8LNJdRyo3Mtp+OngI4NaFYJZFvhIHmw=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=dWT5O2iBUWszkoW0JblnJbJ1GYzXrx11BRJErc0oShw22KJihqeWZ9B4zGO5RQGfO
         sNiKb3x7pFjtyfYCDrJU9XuFAqgpPKKi1bMDXrMgDeb543yebf1MmTnj53vthIHNt+
         sw+aIN2x92DlznjJmPbTJv31qgvmRdiG1KinM6Qt0Ew1gloYChIq1te+0OWDzaWlu2
         pT9NT8dX4sWx7v3QT64s3h2AEfZ9jxZtXucQp0uPCRL7t+GmMmRAo51802Rx8YkuNN
         xXL1gVrAXSluFtdT9JmF+F4fQGBff+puE32eJRqTD+iSsNGn0p/5+iXurkfU0d3pw5
         DuRtaAr34UI4g==
Received: by mail-ed1-f72.google.com with SMTP id c11-20020a056402120b00b0040321cea9d4so4727273edw.23
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 10:36:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Xr6SgdUN1TZh8LNJdRyo3Mtp+OngI4NaFYJZFvhIHmw=;
        b=2aZVmIiB+WdCaRl6o2MIWI2uzkZ0YzCh2aOJAv/bO0bxt9Yd4hJ5aT82gKq0GU4zIG
         R0LkFQ7AmGSmmiHtMKR+rL8E3YLsBKutsJgV1fmeLukASPWRJBWW5R1XRpnakou9m/dc
         7bak/+h/VuGagqVdyiHAAbXhkn7oJ/PqjD78AoS61HQLM6Cg2uYJINK9aXaxVEViBayj
         yWj+P+ClzkK4AeUtlEzRcoFgGYvLs4SNpCWjIbbRK9c/MIulkeDImLsZcay8+OaklkBy
         yywDeCTo9CG+Yls/GHLffab6HRG81sGvy16aqAUHhgUZpoZF25pbUwD/wAjU9J44pp8p
         kVjA==
X-Gm-Message-State: AOAM531D43cd9aSmH09uWswZ2ggZsDn77mQehSqhHMpz6uOmDdpSISjA
        WMG6huYEeZ782aUgOW4p82NiV7XMr4qLRYJCWYEFpOgPeD7/NzJ6lAO6VVazqLEEVaN4WjvZP/o
        SI9QD/HpTa4O20LUmBxP+uyoKtUc7G0XLXuj7H5I=
X-Received: by 2002:a17:907:9810:: with SMTP id ji16mr21430539ejc.202.1642531007363;
        Tue, 18 Jan 2022 10:36:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzhfrqj3ReK7A0ko54v0kjJtEtaJOwjxvJZxY2r3mMd3765xiW/XF5zsxzkUqpiG2o3Eafuww==
X-Received: by 2002:a17:907:9810:: with SMTP id ji16mr21430530ejc.202.1642531007224;
        Tue, 18 Jan 2022 10:36:47 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id kw22sm5615885ejc.132.2022.01.18.10.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 10:36:46 -0800 (PST)
Message-ID: <ad954b04-9df9-6675-18b8-8cda01467ce8@canonical.com>
Date:   Tue, 18 Jan 2022 19:36:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 10/16] clk: samsung: fsd: Add cam_csi block clock
 information
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, Sathyakam M <sathya@samsung.com>
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150052epcas5p12efa399d1a59fc2fb0595eef128ffdf9@epcas5p1.samsung.com>
 <20220118144851.69537-11-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220118144851.69537-11-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 15:48, Alim Akhtar wrote:
> Adds clocks for BLK_CAM_CSI block, this is needed for CSI to work.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Sathyakam M <sathya@samsung.com>
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/clk/samsung/clk-fsd.c | 207 ++++++++++++++++++++++++++++++++++
>  1 file changed, 207 insertions(+)
> 
> diff --git a/drivers/clk/samsung/clk-fsd.c b/drivers/clk/samsung/clk-fsd.c
> index 72a2b38524a1..afac8760ebe1 100644
> --- a/drivers/clk/samsung/clk-fsd.c
> +++ b/drivers/clk/samsung/clk-fsd.c
> @@ -1543,6 +1543,210 @@ static const struct samsung_cmu_info mfc_cmu_info __initconst = {
>  	.nr_clk_regs		= ARRAY_SIZE(mfc_clk_regs),
>  };
>  


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
