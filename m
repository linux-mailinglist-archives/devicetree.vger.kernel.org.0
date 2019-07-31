Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 49AE07CCA8
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 21:21:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729442AbfGaTVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 15:21:01 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:35451 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729013AbfGaTVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 15:21:01 -0400
Received: by mail-pg1-f193.google.com with SMTP id s1so26237147pgr.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 12:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X62yo9M2x8AQnMbVtc4ggTigIh/r5p8ibryWAFvQyto=;
        b=JJ6GFkbQvta211g9zdGJcCxQp+kBr8PntIaiqyI245LZvlsdc5Dnqw9KaPjdGd0VXN
         WSTRVeNuNKdEyl9/ZDzFMO11fysXezZhzO6llwaZ8l6VC2FjbfOzb37RaNBuuM7Y0iro
         htgvSJMUXgsZSOF+QOFPHyPQZ1Q6k9ZUmSzmdboFRZkXdxHCwJrLiDQwwSjHMOOqYUNY
         AM9rA4UJ032JOq9UYt9CPPNX1JfzZuOrgtxLFNXzmVZ+rghGYuYAFm0NmhHu5eL/Azjv
         ENKg55jJvZ/nf8k08eQ80kKtNTN2jgbxKDgQ/dhjLHY1llJm3nHUT8+JS16ddOCSZvJV
         enVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X62yo9M2x8AQnMbVtc4ggTigIh/r5p8ibryWAFvQyto=;
        b=Ry6zZDLHLdAHDqW8qKSOJwbo4ar0qf4zmQ6jvQWCFg022yYzP12RCp4G3Nh41VKikw
         E/AA9zfW+oUHO7s3JGZCreExsLIe8HMWeiS8gjzH0PmbCv7RoG2krVrlge8UY0NeYRf+
         geSP3lUvl54KYw++tWoXoxUgrpaffDxB11Ea7Ek3tcZpAvErlqEInBQeHaBa4ULI3oeX
         v6AN75xFrvTaa3o0rTD8fSqV7TubOvfBCok1jLtaKvqkI91Qrb0V/usBoCs4wVfuwket
         jGUULE6vaBfQoB+S+1auRHIEC+PXHbSV46WOdeLj/kjvzdouasKvqxkbGiE8VFK0+B3H
         9JbQ==
X-Gm-Message-State: APjAAAWv30XYthitM3niiY6X7OxVR+A2aj73kO61xmL7/jOnmKf76UZ0
        M89AQPwTnxD/Pc2V/Wqhy9c=
X-Google-Smtp-Source: APXvYqyMaIkNUPKYx+62ofI6KXmpuBGhDnGP8Uyh7gpRvdfL3Hh9iuEDFyCjXiu9ZAdmDrM7BtygSA==
X-Received: by 2002:a17:90a:d997:: with SMTP id d23mr4261721pjv.84.1564600860631;
        Wed, 31 Jul 2019 12:21:00 -0700 (PDT)
Received: from [192.168.1.70] (c-73-231-235-122.hsd1.ca.comcast.net. [73.231.235.122])
        by smtp.gmail.com with ESMTPSA id w14sm77399169pfn.47.2019.07.31.12.20.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 12:21:00 -0700 (PDT)
Subject: Re: [PATCH] scripts/dtc: dtx_diff - make help text formatting
 consistent
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
References: <20190731123548.13787-1-geert+renesas@glider.be>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <d1e4277e-505c-9cd5-b26c-4c307504f7c4@gmail.com>
Date:   Wed, 31 Jul 2019 12:20:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731123548.13787-1-geert+renesas@glider.be>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/31/19 5:35 AM, Geert Uytterhoeven wrote:
> None of the help texts use capitalization, except the one for the -T
> option.  Drop the capitalization for consistency.
> Split the single long line that doesn't fit in 80 characters.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  scripts/dtc/dtx_diff | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
> index 00fd4738a5877948..e9ad7834a22d9459 100755
> --- a/scripts/dtc/dtx_diff
> +++ b/scripts/dtc/dtx_diff
> @@ -27,7 +27,8 @@ Usage:
>         -s SRCTREE   linux kernel source tree is at path SRCTREE
>                          (default is current directory)
>         -S           linux kernel source tree is at root of current git repo
> -       -T           Annotate output .dts with input source file and line (-T -T for more details)
> +       -T           annotate output .dts with input source file and line
> +                        (-T -T for more details)
>         -u           unsorted, do not sort DTx
>  
>  
> 

Thanks Geert!

Reviewed-by: Frank Rowand <frowand.list@gmail.com>
