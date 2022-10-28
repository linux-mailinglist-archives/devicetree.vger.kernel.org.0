Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4A4611DE2
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 01:01:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbiJ1XBW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 19:01:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbiJ1XBS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 19:01:18 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2011A22B38A
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 16:01:16 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id w29so4415293qtv.9
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 16:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dKeoXNkMblk+UJFgSyQMrIXcs65OuOPqsIyg05xgoc4=;
        b=J14OvWSVlYMidiIMvUfrjz/Gfm6zXOTXuqwkydg3DmWshWIXV4y+v0MJYnsROY58sl
         ViOY1HqBT/oU4wyElCrT8GdpjLpFaKvn77z1ykoiR3dg99f+Ao+dGzslk1uxXX9UuThm
         WTcA3CYueJZPLLawlNfUqJ65fe8Ru2+7HCNVfZZruVTPPBa4ayeISuJsx7u0sND9rlhZ
         gF1WZQMfpU1EwbxkGUhVdUXhKoRNazAkF2GhQtHzYhBXRzcdzlUCx8cNttaF5qniN5Qw
         dkxIUNjklS23ROsnqH34ME6viYFkoG3IFA8Wmtc+1SKBeI3yT5qiIUQ+Ngnsraz+dKgs
         OSTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dKeoXNkMblk+UJFgSyQMrIXcs65OuOPqsIyg05xgoc4=;
        b=LVhXvMv7hKnWvfl+Xv+2zhc/lI0zuXE1EFQ8dkvR0vtqETQyov5Tbte2zX8HwmLdGH
         TpRhuc/XyqwoA5IeEV4fnwVx8BOC7vfbRmbmIDQ3JK1ADo3ayW9wOocJASymhq6dL7P4
         Rn3587RfECSsfY3Npu5S2fJ94zFpHv3GJaKzQlOZJyPJYhMxwxgQmpBC6piW/FiEXFOT
         fKoKBJOxDCLrpo2w9h1BpHCXIa0wICp6kVSeJyaMdOe0So5HmR6pe//pNFKRXDHv9izo
         KP+xAIowYQEOJYRYdTEX5Phw8kFdh7ahuyjxNhlSqukergaV6fRQxrn0Ze99HOin/uzd
         3QZA==
X-Gm-Message-State: ACrzQf3dBYYo7pz9iDY98k0xlr84DcjCHcVLHE6f0MhgRFlDCgyvs5D0
        2Un8kKx8ibu9cG9Kh/e0UMDoRg==
X-Google-Smtp-Source: AMsMyM4xYoVLGNGIK42j4plye/z0wBSy3M69oR1eDpu4le86TgsHckHbwfyvbRm2m9MCDWMd4lHFyA==
X-Received: by 2002:a05:622a:188a:b0:39c:eb39:e7d0 with SMTP id v10-20020a05622a188a00b0039ceb39e7d0mr1699406qtc.182.1666998075165;
        Fri, 28 Oct 2022 16:01:15 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id s8-20020a05620a254800b006cfc1d827cbsm3952412qko.9.2022.10.28.16.01.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 16:01:14 -0700 (PDT)
Message-ID: <762efc62-cad6-609b-c82d-01a4290e5948@linaro.org>
Date:   Fri, 28 Oct 2022 19:01:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH V4 2/3] dt-bindings: display: panel: Add NewVision NV3051D
 bindings
To:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20221028205009.15105-1-macroalpha82@gmail.com>
 <20221028205009.15105-3-macroalpha82@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028205009.15105-3-macroalpha82@gmail.com>
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

On 28/10/2022 16:50, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the NewVision NV3051D panel bindings.
> Note that for the two expected consumers of this panel binding
> the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
> is used because the hardware itself is known as "anbernic,rg353p".
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Didn't you got here tag?

Best regards,
Krzysztof

