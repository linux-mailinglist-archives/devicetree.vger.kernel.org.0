Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D7C81A4707
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2020 15:39:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726181AbgDJNjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Apr 2020 09:39:49 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:33601 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726049AbgDJNjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Apr 2020 09:39:49 -0400
Received: by mail-qk1-f195.google.com with SMTP id v7so2147834qkc.0
        for <devicetree@vger.kernel.org>; Fri, 10 Apr 2020 06:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=V5Eotia+f2lAcrAlRXRNebaSfXN9CzJhMi/Q9DZ8ljY=;
        b=V3QoyNZ4Zw9TETDq8F38r6Z+JaWIvzUaJHy4mWN70ssjW2DHPj/UsNW552WYw7oRoy
         q4jfYL7TQnuZvp3sd0UL5R4t2AMBGikEKzEOX+Egs2er0wNk3hR6E46E4f3doW6kYcbz
         ya2Qinb069ExdWbLXLcqDK8ac/ft/goN79AHWufptC16BgZgFpOw5+ywLA+X7cuUvfEg
         v2YUwHgje9AJp5gDfKaAoIKUKGDT90QzvHLD4AvmmVXwlfK7LtNcPcnb/heTDXfRQrEo
         wXrd/3gkuByZcLgam+ARPVrRVD+QaVcb/eUd58s6g/uUqQ2ZHmkoc9jm8BYUDeo7Cj/g
         VJZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=V5Eotia+f2lAcrAlRXRNebaSfXN9CzJhMi/Q9DZ8ljY=;
        b=fzM/x7u/kGW1j7ZXxkhSGVjNU5pMVA8jeKZAbx53uGZlzxOdPhoWrd5HAHxLwQqHmu
         YH2gvmo2o/t3sAe3sI7qHV4Co8eBkipKG5hqUdU1+8mfA8FWDKf4uYcd8TQ6qJ440X6V
         guVDQq7M38fSDn7QjMUvK726Meme14PglbyL/WlUAAuz7gc3ru4ddncTZF+MatcnVMS+
         riQm6FbKhWJsamhMhkcHhh6V8CZ7P7u0aDHdcZbBz8u+AYEhUlfKR4LGk5VRjdn7Ksf2
         w6DwthEtzQ37Fq7bLm9mU7X4Ufd92Yk09AMQjHPyTeqQHuHaIelIaUndzbXNFdYP7VPf
         z9Ww==
X-Gm-Message-State: AGi0PubAEwqZb0Oq1m/5/pLqYqxxiuX83nlSUL+HgEgNca/ZEn9dGavS
        SuNgKD7Ess+bG6SmUmaHhes=
X-Google-Smtp-Source: APiQypIiYwTR5d/sJrhy7GjTs3Y2pM746mAqDHl8riKfaOZlNGVunGjyUW+1cFbyf9n7RndLVUTw3g==
X-Received: by 2002:a05:620a:16d4:: with SMTP id a20mr796362qkn.364.1586525987692;
        Fri, 10 Apr 2020 06:39:47 -0700 (PDT)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net. [73.88.245.53])
        by smtp.gmail.com with ESMTPSA id g14sm1720857qtb.24.2020.04.10.06.39.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Apr 2020 06:39:47 -0700 (PDT)
Subject: Re: [PATCH] of: fix the warnings from command line.
To:     tangjianqiang <wyqt1985@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     tangjianqiang <tangjianqiang@xiaomi.com>
References: <1586507524-3987-1-git-send-email-tangjianqiang@xiaomi.com>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <59acb44d-f0ea-d0f5-0280-a6806d06c41a@gmail.com>
Date:   Fri, 10 Apr 2020 08:39:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1586507524-3987-1-git-send-email-tangjianqiang@xiaomi.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/10/20 3:32 AM, tangjianqiang wrote:
> Gerrit will complain with this warnings:
> ERROR: (foo*) should be (foo *)
> 
> Signed-off-by: tangjianqiang <tangjianqiang@xiaomi.com>
> ---
>  drivers/of/fdt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 2cdf64d..8a8e07a 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -1078,7 +1078,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
>  #endif
>  #endif /* CONFIG_CMDLINE */
>  
> -	pr_debug("Command line is: %s\n", (char*)data);
> +	pr_debug("Command line is: %s\n", (char *)data);
>  
>  	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
>  	if (rng_seed && l > 0) {
> 


Reviewed-by: Frank Rowand <frank.rowand@sony.com>
