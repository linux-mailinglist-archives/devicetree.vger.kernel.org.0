Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E5F2533D23
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 15:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239987AbiEYNCe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 09:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233894AbiEYNCd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 09:02:33 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D2DFE75
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 06:02:32 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 67-20020a1c1946000000b00397382b44f4so3310100wmz.2
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 06:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ShM29w/vVaGDNZH6SQ+elqm5Fkj2T/cmtp459+NdGvY=;
        b=DC523R3Kj5+sEGuWNh0elaMU5MaxCnPKBd/OHbWaN64EkhSuxDVvbE27zNOMV9uqEF
         Ay5hZDcXuDe6mfQRenZFBXOXW0FZNQc+CXfNxnO7xAdIZ3jBzGd62GI5mhUTo4l1d4CT
         REhZ8VDI2Cb1yggAbpyLTkedMuNypupWyl30tfmgsGvLF6DH9QXcYl+5wsem5rjDqUvf
         I7QWyKBnPoMOHwpsxbfxUSf/rTVB4LtkAUEMTvvgwLLRCy/xxwIE/D8BZifvtLZ4MpqK
         Fg7B2b2xoJ2plau+y/IDB4lputdpmI7TwUaBr1Lh05ljTT5zSVr+SVcClR9qcSHvZGrO
         hE0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ShM29w/vVaGDNZH6SQ+elqm5Fkj2T/cmtp459+NdGvY=;
        b=On1osS/aWYOZKv70tfXKtNLFRKnnICiUA8K4a3zH9xlrvagwVAli+kAKeRq4kv4k5A
         KP60+Q0mvNWw63sIzcPfvsvuMPDAFnOe63xr67Tj8oRrTrIyFs+V7Ji9bCeIUld7SWwM
         vozTaPe1ROXBdWTy3D7Zz9imEktDsr2kvza0V1TZPAFaGVCs5KOiWMuLUkM6XcTtgGDn
         bQYEXazkYCj4wyUxp+s9TYpzoTHaLxfZHiEQ9bCX8Nc9v3KK+jUBtnujRnPjv6SG0TVb
         HQGMrg24dB13zWZVty7LS897NhGi53V7DUmXwyC6go3RVjnSjR0EMoj9h3DeBAexOUxz
         jpDA==
X-Gm-Message-State: AOAM533ntw+2q4kdttrUWm9/oy2ASGhDJK8XGlvo0a7yJNeRBWBFIIxH
        FXdQfPdrRz++32z0UAJ8k9OfFA==
X-Google-Smtp-Source: ABdhPJyCU/WlGbiJ23Bg2bLlydBnQBDzhQyihPGzenV0sdMKEc3WN0iFkXg2CK+J1+ZQtgJOfb4NQw==
X-Received: by 2002:a05:600c:1f0e:b0:397:707f:5a60 with SMTP id bd14-20020a05600c1f0e00b00397707f5a60mr1904691wmb.3.1653483750750;
        Wed, 25 May 2022 06:02:30 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id l4-20020a05600c1d0400b0039751bb8c62sm1869799wms.24.2022.05.25.06.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 06:02:30 -0700 (PDT)
Message-ID: <78da8864-eb65-8dd5-cde5-0c0fc63b9ebf@linaro.org>
Date:   Wed, 25 May 2022 14:02:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v3 0/2] Fix apq8016 compat string
Content-Language: en-US
To:     srinivas.kandagatla@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220429220349.1142759-1-bryan.odonoghue@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20220429220349.1142759-1-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/04/2022 23:03, Bryan O'Donoghue wrote:
> V3:
> - Marks qcom,lpass-cpu-apq8016 as deprecated instead of removing - Bjorn
> 
> V2:
> - Adds Reviewed-by: - Srini
> - Adds Fixes - Srini
> 
> V1:
> Reusing the apq8016 on msm8939 I found running checkpatch that the compat
> string for the LPASS was throwing a warning.
> 
> This is easily fixed by alinging the YAML, DTS and driver to the documented
> compat string
> 
> -			compatible = "qcom,lpass-cpu-apq8016";
> +			compatible = "qcom,apq8016-lpass-cpu";
> 
> 
> Bryan O'Donoghue (2):
>    ASoC: qcom: lpass: Fix apq8016 compat string to match yaml
>    arm64: dts: qcom: Fix apq8016 compat string to match yaml
> 
>   arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
>   sound/soc/qcom/lpass-apq8016.c        | 1 +
>   sound/soc/qcom/lpass-cpu.c            | 5 +++++
>   3 files changed, 7 insertions(+), 1 deletion(-)
> 
ping
