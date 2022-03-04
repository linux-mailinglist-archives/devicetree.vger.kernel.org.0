Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D72B4CCEE5
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 08:13:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232606AbiCDHOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 02:14:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239517AbiCDHNp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 02:13:45 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C74741A275B
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 23:09:39 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 04A793F1AF
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 07:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646377762;
        bh=XhhG0wWaf3K6yBJwDmPYA6VsKmLLMnPsayg6VQNoL9o=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=vexEf/yPs8XqYl6NUtKiYIxtAC3tiCe3KZhrOCZUrIcps5ywTESoiosiThT+iAIYm
         k8r0jBUhkzgk19/fRZe4zi4URwCetYByhlg4L7+olfPVVLoROrFEFF6r7pVNfGGRsH
         W1Tq3Cpm9cW2a31WJCtZwx1xO0nCwmX0PnW+QsPQwT5PQdgegHD/MmjrCzHaTXbjc5
         xwHFKWoZBpHVpwDjeXu7PAhO/CWZLlwc4J4BmQfmPZyyhXs/LFp9HWs6mQJKRdl8oX
         g2YO7iSjMXtAfJg9pYzx3mXt6cDhQmqBojfLQJlbOP1HqdvwQd+awZMH1HFFzk4IHM
         3mLQ6igsOF9oQ==
Received: by mail-ej1-f69.google.com with SMTP id d7-20020a1709061f4700b006bbf73a7becso3969918ejk.17
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 23:09:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XhhG0wWaf3K6yBJwDmPYA6VsKmLLMnPsayg6VQNoL9o=;
        b=FkqGWNbjt61zv9Y0FOFhUbYcBvoUEJuFdfeDpqo8LGdZ0DUaz9Gc88r5tA+ZArB6fn
         5DQYdpnG5UBCUs/uo5aS1z6qcmwn6eGFPkLcNJJ6VXVoJPJ1eaB3OHIJyt6SBXzq8kK7
         5jhfxGlE23TWdxGLeE44HkTxkzX9+D1o9NkdBa2/B9iZWTbLfHZlBNxBIrvybhliBWZx
         w9ZHU9h8/kRrZiGQgTYKPv64k7NwsrGRNQovgr4RePaFbKNv1xVi/Riu176N7ksjOKjn
         4oKiZx3VMKS2qAljLvkSIrG/3DlUvdfjNsEysWIKq6ucO7EstUeZTGekG5qG/ajO93Ql
         4DeA==
X-Gm-Message-State: AOAM532zQYydV5qzoz/O94b2INcy1Ym2DLZ4IRxx4AwAPS66Y+xGriDk
        OE1A4PP6NBb1rzTICfftHz1LQyGoMyfrKeN4TstCilvwgQn5Jry2gXAsb+874W/G7xz/31tOE63
        VH83e6v7mhj9tSlmi9EACghRAbzCQ4zNTaO6nja8=
X-Received: by 2002:a17:907:72c1:b0:6da:be5e:dc98 with SMTP id du1-20020a17090772c100b006dabe5edc98mr607436ejc.283.1646377761657;
        Thu, 03 Mar 2022 23:09:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzZbPRGv5bnhCmhmW6GOxSNC610FEmnF8Qt69qFZsxgdxMOr5mYxC1tSKXc+KrPEdq7x4Y8iQ==
X-Received: by 2002:a17:907:72c1:b0:6da:be5e:dc98 with SMTP id du1-20020a17090772c100b006dabe5edc98mr607430ejc.283.1646377761513;
        Thu, 03 Mar 2022 23:09:21 -0800 (PST)
Received: from [192.168.0.138] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id e8-20020a17090681c800b006d9f7b69649sm1425116ejx.32.2022.03.03.23.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 23:09:20 -0800 (PST)
Message-ID: <d714afb4-0ecb-0caf-564a-b8cc1933d9d5@canonical.com>
Date:   Fri, 4 Mar 2022 08:09:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: kbuild: Print a warning if yamllint is not
 found
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <20220303221417.2486268-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220303221417.2486268-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2022 23:14, Rob Herring wrote:
> Running yamllint is effectively required for binding schemas, so print a
> warning if not found rather than silently skipping running it.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
