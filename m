Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6F3A509982
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 09:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386131AbiDUHrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 03:47:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1386133AbiDUHqM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 03:46:12 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33DDE1A396
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 00:42:45 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id z12so5405258edl.2
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 00:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=9Txp+p/Jb7cGORtQTcTM0SdgBYGc0np99cgJFPz7OZY=;
        b=f7u9Frh/sGhF22UliPgdw0W7YCyOiHF/yqF9Ej0BFpqGs3Jk9WsJL6Iai5V8eCmTSL
         F7V2K8v9hzcxxFVmMywL2JN6vVfvGx1eOuuWd0DbLj4fiah4qEobVc2XmhYFhypKbsgK
         DxuoZY04mlKPpVLOC71ph/jUKvGW3Jc18JxQ9KI2YYzqqanCSWsJa/QpwyzESYkh1UMv
         X3G8DSaPwtZUEi/BSbWIH/LyWRwSNWAkrF3mS/iHIF0VQt4QfvPQrRdiNqLDDw2v3LHf
         +FXQh5Bea9gRzxQhBz2c1XjiGy16cdFn4iD1W5PRgFTw5/cyCgEH7ihdVAEWQAb+6Flc
         XweQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9Txp+p/Jb7cGORtQTcTM0SdgBYGc0np99cgJFPz7OZY=;
        b=U6X8i7AoVZVV+1t2RKZsinfb4HEU0ChHdINhXjMg9oniuwswKEnhhYXy0q2Phy+UEj
         iPeCGg1HyqM49/5iZStbEBuu2BCdx/w/pPswUNrXrsyshIxHcwcAVNjZphv7+GkJGDVX
         8jXZtZnKNl+gu/SvKxo1dDm5mehKl88pAmh5lLxN5/dOwJ3lMUsw2+KUGPI+f56K7LCS
         Im8TaEqUstW4RjemJNH3WndZI5bSZYkzPbrsomaDULNnA7xNSWd+gXtFM7cxlW0C6idh
         ldPqF/SFMBh5KCEfzjqnUhFQFJnB68V50rPCb762fl4ASbw9i0d5hZSg1sLK123cIiFx
         9nSQ==
X-Gm-Message-State: AOAM531tJF77fEGlpX+6lOQwisLCbeVE3M8ne7hQwA55TBhzUE6cp+Zw
        fPTdDcnJTgAnp92aRrSwAN+3HA==
X-Google-Smtp-Source: ABdhPJwgURaGYxcz2whLZl5/LX9NiM1NFCwRsTEI1x/LHttzgS0aG+A1McOp99ZcY97ES4RkdgmwCQ==
X-Received: by 2002:a50:baa1:0:b0:418:849a:c66a with SMTP id x30-20020a50baa1000000b00418849ac66amr28069530ede.234.1650526963798;
        Thu, 21 Apr 2022 00:42:43 -0700 (PDT)
Received: from [192.168.0.226] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q8-20020a056402040800b004227b347ee3sm9307797edv.56.2022.04.21.00.42.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 00:42:43 -0700 (PDT)
Message-ID: <eb20be87-5876-79f6-be43-9597d11b13e2@linaro.org>
Date:   Thu, 21 Apr 2022 09:42:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 04/15] dt-bindings: power: renesas,rcar-sysc: Document
 r8a779g0 SYSC bindings
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        geert+renesas@glider.be, magnus.damm@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-serial@vger.kernel.org
References: <20220420084255.375700-1-yoshihiro.shimoda.uh@renesas.com>
 <20220420084255.375700-5-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220420084255.375700-5-yoshihiro.shimoda.uh@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2022 10:42, Yoshihiro Shimoda wrote:
> Document bindings for the R-Car V4H (aka R8A779G0) SYSC block.
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
