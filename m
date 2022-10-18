Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2618B602FCC
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 17:34:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229902AbiJRPeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 11:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbiJRPeQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 11:34:16 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA8993B997
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:34:15 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id z30so8842032qkz.13
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=25PwxIH+CB97dQc4eYwSt0zvL+9wdm4R+OmiPZ9+hOg=;
        b=vLCXOO3oU0ZfQ0dydfle8XZIw6pQRu1gYVIIAwm5/C5Z9kElQDG4Wdw7FaKtDb/3vH
         6L3EFRNJ48E/8Su58KBIoQr6x1ISfg+pc15iKh36ehQnTy3aor+3MtJ9YNbnUm5WFamG
         T8QGI1FR8d2Q/8wtOZxUvXvmnf7eInEJaBVOcp3Z7FerGEdhHUySCLv2GSMsDd7s3Wpq
         +cmnBhNNF9wluRo/mIXqtr2X4DASPofO+zmW43gG3RyFcGKGEes+fgCY/sMfSIGkFqmR
         Csdx4fhuGtfacVm0h+Ko4XPK68GPevIlWBMRCPRfjdwL28FZSlk/f2HqjIw6EMEfT86f
         eU+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=25PwxIH+CB97dQc4eYwSt0zvL+9wdm4R+OmiPZ9+hOg=;
        b=zMgSNp6pq7edGeeiElfa9RIdW3ubYDvyccdIe1arISRROzfptZS+udYTh/jMexN3pu
         +887Q/29sV5H5NWHpF8d7el/rd+D1g2Up+3zTRw59EbUR+hOytcn3JvVdUZym/FOOwZt
         MRSb0cO5wKWORqMf/rRPi6fB7BiAB9gSWw1WwPfaN74Sr7oUq6IbEas54nPDt8qlZyaS
         C1vJStTKwdqhWT4ZwE+i1B6fjeorIDP9j3P6QBbvSBIWfXhco/X5k+LaRy44KJan8LNp
         xo785v5N2SdLuXZ7+apqBMkAv7Ar9oSxKAPTQMCxPliU/BRmHMdfazW0GmL0gja+tUj7
         ra9w==
X-Gm-Message-State: ACrzQf1M2duiy4jyu8Q7SUJcmgxhhVYUocbv25LIA518FPfS7HardDJQ
        tVbidm+ZDhWd2/dyYSV11s7VyQ==
X-Google-Smtp-Source: AMsMyM4onaH5hp02rLlllBdKdj8sdj3xKkov6Gukv4sG8mr4QrOTttP/uDoCR+/g5eDLB7qKAf2uZQ==
X-Received: by 2002:a05:620a:131b:b0:6ec:bce7:99a9 with SMTP id o27-20020a05620a131b00b006ecbce799a9mr2259247qkj.84.1666107255022;
        Tue, 18 Oct 2022 08:34:15 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id t12-20020ac8530c000000b0039a55f78792sm2031844qtn.89.2022.10.18.08.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 08:34:14 -0700 (PDT)
Message-ID: <58883c51-d72e-31c8-0632-211b532c584e@linaro.org>
Date:   Tue, 18 Oct 2022 11:34:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [RFC v1 01/12] dt-bindings: phy: mediatek,tphy: add support for
 mt7986
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221017104141.7338-1-linux@fw-web.de>
 <20221017104141.7338-2-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017104141.7338-2-linux@fw-web.de>
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

On 17/10/2022 06:41, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatible string for mt7986.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

