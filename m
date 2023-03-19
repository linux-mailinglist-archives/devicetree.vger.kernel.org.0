Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74AC66C00CF
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:35:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbjCSLff (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:35:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbjCSLfe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:35:34 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA51F206AE
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:35:32 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id b20so3671141edd.1
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679225731;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ULpPD9/UhkckC2jm3EpC2rSfRTZALkGydTiI7ixn5XQ=;
        b=NIi1y59fRauJ/Oeo/i3M7wnQ16UE1cAq06upU0Xtr2WBA32hX9LMz64wkfYzVVIut6
         xyMCq1ApdmN7l3ulAHByMS/iT9TnfjGA0S5BfI96RaKrssksZI907wlytiVyEoDSXYj5
         87rN7YrRtS7RFAw/HKTHTbivwrtgYQp2S/qFv6DyGc3xYXmuuHip/Gbza8i6ru4BdFzt
         dyHtcRbyShwWm+AhXH9kb0w19mghYzyoClYs8U/51yu2dZqq1fPmRwYCT2J8W8hUZ702
         xEShtjUncWhBd4wvXHMjNsVFCv9cgtVyNKO9x3WBvMZ1E2GFRg3eV+o/gv+4aiQicxQi
         tRWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679225731;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ULpPD9/UhkckC2jm3EpC2rSfRTZALkGydTiI7ixn5XQ=;
        b=CL35milyxIEnstS6QVMH4d+6+SP6kDSB0AYXMTew3IH9kVEyBxcIsduk3uQum3gIqH
         NovBqE8J+W3eLB4NQcxBR3WkwMELhELurkrr2c5QOJ/TeayTY895SYg6xjmNhfeeb+Fo
         rBk7mbqZm0AioqsRKhL/4XQKVWGG0K/VtsqPGMVkUGA/OtPHx80xD3plPXmPRCT2WWIU
         hZdkfta7/Scie0Ra0SiezWSbHxosaXonprpNPwVoqMkaBljFrOXzX5vT+zb+lPU71b9v
         5nyf76nerAPTXzvP1lvICFWYtgWCRzneCsK9om0cXfYnUoLCM6LLxlDpxrRPaE0cTBua
         DKmg==
X-Gm-Message-State: AO0yUKVn9uLDgC0PbjK68T+Xc0BlO+jIKMDo0SfaadBGFCvKypXDtWja
        Jq4WuiTJJZ7TUImI8ZElL9QDjw==
X-Google-Smtp-Source: AK7set9N7DTsQl226I5FYvuWr7+D0Q4Hjgi9v5RZBZCuCN91hqk/FEyG5McNOIZNcG8EOhShxF1/wQ==
X-Received: by 2002:a05:6402:44b:b0:4fa:eccd:9849 with SMTP id p11-20020a056402044b00b004faeccd9849mr8615273edw.9.1679225730841;
        Sun, 19 Mar 2023 04:35:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id lo3-20020a170906fa0300b008e17dc10decsm3175073ejb.52.2023.03.19.04.35.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:35:30 -0700 (PDT)
Message-ID: <13e49e62-6e01-b736-e0c4-379a82299ddb@linaro.org>
Date:   Sun, 19 Mar 2023 12:35:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/3] dt-bindings: net: move bcm6368-mdio-mux bindings to
 b53
Content-Language: en-US
To:     =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, f.fainelli@gmail.com,
        jonas.gorski@gmail.com, andrew@lunn.ch, olteanv@gmail.com,
        hkallweit1@gmail.com, linux@armlinux.org.uk,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230317113427.302162-1-noltari@gmail.com>
 <20230317113427.302162-2-noltari@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317113427.302162-2-noltari@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 12:34, Álvaro Fernández Rojas wrote:
> b53 MMAP devices have a MDIO Mux bus controller that must be registered after
> properly initializing the switch. If the MDIO Mux controller is registered
> from a separate driver and the device has an external switch present, it will
> cause a race condition which will hang the device.

Are you sure it is wrapped according to Linux coding style?
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

Your rationale does not justify incompatible binding change, especially
that it could be probably solved by including the child in the parent.

Anyway, Linux driver boot order is not a reason to change bindings really.


Best regards,
Krzysztof

