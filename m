Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A13CE4FE02D
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:30:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238621AbiDLMbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356228AbiDLMaD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:30:03 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 553F6BEE
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:46:18 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id b15so22020975edn.4
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CAzofaR9FtDRM+wFckGofjwaCdLcN5fw9Tp9Ja6KClQ=;
        b=FkbM4k1L25VdLH3C5Axv+jI5HXZbnjrOgB1F9cfIlW0SFn/s0XwgchhjQhuYd75ZJp
         l0ggFoX54olXCeWc9IzSamo3CubXGiIDP55x5LX57Oel5PZ6NkUUm+4iB6bxPS06h1HV
         jqkEqowlNp00SUqof2j7njrdAHS9lNKcWcw0+hK0oH76kh/zz7TXHOhjEzqHRkoEK63j
         wO1YON+EMja2U1zcYlojaB+aSh99hrGAmHupapX5VwM1ApVn7t0eydmPo4tc7UI95+FQ
         +gfIaKkp2SSYX2kGa83T2AdSPTyLQfdvQg43BJ6dDbQbRLGtNCrf+SgoVy+4l2QQV06/
         p+aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CAzofaR9FtDRM+wFckGofjwaCdLcN5fw9Tp9Ja6KClQ=;
        b=1SfmJ0cq9Y9Uw6jGqQPT5Uj8YTdQNWmZV/AWvIMZeLDWziOcby6yR8TQAyKlgph0Lv
         2NuL+0XVOJDJUgbAxsSZ0Y0FBz1iMtAjSRhED9Nfwaj0wKAwdwKi9Qy0yKG1Be5Zix2n
         76/JpLGvMmyMGcq/kXC4RVSIXa1yUbR2pBR+1CahYMa5mLShnj9dXO+Db6dHp9NemIFr
         ISGENeWR2WMdg0WpQwRFBjfpVkdmO5M8Tjq7CsCmAA34ErZ923c6C5iBZt4r7H8V4I8w
         FixSAgEH2k2aO3balonB9TqH2UcPTwWzXU7vKI8cg28Yb1n6cyNX9Z9wUXit/5lXKRX3
         3ONw==
X-Gm-Message-State: AOAM533tIJUZk06GSNDDIsoaJIRXg/1s6LLeKmD1be8Zi8aeTYDikM1k
        yODmIZIg+qFH8ZLefIntPZOOAQ==
X-Google-Smtp-Source: ABdhPJzgTthKDvyK5jkgahd3jA3ghr8ocxlOO81cPS3FfOff0qgYSswuAkilr5C24AhAfauBQLOBDw==
X-Received: by 2002:a05:6402:4302:b0:419:4be8:6493 with SMTP id m2-20020a056402430200b004194be86493mr38525636edc.294.1649763976885;
        Tue, 12 Apr 2022 04:46:16 -0700 (PDT)
Received: from [192.168.0.195] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id q16-20020a170906145000b006bdaf981589sm13012850ejc.81.2022.04.12.04.46.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 04:46:16 -0700 (PDT)
Message-ID: <6bd0ef3e-5e50-9207-375d-088167131a9e@linaro.org>
Date:   Tue, 12 Apr 2022 13:46:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 4/9] dt-bindings: clk: mpfs document msspll dri
 registers
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>, mturquette@baylibre.com,
        sboyd@kernel.org, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        palmer@rivosinc.com, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     daire.mcnamara@microchip.com, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220411085916.941433-1-conor.dooley@microchip.com>
 <20220411085916.941433-5-conor.dooley@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220411085916.941433-5-conor.dooley@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 10:59, Conor Dooley wrote:
> As there are two sections of registers that are responsible for clock
> configuration on the PolarFire SoC: add the dynamic reconfiguration
> interface section to the binding & describe what each of the sections
> are used for.
> 
> Fixes: 2145bb687e3f ("dt-bindings: clk: microchip: Add Microchip PolarFire host binding")
> Reviewed-by: Daire McNamara <daire.mcnamara@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../devicetree/bindings/clock/microchip,mpfs.yaml     | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
