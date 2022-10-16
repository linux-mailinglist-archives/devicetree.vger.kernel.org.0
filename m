Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA3F60005C
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 17:04:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229872AbiJPPEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 11:04:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbiJPPEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 11:04:40 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87DD7BCA0
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 08:04:25 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id z30so5321622qkz.13
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 08:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fi70MGjSm9HkG/D1Y3M3ujYZ+UrZWCkBwt/32HJ7IXY=;
        b=QIhhwBKZFq4fKIN1iEVInLMJ2WyXHfa1dMR39rqUuSExvwqRyXg6qbnY7aFnIPR7Ov
         8jVpnfIuIANcwg9coiHCuhBqVqQiblvFxzLPCwAWdFsxqLTePRRvZ6FKuQeWjOCyKwBh
         4D0KNFpfjLVL4NHm93Se2zeV6zA1IYHTEG9fXCEfPGB4erUpFrQAtjIowE5/5cKMF1aa
         G74FrwI+fFs1BLIyOJPXyJKyHchohsRTmQ7IAIVEI9v760+2I4uKNt2GZXyKieGWyH19
         b/DdCjo42yR+hDBAE5TS3e49CJZtOvQDdstE5ry2716Wo7LHt+Dpb8E7uagSGkw6QK04
         itUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fi70MGjSm9HkG/D1Y3M3ujYZ+UrZWCkBwt/32HJ7IXY=;
        b=I15rpE+dLFb3g5KAwNT8+Dz8Sm8Hl8MYiqeaBqvI+kJef8ut/ZuNKfSM3GG0MIqpXm
         I5ld2UkD0SccFRAVcOZ5MOAh3WPYAklZbZW8vrBOEeS9qklyIb02+Nf/QSzXMOITv456
         Na4pjiudVNCp205Sdqh7vjaTwvzg/U/qeLyYwmZRRRjhALFvm2mnavSonPZ877Xl1cpO
         wCSfGuYuKrlYJ+lM/B4jFWYXHvQCNcnRMXxdxAodSzr11CANu6ndiyE9qrUCfPuGlbFn
         gjN+yekbq2VpOROJwBOpsOA756Yyw3MlOqUsENEvtAyv2/uBCUj65+5JYgma9O0Webgd
         RI6A==
X-Gm-Message-State: ACrzQf3eMoLbjwztCVOxUV/W0LxOz2WsXzDvHc18VCvPDvENwsQtcrQf
        4nZpuj1bFzZcIqeEQXPOW7rivA==
X-Google-Smtp-Source: AMsMyM4b3Dd/FBVDNX+cMLBWiboLSdQHY41EG1+QT6MgFHT5ygsaVddMCxlnAswOrCiev1fRqn8FBA==
X-Received: by 2002:a05:620a:bd4:b0:6cf:468e:e092 with SMTP id s20-20020a05620a0bd400b006cf468ee092mr4781145qki.583.1665932662312;
        Sun, 16 Oct 2022 08:04:22 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9b13:d679:7b5b:6921? ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id e14-20020ac8670e000000b0039a275607c3sm5908496qtp.55.2022.10.16.08.04.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Oct 2022 08:04:21 -0700 (PDT)
Message-ID: <73c4c8b3-69ef-9679-84b9-1782162bf097@linaro.org>
Date:   Sun, 16 Oct 2022 11:04:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j784s4 compatible
 string
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, vkoul@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        vigneshr@ti.com
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221015201123.195477-1-mranostay@ti.com>
 <20221015201123.195477-2-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221015201123.195477-2-mranostay@ti.com>
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

On 15/10/2022 16:11, Matt Ranostay wrote:
> Add ti,j784s4-wiz-10g compatible string to binding documentation.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

