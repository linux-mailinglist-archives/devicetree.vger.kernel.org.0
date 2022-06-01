Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12C4A53A058
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 11:29:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242664AbiFAJ3z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 05:29:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350221AbiFAJ3z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 05:29:55 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB93C57B25
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 02:29:53 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id w27so1338804edl.7
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 02:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=C6BBE0/8aWD0U6b34P/0bYoc+/0EAewosydXU12SlBw=;
        b=A4U5N3vO4yBtKSISkLQ4bRH8e1ajjWjGxbpeQnZNwNZ8lKyum7Ou725eeAcYb4/y+o
         IsUFQTwPVYOUP47HhtOFS+1ZXvukuvH7pDu42OsGFgE2RHH9zg27ZV/VwlV52GOp6Th3
         Mkr1X4RW5tVdWk8Fwia6I58J9Z7HvfevxhhU1933dSxQxLB3eAT/qZuza6/BmXaV1Bj6
         dmGb+WSQQKJMD7rJNYuUzJ1vUTGMfulcv+S6pAVqtLEWVYjllVaiJUl+owJAmEUW2Lfz
         AyTKaNdsXMr6OzTbQTx03d1kKT/YWLqQSGvAPLYee4pKpzMyFbDXmVWuC9NOAdSqdMED
         TZpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=C6BBE0/8aWD0U6b34P/0bYoc+/0EAewosydXU12SlBw=;
        b=PyNOu6Ldw6qys6bGRtVuFM3xfvMLY/t678SQ+TPVHpXdTD2hWZEddqE7RBwcep9GM5
         qLVmEh3qS/rhWvaieylIlCnljgYf5g+Sav1sK7a8d4L7vikQZDRKDmscTCNY2wB7qlzl
         VXsyyMsFoeODqKN2G9BF89oPWP/aqHw824992Q+bhh4UPxOzHNr3kmWKF+rUgP2aO+Sh
         K9TMZK1DEX93NtDyM+7+GP8ytk9eE6pQqTsIES1eRNt44ybrj+OgwrzTb0Qs+fN4VqI1
         T3DV/vtl3fr41SvRTOOFdOlZ9gaZpF5YynAoi6c0K7BPW0TEcqWJ4viAYaguKCNqcdNe
         Bnlw==
X-Gm-Message-State: AOAM532M6YTu0X5XkarLJYAHerYaJBaGNP6LcF8nmxjuVhUTrUyebzLy
        tMZMzaK6JCzX6gVU6cETrh3U2Q==
X-Google-Smtp-Source: ABdhPJxJXnm77G6F2BEDcWDZCfBLs6Gdv1EZTsUqsy7QG5zX39KqyHImogN9gI6gDrcUVMJ7RL4Mng==
X-Received: by 2002:a05:6402:5191:b0:42d:d6cb:d18c with SMTP id q17-20020a056402519100b0042dd6cbd18cmr13058705edd.11.1654075792399;
        Wed, 01 Jun 2022 02:29:52 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p11-20020a1709060dcb00b006fe9f9d0938sm479103eji.175.2022.06.01.02.29.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 02:29:52 -0700 (PDT)
Message-ID: <7f9c106f-bc5d-7441-5ed5-7e899ff56611@linaro.org>
Date:   Wed, 1 Jun 2022 11:29:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 1/3] dt-bindings: arm64: add bcm4912 SoC
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     dan.beygelman@broadcom.com, philippe.reynes@softathome.com,
        anand.gore@broadcom.com, florian.fainelli@broadcom.com,
        tomer.yacoby@broadcom.com, samyon.furman@broadcom.com,
        kursad.oney@broadcom.com, joel.peshkin@broadcom.com,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220601004244.27394-1-william.zhang@broadcom.com>
 <20220601004244.27394-2-william.zhang@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601004244.27394-2-william.zhang@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 02:42, William Zhang wrote:
> Add BCM4912 SoC device tree description to bcmbca binding document.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
