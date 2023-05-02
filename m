Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E7866F4B1D
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 22:15:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbjEBUPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 16:15:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229866AbjEBUPi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 16:15:38 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35A142D69
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 13:15:11 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-50bc3088b7aso6017637a12.3
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 13:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683058510; x=1685650510;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/KLvyC81W8m9NJpaowQEHEMWM8a470rAz1HMvMhlnSI=;
        b=uBWuYMNnph/lp62Lb4iuFrIV3TjQSvMkekAb5DkQg7UYerz2I4eiXC6ZuQFJZaGnz0
         4pDCAw6YJe8VSOcOXxQ7Vrk9EsveN5xEX9m1yokB2kxb8SsbRkzv48zrWW8gZFElNI2V
         iMKszlwEq//6EkBRDpQRNnJOS8/dMPzr3OxqC/1ztVF9t3X4G+qGzQKongKdr07KJK+J
         SYcHPvL23yh6QlerdsjauAA5o5+qavfMOcSk+9Kccfn0NNZPJxJZlxMgVPgDOAJxV5TW
         sVTFwNdWdHG5k4rwOUYdIFzTxEIvt+Tc5I0stO8GJBJ+CTKSH2QOirkawMDuzYswhR2d
         HGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683058510; x=1685650510;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/KLvyC81W8m9NJpaowQEHEMWM8a470rAz1HMvMhlnSI=;
        b=NCoB2AdCexc3Der4CBkROpmOiqZzk9f+JeO/leKigsVsllRl20qKLmguvWXBmN9ibk
         4LXJk1oPbg0Shh7ZVqfZLg7RDLNvSV7euCOUu2EiySm2ZgDczjfbhLKuXOcfcWtAyser
         AT3semZjeWSFG8GFOrYcXEJI1SXrkBuUzeZZ57xdaloRNdWHGzIJy7h1X7mZoz/s3n+U
         4WUnvTcTUDweGcDAcDF6QOde7Wtu+QToIOWrPNnZqX+O60dHhjqMO1z6JKAkDX42pZ1W
         3HiVqqQbmTGTna/yqSeIh5ins6/SmRrjHm22pypu3RehtDtUC4xs/minXDJUrTkIMkIH
         IaSw==
X-Gm-Message-State: AC+VfDzmo2ok8SNcJDx5Uz3J9k7ihXUdM5LTFfYCKp1c0gT92QGtFU8j
        Iein4dfO6Tppc0XqKEY7UgMxEg==
X-Google-Smtp-Source: ACHHUZ75XYjMT2liIEfOfGXw9D16p0bgc/kYeublTs7bzpZ2DIZSyNFYoC/zTIAyuVbAzneeJbWWOQ==
X-Received: by 2002:a17:907:98e:b0:93d:ae74:fa9e with SMTP id bf14-20020a170907098e00b0093dae74fa9emr1257619ejc.7.1683058509818;
        Tue, 02 May 2023 13:15:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:37be:eda5:e303:19e0? ([2a02:810d:15c0:828:37be:eda5:e303:19e0])
        by smtp.gmail.com with ESMTPSA id gj19-20020a170906e11300b0095ec8dfc439sm9643360ejb.166.2023.05.02.13.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 13:15:09 -0700 (PDT)
Message-ID: <7579c353-13a6-adb6-fbd8-8deaeeaaef34@linaro.org>
Date:   Tue, 2 May 2023 22:15:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] dt-bindings: ata: ahci-ceva: Cover all 4 iommus entries
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc:     Damien Le Moal <dlemoal@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Piyush Mehta <piyush.mehta@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-ide@vger.kernel.org
References: <76a2bbd9fb944dbefdb8d429d0a85937d56a3d6f.1683035327.git.michal.simek@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <76a2bbd9fb944dbefdb8d429d0a85937d56a3d6f.1683035327.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2023 15:48, Michal Simek wrote:
> Current only one entry is enabled but IP itself is using 4 different IDs
> which are already listed in zynqmp.dtsi.
> 
> sata: ahci@fd0c0000 {
> 	compatible = "ceva,ahci-1v84";
> 	...
> 	iommus = <&smmu 0x4c0>, <&smmu 0x4c1>,
> 		 <&smmu 0x4c2>, <&smmu 0x4c3>;
> };
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

