Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB48A6961F4
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 12:08:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232880AbjBNLIK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 06:08:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231686AbjBNLHy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 06:07:54 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A29279A6
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:06:57 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bu23so15192429wrb.8
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qsX8qIp9rpO8WRodTUmbGc5OQkUGmN/oeu3jBtoIxc0=;
        b=UdBuo7yVWfJsCS/+crqzgM98Cx9K36cqPDmHgqs5HTjh407ou9zKe3wHszWBVOS2x0
         tp8IUUodBA6+cmf2Wo7x0y4K5UYz/hGrckwvsaHVR/eoK4uEKJ2UIxe9VYrN+czrje+r
         KsVMIDFDRhEphk+QGL5yY9pjoiSftN2I0lorbyztuxnssLcN2BN7PU6s84TnMeiIgi62
         bA39CfdogHCXNYdueFK6lJr3BpgOALK70ro5UDemnYR6mACG694lrCZGUJA3AjNjSRUa
         Yq8d0WBC5RPgVSiKEi+LvvvDua3HwRWOHsbQy51iS6Teu3YY8aCWVQykWLZap0g+aapV
         FR9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qsX8qIp9rpO8WRodTUmbGc5OQkUGmN/oeu3jBtoIxc0=;
        b=bq6gPQQdMnh/s8E42rURUTN/0NW2QI/mU8PTP6Rfy1TsLXMaTedBBQzuYnnkxtcV9Z
         zYUWljyON36J1VpVu8uZiFB8THbbL28xWAkqk2h382qAMjxJNKKYEgfDVbzoQZWpPWUg
         /vgf/hCtUrP7wCqMnpnptDSRZ3rKeNFgH329Z4qaPXrxkl0aGginSdQVcbiE5Cn2V2na
         E28BwxBjQWHUQk6upDE9tSnHB6drkzWjyIFTBlYUZdZcvbyE5Apn1wUJWhVG/ljIN58G
         1V+2jN3BEiVPEy8wmHapN+rrI9gXwzKUF8S+L5hVPum4FgEOTev2vDnecr0AiTYYZkgz
         lMVg==
X-Gm-Message-State: AO0yUKVS1668fTNHQeRhPfB8Jksi1dkjOQJyey4YTUqgcFgslGTe8IST
        uXcUX9+h45kHOibnM0LKjfEktg==
X-Google-Smtp-Source: AK7set9RnJCSFRjjewyvo4/iaXkh3gpUQnXZAmc+jxAOD7qGDVxt7LzHmJt7O73adRuKwyccwE49NQ==
X-Received: by 2002:a05:6000:d:b0:2c5:4c0e:3736 with SMTP id h13-20020a056000000d00b002c54c0e3736mr1675877wrx.24.1676372796220;
        Tue, 14 Feb 2023 03:06:36 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j40-20020a05600c1c2800b003dc4480df80sm22367838wms.34.2023.02.14.03.06.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Feb 2023 03:06:35 -0800 (PST)
Message-ID: <99a912a5-7260-e392-dc10-9518ccd826c6@linaro.org>
Date:   Tue, 14 Feb 2023 12:06:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 07/16] dt-bindings: mailbox: apple,mailbox: Add t8112
 compatibles
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>
Cc:     asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230202-asahi-t8112-dt-v2-0-22926a283d92@jannau.net>
 <20230202-asahi-t8112-dt-v2-7-22926a283d92@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202-asahi-t8112-dt-v2-7-22926a283d92@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 12:03, Janne Grunau wrote:
> The mailbox hardware remains unchanged on M2 SoCs so just add its
> per-SoC compatible.
> 
> Signed-off-by: Janne Grunau <j@jannau.net>
> ---
>  Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml | 2 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

