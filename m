Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F361580FD5
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 11:25:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231492AbiGZJZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 05:25:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbiGZJZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 05:25:47 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 125FF2F391
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:25:46 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id w15so13744001lft.11
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=G979p6J3upzKXuhEp2GoJSICZMchF50k7d+9wNNaYqs=;
        b=dkx+YtCkGjq3xUPdQFkIaxaLSwwI2sTUB8A9ZVPPp61SEhbfSXWa9UEzjMpdzJLze4
         SoHW9hAq+ABlZ184Zwix5m5RtLD5vpRYhxZr76g0pJluxnefYFcfk/LBnBOFWDeqXLuR
         xUtZQK94Tc+uVrNBoQZCGBxnPb2BbqtrvjJHzKM2gjYcYkqqvl9aL5KbWvuJwb6mHOgT
         6hCW0Fn7I03v3gfRLx6TVRJFD4MRRJwxMKxrhmBmUIMCH1ZoNS7xHJ224G1u9eSMrBDL
         fA/L5unMC46lLOmsIt4xcrUROpwrWgci8+/OcQDI1Qi0HZX+vpsETrsA8UDFzVGV4VMm
         bPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=G979p6J3upzKXuhEp2GoJSICZMchF50k7d+9wNNaYqs=;
        b=aJUIHBOkvH7ZUONzJndSuFRhPqbR84ijJcTX6J5ZC0Z1z2+jiaqsXz4md49EpuwQaH
         TyA8ZhoJRcIn+VGzCy8gOku3nUa8DJxGjZ9rv2dZvGlp10zcXTpJW9rGVD3Z6cZlv/jb
         VrGDOj4Hi8/huDYuqFFmkAJyxttAcXBqqLZ19mjRv3vJElBn0iHcbk+Rfy9MDKYwVA5l
         evyKbTnjh787EKxCnfF3pXnQ0yTIQQFSMeXmFUSMckxsn9OVDZD6JtJpAgW0Y+/sTcRx
         NVAvZKS0H5LNQChxDvi2S3ICOoTho5KwfG56Isvb5BdNvAm1H4nmVJxEf6atVrQP7oju
         nZgQ==
X-Gm-Message-State: AJIora8k91wa/4+qBAyNKnrVXUGg/98xAPZ+OBe0MxwfmAV0oXp1vOHJ
        XyGRpZm0J1cUS32CvB0sDNuxCA==
X-Google-Smtp-Source: AGRyM1s6b6zrQNOjDF5dUTsxYs+5vjB/9K8JyZnwbHpkGIj49zBJrSqoE2eeJ4MZk7XgGQue7MXPZw==
X-Received: by 2002:a05:6512:3e1b:b0:48a:a3c9:a124 with SMTP id i27-20020a0565123e1b00b0048aa3c9a124mr667786lfv.14.1658827545651;
        Tue, 26 Jul 2022 02:25:45 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id j10-20020a05651231ca00b00489e812f05asm3141999lfe.21.2022.07.26.02.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 02:25:45 -0700 (PDT)
Message-ID: <4682a63d-800d-c713-8bb2-caed99156299@linaro.org>
Date:   Tue, 26 Jul 2022 11:25:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] ARM: dts: lan966x: keep lan966 entries alphabetically
 sorted
Content-Language: en-US
To:     Claudiu Beznea <claudiu.beznea@microchip.com>, arnd@arndb.de,
        olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220726084931.1789855-1-claudiu.beznea@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726084931.1789855-1-claudiu.beznea@microchip.com>
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

On 26/07/2022 10:49, Claudiu Beznea wrote:
> Keep LAN966 entries alphabetically sorted.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
> 
> This is based on [1] which is at the moment only in at91-dt branch.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
