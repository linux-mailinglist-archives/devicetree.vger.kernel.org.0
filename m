Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD8B5608E98
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 18:40:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbiJVQkF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 12:40:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbiJVQkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 12:40:04 -0400
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5C2B3BC62
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:40:02 -0700 (PDT)
Received: by mail-oo1-xc32.google.com with SMTP id x6-20020a4ac586000000b0047f8cc6dbe4so867642oop.3
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=545rw8ScXkRjDM5w17g+rHUKHirulTTV6OR0mlcZkMs=;
        b=p+u1HMt1MNKQryUWQThPkAqfoWTsH6KmsVL86mKRXhiNbd4KYLYPNB0hITHRvsRwHd
         IzyR+zs/k4J1jE3/73NH7BNwkqjMeqBkbUwUWNeX3r0x9AhIYFWRT18rQ8egR+JYtQlm
         CYZtZNpi2/fY0NRcNBaXILQT++KyzeZOC1hSAZJbEOILAN05eCqvX8VPU7VJwqow+RNF
         n6C7bRH8NrUgu18S0Co7xxLWzfbLaDKYbfIZlIxs/fxHa+SBYh2Alj0L3CE0TjZ5IQ1a
         c+7CuO8asdutbJ/33v8k6WhBNNYbe2ZEF42iqdFl7tUVH2f/Nv8NhWT0RSgBsMAdjX2c
         Fa3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=545rw8ScXkRjDM5w17g+rHUKHirulTTV6OR0mlcZkMs=;
        b=58kVFmAhZUPglQIXpbqNVjY9EfxOBurfGdxfJS7zCRj/GsV+kMcWaomJTDxjMF54Nz
         dI+3xMUeigOHWmQRUWs4sh/zcXi+wB7I6ure7tbr1lav3aI56jfwLg/VOeORx2aUfwj4
         q0oz71yToVA2EQyFDYLp+vU6VpcvDy06oKslwIaVv4b0sK9GS30xBEFaWynyOX+NtXjc
         2clDM03H2lgwMs1cYsnSNNCT6b0Iei85QU978YlYU+6VvkNs+CQyy8qcKn/9/5oFCnGU
         G12qLeWxBoGGNU5749Py0LqNNZK73ko/94DEFIxAo9kHS4v4tmOhumqKi+N0UL3PPEXg
         +AWQ==
X-Gm-Message-State: ACrzQf02h3wHVvq3rdwSs8CfzF0GYz+01CJrO81CY1nvKTNVwK8sP6Ht
        +utYz0eo3E50orfnq8X3lJgLptTHk5OS7g==
X-Google-Smtp-Source: AMsMyM6eeoBGEQ7JBoltsek43vEM0SoXcCAlJEyNNtk9IE/VktMJh0yypxZafDKXkKPpq5EWdnbosQ==
X-Received: by 2002:a05:6820:1608:b0:480:fa39:568b with SMTP id bb8-20020a056820160800b00480fa39568bmr5753643oob.43.1666456802183;
        Sat, 22 Oct 2022 09:40:02 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id d6-20020aca3606000000b0034d14c6ce3dsm2306957oia.16.2022.10.22.09.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:40:00 -0700 (PDT)
Message-ID: <ae460461-5c20-9180-456c-8c01a4b1a7f1@linaro.org>
Date:   Sat, 22 Oct 2022 12:39:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 2/3] ASoC: dt-bindings: realtek,rt5682s: Add AVDD and
 MICVDD supplies
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Mark Brown <broonie@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Derek Fang <derek.fang@realtek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221021190908.1502026-1-nfraprado@collabora.com>
 <20221021190908.1502026-3-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021190908.1502026-3-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2022 15:09, Nícolas F. R. A. Prado wrote:
> The rt5682s codec can have two supplies: AVDD and MICVDD. Add properties
> for them.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> ---
> 
>  Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> index ea53a55015c4..ca1037e76f96 100644
> --- a/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> +++ b/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> @@ -90,6 +90,10 @@ properties:
>    "#sound-dai-cells":
>      const: 0
>  
> +  AVDD-supply: true
> +
> +  MICVDD-supply: true
> +

How about keeping some order in the list of properties?


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

