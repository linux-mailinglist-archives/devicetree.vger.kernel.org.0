Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 639296B3B75
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 10:58:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbjCJJ6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 04:58:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230397AbjCJJ6B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 04:58:01 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BC5961BE
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 01:57:57 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id d41-20020a05600c4c2900b003e9e066550fso3014698wmp.4
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 01:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678442276;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I1Kf22Nd6jMpb0d+F+cq2Wx8wrW82ram738os4gk/9c=;
        b=P+AtqMkHWpTRmcjAPKqZCyMhkm2+cRZQB/KZT/N1IW2N3sB3UHu6myOBGLDJv31seT
         P2Ong4+07NhCVeWSrrN+OjO8BVfBMgVnUHiADj+wKNPY/cHwQA0yyGREUZ3rsOvqie5V
         TkuhwxiDr347DuIffdm4BmCgjqtZpQy0Kyy5NsVBG4x1J+6H+aVSB0NLeHj4T5y/r23y
         KH/In1G4wr1CedMHAXAw+KhpFS8fvjvH0CZ1vi9sXL9WROBz7l8g9YM+zEh0GpxIwiyK
         Pw/kwI37wUKXViFb+TKpuKaLWfu3I7zZP6ZOkynhw5aBzZMFE2IVn6KSifSWZmrTwbSx
         gDYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678442276;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I1Kf22Nd6jMpb0d+F+cq2Wx8wrW82ram738os4gk/9c=;
        b=FTJqqc41wOYTtw+W+yKd/TNRA3Z3nToMiCUkp6KOyjN6dE14eojl3ef5qZRqWkekzu
         8XsQ5KAUYenLPWDnwaPWwBhja9vezLki9c2WR/oxx6njyXWd0IpytfMEX0f8wfzqbrTt
         RbczkSF9H1KPGAnkAx8JF+4z2SEzj9g+Ytp2k7umKNtjjVdwvuItxrdu0dNhD2OD9TnI
         6FjGFkTkdS8plAV99l8nGdiiugUuvx3uDDTn2+5ZflTqg/8HktK0HOUz7bTZsCNmZrD1
         OvgKbbXXSQVvG9NpNdcyzLGv0Zp5c865tmvGhFNrcd31eHrzc8qRIce6yAyzFcvqkiXa
         GJ7A==
X-Gm-Message-State: AO0yUKVO/rhZ/jeT+JBOkNZzk0A1yomDp+ek6EFzVwkwE0WnaqIy4pdi
        9u8mYipdHZ0dHVMIwICjZ0tRSd9R7PDETVY+kYucbw==
X-Google-Smtp-Source: AK7set8JFcxsFIS/2FqT6O9DCc+oo+ifDj4Q98FONtmhjcK0VHaeq61J34lRnQUduLUCjuQERBcvWA==
X-Received: by 2002:a05:600c:3b05:b0:3eb:3692:644d with SMTP id m5-20020a05600c3b0500b003eb3692644dmr2045446wms.22.1678442275866;
        Fri, 10 Mar 2023 01:57:55 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id n11-20020a05600c3b8b00b003e00c453447sm2613098wms.48.2023.03.10.01.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 01:57:55 -0800 (PST)
Message-ID: <6244680f-44db-0706-eada-dffdb05f116a@linaro.org>
Date:   Fri, 10 Mar 2023 09:57:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 09/21] nvmem: core: return -ENOENT if nvmem cell is not
 found
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-kernel@vger.kernel.org
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Michael Walle <michael@walle.cc>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>
References: <20230307165359.225361-1-miquel.raynal@bootlin.com>
 <20230307165359.225361-10-miquel.raynal@bootlin.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230307165359.225361-10-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 07/03/2023 16:53, Miquel Raynal wrote:
> From: Michael Walle <michael@walle.cc>
> 
> Prior to commit 3cb05fdbaed6 ("nvmem: core: add an index parameter to
> the cell") of_nvmem_cell_get() would return -ENOENT if the cell wasn't
> found. Particularly, if of_property_match_string() returned -EINVAL,
> that return code was passed as the index to of_parse_phandle(), which
> then detected it as invalid and returned NULL. That led to an return
> code of -ENOENT.
> 
> With the new code, the negative index will lead to an -EINVAL of
> of_parse_phandle_with_optional_args() which pass straight to the
> caller and break those who expect an -ENOENT.
> 
> Fix it by always returning -ENOENT.
> 
> Fixes: efff2655ab0f ("nvmem: core: add an index parameter to the cell")
> Reported-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Michael Walle <michael@walle.cc>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

Already applied.

--srini
>   drivers/nvmem/core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index 174ef3574e07..22024b830788 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -1231,7 +1231,7 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np, const char *id)
>   						  "#nvmem-cell-cells",
>   						  index, &cell_spec);
>   	if (ret)
> -		return ERR_PTR(ret);
> +		return ERR_PTR(-ENOENT);
>   
>   	if (cell_spec.args_count > 1)
>   		return ERR_PTR(-EINVAL);
