Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B62C66BAA06
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 08:52:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231963AbjCOHwk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 03:52:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231559AbjCOHwP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 03:52:15 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CAEA73892
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:51:48 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id cy23so71810622edb.12
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678866708;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rtzm0dNUyTJmBG5J/B6707/S4Pte/iFJwCqbn2gvJ4Q=;
        b=K0IWxPweceXAJvkwMSWgRYi4I0hvq6aPbbv364Bjric9zjIFEbo3n9Igv48yqx2rqI
         XHYD6/H9RT/RK0ZV7w2eqjM9mc4nUEVICafT/otoipMQcv/TgDQGpLqMsDHabxSsuLP0
         SIIVhUDvPaL34MBChXeH5dmhvF6l9TPXW8mky5o+/3v/rkxWC5lfxUfZlFmFvcYnREUk
         +d2aNLRQQY7h0ur9ZgNASYWxheITEDCirxa2lxqzKPUPsuWzNGMmb7T/KWDFLg/+x+R9
         +lV9F2o8uZy34GGYwCSpQil7pG8hKYb6v7KuOXP9HkStLHIOz+0d0QavdbW2ZWhdj90w
         2PIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678866708;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rtzm0dNUyTJmBG5J/B6707/S4Pte/iFJwCqbn2gvJ4Q=;
        b=OJ7n2VK9FLu2hIas3u72Boxr1y6LHwiB3N00/aLrkj22ZqN7JCVlkhyaJmAqI0lj/p
         km/UBV09FKmc6SnxOaKbfqNS33E/0RNmzcO+UnQC6nF9QgGaR9i84g/EqTjrYJ1OVN3y
         +PdNEN2qByPKDEttV+wpzGrm51LyIeYe/YrDhsdWwnCpnKETf05UbXulBhNPuoTucFyV
         qXAeqqBY2Dtk3c8R5F0MD2nNxH8JBuxkOAyXfAPfD0aTOyK3ixwPEfottUbI+IaBPFCt
         hdcWX9OwSHPlWKTxfXhd6+j/wrFtb9i7WxB9TufgKM7pq3XzKuxKnrLwWqNqYKqDiuZV
         6x6A==
X-Gm-Message-State: AO0yUKWlnBSw0MWXuULDb9Z5hnwD8EwcFdSA2tb7UKquXiG3ORhke9Uk
        DmCpHQJkIvCCWTngxDLQINjmuQ==
X-Google-Smtp-Source: AK7set/yWRYjCKp5mLx+kg3wkMH72NDHq+jXSu/2+L2Vhk3CVxWK3EAQVP3YmAnhLQmqFJQLGyRcuQ==
X-Received: by 2002:aa7:cc18:0:b0:4ac:b614:dd00 with SMTP id q24-20020aa7cc18000000b004acb614dd00mr1439146edt.30.1678866707846;
        Wed, 15 Mar 2023 00:51:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id 18-20020a508e12000000b004fa380a14e7sm1974222edw.77.2023.03.15.00.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 00:51:47 -0700 (PDT)
Message-ID: <8ce4e54d-1e90-99ec-3fb3-00c70adb6bf9@linaro.org>
Date:   Wed, 15 Mar 2023 08:51:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: display: seiko,43wvf1g: Add the
 'enable-gpios' property
Content-Language: en-US
To:     Fabio Estevam <festevam@denx.de>, neil.armstrong@linaro.org
Cc:     sam@ravnborg.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, CPHEALY@gmail.com
References: <20230314111724.1520178-1-festevam@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314111724.1520178-1-festevam@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 12:17, Fabio Estevam wrote:
> Add an optional 'enable-gpios' property that can be used to turn on/off
> the display.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

