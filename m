Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F0FB59E43D
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 15:32:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240346AbiHWNDj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 09:03:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242428AbiHWNDC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 09:03:02 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F19A771724
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:05:53 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id n24so10995553ljc.13
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=fqiKf0BLmyvWe2DRPuWRUrG4aK91/YgL5gBtIo6rx9g=;
        b=LoiI+fUpOhA1S1wXC+DDHIPlSPyLAwqz9ZCZKx2TTD7x7kVulTbdCgOkMUVWfVvM2I
         ij+gK+GnOjgRyoor6WAHRrPWyU0d8vjG2tYUJnz/XEwbbIuKM4aqMVd7C2T14rWs8eZU
         hYck/orrrsSYJnfsQ/1zmCJA5TR02/7rTiDOqTBpJ9ox/+m4GoZNK633SSvyxdOnvMLd
         17wJ4c6SjixrnIv46TnYWMgSO16i76TbI39YwbRoRSqiKaafDwYbPMzfJrWANyl9e8oG
         R7gwI8vRFjHCHhpb51DgPHX2pcPt5uJcA/PAY3ONG5gbc3lL0kkYNLjwY0gWQeMp5WPO
         neVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=fqiKf0BLmyvWe2DRPuWRUrG4aK91/YgL5gBtIo6rx9g=;
        b=EOGmhOy336Y4R5vqOuu4yVrH1JOpZcqazMxhns937Zw8I3FC5oCsuY/pgtPSr4ozVf
         0b9myC9pSkbR+lF6w7+up7qG1Y4rAZQyTp+Y4qKuPuGhDPCDJ3DK3d9UtvcPB8vvz/yp
         ezBv5MQe45s8U1BcFNwUOUoJ99gykKcWGARqmKstkO4o+qpnYlEUbyEx7W9ipdQwihU5
         p1nIUbqwKk7+hQYEsdfJ+OPoVd2eOmR3J8/xWFa4q1I+QCzDbFF3NtZuAgR1ZXlaqTkv
         W0MzcoIl0RppZFgbheOixmK90YRBofc0cjGqa88Wrm7j1WTT6xIR2IMtbGQJAEAbVOgg
         nHLA==
X-Gm-Message-State: ACgBeo3l0w/usnkv/57lcHDNNou74Oj1QmqkP9LO11VNosUMpZwClSoa
        bDXrej1ErFzPYRqb9JU0yp+wug==
X-Google-Smtp-Source: AA6agR6HCVRRmiWdV5cSWBXh35gNbti1adFT+KGUdu3NvYpgxzuTmZLIS5eCk/RjQIlf2WsRqMTzCg==
X-Received: by 2002:a2e:8415:0:b0:261:d673:4d6 with SMTP id z21-20020a2e8415000000b00261d67304d6mr562302ljg.223.1661249129314;
        Tue, 23 Aug 2022 03:05:29 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id m17-20020a056512359100b00492cd4bd383sm1944255lfr.223.2022.08.23.03.05.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 03:05:28 -0700 (PDT)
Message-ID: <17899835-b7fc-fa34-fec4-2462c7829f3d@linaro.org>
Date:   Tue, 23 Aug 2022 13:05:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: pl011: Add a reg-io-width
 parameter
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-serial@vger.kernel.org
Cc:     git@amd.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
        shubhrajyoti.datta@gmail.com
References: <20220822130333.5353-1-shubhrajyoti.datta@amd.com>
 <20220822130333.5353-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220822130333.5353-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2022 16:03, Shubhrajyoti Datta wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Some of the implementations support only 32-bit accesses.
> Add a parameter reg-io-width for such platforms.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
> v3:
> patch addition
> 
>  Documentation/devicetree/bindings/serial/pl011.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/pl011.yaml b/Documentation/devicetree/bindings/serial/pl011.yaml
> index d8aed84abcd3..c8a4cbb178fe 100644
> --- a/Documentation/devicetree/bindings/serial/pl011.yaml
> +++ b/Documentation/devicetree/bindings/serial/pl011.yaml
> @@ -94,6 +94,13 @@ properties:
>    resets:
>      maxItems: 1
>  
> +  reg-io-width:
> +    description: |

No need for |

> +      The size (in bytes) of the IO accesses that should be performed
> +      on the device.
> +    $ref: /schemas/types.yaml#/definitions/uint32

This is a standard type, so no need for $ref

Best regards,
Krzysztof
