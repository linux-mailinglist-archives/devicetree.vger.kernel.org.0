Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A58B46B20F9
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 11:12:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbjCIKMo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 05:12:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229941AbjCIKMk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 05:12:40 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF14DE503F
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 02:12:29 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h11so1300114wrm.5
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 02:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678356748;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6aHSCkRbJ71CfSGOkvaNqMvsRzL76ZTZaCP7ni20i9A=;
        b=xDpxW9PWGQ6lCiWSHipHQA10UFP7ThhIG/w1SlMhml1mt65aH5iIu2v/kwhYXIx4Oa
         lGVJDmrPzs6uGAWTQrK5Ch/1xwFSHvEtk7cOOWU0IZT2c6Ghw8VOoSDgl9rhRnz4FGml
         7/dCBAIr3Jzn5Aa6gQ5rErnKyBXNbwB/gNXG8KDkwKRciEiu5XZn4MRUbvGhlM8pU4g1
         OZ4JfJ18hPiw1zRfogijVYNe4JtdSjhlUad/DBbO7mg4MgbYwo8xBhRRy+Az4uZv3equ
         LzZawqKcAr7FdeNpX6HiCkmLtLNWgcC3Av8dI9l41CuaBYbnvhtL4Scc1lZY84yUKE+a
         +sGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678356748;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6aHSCkRbJ71CfSGOkvaNqMvsRzL76ZTZaCP7ni20i9A=;
        b=u0NBxVf/j+T/RrPxcQQWyjn8FAXkKtNenEUYe760nPv0cg3cs/yL2Wdbjy4sk593bK
         RZQDGEMuycXqMvvcioAHY/0uFfj35s2WyoiK0PPa/wLoog/IjixuSTMyVV2oo7RUjtsU
         /A50OFimLtBzDF6TDPAjlPQlVooQe0TE7VYrjA6FKoWNuactIt9yyiPKlOSCKLqpLxQo
         h6dw+I1dHBj30Xzs/8Rj3FN43e9WMZjBZwAsV2a/aLm1fgad4aaeWUJ6n9F7N2HfXgKN
         BVtgh4sbc0eMD/cSE+ghEzolllY/NxDQpAex0Zngal55lH+n2w+JXFex/RHkzXgj8/M9
         JFOA==
X-Gm-Message-State: AO0yUKUnyOodg25N4g1APGu6JsU/+HbYu8MaVZjQvfyst2qymHjrtIIZ
        oc85k3CEU8BAB2dK71pDrkl0PA==
X-Google-Smtp-Source: AK7set8Yozqk5TSppsUH4Mou15xJPrcEHGU7CEfC+1mhyAAwhd3+ui64SlJGBzLzrIik0TRb0wVpfA==
X-Received: by 2002:a5d:4f0c:0:b0:2c7:a9ec:3 with SMTP id c12-20020a5d4f0c000000b002c7a9ec0003mr13776003wru.65.1678356748298;
        Thu, 09 Mar 2023 02:12:28 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id f2-20020adfdb42000000b002c54fb024b2sm17223110wrj.61.2023.03.09.02.12.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 02:12:27 -0800 (PST)
Message-ID: <37f821b8-f681-08e4-d4f1-d37be191ff7f@linaro.org>
Date:   Thu, 9 Mar 2023 10:12:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/4] nvmem: core: allow nvmem_cell_post_process_t
 callbacks to adjust buffer
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Michael Walle <michael@walle.cc>, gregkh@linuxfoundation.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, u-boot@lists.denx.de,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230222172245.6313-1-zajec5@gmail.com>
 <20230222172245.6313-3-zajec5@gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230222172245.6313-3-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 22/02/2023 17:22, Rafał Miłecki wrote:
> @@ -1791,11 +1792,15 @@ ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
>   	if (!nvmem)
>   		return -EINVAL;
>   
> +	/* Cells with read_post_process hook may realloc buffer we can't allow here */
> +	if (info->read_post_process)
> +		return -EINVAL;
This should probably go in 1/4 patch. Other than that series looks good 
to me.

--srini
