Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 176684FA71A
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 13:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236291AbiDILQn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 07:16:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241541AbiDILQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 07:16:42 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98BE399EF1
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 04:14:33 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id c7so16493791wrd.0
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 04:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=y4yYCN+LfiOyyqoZmp08GUHOKiI1LlIpiQoOfMctoRQ=;
        b=pQC4DoTOkdWBB5qcoBmYXGpAJNx+tTvOELWsku7eJcVoWYFxZ8k37+3lQsQXQEQvUT
         7alQR7NpTJvVKkPGJGzabHf7qVdAdJ019WsRzdWu4NJR5nS1ABVNz+DZ+EQVyG7PrzBn
         2CZZHKpPvTuHY/M+urQvHHc1l8KfPK1n4b6EW2N0MSVgOm9fdjym+sHRC/axnxi+D8gG
         Z2Ufj70SHcur654LnoJDgviiAZcsD9+VvgjovqDSsE1BuqWqy52D1gyikqJ5eOygPMef
         4nLU59NkPd6ZO2AoaMP32noZceR1hsHJTgktYjbQ4b4HvYkJKK49c9r5FRm2O0jNTqDt
         PEwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y4yYCN+LfiOyyqoZmp08GUHOKiI1LlIpiQoOfMctoRQ=;
        b=S62STuA+kSiz7aMExa4Jaik5NT1OF3jCcL738IfRp6yx6f7Q5BrNoYlsY5CBH1YU6Y
         8jTJgV0jCOKOwcTV9xHijSiEILSQY2gpxWZ55pbkLChmhtVsXM4E1jGKD4cESYLg03Di
         a0Ju/4XhqJkOQoCiXIWJDYMeLhhVnDrM9e99+3J541xkKjeh6a75Lrq+TB2Xvq28ngJt
         P+8N5zp1kCRwXv6BLPlbadBZ1Yb8pufg6ghaHDI9LznOkJgDyRENC1TK41VJEoKzAtbd
         gEDms+TsimONcCKtXL8ypJoHvUwTiEGAXCCQ3FFdudmYQ7KRNaSocLMprXkoOPyp4LlQ
         iyeQ==
X-Gm-Message-State: AOAM532noWeiWHxiZwy6IeZZd8+pIQ+DMVCqUDlL9psoy3QCt/MtB8yE
        Pv4t0ud6emZnrwnyQfLNnan0jg==
X-Google-Smtp-Source: ABdhPJyxqMKOjriLGzDdR1mxGSvkpYxUeUUM7W2GpgVxINS8ZwupRcyuiBVSiApArrP+c8PhWRTZLA==
X-Received: by 2002:a5d:5986:0:b0:205:87ae:9e18 with SMTP id n6-20020a5d5986000000b0020587ae9e18mr18310215wri.537.1649502872202;
        Sat, 09 Apr 2022 04:14:32 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id p3-20020adfaa03000000b00207a1db96cfsm510310wrd.71.2022.04.09.04.14.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Apr 2022 04:14:31 -0700 (PDT)
Message-ID: <c41851c5-8f17-4ac0-d4c8-a3aaa7f7fb8a@linaro.org>
Date:   Sat, 9 Apr 2022 13:14:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 06/18] MIPS: DTS: jz4780: fix rtc node as reported by
 dtbscheck
Content-Language: en-US
To:     "H. Nikolaus Schaller" <hns@goldelico.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mips@vger.kernel.org, letux-kernel@openphoenux.org
References: <cover.1649443080.git.hns@goldelico.com>
 <5b4831407a68c22fbc63c7d29dd608ebfdd4cef2.1649443080.git.hns@goldelico.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5b4831407a68c22fbc63c7d29dd608ebfdd4cef2.1649443080.git.hns@goldelico.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2022 20:37, H. Nikolaus Schaller wrote:
> arch/mips/boot/dts/ingenic/ci20.dtb: rtc@10003000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['ingenic,jz4780-rtc'] is too short
> 	'ingenic,jz4780-rtc' is not one of ['ingenic,jz4740-rtc', 'ingenic,jz4760-rtc']
> 	'ingenic,jz4725b-rtc' was expected
> 	From schema: Documentation/devicetree/bindings/rtc/ingenic,rtc.yaml

Why? Maybe the schema is wrong. These devices might not be compatible.

Best regards,
Krzysztof
