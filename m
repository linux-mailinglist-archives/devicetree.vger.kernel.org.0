Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 418976877DA
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 09:50:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232182AbjBBIuB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 03:50:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229881AbjBBIt5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 03:49:57 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1BBD7961E
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 00:49:45 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id y1so1004959wru.2
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 00:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XO/313PKa/quHlf1vA620KOMVC2M76VWbgj7duhxhyE=;
        b=Rbsl3oe4l4bVGMdUTuZGoX5JU97gNvdHWPI34C33xa7xz+LVLH67BGnrgqEXSew9DE
         No7MLwYQBriaRfx20PLce8VtOcuHMgcEiP0guUAgkykJpS0ajOm9ipZDqIOPlC4wCc7o
         gYju68XMMYyacjPB6L7f8OwFzFIAYPmhGIEWm04FQH9noAUYm7FtOGed9dwNEUBrmL/p
         vVk/S6PELt2+1T0+mg8fnKUW6bTYtEa9JwwGbQaDHrziIi162MQqvlICPF9fYkpUZtk4
         0EINzUsHMi2Wa2HWhcP2UFuTccAa8EilbZbXoIPpIB7iVUZU3i5ZxrSsgPSgL7P+dnQ6
         aPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XO/313PKa/quHlf1vA620KOMVC2M76VWbgj7duhxhyE=;
        b=umoF0vCtopNvt1ao5fS39NQLLOLOd1OgC2cfXiqZzvPVJGD6cI2Q1GWg2WNEDlQ9Gn
         DiedHkvkVvPQ6s2LpcbB/Hwk/j63CUTTo2/LvyPSPkBek4I2b+XAnnePFP1XyWe1XgkZ
         2zKVU0bk84Ha4Rey2ldqDibKPvuKKnwF0QAoco4nba2cDz4sy8agv/dMQNuFJ2DF0zVA
         qCAVPJ45AnWjtmwwR3hwEzhFwy0YuE8xinUSgtI7YN0TbdU/UbKUYkA1EvCE4aBjvOpu
         0ZTEhxpaLjziF6veFvOSv4VWWoXbGirQnaPFT7qFzvqRwdNEvFBoO1AzOfXAx1a4tTlm
         n2Zg==
X-Gm-Message-State: AO0yUKXwOvQq0qOvfWk9X6XA0vyDco47Gl9aLqVPK99mX6QZkcVRLaIc
        YvWGHYnEUeKJ0K9U0vnp520y2Q==
X-Google-Smtp-Source: AK7set8C6EplC+GLPgeYrYpBCPc+kd3wgqHD+GEr9Z5HZ1vIjOAfGzXiYGB2G5h8OVwcGMkXRZHmlg==
X-Received: by 2002:a5d:5c09:0:b0:2be:5c4a:de6b with SMTP id cc9-20020a5d5c09000000b002be5c4ade6bmr5451330wrb.3.1675327784237;
        Thu, 02 Feb 2023 00:49:44 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v14-20020adfe4ce000000b002bfafadb22asm19949727wrm.87.2023.02.02.00.49.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 00:49:43 -0800 (PST)
Message-ID: <4047db6e-80a5-b5f8-a736-d481f8a5127b@linaro.org>
Date:   Thu, 2 Feb 2023 09:49:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: pwm: mediatek: add mediatek,mt7986
 compatible
Content-Language: en-US
To:     Daniel Golle <daniel@makrotopia.org>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
References: <70fe0b606d988958b87f89828b8728e2f68eaace.1675278958.git.daniel@makrotopia.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <70fe0b606d988958b87f89828b8728e2f68eaace.1675278958.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/02/2023 20:25, Daniel Golle wrote:
> Since commit 241eab76657f ("pwm: mediatek: Add support for MT7986")
> support for the 2 PWM channels implemented in MediaTek MT7986 SoCs has
> been added. Also add the compatible string to dt-bindings now that
> they have been converted to YAML.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

