Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADF78597FDF
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 10:12:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238264AbiHRIMN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 04:12:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237977AbiHRIMM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 04:12:12 -0400
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39ADD85AB3
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:12:11 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id v10so978793ljh.9
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=AboNbUA5orKwbSGaM9WWSnNF9mCynQkAwPXdxiENkFI=;
        b=fC7/j+q1emErpcDOQR10xxAraE5HNC0PbpyysPTjGm5x9Oei8H4CaPWkbq2lKvy87+
         wLaxJv/o7kvDg8VPuqPqWZOviN+N3Zfiuoffw2uKsTECFuP8Knea2+s+CqKmVw/ode5v
         1B131DcIl1PSXuO3F8mL4i1J23M0aesUR+EvWNFJJtBnaqGGNUt78pB6tcxzfetWodJK
         VUmaPo/5Ndzs54jBiwXgKS6jWsxMMhPGmbcynF5z19Np5Fxm9/6jYR5n6IpP1q3IV1NY
         5OA3whqVksGFhCVEVwJGk/NDb9QwyPDoc009jApVItWKedC67XyKZQwii3TqsYFQ7JS6
         Fqug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=AboNbUA5orKwbSGaM9WWSnNF9mCynQkAwPXdxiENkFI=;
        b=te+ef7FZa8zvtLUOU6aAz4UaCRp5m6FDgEQRR85VXj7/x89YxgaitIlR5jxKQBec1C
         Wr1ozByYqoNkBOBQSxIbKeMbNf/JNnN24fa3f6bsd1IqLJ7IPrR/fy1T4xbzSMn1XOyn
         l572PPDCwu5Ahl8kS6koJaheWrwWdvs0RZnajkwM4ZVF5Fgaa5MyN5bu3Jax995m7sIM
         gXsE29ymwfpxfhSE55OKQBXeV3kdDiDA9NJ5qrZVrQQ3ygtPxPyxh1ANa2RJLybqWRAY
         SLbZ607w2RljgImSeO822LAhXWkxUbUGEeHBN+AEHb9pGEJ+l4Ege/HIZJcKK9BNDDeS
         8QXQ==
X-Gm-Message-State: ACgBeo0lFLyYKRXKfzrqaerpqKOJrnM4JHaSY53Kymk4xWIbAhqd4cTi
        Nf0qfitemte+SAL7xtt00TdLLf3gCWUQASeM
X-Google-Smtp-Source: AA6agR43Ep2yeZI47P9SMh2HYt5XApKY0lW4goWQD/qh2ZtQD6y8mObdPsPDSX2nTNTvevIS/lxAtA==
X-Received: by 2002:a05:651c:1507:b0:25e:739c:d9bd with SMTP id e7-20020a05651c150700b0025e739cd9bdmr526398ljf.178.1660810269734;
        Thu, 18 Aug 2022 01:11:09 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id e13-20020a05651236cd00b0048b0062a14fsm128339lfs.144.2022.08.18.01.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 01:11:09 -0700 (PDT)
Message-ID: <7038777d-0424-27ab-1aa7-d002e1353ff6@linaro.org>
Date:   Thu, 18 Aug 2022 11:11:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353 and
 RG503
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-3-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817204954.28135-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 23:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add entry for the Anbernic RG353 and RG503 handheld devices.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
