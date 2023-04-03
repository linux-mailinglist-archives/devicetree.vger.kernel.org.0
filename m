Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E08F6D44D3
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 14:50:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230269AbjDCMuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 08:50:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjDCMuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 08:50:00 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BCA6DC
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 05:49:59 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id x3so116779011edb.10
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 05:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680526197;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GxZIAtNp4JwkfPgT2XU8zTmcwMxCGH1SxHL9AhchsKY=;
        b=ueFIjtcJqkqgBO07bsvy1XY6tkAIr18zJ3ohSlPLA//NnIwDq3gJHXtBNuTW/ckDyL
         8uSjLHSx9M+dkEwgaDmSeFKandjX6nbhplJ6apKp1pCAMjGWlWtlyFvSuLN08DemPt40
         pylrHrv+XIrRFeXdY5WvY9jp3ZyDxDT6yW5knRK1CnIf5UZRc328xSzOiu9L3Fyc3IwT
         z31836O9WtJlYv1OSpWIjnsR4bNe+dMHdQllm25AhtEafxzTTOrR7AioESpzfmtij4gd
         ZAQt80gHtfuOGX4qoYBEfrH/jubDMqTVq9DNBRuMqZbJlpQZt9tkwZplKmLbheQQXAM2
         iyPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680526197;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GxZIAtNp4JwkfPgT2XU8zTmcwMxCGH1SxHL9AhchsKY=;
        b=OkFHGdcd4FpqX0W5+lR+3PqNTA+ZimD8234ttsj/gMBhdZgze6w8wVpAIPzplYXDhu
         9Zo1rUSgsMQkdBHSZbTQuji/KhtqD8V6guxQBl05LyzKngJV7vViD/cI017q0vCUXNt0
         9DqxW82qCtWzxAZjAmvdljr+3sKAOjJvKUsnuwq65E6AKusiodPKPGlv5zqfimdt7UIk
         8k1LduFExnUY+2eEsdQck3i3p3SaMwVtoUWfG7L2YhaEUm+wnR2gss1AROl6uTAPGXrZ
         DIwsnyhVPIoqeIoT92Den02GQ+F0N9GT3XH9qobBCrylRS0KpMKxXeBp6EGMG6ZDhpi6
         HkkA==
X-Gm-Message-State: AAQBX9fkXJAnnEHEsBPuIaVtL7BaK6+r4RFFG4c7NFXx2Y1o1yMOw6R6
        COsFQqreNv2GkuZyyxSHzJljyg==
X-Google-Smtp-Source: AKy350bTW2X2bBx2avO62TUv0ZKTCByYYSZW/DdRAfTEv16w8Pb6Hz9vWB3S9sD7HNpgxsXyNgrnFA==
X-Received: by 2002:aa7:cc04:0:b0:4fd:2a29:ceac with SMTP id q4-20020aa7cc04000000b004fd2a29ceacmr30110784edt.14.1680526197529;
        Mon, 03 Apr 2023 05:49:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id l6-20020a170906230600b008d68d018153sm4496451eja.23.2023.04.03.05.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 05:49:57 -0700 (PDT)
Message-ID: <70060001-d935-d238-583d-b452f9a4e5bd@linaro.org>
Date:   Mon, 3 Apr 2023 14:49:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to
 yaml
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, jagan@amarulasolutions.com,
        inki.dae@samsung.com, Fabio Estevam <festevam@denx.de>
References: <20230331195746.114840-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230331195746.114840-1-festevam@gmail.com>
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

On 31/03/2023 21:57, Fabio Estevam wrote:
> From: Jagan Teki <jagan@amarulasolutions.com>
> 
> Samsung MIPI DSIM bridge can be found on Exynos and NXP's
> i.MX8M Mini and Nano SoC's.
> 
> Convert exynos_dsim.txt to yaml.
> 
> Used the example node from latest Exynos SoC instead of
> the one used in legacy exynos_dsim.txt.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Missing changelog. This is v13, not v1.

Best regards,
Krzysztof

