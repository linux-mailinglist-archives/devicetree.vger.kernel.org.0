Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CBB7F8879A
	for <lists+devicetree@lfdr.de>; Sat, 10 Aug 2019 04:12:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726185AbfHJCMc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Aug 2019 22:12:32 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:42374 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726022AbfHJCMc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Aug 2019 22:12:32 -0400
Received: by mail-pf1-f194.google.com with SMTP id q10so46951246pff.9
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2019 19:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dIsTIbIVT0DvOH4LTzbsKWAgQLESoVNEJNMZCugoqJI=;
        b=olc+LWBhlrB/yzFGXNfphgCQ48TQ4q+RKDdJUN+tAVqzIR68BXl+jqB2YwGBKVZ1rr
         nrojspjO71Sh234yoq0S6M8IGUxNNvKWANXi5BYfBiu4FujRVsu6jqzh5+as8krKecJ9
         MuFHUHvnhM92Zr1opEnsGnA5UU/laOqix7MA09noJZ1Ew6MTFpVIEUcuB61642HjPsLf
         /yS/gz1bFNro4pvuMQRNoyfzb7Cwy/XP0Ndcs6C9iLju3U7e8GGvehg9ylmysVz2+bvH
         tdzwJjoO6tPVwMLG4QCORITF2YgVeQVoBA8pqo/8b6zGwAO60izUEFyfUo5jNs/r9Lth
         /rQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dIsTIbIVT0DvOH4LTzbsKWAgQLESoVNEJNMZCugoqJI=;
        b=Q5zM85iCewn9go9VXAlPctqxMZXeJMypr1UYI2zR8t9+QcHH5BdbPk+ayUMWHXAiiy
         hKb3xK9OBTH2l4M4JbEw4eEADlm++JhfYPL81Ye2rRdMYHXzXAg5TdPIdKOobkHPByA/
         U40FJ3fZN2CgvbojlI9CCgL+rIvpV5LB7vw8qeRqjU0o59WrwCLjjGnFQtpTweopg2fA
         yLjSYoGOMfkb+wmXUEAbAe3a/yHYioc2jrZZO+hqTxdczBT1eTyQqgo1jcP146GWnWoE
         IfLcxA6U4UVD9vi3M+3ayWG2FroITulp9viSFLVugXXYYH4OOlKSvrlGcmIx4cDwi9dx
         XDEg==
X-Gm-Message-State: APjAAAXnDt0h3K0Kc0lU88kfhO7eHQX7+2rw0y5NTFw1zriLT/z9IAVH
        VJUyHHNRXiZBmIjARPAgFvA=
X-Google-Smtp-Source: APXvYqzYMOuu5ho/fMFkhqvU4tWBcbwgIR5t1rR+3JijgdXVEyA7y8rVKyIw5S0qq6B5zwJBoYVwAA==
X-Received: by 2002:aa7:98da:: with SMTP id e26mr24692418pfm.34.1565403151634;
        Fri, 09 Aug 2019 19:12:31 -0700 (PDT)
Received: from [192.168.1.70] (c-73-231-235-122.hsd1.ca.comcast.net. [73.231.235.122])
        by smtp.gmail.com with ESMTPSA id v18sm98220761pgl.87.2019.08.09.19.12.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 19:12:30 -0700 (PDT)
Subject: Re: [PATCH v2] of/fdt: implement a "merge-cmdline" property
To:     Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>,
        devicetree@vger.kernel.org
Cc:     Paul Burton <paul.burton@mips.com>
References: <1565020400-25679-1-git-send-email-daniel@gimpelevich.san-francisco.ca.us>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <202c73b3-7b38-8040-49fc-a7ea14020370@gmail.com>
Date:   Fri, 9 Aug 2019 19:12:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565020400-25679-1-git-send-email-daniel@gimpelevich.san-francisco.ca.us>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel,

Please include me on the distribution list for devicetree patches.

-Frank

