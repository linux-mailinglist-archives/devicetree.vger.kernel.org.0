Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BBFA7198C9
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 12:15:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231726AbjFAKPT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 06:15:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233386AbjFAKOw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 06:14:52 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60CEC1B9
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 03:12:31 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51492ae66a4so1022622a12.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 03:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685614349; x=1688206349;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lzBh9mt20nfbX1HPDV7qUtSParf3lregFrOcYZNJYTg=;
        b=RaRPkC6VX2Q/BjwDKUPe+k/HHA2K3PeWdWSAlQMRdEG/tnmTVrcItIo7UYOv/QMizh
         fXun4KbthwnGlMhHwbgtd1oo0pSD4tiWSV8j6L+PqAHjUoVQCnLEH1tSQLXECiMPP5v6
         bgZKjutzE6DvR4vNMNFNrJxz+V+Ag7u9SgM08zR4S7s0q2pXk03J6eaL6GcmetjkLuDG
         7xJkZdck6h+X2pSZdQWxMjsKNExIzpLdVou7k01rUwpL9J1GZ4IJHi0UJ8BEy/5/Bixs
         vM/7MUOZaU7XwYyyYoDTTz41nXYpYF8yiasDYOtkzXoJQisFzrA35rh9BfkblJBmsXhr
         6aFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685614349; x=1688206349;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lzBh9mt20nfbX1HPDV7qUtSParf3lregFrOcYZNJYTg=;
        b=Km5IkIqIoNQHDFpwlasBtTNB0v5RBeUOM1lXuwlt9bY5LskxElTKcXzYpVjzYeJ3VF
         e5Zc5CjadLR98LnH8set3MJHeiQdWQTSuk0/uUFePCL2R/B//+usuDAHiOupJCOEkjES
         hANbS2S3/NDxcdN6YeoJjDQNmqOuKV6TDgpxcp7+SzOuK3N6aYuvX4FO5nJaktS9xAbm
         3T6h+D0bVw7BPUAhrk2Tv8r9vLee8z+TcHgKKW+IiV9ayaWdqEbVWyRqBuzg2qmleVj4
         Vf3ZbJAfhiL13BgYKdYQL85Px88su2PUkE+zvDz0ciLaiXKfvYgYaj85cseqDlYv+IZD
         /JRA==
X-Gm-Message-State: AC+VfDwT4U0pkCIzWkO3tbeDemFyV9rM5nHrndwEX0jXPOcNvRJsn6Gc
        leFyFIygRq2WvAWtSDkYvGJdzQ==
X-Google-Smtp-Source: ACHHUZ6Nyi5zWDsnRjCwCJM1Qxx+HYhDiHldJG4dN+0BYNHIkTDm05bT22FK85uiKCYBn46fmDiSdQ==
X-Received: by 2002:aa7:c390:0:b0:514:9eae:b0a7 with SMTP id k16-20020aa7c390000000b005149eaeb0a7mr5187743edq.17.1685614348806;
        Thu, 01 Jun 2023 03:12:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id l18-20020aa7c3d2000000b0051499320435sm5620034edr.14.2023.06.01.03.12.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 03:12:28 -0700 (PDT)
Message-ID: <608f0c96-e01e-20e7-6227-1d2066223aac@linaro.org>
Date:   Thu, 1 Jun 2023 12:12:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] dt-bindings: serial: 8250_omap: add
 rs485-rts-active-high
Content-Language: en-US
To:     Francesco Dolcini <francesco@dolcini.it>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Francesco Dolcini <francesco.dolcini@toradex.com>,
        linux-kernel@vger.kernel.org
References: <20230531111038.6302-1-francesco@dolcini.it>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531111038.6302-1-francesco@dolcini.it>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 13:10, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add rs485-rts-active-high property, this was removed by mistake.
> In general we just use rs485-rts-active-low property, however the OMAP
> UART for legacy reason uses the -high one.
> 
> Fixes: 767d3467eb60 ("dt-bindings: serial: 8250_omap: drop rs485 properties")
> Closes: https://lore.kernel.org/all/ZGefR4mTHHo1iQ7H@francesco-nb.int.toradex.com/
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

