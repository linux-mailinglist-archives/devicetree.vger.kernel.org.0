Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63A7D606231
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 15:49:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbiJTNtx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 09:49:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229756AbiJTNtw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 09:49:52 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C4035B9ED
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 06:49:48 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id r19so13683798qtx.6
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 06:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eCugKGKgD58NO86j3of1byOLKxlb3YEcJBoQXIxcJt4=;
        b=V9PnC/7te6W8O4yhJrpQ6/vVx/IPerKdnm+ShwnrGBaK8mF9GIK1bH/Jerk/yg4oyh
         GHGXZeTZoj4Jl8cFbMjycsP0nmYKS29Dcyo2xSgraUVr9Rn0qep3LFtGjDmVaSjZ6fpE
         JRHRTsW5aZiL43n1/wGya3Tn9/rwPVkb6lyHZpDEitk5G1+gK7Yq8Y4gOh1iG/XoL1fl
         DpawdtuA7VCW7pdWAIYPF1Fbk5/KdQO7VAcTVxglbCNkiefAAaN8awsosSI/MKJLMQ8z
         xUN/98n6cVgOdOFJ3RsvuPHWgWexsyB4KQbUtyEjaAKWTBvNR00DgDHv2gEXRt/dNQZh
         uMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eCugKGKgD58NO86j3of1byOLKxlb3YEcJBoQXIxcJt4=;
        b=X6T0qk9KH4OBCEu+ecOkkA6GAeztgMHNoyIT9Hj/oTWEDzoYgzQy5/WMgV36D8mmx4
         mAzJltYO4MPxfP+fs5nspopVmF5oTOZMFgZJOt/FNL/M6s3UibFbYDf88D72n0wAa9Lu
         cvgiylCKS4u7M2EwWihWi+fpQJebDbt5eDIfG4QFygRbQpUChn1qRYgP2qJyXU4D5pCE
         xGdhc3ls76H7mH40Jd2XZ0xbM2NT7SDpZZBUqGy7zeI5Mu9SReeuVi61EPVl3k9LIWy3
         lzAcv4IYSpHFL+o9t/TghxcR9BIailMQX/UxLGO3/Utd01pmTWxbv5gR5qKIr1aN2UDv
         A3ZQ==
X-Gm-Message-State: ACrzQf3zj9LfVtRshbb1xLfcEXijsI+Qia4J4gzuXk9c13QIhxzG/Sdr
        KwUl3OEpu8HW52auTDHt+6Gcsg==
X-Google-Smtp-Source: AMsMyM67Fw2Mkn4WMgrITEyn1zHbFcb5pAPqzgXfo5bWNurksVn6OFa85fmESCPVkwOdlypWblzxhg==
X-Received: by 2002:ac8:5c41:0:b0:39c:d768:128c with SMTP id j1-20020ac85c41000000b0039cd768128cmr11055780qtj.269.1666273787636;
        Thu, 20 Oct 2022 06:49:47 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id bl9-20020a05620a1a8900b006cf38fd659asm6998281qkb.103.2022.10.20.06.49.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 06:49:47 -0700 (PDT)
Message-ID: <d495a80f-e101-cc2c-1447-a22e5b5991e5@linaro.org>
Date:   Thu, 20 Oct 2022 09:49:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: ti,j721e-system-controller: add
 compatible strings for other platforms
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, nm@ti.com, vigneshr@ti.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221020032802.308545-1-mranostay@ti.com>
 <20221020032802.308545-2-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221020032802.308545-2-mranostay@ti.com>
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

On 19/10/2022 23:28, Matt Ranostay wrote:
> There are multiple J7 based platforms, and the j721e-system-controller
> shouldn't be define in non-j721e devices device trees.
> 
> This is mainly for clarity; but also useful in case there are future
> erratas that need to be fixed for a specific platform.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