On 8/5/19 8:53 AM, Daniel Gimpelevich wrote:
> Currently, "bootargs" supplied via the "chosen" node can be used only to
> supply a kernel command line as a whole. No mechanism exists in DT to add
> bootargs to the existing command line instead. This is needed in order to
> avoid having to update the bootloader or default bootloader config when
> upgrading to a DTB and kernel pair that requires bootargs not previously
> needed.
> 
> One example use case is that OpenWrt currently supports four ARM devices by
> means of locally applying the previously rejected edition of this patch. So
> far, the patch has been used in production only on ARM, but architecture is
> not a distinction in the design.
> 
> On MIPS, Commit 951d223 ("MIPS: Fix CONFIG_CMDLINE handling") currently
> prevents support of such a mechanism, so I am including a workaround, in
> anticipation of upcoming changes.
> 
> Signed-off-by: Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
> Fixes: 951d223 ("MIPS: Fix CONFIG_CMDLINE handling")
> References: https://patchwork.linux-mips.org/patch/17659/
> ---
>  arch/mips/kernel/setup.c | 12 ++++++++----
>  drivers/of/fdt.c         |  9 +++++++--
>  2 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
> index ab349d2..9ce58f2 100644
> --- a/arch/mips/kernel/setup.c
> +++ b/arch/mips/kernel/setup.c
> @@ -725,7 +725,10 @@ static void __init arch_mem_init(char **cmdline_p)
>  	 * CONFIG_CMDLINE ourselves below & don't want to duplicate its
>  	 * content because repeating arguments can be problematic.
>  	 */
> -	strlcpy(boot_command_line, " ", COMMAND_LINE_SIZE);
> +	if (USE_DTB_CMDLINE)
> +		strlcpy(boot_command_line, arcs_cmdline, COMMAND_LINE_SIZE);
> +	else
> +		strlcpy(boot_command_line, " ", COMMAND_LINE_SIZE);
>  
>  	/* call board setup routine */
>  	plat_mem_setup();
> @@ -753,9 +756,10 @@ static void __init arch_mem_init(char **cmdline_p)
>  #if defined(CONFIG_CMDLINE_BOOL) && defined(CONFIG_CMDLINE_OVERRIDE)
>  	strlcpy(boot_command_line, builtin_cmdline, COMMAND_LINE_SIZE);
>  #else
> -	if ((USE_PROM_CMDLINE && arcs_cmdline[0]) ||
> -	    (USE_DTB_CMDLINE && !boot_command_line[0]))
> +	if (USE_PROM_CMDLINE)
>  		strlcpy(boot_command_line, arcs_cmdline, COMMAND_LINE_SIZE);
> +	else if (!strcmp(boot_command_line, " "))
> +		boot_command_line[0] = '\0';
>  
>  	if (EXTEND_WITH_PROM && arcs_cmdline[0]) {
>  		if (boot_command_line[0])
> @@ -764,7 +768,7 @@ static void __init arch_mem_init(char **cmdline_p)
>  	}
>  
>  #if defined(CONFIG_CMDLINE_BOOL)
> -	if (builtin_cmdline[0]) {
> +	if (builtin_cmdline[0] && strcmp(boot_command_line, builtin_cmdline)) {
>  		if (boot_command_line[0])
>  			strlcat(boot_command_line, " ", COMMAND_LINE_SIZE);
>  		strlcat(boot_command_line, builtin_cmdline, COMMAND_LINE_SIZE);
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 9cdf14b..08c25eb 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -1055,8 +1055,13 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
>  
>  	/* Retrieve command line */
>  	p = of_get_flat_dt_prop(node, "bootargs", &l);
> -	if (p != NULL && l > 0)
> -		strlcpy(data, p, min(l, COMMAND_LINE_SIZE));
> +	if (p != NULL && l > 0) {
> +		if (!of_get_flat_dt_prop(node, "merge-cmdline", NULL))
> +			*(char *)data = '\0';
> +		if (*(char *)data)
> +			strlcat(data, " ", COMMAND_LINE_SIZE);
> +		strlcat(data, p, min(l + strlen(data), COMMAND_LINE_SIZE));
> +	}
>  
>  	/*
>  	 * CONFIG_CMDLINE is meant to be a default in case nothing else
> 

