Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3504A6D0756
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 15:53:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231277AbjC3NxS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 09:53:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231708AbjC3NxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 09:53:16 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2FB346B3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:53:11 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bi9so24587768lfb.12
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 06:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680184390;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FG3LYyeKyzOlPVZDphJojew4K4QdUYrf4yISTJWKKVQ=;
        b=kEIVUbxLnj1qdLvhXQ1MEJ/mnPJYXkGEboRU+ox1QW9K9B9uz6kvDo68j3yAfQuq4P
         O6APGuz3fXR8csxAW57NUXRYv9p7I7Ymvy5g2y0Y03GoUjFJ8BkAO0TfL909XVhHTy+7
         uetj/WFC+mVZYvk1yczP0lR5+wtxv8YYZvqlKxP4JIdphbredkn9Bo2RHiYOyH2Ld+jk
         eJqChBAkp00O0Tt5EdL0v55EkFYENAMPEoox0M1vvHc8cNn9wtucgYzXGq7seJQMDVwV
         IvK0OLYGqpISp/sDahxvtSNUc+s+ppIpqzkdj0Pd/RfY0dcXKoOAqaAUWcWRjVArT5Ov
         3W5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680184390;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FG3LYyeKyzOlPVZDphJojew4K4QdUYrf4yISTJWKKVQ=;
        b=ooiKZ/M1wW9JzRVAfYjGrX/nqYVR604kL9pwQ7Qb9ji3ue4dIqPaPJ07D20TQB+iH6
         RQTJIJo9w+xZhtlUJsi8GwXD9peN1Rvdo5JZr2J7HUq9DDD3Nvsml5INefNsJbEFVelF
         SFafqPQHsW2FJk9hunRDhyl8IL2QCtec+2PXBNOozWlOByVeSm7zT5HWfakbp+KiYoYP
         FBvYCK1xy3+7JWXLhJH7riOhO0sg2Am1s1DIdcdBcD1Rqqccv+CgMlWUyjWZRZm6nD5F
         S+Y+9oKUAe/oSJnn3ZGPrWBxOqtpCuJYCDHr6Kna/bWfcpkEgvxMiBgd/6e2fTrpSpcS
         gaQA==
X-Gm-Message-State: AAQBX9ccovXwtYFltqt4Gg0dm5Lg//NzW0l0uMyF9mqrBcDoWehDFiKr
        gcOuaHGRKsqcwHFYZrwcpndAKA==
X-Google-Smtp-Source: AKy350bYeOM2mPCk0/HBGXVg/NVXb5IPUO2Bs/RkayxfXkyDj1RLxjlGuBjFokZ8uPZuBo5n+Kvmtw==
X-Received: by 2002:ac2:5dee:0:b0:4ea:f74f:c077 with SMTP id z14-20020ac25dee000000b004eaf74fc077mr7488939lfq.12.1680184389889;
        Thu, 30 Mar 2023 06:53:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x20-20020a05651c105400b0029ee7bc0114sm4042047ljm.64.2023.03.30.06.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 06:53:09 -0700 (PDT)
Message-ID: <c430a7ca-0778-8262-4a45-11134cf5ad76@linaro.org>
Date:   Thu, 30 Mar 2023 15:53:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: clock: versal: Correct example dts
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        devicetree@vger.kernel.org
Cc:     git@amd.com, linux-clk@vger.kernel.org, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        michal.simek@xilinx.com
References: <20230330084846.14516-1-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330084846.14516-1-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 10:48, Shubhrajyoti Datta wrote:
> From: Jay Buddhabhatti <jay.buddhabhatti@xilinx.com>
> 
> Correct firmware node name and compatible string in versal clock
> dt-bindings.

That was a valid compatible, so you need you describe why you are doing
it. IOW, what was wrong and required correction. Because correcting a
correct compatible is really not obvious.

> 
> Signed-off-by: Jay Buddhabhatti <jay.buddhabhatti@xilinx.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
> 
>  Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> index 229af98b1d30..4bbf96484b56 100644
> --- a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> +++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> @@ -50,8 +50,8 @@ additionalProperties: false
>  examples:
>    - |
>      firmware {
> -      zynqmp_firmware: zynqmp-firmware {
> -        compatible = "xlnx,zynqmp-firmware";
> +      versal_firmware: versal-firmware {

No. If you touch it, at least make it really correct:

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation



Best regards,
Krzysztof

