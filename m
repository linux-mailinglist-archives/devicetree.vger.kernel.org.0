Return-Path: <devicetree+bounces-517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4F57A1C96
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8A881C20E54
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3D1FC0D;
	Fri, 15 Sep 2023 10:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE63A2F5A
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:44:05 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C6F818D
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:43:54 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-52a4737a08fso2249458a12.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694774633; x=1695379433; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3M7jImr0368A70YQQszh5LOxstTT1SILzvUBwptdLHc=;
        b=UJz6nrosxEJom9sB9Jsi2RbVICWlXgDOIHCu3ktFvcI8gVwaRlIyG8sTyRz5+Vt606
         JxXGE84U2lCtjHjvkQCzefnCuaf2RVe5isq4RWcOsUGwCkZHNKJXlM/FC8cRIrw+LVLJ
         Hb+rNzl4bCTr8WYX17V7sJPubfl4EwSE3hvsg6rA/XfmiTVABzaOs8V2dfGZ6SZBx1ed
         PakOerEL+2eKOMWmAPgwRh2j2bt6B2EnAVoIkYMpeJT599EYg/QBlu8dQjeDi+GdzsaW
         3iUOnZ/cpOxo9bC8sOrx0jnzJQSl9GnaIFXP7maYfT2I1Ium4ECARYkTpdGWDlDNzLmv
         Ku5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694774633; x=1695379433;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3M7jImr0368A70YQQszh5LOxstTT1SILzvUBwptdLHc=;
        b=rArnvzNN4EPVlAtpmcNemRPYK9cSj+QVAeLsyHwMhaiYEIpqwjmWyTswGl6l4DyadF
         7BVJktzg+33rdKSx0TiPvalpyyn/0J7aE2rE1D5jkHakdhp7vvzFRL1iJ6TSCYZO7YHZ
         F4aPKxjtzg/mhgHfX++FPGuoE2FuaTYT+cTLol2kun4QEqIUfvHhCMLB4xUHwb/OU8qk
         HZxA93iv1bsRVjHKsoy/KZ6dm0aNDtBFvF+JyJfgmg0Hgw500kpnIKDJuZSkbgz3hwya
         IAMJmAglQ3lVh7mxzwacAepE7+W+StZyYAP+G/gDtoPsN+mz8ngH5fXeinSF3BdvuNvO
         P29A==
X-Gm-Message-State: AOJu0Yw0Iscm0UK9bjGAgoWS9X6GzVqXr3lLsppbdWgHFl5dtU6jHPP5
	kVcQFKU1zcTnSnJ6VJwL4yiOjg==
X-Google-Smtp-Source: AGHT+IHD5rk99z53pFttp4V9rDWOcHo0Y2Qnz1sa9CSaFR46gEwDitvybqOIt5Refxj1ZhWvIeY9rw==
X-Received: by 2002:a17:907:77c3:b0:9a9:fc14:abec with SMTP id kz3-20020a17090777c300b009a9fc14abecmr965415ejc.50.1694774632931;
        Fri, 15 Sep 2023 03:43:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id e24-20020a17090681d800b009a2235ed496sm2277713ejx.141.2023.09.15.03.43.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 03:43:52 -0700 (PDT)
Message-ID: <d7d718ab-09a6-ed17-34ac-8eb571260be4@linaro.org>
Date: Fri, 15 Sep 2023 12:43:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 15/42] dt-bindings: watchdog: Add Cirrus EP93x
Content-Language: en-US
To: nikita.shubin@maquefel.me, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
 <20230915-ep93xx-v4-15-a1d779dcec10@maquefel.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915-ep93xx-v4-15-a1d779dcec10@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 10:10, Nikita Shubin via B4 Relay wrote:
> From: Nikita Shubin <nikita.shubin@maquefel.me>
> 
> Add device tree bindings for the Cirrus Logic EP93xx watchdog block
> used in these SoCs.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


