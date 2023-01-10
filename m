Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0CFE663E60
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 11:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjAJKho (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 05:37:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230433AbjAJKhl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 05:37:41 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C6ABD12D
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:37:41 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id z5so10180880wrt.6
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EqWZTPYWg74UddpBq2hX8CrCoS0DmnhoM9+iCMX4jjw=;
        b=cryKYzziNzmtuyT8a6QGoPduvqzMN4xOc8Ov/If8qMU4p8l9CyPQp2+1Xa38xQkM9Q
         A9MCBlqqd9A3LhLeUCNyDwGn6Px0y+TEGNdOGA+dHfvpnAQG6qJe4zPKTdwlvcxEqOmt
         vcLoGyYFeVfMZFvdHa+HRTTa4keVyhQJaqmlrbV6aUNrZ+R1yEZnCnhZUsw+2V9I0vSX
         EkI43vBJTUvZEESbhl2qSxOBXeGSo6v+jJ9TM7pYSFDYW+iyUUZFlewNNtp1FRQOB1TF
         lnMptCHQi579/5MxywxjfSgnLZWmpd4EYBU6nzb4eliecNHjGe4DjTPDxaqTkFWIPq+y
         wkWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EqWZTPYWg74UddpBq2hX8CrCoS0DmnhoM9+iCMX4jjw=;
        b=FiQyYGZV1DTkot6GacoxsOVEVF7bAc2Iy4ecITQ4RS8xcCVOrqo0WjKMozHh5jl/Zm
         QhsZH0dlhYwukVBx+hQySGnvTe3F7HdU8m2Z1vK/9FpEiHqJxtKXZN9YBFtBKqAzMINo
         O9NMcTrDq5Dnasxg5Xk8b6g9KJqZt1sxEetcWqQa8rob+uw+AxifKJJ/WtXXIILKln/d
         pfRUkHqISuX9VLYavtIUZvSrsZmvZu+HHusO0frICrpNl6zrEMTuLomKDWQzpvfE6lSK
         Lhg5DjYeaCoFy88hxkGIetUA7ct/iM+JNHK1W2yRybYNFx1kyEhGDwd4D1bguz4XaM11
         hWjw==
X-Gm-Message-State: AFqh2kryQ54sbHq+8xhHxfz+aIsRSF96rJ8rDCVlqLvfZO+ctFo3x92s
        7Q+L8r+u6VFsw83ouOMoJjOiNw==
X-Google-Smtp-Source: AMrXdXsiXz9lNzBtJRzZYoZO7knyMkGJuAKU2HVoj8SdqnkC3rF5X2Vg2ZsPumYSglpVhO+gGWBzxw==
X-Received: by 2002:a05:6000:1e04:b0:273:e385:1a89 with SMTP id bj4-20020a0560001e0400b00273e3851a89mr41057650wrb.67.1673347059743;
        Tue, 10 Jan 2023 02:37:39 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n6-20020adfe786000000b002bdbde1d3absm462943wrm.78.2023.01.10.02.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:37:39 -0800 (PST)
Message-ID: <4aaa960a-abe4-7f9b-88a5-a4bdf0da9ee8@linaro.org>
Date:   Tue, 10 Jan 2023 11:37:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: mmc: renesas,sdhi: Fix RZ/V2M clock
 description
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <054c9f4dbb0bb1525f780d1e85c724436465c20c.1673270716.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <054c9f4dbb0bb1525f780d1e85c724436465c20c.1673270716.git.geert+renesas@glider.be>
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

On 09/01/2023 14:26, Geert Uytterhoeven wrote:
> The SD Card/MMC interface on the Renesas RZ/V2M SoC uses 4 clocks, like
> on RZ/G2L SoCs.
> 
> The current description specifies 3 clocks, like on R-Car Gen3, which
> will lead to "make dtbs_check" failures:
> 
>     arch/arm64/boot/dts/renesas/r9a09g011-v2mevk2.dtb: mmc@85000000: clocks: [[3, 1, 18], [3, 1, 20], [3, 1, 19], [3, 1, 17]] is too long
> 	    From schema: Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> 
> Fixes: c8dbdf2a1044951b ("dt-bindings: mmc: renesas,sdhi: Document RZ/V2M support")


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

