Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 503265A777A
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 09:29:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbiHaH3P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 03:29:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbiHaH3O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 03:29:14 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80B70BC81C
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 00:29:12 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id br21so12953776lfb.0
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 00:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=2TsGK34bA5KqKqr5+etpP4SBSBDx4W1Iyg9gkSGp89Y=;
        b=MB1Wz1/I+H8pAA/lyOwnr/Pwb9fss6od/9GDLkGMHr7ullFlxVlxDjWwvLXij+/U+h
         /zbMQVWHxlT7YoVLgSPKXCCMCfHv23FIDQpnVk/eacv+GKfYEDky78dxqsRFCVowxAYQ
         YFmg0W/zBxbE7JnGoO8714ypYOH1VdsUs3tu5um02iCLee5HBXBhDHb/vxilQX0Dnsxc
         pPxoV/jFUKlbMm+Pf4ODUnJ7eHs0YBwBrFdkeIxp6gONCZRgwOfkCx3WO6tsxiN99wqe
         NJqBq53gL395lrAHVuP4qw4LdOzwBS1W+IvAAqmGVn7Q7Ek347nixtbP1BdrhV2m1crO
         ptmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=2TsGK34bA5KqKqr5+etpP4SBSBDx4W1Iyg9gkSGp89Y=;
        b=oIKj0xxMxlasFE5zWRHoMe2AqTUO9ioMezM1fUgh0kwbqhJ3HBc0jyPGxT5ecoRrAk
         BPVcBPVa2Zd8sWxm97RyVQIbe6s1g/EVQyjnlAGvrYONWVxH3yTmuy4IDa1FeUawXUkD
         D3VzNJZCl1f/r9WA+FYv+7Q9U4mBZiMQQvrMkpcB9171E4mkHX89YXEXyaQI/Gh9y1T0
         8Ia+R4c5ra61sSVbT84zwuZ61EF4kpVoqRqsD79OM0GKhkn7lyeB4ctDADS8CTWwWHd9
         npPQy/J0XO06Zv8u2Z43xlii8BbBIoJ/drLMshaHrAOdJjjQoX6WyHMwypBnASrO9i4g
         xEQw==
X-Gm-Message-State: ACgBeo0EN3u7y0/W/+Z98DnMnabHd+wyczmnTh5Xc0AQp1ZXdHU/O4s4
        KXIcdD2onmSkudkol+O7QS3++w==
X-Google-Smtp-Source: AA6agR7H1+Rn7DKaC75RdA+ThF5pC+j1tHFgTLf6uGiYVF/nQ+yoG98+ucJbyfMMUxCX+IHoWcsjYg==
X-Received: by 2002:a05:6512:230c:b0:494:8ddb:606 with SMTP id o12-20020a056512230c00b004948ddb0606mr480203lfu.44.1661930950905;
        Wed, 31 Aug 2022 00:29:10 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id f16-20020a05651c161000b00261b175f9c4sm133548ljq.37.2022.08.31.00.29.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 00:29:10 -0700 (PDT)
Message-ID: <1ddf261e-55fb-e30c-93b0-efb9bc0987b3@linaro.org>
Date:   Wed, 31 Aug 2022 10:29:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 2/2] nvmem: lan9662-otp: add support.
Content-Language: en-US
To:     Horatiu Vultur <horatiu.vultur@microchip.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, UNGLinuxDriver@microchip.com
References: <20220831064238.102267-1-horatiu.vultur@microchip.com>
 <20220831064238.102267-3-horatiu.vultur@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831064238.102267-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 09:42, Horatiu Vultur wrote:

> +static const struct of_device_id lan9662_otp_match[] = {
> +	{ .compatible = "microchip,lan9662-otp", },
> +	{ .compatible = "microchip,lan9668-otp", },

This is still wrong, does not match your bindings at all and still
duplicates entries without driver data. One entry - 9662.

Best regards,
Krzysztof
