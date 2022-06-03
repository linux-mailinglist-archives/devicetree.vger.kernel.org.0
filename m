Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CDBF53C629
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 09:28:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242239AbiFCH16 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 03:27:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242340AbiFCH13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 03:27:29 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E481E1182F
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 00:27:27 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id o10so9041833edi.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 00:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YvC2pzCsJ8KsVmBfjWk0WUMyTSFdoOlU9O0WMAs/HJU=;
        b=i2ADz8QvLp6piJiFn+DL+ClQ7ykc/e2Cj5VgIo/0DP+XVC6XSwdpSepp6BN0LbK0W9
         HtcMiV2MbTXqN9iqTh6lQS4fFDQd8DbQ/mRRR2YpDI5Sc9fzb7SilbAg6xj4b4CJx3hZ
         MVuCdTZ+b7PuYBdYV3OVMyY1a2INerTsFlFqOKSTOfpRl6/OWaiwZ/FiWbyYTqG0//uC
         qmKe+zAQT1pVrZoOo44jj9NISYLtwS0RKPVJdENQ92CClkL4sg5JWd8gUdHFyT1rzxjP
         FqVU6CJnhcQbfbd1PwRW3NWZgl76TTJo40XtKxZRE7D3/Eni7Z2mznHQgRDUT3+Rz0XB
         99JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YvC2pzCsJ8KsVmBfjWk0WUMyTSFdoOlU9O0WMAs/HJU=;
        b=LK1Xld9LkMFbFpHg/wRkvPYkJDRPAtTleNTSsFd3Dx3TkDzC1bYB55/UHKXdMKHyzp
         81EsWLBa/uCsF4pRjXcS/jCgyET3Xj6bkHjrtgQKirfR+E8bKBURYjSOp7DH3Z+4fJTS
         7PN1K/mxlgRcRomm+qTopZEi7p1jJWNP4YRn5a2X3rcqkSCfS2feQdcsBAEchMV9oA2z
         EDuCbApV/HEAOrXlTvSWQQp3237qwTV3+NlmKqm/RG3gtLrZZ3E6B5di/r3HCL7deDJT
         xQC0hbskFugjZ1i4npKaatAMDp6AErHyTiKngTBAV32OSqtB7sbtVITUheTPqYruum0u
         3a9A==
X-Gm-Message-State: AOAM530Onu23Am5j1Qxe6SfX0RLUva1daq0P0R97mtuy0BuAOw6JUJzh
        SG9Utb2tf0oAdF9yxXdxAfz+7ZIjpyLGaQ==
X-Google-Smtp-Source: ABdhPJy8sWQ06gygmOBtyt+qj1hFPXoWn/XzpwEIUXQVHY39foMV0/4c7S9eA/2VkLGnqk5lWmNt8A==
X-Received: by 2002:a05:6402:51c7:b0:42d:f4ea:c09 with SMTP id r7-20020a05640251c700b0042df4ea0c09mr9105370edd.319.1654241246527;
        Fri, 03 Jun 2022 00:27:26 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id f24-20020a05640214d800b0042617ba63basm3529431edx.68.2022.06.03.00.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 00:27:26 -0700 (PDT)
Message-ID: <a18b8d9b-0878-4861-9916-920805ebfa7c@linaro.org>
Date:   Fri, 3 Jun 2022 09:27:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/5] ARM: dts: socfpga: Change Mercury+ AA1 dts to dtsi
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dinguyen@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, amstan@chromium.org,
        upstream@semihalf.com
References: <20220603065816.87952-1-pan@semihalf.com>
 <20220603065816.87952-2-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603065816.87952-2-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/06/2022 08:58, Paweł Anikiel wrote:
> The Mercury+ AA1 is not a standalone board, rather it's a module
> with an Arria 10 SoC. Remove status = "okay" and i2c aliases, as they
> are routed to the base board and should be enabled from there.
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>
> ---
>  arch/arm/boot/dts/Makefile                    |  1 -
>  ...1.dts => socfpga_arria10_mercury_aa1.dtsi} | 28 -------------------
>  2 files changed, 29 deletions(-)
>  rename arch/arm/boot/dts/{socfpga_arria10_mercury_aa1.dts => socfpga_arria10_mercury_aa1.dtsi} (84%)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Best regards,
Krzysztof
