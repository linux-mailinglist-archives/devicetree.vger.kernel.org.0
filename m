Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 461BA6D4606
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 15:43:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231357AbjDCNnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 09:43:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbjDCNnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 09:43:32 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2049919A8
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 06:43:31 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id cn12so117561575edb.4
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 06:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680529409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rbiGTBgSL+cadoCFySFdgFBXw6dSu7G6/MJY0IpDWig=;
        b=oaHIPb4tJv8houjIb0HmIYMCW3mgUToFIp1l0ujEdnku1QJ3g/b30vGa1oZSsWlZRw
         etnzQjj4PzJ8kfGyGA98IqtdwsyZWwt9GQvMKPhWwb21J6KOR9av5zX71tC06NW2CVeL
         YEGqoAgUO/Oz7oKNZfEOuVTnDADDL+AEfrrCn05J7TXtkUyiaRJhb1UgSmk1J/O6id11
         qZj7l+Y1xOBJD/55M6ZuR/sjulmuemaa1xeFHDDyjbgYfbBHlR6xETHVrW/FkrYRUgEO
         fvx/VFySeriwmc+2GvJP6lUfiQwmyhTr5PRA0J7vNBiCTKHh9y7Tj8NSmfZzwb2o7Y3k
         RsJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680529409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rbiGTBgSL+cadoCFySFdgFBXw6dSu7G6/MJY0IpDWig=;
        b=N4NzzkOrW2Ct/MTuo8V989DaIZ68Mj0casRCMGnwKkdR+P2xKaT7WeyUwt9xX1EfyR
         f8IKgSsILapEm+xKmsqlIpyzLTuGmEtCv923wTT1Bt1jdwUt2FDfLDd0INJSCuE1ZzSC
         zBteRG7kYd7sDm/UZdoYeHmhIY2mKO4lfXCR5p6gpOorzpzRj4oxjr3+cjYbz/FIhws5
         NBOtt/fhH98iEZXwjFJ5meSM6jGIb4UZYhsqsUhlwfXnvmp07iND59swyHEIm4LdgEWQ
         SHKaBRtYwPG13iVo9BYXFyF9V75EpgSI6rklks9FbArOjeNP5QA1Za1C8aXg7kF7QxU+
         9lZg==
X-Gm-Message-State: AAQBX9eMUu+X0dvleByFBYKL70zouBhOgfyACJLY6yjDdVLa7jFCHihn
        wFHjwSTcDQkzZf6BUB2Y7RgRLQ==
X-Google-Smtp-Source: AKy350b11IAAJTTgtO8p5MHzwoAPE850keTE162TGsc9O4prf+1YVAxVwIOgFVuOz5EqnrgBaWZScQ==
X-Received: by 2002:a17:907:a50d:b0:878:481c:c49b with SMTP id vr13-20020a170907a50d00b00878481cc49bmr41251066ejc.1.1680529409644;
        Mon, 03 Apr 2023 06:43:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id cd9-20020a170906b34900b009353066595csm4579164ejb.136.2023.04.03.06.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 06:43:29 -0700 (PDT)
Message-ID: <2ed6078f-7982-a5aa-863b-e61f8e9f846a@linaro.org>
Date:   Mon, 3 Apr 2023 15:43:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge
 to yaml
To:     Fabio Estevam <festevam@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org,
        marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, jagan@amarulasolutions.com,
        inki.dae@samsung.com
References: <20230403124458.198631-1-festevam@gmail.com>
 <8f7f925f-638d-737c-bf47-2a66ce0eec59@linaro.org>
 <074183d480cf18948aacd98be60308f8@denx.de>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <074183d480cf18948aacd98be60308f8@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/04/2023 15:25, Fabio Estevam wrote:
> Hi Krzysztof,
> 
> On 03/04/2023 09:49, Krzysztof Kozlowski wrote:
> 
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>>> Signed-off-by: Fabio Estevam <festevam@denx.de>
>>> ---
>>> Changes since v1:
>>> - Added samsung,mipi-dsim.yaml entry to MAINTAINERS file (Jagan)
>>> - Added Marek Szyprowski entry to the samsung,mipi-dsim.yaml 
>>> maintainers section (Jagan)
>>> - Mention that i.MX8M Plus is also supported (Marek)
>>> - Remove endpoint@0 description as it only has one endpoint (Marek)
>>
>> Where is the changelog from original submission? How your v1 differs
>> form it? Or did you just ignore all the feedback?
> 
> I'm sorry, but it was not my intention to ignore any feedback.
> 
> Which feedback are you referring to specifically?
> 
> Some more context: last week I sent a patch adding a new property
> for exynos_dsim.txt and you asked me to convert it to yaml first:
> 
> https://lore.kernel.org/all/ff66c8b9-c7f7-1eb2-c730-4812b7ff6824@linaro.org/#t
> 
> Jagan pointed out an earlier submission he did in 2021:
> 
> https://lore.kernel.org/all/20210704090230.26489-9-jagan@amarulasolutions.com/
> 
> That was my starting point.

I think I saw v11 but maybe not. I cannot find it now. But anyway if
this was the newest submission, it already got feedback which we do not
need to repeat...

Best regards,
Krzysztof

