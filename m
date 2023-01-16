Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E679366B906
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 09:25:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231972AbjAPIZX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 03:25:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232083AbjAPIZV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 03:25:21 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD685869F
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 00:25:20 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id vw16so3093258ejc.12
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 00:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OfP1JHVNCS0456IKpFjP3Pk6rA3+kqXNfrlqK3NTP2c=;
        b=EAFnmAHxopufnDRyld6mMSGnVXq7tLGQjPUkWv8dQkTgZ1iCU2HprHG9Lw4V5Oyuwf
         mjAazPXrNSK3LHuU46ieemv+MUD150SQ+zvR7wkc1owkKzxD6U41SaNNEPtqOSj/INrD
         ZMxKCfSSp+KTvKTNET+hJ8InvsOeUcBRFXubFoRmP/PfiFLwtxT5+eR84jy0q3hpwB40
         vi80rDpEVj1Cj0BbXeDBYKdMCh1fmBFW9H06wLnSHgC0WrL4ODBRvPc/VThnmCIEnZWN
         uOPxU9asfyQzG6iVrOD7MmtADw/qRh0qrPbFwemSW9vfQwUkGE0JmktwkfrZ+hAnLV3N
         i/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OfP1JHVNCS0456IKpFjP3Pk6rA3+kqXNfrlqK3NTP2c=;
        b=pjx4E4BwzNT0qtBT0wjyOYFGJilezG/dIjYF3U3KlGBDG7LeFib3a0A9bsxtqNicks
         nIObN10wpEsjRZETwkSlFFNen11g7uoHQHSFHAkbrRphn84eRsVk6tFgsdEEdHmcG//A
         SDmDVkAXfPR3ouq3W0/KY51MqGI0o3M1LioqefGe1qOoLPuuRTtUZeK5l4B6rvR2AMe3
         Bf3cP+PgTAL1Cv5GQfn+yxAVy68DIF9V4+b9Wew7mDxUmRZqLxe++W8MSRUemSMEabW9
         6HTO/feAtlHPrQL4SkpOLrE8meBJMBrCR3Zi/Lta0kafgsDcOiqEWinnvS7VJuehZpgK
         DLGA==
X-Gm-Message-State: AFqh2krbdGrY2FngqN8628mNFULtN1a2cjpJm+qj1HUNZ9obCZNilJ68
        42YqCyGJqgJQ1Lbentm35G+vaA==
X-Google-Smtp-Source: AMrXdXsB9ZY2cNrkIqpaNiwD/X2L9RgJZq0EdxaDNRXBHa5Ps/DuZO7VgdxqCnmXBaNG0BOErYxjQA==
X-Received: by 2002:a17:907:6d93:b0:86f:356e:ba43 with SMTP id sb19-20020a1709076d9300b0086f356eba43mr6447262ejc.18.1673857519341;
        Mon, 16 Jan 2023 00:25:19 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d7-20020a50fb07000000b0049cbd334b13sm3318412edq.29.2023.01.16.00.25.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 00:25:18 -0800 (PST)
Message-ID: <ec92be6e-8e3f-cdbb-cd6b-51224ea47e76@linaro.org>
Date:   Mon, 16 Jan 2023 09:25:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/4] ASoC: dt-bindings: add entry for TAS5720A-Q1 driver
Content-Language: en-US
To:     Alexandru Ardelean <alex@shruggie.ro>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        steffen.aschbacher@stihl.de
References: <20230115193347.24190-1-alex@shruggie.ro>
 <20230115193347.24190-4-alex@shruggie.ro>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230115193347.24190-4-alex@shruggie.ro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/01/2023 20:33, Alexandru Ardelean wrote:
> From: Steffen Aschbacher <steffen.aschbacher@stihl.de>
> 
> Add entry for the TAS5720A-Q1 driver in the dt-bindings doc.
> 
> Signed-off-by: Steffen Aschbacher <steffen.aschbacher@stihl.de>
> Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

