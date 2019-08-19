Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC5F991AA0
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 03:21:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726139AbfHSBVQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Aug 2019 21:21:16 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:38344 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726132AbfHSBVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Aug 2019 21:21:15 -0400
Received: by mail-pf1-f196.google.com with SMTP id o70so152438pfg.5
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2019 18:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wpNHDiBsPQfjsuPxY6tIXP/eXINl3q0q9powu7/VsCo=;
        b=etCP12mCvmieXUam7fkPMiqemJxZRkhn67k6OELQ/x8jWBEgJEqA4N0OhiApHMAvTB
         C7yNAETpKfLlavC/jtqoXswYb3FHJqx/KiaZ7AWPOB/oDBtijvu8Q4aQF69sJrBLU8b3
         Wgj+3ZlxIanEmVHYR7Sa+uJVmVDcR5UBpVh5RprQOoh1eIogbhvlnlyWqbLNmdaFM4cd
         3XsfecNHdJ32iPxZifaEPCrG7dB7BPEuiROjbHo2pWADjavWmo9HPVtiy5lCXN7JtLwL
         +At9yDMwBppmmhJbA+JZVZj3jMpG7pAoXGmf/cTWvT5iAZcl2v2HKcLb0BgKAOKutWJV
         NyhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wpNHDiBsPQfjsuPxY6tIXP/eXINl3q0q9powu7/VsCo=;
        b=iSebe/ePLyweQGQYSsLxlsAwafEFz2UkMEmm7vxxMioceBJR6/0FemqYzl+4XrOJz8
         hKW+8Bf/3VZef1Y9A1aWrU7wAKjz6Ff+3un3B0b3gglc6hqlPQ6odAitdbVe0DNKomTb
         iKWwT7iBRpd36j6TXSrTCLfSBQQYhpkvWPVOycaHjLjzvhKNDrN7Lxf+2lyGywVWYYHy
         1RnyVPjJQgqyktza0jawxXuZ8lv/0M+9an3kakFoplA1qfVLuxyWi97eUzR7uv9vMEh4
         ct5FCNdFVg+EINfBJZR3bQ3eV7WLPEkxV4BFCinAprgcfV/mU3JYXyVfBOHsBhRG89Xg
         eieA==
X-Gm-Message-State: APjAAAXvzxJyj7QptPRJP7XrnJrV5h8meRL/lBgwntGerhnBLotQKq5y
        BUmWthp937283/m3RNOmd6s=
X-Google-Smtp-Source: APXvYqwjrXTuRlXFqy01dR7XYqEJ6GOivuynEgJHqZUix6pOdB3jE0Bh7EDbUHwNGLw7CXaZfZd+SQ==
X-Received: by 2002:a17:90a:e2d2:: with SMTP id fr18mr8523562pjb.98.1566177674994;
        Sun, 18 Aug 2019 18:21:14 -0700 (PDT)
Received: from [192.168.1.70] (c-73-231-235-122.hsd1.ca.comcast.net. [73.231.235.122])
        by smtp.gmail.com with ESMTPSA id r4sm15857729pfl.127.2019.08.18.18.21.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Aug 2019 18:21:14 -0700 (PDT)
Subject: Re: [PATCH v2] scripts/dtc: dtx_diff - add color output support
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
References: <20190814091832.12707-1-geert+renesas@glider.be>
From:   Frank Rowand <frowand.list@gmail.com>
Message-ID: <ac9e99c9-1f31-16c0-c7d9-e9206a7bde34@gmail.com>
Date:   Sun, 18 Aug 2019 18:21:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814091832.12707-1-geert+renesas@glider.be>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/14/19 2:18 AM, Geert Uytterhoeven wrote:
> Add new -c/--color options, to enhance the diff output with color, and
> improve the user's experience.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Document that -c/--color requires a diff command with color support,
>   - Ignore -c/--color if diff command lacks color support.
> ---
>  scripts/dtc/dtx_diff | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
> index e9ad7834a22d9459..d3422ee15e300bc7 100755
> --- a/scripts/dtc/dtx_diff
> +++ b/scripts/dtc/dtx_diff
> @@ -20,6 +20,8 @@ Usage:
>  
>  
>        --annotate    synonym for -T
> +      --color       synonym for -c (requires diff with --color support)
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
> @@ -189,6 +192,13 @@ while [ $# -gt 0 ] ; do
>  
>  	case $1 in
>  
> +	-c | --color )
> +		if diff --color /dev/null /dev/null 2>/dev/null ; then
> +			diff_color="--color=always"
> +		fi
> +		shift
> +		;;
> +
>  	-f )
>  		diff_flags="--unified=999999"
>  		shift
> @@ -344,7 +354,7 @@ DTC="\
>  
>  if (( ${cmd_diff} )) ; then
>  
> -	diff ${diff_flags} --label "${dtx_file_1}" --label "${dtx_file_2}" \
> +	diff ${diff_flags} ${diff_color} --label "${dtx_file_1}" --label "${dtx_file_2}" \
>  		<(compile_to_dts "${dtx_file_1}" "${dtx_path_1_dtc_include}") \
>  		<(compile_to_dts "${dtx_file_2}" "${dtx_path_2_dtc_include}")
>  
> 

Thanks Geert.


Reviewed-by: Frank Rowand <frank.rowand@sony.com>

Tested-by: Frank Rowand <frank.rowand@sony.com>

Tested on a system where diff does not have the --color option.
Tested on a system where diff does have the --color option.
