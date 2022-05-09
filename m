Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B83951F5D5
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 09:55:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232060AbiEIHlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 03:41:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236164AbiEIH0l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 03:26:41 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF48414B67A
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 00:22:43 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id g6so25026590ejw.1
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 00:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=VG0oaYVNS9oo5B6XMztTWMiu1FjZGmQyZ6YxOAa/js4=;
        b=hMTkW99YPsnxM0OE2gDcGn6KOlMx97QE4JaAp3FFrot5uu1dyYgpSQ9aJtujmJCyZU
         ++TXlvw7s1u9e99ut+fBNRa0DHgrLioWMN323lqAxEMqOf9riMTPeX2sD978VfQrOkqm
         EsuReGEUOdwN8n9mXHl6Qj4t4mH1uTkwipjZSf4Ng+33c3HnwvRoi/7UmllLhIt3LWNg
         XcK95R0A34+CXtS5MBNbyLNb6T2x3IGMYmbQloU8eelgZLbSw+RkOrHfySj1/oE9BEqG
         2Ak8c3hdPvmYIA/K2P7eeLB9IqFocfGdDCJHED5kWzlARQwkd3CR7NEMjC1/v3N1qjhv
         yw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VG0oaYVNS9oo5B6XMztTWMiu1FjZGmQyZ6YxOAa/js4=;
        b=VRCDGhCoWbMt6EQtbc4Tx2IDddZYyFK+6sWngdsFUW//Exzf0h6YqRT0SMOKQ3V4VH
         eIKKI97fcDrH8Ro+2HONbXSh547+hBnK3lW3zOqw/bJsG3EVI3UO+44J5RIlOyZs/A6c
         cLbiNhOx9JzWCJvnZaTC2+HKkI6rTX843DrwDfbGw0+FSiAHJArMMzhaMwgF5xV08RjW
         4f+0OObImbWT+HlAXA7IyGNFVDu06mvr/MD43jCBSZ09el9/S2ujvdHmrHOpyGWcpSMA
         HKMARZ/JYS482350d81q9Mz7EfNo/mBP25XcuZnfC3peNdKkODSm6gvepjahbOvGmViQ
         9nbw==
X-Gm-Message-State: AOAM531DyzGP0pJxzMJ5CwnZUge2+uFp12FF9uowQndtztuzAXgc5kuv
        3l1ygyiTN3CbQJtAlLf1nRfsZw==
X-Google-Smtp-Source: ABdhPJzSjwMq3Bv+9F1DnuhXi9B8hZ/IBbeR2RU7xebFBmkE+68CjPuVtWhkPW6MPlyAZCv8FPoL9w==
X-Received: by 2002:a17:906:7944:b0:6da:b834:2f3e with SMTP id l4-20020a170906794400b006dab8342f3emr13824811ejo.353.1652080962390;
        Mon, 09 May 2022 00:22:42 -0700 (PDT)
Received: from [192.168.0.242] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gv56-20020a1709072bf800b006f3ef214e5fsm4691166ejc.197.2022.05.09.00.22.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 00:22:41 -0700 (PDT)
Message-ID: <e14122b9-cd7a-b2a9-93a5-cde6139969c1@linaro.org>
Date:   Mon, 9 May 2022 09:22:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 1/3] dt-bindings: soc: add bindings for Intel HPS Copy
 Engine
Content-Language: en-US
To:     matthew.gerlach@linux.intel.com, dinguyen@kernel.org,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20220508142624.491045-1-matthew.gerlach@linux.intel.com>
 <20220508142624.491045-2-matthew.gerlach@linux.intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220508142624.491045-2-matthew.gerlach@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2022 16:26, matthew.gerlach@linux.intel.com wrote:
> From: Matthew Gerlach <matthew.gerlach@linux.intel.com>
> 
> Add device tree bindings documentation for the Intel Hard
> Processor System (HPS) Copy Engine.
> 
> Signed-off-by: Matthew Gerlach <matthew.gerlach@linux.intel.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
