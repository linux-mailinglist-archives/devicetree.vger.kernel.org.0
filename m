Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FB1454EB60
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:39:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378700AbiFPUjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:39:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378507AbiFPUjf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:39:35 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A5D65E146
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:39:31 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id mh16-20020a17090b4ad000b001e8313301f1so5930333pjb.1
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=BBmUYzK8f9SnovKoa+NZytnW9BcbD9Pk0ULgGxv2bI4=;
        b=rYfpldiYa2Gue535MVTLTOD1x0t7UtoovpEyoFz/741wAYWRL2XYgKvczyDgx+9vtN
         9p/GmBWldaycFlKIOVV23dF1oVi2KdLDOCUpPy4XdbPsHNIdmHUZkmv0ae81XaIxwgAK
         kA3NWrgRAao+mWdvNxhBTa8HczAGyIWxCpHII/Q3KQaT9ujGGQ8REOm4zaJazrAHS6Jx
         NeGmE4GEOTbGQwfa9OCbgT83EEwcqnKqvfzDJ/wgfviUgdm8teTFOJZQTtur4JiexEPC
         rVhne+W+zsnUvg1YsdQQjJ801tbd2hwd9soM/nk0EFYJLKJCgB8EfrF1XUCf8ricSW2i
         UCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=BBmUYzK8f9SnovKoa+NZytnW9BcbD9Pk0ULgGxv2bI4=;
        b=4jxLBsqlqZPf/Zw7Hxupo/4uD+MMaoYz+WjThvyA5i04Jf0KNreGhticrRJBo4+YLN
         vqZtuKqXDqy+0buCXEeZSXozskVFOsEv1cDfwBUzUoMNWRUNX7W0RzbzGiN9X6/a6tzc
         7rMPeXVTBtw4/INE8CqLt/ITRXOUoLD0hCizUmgbT3GVHDkbGJwbTHNfDGuP/DUAktV5
         lB/jlN42uODnA6gHNnMDJSz9bcFsemK3lg8kMRfc2CSTE//R2tfInRDHwKjqWz2kPEiF
         70yxbuU/NS/ELMgDBs9XUGzmgtjP141J5nHhuyhZvdcLJyfZF8ccV66eWTZecmcUcnRy
         dm5g==
X-Gm-Message-State: AJIora/rea9KSZMJc/CIZSvYigZilMitD9eT+BVlaxkuAvwVWuNDgYdR
        4h1fNHwyraj1fFKnt+l+7j+Mzw==
X-Google-Smtp-Source: AGRyM1tMt0yXd5H9eQZJu1TilhIOEDsCnF3M8D8EuGKgWb7ezGwyekiJ5Fm9htKWuGLz4mewvPcHeA==
X-Received: by 2002:a17:90b:388f:b0:1e8:57db:443 with SMTP id mu15-20020a17090b388f00b001e857db0443mr6846943pjb.52.1655411970316;
        Thu, 16 Jun 2022 13:39:30 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p5-20020a170902eac500b00161f9e72233sm2036781pld.261.2022.06.16.13.39.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 13:39:29 -0700 (PDT)
Message-ID: <ba0ae6b9-c66d-81a3-f324-79efb4455ea7@linaro.org>
Date:   Thu, 16 Jun 2022 13:39:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/3] arm64: dts: ti: adjust whitespace around '='
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
References: <20220526204139.831895-1-krzysztof.kozlowski@linaro.org>
Cc:     soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Olof Johansson <olof@lixom.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220526204139.831895-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/05/2022 13:41, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Output compared with dtx_diff and fdtdump.

Hi Nishanth,

Are you ok with the patches? Any comments?

Best regards,
Krzysztof
