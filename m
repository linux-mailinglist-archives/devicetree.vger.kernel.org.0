Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4C2647CE7A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 22:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730769AbfGaUaR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 16:30:17 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:34740 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729929AbfGaUaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 16:30:15 -0400
Received: by mail-pg1-f194.google.com with SMTP id n9so26409253pgc.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 13:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iBFNsIG7+sA5uP79GYpMUJteIYJvl8bRHir2wXbiAZo=;
        b=l+QfNMcOnasx23NVguShFSHhmIX+5XjAOY4sDZYw4Gqf460wG4DVJg4dDYkZbcyn0o
         dqZC3So/kh7ufZuum5Yh16nK3sN8AWZ5jAzBT7BEZbHJED51q5/TY5Jbn7VA99tCep6F
         D6MOXzvYwMbkniTV9V0E2hvKhvDJAdPG9lIaiI0D6yNRVrMFgog9+ew4xrALMM+FrEJK
         NcVHvx2ZNMhOKxQtxFkhojWfkpYMpCQxW6fbnggvpiA36K6OdsuPKmTZI0wiQJ3aAzHr
         hW/P4aCvkR6aZBHl/KJrEAs14WnDhkJruRyy6U/oFxAm5OTq4+N7MyDu5yFRKBh/inv4
         4XsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iBFNsIG7+sA5uP79GYpMUJteIYJvl8bRHir2wXbiAZo=;
        b=AX36jIExhh6gbuCoMJrbHzhgEsQoblah0HKdMTVPDprFEgHH+WbzdMWhVqF5px4faW
         RujZxmDAjjWCLh97x3r8TqdYwHfe7tWZfQzQek98up2BdC2ZCNzAbDFqN2U/8Y/KCqaD
         27n6lX+9E3HJ3T2SWLqpRmt1bMxaI25NgSFncV9xrU+TcjofjiEXEmO64/ZISZS9LPPt
         EfWGpD82HVzjGp80iyCqhVatAGU4zrZOO9eMHHJCFvj1u3pvYWARQsd+0kA02lakd8PL
         zUSHUbRU70XwGMHAe5hz5vOFx1LbLJnYfeK1yFiRgQnv/hdxdyJGIUOi0c3PBIEv4G6l
         AEKg==
X-Gm-Message-State: APjAAAXfIhHbj/Ghx7ZAtxgBQ9u9Ai95ZkEexSWMETg9FB2ujsJFsIhz
        i/1dUR91zyjFv8TAsvvX984=
X-Google-Smtp-Source: APXvYqyJUAQ0n7FkXPmH3UNtvWGzACMfJ9md+gH22q3JDEBzcrdzfFE6f4FxA7+o4knjJCEkZaAC5Q==
X-Received: by 2002:a17:90a:fa07:: with SMTP id cm7mr4546691pjb.138.1564605015229;
        Wed, 31 Jul 2019 13:30:15 -0700 (PDT)
Received: from [192.168.1.70] (c-73-231-235-122.hsd1.ca.comcast.net. [73.231.235.122])
        by smtp.gmail.com with ESMTPSA id q63sm90005325pfb.81.2019.07.31.13.30.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 13:30:14 -0700 (PDT)
Subject: Re: [PATCH] scripts/dtc: dtx_diff - add color output support
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
References: <20190731123741.13947-1-geert+renesas@glider.be>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <342e5e38-f980-c849-c061-8dad42bc0850@gmail.com>
Date:   Wed, 31 Jul 2019 13:30:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731123741.13947-1-geert+renesas@glider.be>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

On 7/31/19 5:37 AM, Geert Uytterhoeven wrote:
> Add new -c/--color options, to enhance the diff output with color, and
> improve the user's experience.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  scripts/dtc/dtx_diff | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
> index e9ad7834a22d9459..4e2c8617f69a333e 100755
> --- a/scripts/dtc/dtx_diff
> +++ b/scripts/dtc/dtx_diff
> @@ -20,6 +20,8 @@ Usage:
>  
>  
>        --annotate    synonym for -T
> +      --color       synonym for -c
> +       -c           enable colored output
>         -f           print full dts in diff (--unified=99999)
>         -h           synonym for --help
>         -help        synonym for --help
> @@ -178,6 +180,7 @@ compile_to_dts() {
>  annotate=""
>  cmd_diff=0
>  diff_flags="-u"
> +diff_color=""
>  dtx_file_1=""
>  dtx_file_2=""
>  dtc_sort="-s"
> @@ -189,6 +192,11 @@ while [ $# -gt 0 ] ; do
>  
>  	case $1 in
>  
> +	-c | --color )
> +		diff_color="--color=always"
> +		shift
> +		;;
> +
>  	-f )
>  		diff_flags="--unified=999999"
>  		shift
> @@ -344,7 +352,7 @@ DTC="\
>  
>  if (( ${cmd_diff} )) ; then
>  
> -	diff ${diff_flags} --label "${dtx_file_1}" --label "${dtx_file_2}" \
> +	diff ${diff_flags} ${diff_color} --label "${dtx_file_1}" --label "${dtx_file_2}" \
>  		<(compile_to_dts "${dtx_file_1}" "${dtx_path_1_dtc_include}") \
>  		<(compile_to_dts "${dtx_file_2}" "${dtx_path_2_dtc_include}")
>  
> 

I like the idea, but...

I have various linux distro releases across my many systems, but only one is
new enough to have the diff command that supports --color.

Can you enhance this patch to test whether --color is supported?  Maybe
something like (untested):

	-c | --color )
		if `diff --color <(echo a) <(echo a) 2>/dev/null` ; then
			diff_color="--color=always"
		fi
		shift
		;;

Then add some text to the usage for -c and --color saying that they will
be silently ignored if diff does not support --color.

I first wrote up a suggested version that printed an error message and
exited, but I think silently ignoring is more robust, even though it
may be more confusing to someone who is wondering why --color does not
work.

Thanks,

Frank
