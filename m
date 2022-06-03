Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C86A53C64D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 09:34:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242540AbiFCHd6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 03:33:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242563AbiFCHd5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 03:33:57 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 147DA396A9
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 00:33:49 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id kq6so1300446ejb.11
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 00:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=M10o54sTZvRy17C3pDC23gX+CuR4aMGD8UzGX2WMoMQ=;
        b=kFDEaqUzl3hYfbJ0sxUumnEbCBnKfF+EOl9AvTzBjiuP4XKwPl+nZlvehW7y3VE8PG
         lNRjXc8N/vvsf040kvBQZzeaCgcCEXygqygB0wQnAeN4KDjKFyjtxFa6BfJ+Pu6hM+8e
         mXoSRz9aKys+M9uf6lGJRigGkH6K5yZH2PwwWo/kaFzXetUNUP+GnZtr2PvXSASpeKgj
         h0sBACxcQiXTdr5pDPjehv4ljtGY3hY5eK/RiHadB0gXjg/recI9vsJZVuVu7KryAvZa
         8beSCB4hK01FSCxfptrKX7fLr4jWYErOYnYtXpkxMZJIHTKPO3mt9W/MJ6KZXhpXQGb8
         pXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=M10o54sTZvRy17C3pDC23gX+CuR4aMGD8UzGX2WMoMQ=;
        b=P97dt++/7TZSJnlJHNetiZ15l3FqYKTiIqU6WN6AlPIr5Q5X1xQOuC1PSqrxY7UB6F
         MHI4lr5OcEmxAs2SUbN6ExqVlElcjVJfFVTthJX8DpOjP2UACWJM43WavB9yFbpLGDH8
         mWnlPKGg/7HnLOKvqLo9NiABzbV7NGuVLlMUrVIj8Qq0Pj9x6ZIB4Qb0XJtGsffZSD7j
         9xjoDs7hqTiALYBOhiTtifHc4GAtPD92FDsYH7uEFjZRU6kS59faO9aWKARbWyeuzdor
         R7x9MaXzE4wA9HODE9E5PgMFydNx5LXZSpXzTc9JIOxTSRIoR7GDZOUvq6yO9d13zpwJ
         DJtg==
X-Gm-Message-State: AOAM5314a4e3eZi9zv5JV85+sesFL1SRRUkpcxyjUtUv1VZqXa4ZGdD8
        AfBp9TEWm0sQOYeCO3CYKp64xA==
X-Google-Smtp-Source: ABdhPJw/l8CtC/oAgwkZakL9NahA1dUU5X0+2D/Z6/uAlo7dulXIk0x+O/uittuON2sFQiK9v2K8yA==
X-Received: by 2002:a17:907:1c8d:b0:6f2:eb2:1cd6 with SMTP id nb13-20020a1709071c8d00b006f20eb21cd6mr7282450ejc.568.1654241627415;
        Fri, 03 Jun 2022 00:33:47 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t26-20020a17090605da00b006fe7d269db8sm2535595ejt.104.2022.06.03.00.33.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 00:33:46 -0700 (PDT)
Message-ID: <6a421c56-0616-c61a-608c-2907faeff424@linaro.org>
Date:   Fri, 3 Jun 2022 09:33:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: Update QCOM USB subsystem maintainer
 information
Content-Language: en-US
To:     Wesley Cheng <quic_wcheng@quicinc.com>,
        krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, gregkh@linuxfoundation.org,
        bjorn.andersson@linaro.org, kishon@ti.com, robh+dt@kernel.org,
        agross@kernel.org, vkoul@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_jackp@quicinc.com
References: <20220603021432.13365-1-quic_wcheng@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603021432.13365-1-quic_wcheng@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/06/2022 04:14, Wesley Cheng wrote:
> Update devicetree binding files with the proper maintainer, and updated
> contact email.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>

Thanks for updating the email address!

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
