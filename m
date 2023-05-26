Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9105C7129D0
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 17:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237396AbjEZPm4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 11:42:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237512AbjEZPmz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 11:42:55 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4280FB
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:42:53 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-30add74cc30so302213f8f.3
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20221208.gappssmtp.com; s=20221208; t=1685115772; x=1687707772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CQw+zfZTmj3Rrv2z68fRpRd9uvWpwcM+LxwxnhqEPSc=;
        b=O8tXlthhBgjEbO1XpEqH7NlZTs+2M3Y+z9Bi4BJz+glfTwjV57YuE3j/vS/GCCr8b0
         bAziTwsMOOggSsOc90DoDDi2QrbytKM+faq7nGVYvPD/AaelwXY9jHCiKi2XJ6PXiC/d
         QnlMWyiZecupq7QnD8y4liWV9HKxePbVkKSopDBwY85zbg9Lweju7J/hWkiz/7AenKOw
         X/45v15UzzQWChHdc5WI1b6ZEmxMNFDTybImmGlvIkNNuip2hXMS5xsCMjWn8FYVyiFD
         z6guOz701BjiQppy3mkeL5xzOuMOK8o3/vqGVIdNBc43krCl8rFl92ElBaNiiFoWnueU
         mtYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685115772; x=1687707772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CQw+zfZTmj3Rrv2z68fRpRd9uvWpwcM+LxwxnhqEPSc=;
        b=kCpQMq4SvJTOSn6xAM8X5xQtt8YLGlieN+xhWY8WgJ0cQq0sa9x4qIXeIyOigAnxQl
         Ms94hBtWCRlTX0KXM/xFWw88DhZzIay7FKos+F1K2g1D54MHOS8Ip8p2JYsly58rhB55
         LZoWiBGv1+DaCxKV11/wjLDrCSRzBC+AfrJVLPZ0XqtfI9mO4e6dMq9jgawmL6AiX06D
         ZdJmPJZhiW8SP1Jt7RsIyY2D+0DqY+8rmz+nNcZz52YokGY6+6ShXrKbyAg023/3XpiW
         1kaxRCs0K52WTo9cyCIeT4vjW5LDcUGKPnuAhhNQC2qwWk2bORFQzJGhWYQTjsVgYTCO
         t4ZA==
X-Gm-Message-State: AC+VfDzJq1WZ5oYm6bTFSKgzsOZ2tilOIrnk6TAidaVJt9LWKHwsqEBN
        gwWs7u4vy7j/QY3ncAjpJ2cI5g==
X-Google-Smtp-Source: ACHHUZ438yXRK5wT8tUO+6PCb06t7sypVhoVCPPpwgAqaqggPoqzquUPLXg0ZIVMzMpbthYUwg1ZVw==
X-Received: by 2002:adf:e792:0:b0:309:51ec:9ce0 with SMTP id n18-20020adfe792000000b0030951ec9ce0mr1942254wrm.69.1685115772372;
        Fri, 26 May 2023 08:42:52 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id u3-20020adfdb83000000b0030aded83385sm533922wri.27.2023.05.26.08.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 08:42:51 -0700 (PDT)
Message-ID: <cf03b068-2d2d-45e4-f724-83304992550e@nexus-software.ie>
Date:   Fri, 26 May 2023 16:42:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/8] arm64: dts: qcom: msm8916: Fix regulator constraints
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230510-msm8916-regulators-v1-0-54d4960a05fc@gerhold.net>
 <20230510-msm8916-regulators-v1-3-54d4960a05fc@gerhold.net>
From:   Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20230510-msm8916-regulators-v1-3-54d4960a05fc@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 19:48, Stephan Gerhold wrote:
> The regulator constraints for most MSM8916 devices (except DB410c) were
> originally taken from Qualcomm's msm-3.10 vendor device tree (for lack
> of better documentation). Unfortunately it turns out that Qualcomm's
> voltages are slightly off as well and do not match the voltage
> constraints applied by the RPM firmware.
> 
> This means that we sometimes request a specific voltage but the RPM
> firmware actually applies a much lower or higher voltage. This is
> particularly critical for pm8916_l11 which is used as SD card VMMC
> regulator: The SD card can choose a voltage from the current range of
> 1.8 - 2.95V. If it chooses to run at 1.8V we pretend that this is fine
> but the RPM firmware will still silently end up configuring 2.95V.
> This can be easily reproduced with a multimeter or by checking the
> SPMI hardware registers of the regulator.
> 
> Fix this by making the voltages match the actual "specified range" in
> the PM8916 Device Specification which is enforced by the RPM firmware.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

