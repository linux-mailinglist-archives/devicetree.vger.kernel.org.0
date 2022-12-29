Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89A39658BB3
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:30:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230229AbiL2Ka5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:30:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230427AbiL2Ka4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:30:56 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82CD795A3
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:30:54 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id cf42so26983669lfb.1
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iAox9jZdEvifzmLQL+c6tUgFpF++A9pWe7sG2ptRj0I=;
        b=vW6WcxQf2oA57xpF12GrMN5nxO7C+GTBWRcwy6OFCaQ1xipbnG2BJ3uqema3wdK+df
         2x/+KN367tqENjlU619vns3XOhuW+19APzRsdN7o6SX2WrIRHAYFAoPKlXMbJH+ME1Gd
         eC2mihlLh2q+JUxZvFvcTE0wIk7Ye7MbIZ3H4Z4h/kL3FMUJJdY0uu9D5DdYs2xB7ebR
         wDsFP6ownoJPAxDyIlGLDQK2qFhcKuHZ7Ydv+hhzGyj+/w4WvEYdiwAtCDn/mayPKvya
         plVvgsNoqiJC/agaS3LXF+CQQdl9yngkvMS9NzbUftg+6EBOP45InBgxPS+p9SnA8qHo
         iiBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iAox9jZdEvifzmLQL+c6tUgFpF++A9pWe7sG2ptRj0I=;
        b=CNh3pVOi4OQbIu1a+/TekKXLoLO96M6g0dxfUFuQi8d7Mgb6PPGJ+6/A17hT8rugZ1
         q2VIsK6isUBlPlTGVNw4d/aA02pbEs6hEq2/g0C6PMEq2+kMKipAFXHx3WGF6oqQaQVj
         AyQ3NAsDYab3jnq44ojIipmgvFtdBVaa8TS7jItFUO/xL40TyfceWhmU9mjPZrm9g6uq
         kwfyT2qxTONOlj0Gwu7jb00PYX7Hph9l+diei6EWaeYUfnc1Daru/jR9BFSn2/mNfDQx
         Wtv282ZIjoCrr6XmqT/jHLuhurdyKCoCPJC8wYArCoAJZvdjxxtcP+LrV5QbkkV73aPn
         Y47A==
X-Gm-Message-State: AFqh2kqXfnk7/jChOUkS9xpjXpg4xlynBI5SaY2j/YfMsZEFcQG2xxLF
        v9W16cJ8Se//sLl8hBZGe59CNA==
X-Google-Smtp-Source: AMrXdXsUMVEakLd8I9Ld+9cvNnWvLibPZXo9wxW/3r/FhHxjIMmijyS3NwrUfhTgMxmGNghGO4E02Q==
X-Received: by 2002:a19:f70b:0:b0:4ca:cb4a:1875 with SMTP id z11-20020a19f70b000000b004cacb4a1875mr7178275lfe.45.1672309852903;
        Thu, 29 Dec 2022 02:30:52 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bu16-20020a056512169000b004b5ab5e904esm3027993lfb.306.2022.12.29.02.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 02:30:52 -0800 (PST)
Message-ID: <a606f91c-1a68-09c7-2081-03484fd0d513@linaro.org>
Date:   Thu, 29 Dec 2022 11:30:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
        vkoul@kernel.org, kishon@kernel.org
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/12/2022 10:44, Johan Jonker wrote:
> Convert rockchip-dp-phy.txt to yaml.
> 
> Changed:
>   rename file name
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

