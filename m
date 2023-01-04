Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78F6565E0E8
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 00:25:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229759AbjADXZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 18:25:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234680AbjADXZs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 18:25:48 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C57313D69
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 15:15:56 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id 7so23375727pga.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 15:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q+vo9xwxFF4sNhy0dor2wwv3CWFlIdZ4y8k04+IC2tw=;
        b=Sf+AAe62Oqq7qPWS4uxFkl3QiswCdhiAOIjEAmm1kJoWKUR+7z9fwUi4k6j/ArVuCN
         BIF0iEoxuYxwW2y42amlbopuTWcSgLTF7ZZZMlkUXnJhjg4n8nGLJ+2XnlSg22N7RRH7
         26Hm1r9Y63G16hAe48x2LU+ySiL4YIELtFc3H6Ojl2ucar/oiF40Z89STfI4evDrOrVi
         z4tn0836yogPqQxVT2tEz4RJc5pVKalzScvyKVxDuAZChs1rECnkHAwWTCkK0giDHg6q
         NeU5Uh4e+6OxDFiolMq4cU1bq1Sd3qxBYGRTJbv15is8bzzbsiKTMGShROJ4cSs/ivUV
         mSOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q+vo9xwxFF4sNhy0dor2wwv3CWFlIdZ4y8k04+IC2tw=;
        b=ABnD3AfDd2+QRehPMHZwjRWLEUZBsYHsXPC61uK/YKsyWS67wPpzG99BRm1gawVFeH
         16GzZip3EskoMZb+3hZVSyFx7oq9l89ns7xOy5oz/H9Tp8yhh5rT+l4A4AkHHe93lkqh
         rMLVJG9AaukK5bP+kx3goXCtG6YPura6prJBHfha2FqNEezbtkc+xqVtzGiuwZlfxqvg
         +dyEQclGC4k0vzknV85Itws8vmMdpvI8Wib32xX48cJLnQP+izwpmxXjxWYcCUYJcAJV
         zgC6AK09ufEtmvA0znic7Bxb6A3xHqRndwUkd7ReX96nKsWXyAlR/GSIjshLzpzNuclk
         Q72Q==
X-Gm-Message-State: AFqh2kpEicgxKVd8sUd6FnJeN6vhECdz4TSI+NfEB2AqVgIgq+s5F1+P
        58ww/g3IlE4l2HS6dQnBG3f6PA==
X-Google-Smtp-Source: AMrXdXtWPhx8lX2YBKuFexnizRb7rOp4rjIGrT9SCAd9fmY3QiDyGClwqv/9WP90ncW3GQ8OaHs68g==
X-Received: by 2002:a05:6a00:2a9:b0:581:f14:fde9 with SMTP id q9-20020a056a0002a900b005810f14fde9mr32977482pfs.16.1672874155708;
        Wed, 04 Jan 2023 15:15:55 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:1328:ca09:d4c2:fcbc])
        by smtp.gmail.com with ESMTPSA id i2-20020aa796e2000000b00581172f7456sm18492509pfq.56.2023.01.04.15.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 15:15:55 -0800 (PST)
Date:   Wed, 4 Jan 2023 16:15:52 -0700
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     linux-remoteproc@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, quic_plai@quicinc.com, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, srinivas.kandagatla@linaro.org,
        quic_rohkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@linaro.org, corbet@lwn.net
Subject: Re: [PATCH v4 1/2] remoteproc: elf_loader: Update resource table
 name check
Message-ID: <20230104231552.GD2112402@p14s>
References: <1671603033-4359-1-git-send-email-quic_srivasam@quicinc.com>
 <1671603033-4359-2-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1671603033-4359-2-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 21, 2022 at 11:40:32AM +0530, Srinivasa Rao Mandadapu wrote:
> Update the way of checking resource table name with prefix substring search
> instead of complete string search.
> 
> In general, Qualcomm DSP binary is prepared by combining different ELFs'.
> Hence, section header name (e.g. .resource_table), appended with ELF name
> to differentiate with same section(e.g. resource_table.ac_bin_process) of
> different ELFs'.
>

Well, they are different ELF files so it is implied the resource section may be
different...  And from what I see this is purely a human thing and not
specifically needed by machines.  

I can't imagine this is a new situation and as such must ask how it was working
before?

> Example readelf output of DSP binary:
>     [60] .start.ac_bin_process PROGBITS
>     [61] .resource_table.ac_bin_process PROGBITS

The real question is...  Why is this labeled ".resource_table.ac_bin_process"
rather than simply ".resource_table"?

>     [62] .comment.ac_bin_process PROGBITS
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>
> Reviewed-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---
>  drivers/remoteproc/remoteproc_elf_loader.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index 5a412d7..77330d6 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -272,7 +272,7 @@ find_table(struct device *dev, const struct firmware *fw)
>  		u64 offset = elf_shdr_get_sh_offset(class, shdr);
>  		u32 name = elf_shdr_get_sh_name(class, shdr);
>  
> -		if (strcmp(name_table + name, ".resource_table"))
> +		if (!strstarts(name_table + name, ".resource_table"))
>  			continue;
>  
>  		table = (struct resource_table *)(elf_data + offset);
> -- 
> 2.7.4
> 
