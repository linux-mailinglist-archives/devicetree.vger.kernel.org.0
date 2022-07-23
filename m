Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EE5B57F191
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:59:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238792AbiGWU7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:59:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236829AbiGWU7F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:59:05 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2959013EAA
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:59:04 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id b21so2024683ljk.8
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=w1ctwsOtYQzyg6EBk7hECf/W7+W8HHlw5bTIVgREI18=;
        b=FXIcXCix+71dg504GvQy3v1nAhs1txtvGmIHhtwWRJrjiB3ETflTyo7TXKZdXcjCyH
         k3RUmk3Hz/BOSBDOCUGQrQqv7Sa9pV1uNl7ky6T+5jMYmnQw0zYfDkH2lyevQF/26OX7
         8tuhuo1wcLXObk2DHxVN5tmIRHf2uJxL4wN02zufDxQNFJKeVlhaCAeO9WCyiEUYyNcC
         wtfXEcs/iSt3UjV9icpdERwb+Y3bDar6Jz6y1ZvFZpn4VzZZdyU3l0Doi5LW2AjAqj8M
         R42g5JMx+cUCuJbhlevfT9q1qFk8VxtzEjrptPJmaX55qMTuTdIv4DIQISQ8FcOwgbOZ
         GwYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w1ctwsOtYQzyg6EBk7hECf/W7+W8HHlw5bTIVgREI18=;
        b=QhkXalpAIsWMjtn+4GXicQBVyWiBOR5429XNwG9LdyzciVaPvdOU8HcX1gDR0J42WW
         nv2+5CcUUHvZvHW5L7TTU/Yzzq5fIaVFyUQtPbqh/20ucO4P6rkJGaxNHkfIHUiMg7V+
         2QEBLV8ggWUvKkgf62PCaYjbyG4M6x6cuK8gcEOHrPTKiWlF58q3iajXSZR+DRbTXR2v
         5Sh7F9uK4gEJpRSSNdCXWo6hCbqnovXvAnXQbBTW+qkhtrT/4hKpqWXKzytU63ja6uUw
         z1efbAC+KQIxWLy/PNojBve1N1/lbhLyELuXPSWFA+MAAoVEZVGVnJx6wBF/Hq0w6fHb
         UGOQ==
X-Gm-Message-State: AJIora8ho74w53ibQu+adOPJq4pnKFzQPtIsDzdGK5+ByKb4GdFtEON0
        qruk4S13FBDemm6ihZojSiCLVfw9WZt3JzvK
X-Google-Smtp-Source: AGRyM1ugsWUDwndqn9lGzC9e+rIVp6UxMogybJu3agwe9LLkBnEwujBE1yiqjhFsyP0O2v6o7mkLXw==
X-Received: by 2002:a2e:9dd0:0:b0:25d:46d7:6bd with SMTP id x16-20020a2e9dd0000000b0025d46d706bdmr1905671ljj.502.1658609942394;
        Sat, 23 Jul 2022 13:59:02 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id v20-20020ac258f4000000b0047f86b503absm1838300lfo.16.2022.07.23.13.59.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:59:01 -0700 (PDT)
Message-ID: <90dce4d2-9027-2f96-c2b0-a43c752eaf07@linaro.org>
Date:   Sat, 23 Jul 2022 22:59:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 04/22] dt-bindings: power: rockchip: Document RV1126 PMU
 IO domains
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-5-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-5-jagan@edgeble.ai>
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

On 23/07/2022 22:43, Jagan Teki wrote:
> Document dt-bindings for RV1126 PMU IO domains.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  .../bindings/power/rockchip-io-domain.yaml    | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
