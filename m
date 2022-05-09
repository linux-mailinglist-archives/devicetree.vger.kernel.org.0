Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CDCA51F5EF
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 09:55:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233881AbiEIHlC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 03:41:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236368AbiEIHUV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 03:20:21 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAF48E08C
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 00:16:10 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id gh6so25037101ejb.0
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 00:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=/q4d3OHrZvdq1tcu5svJ1FaMMKQIyrlKNH4TSyE5QtM=;
        b=mlL24byEHKNHhJD39spMy4tFbcQfcy8DCRoyWl+71T77EMUcEHWqYdlEHlmfA1IIkI
         ctwfNOdUTwHff30O3qav9Rlkcklgh2WdsOwicVaTOL2foZ7anYprqmnmNFjPH3fbi83f
         vVOncC1zPkceGlm6AmQ4bQMeqe+upmwsKelJBX4mls2c0h5p1kdRu9cZTTgma1KMUr2s
         aGr4vxSSb/BCNWDZG5z5z+Rm6KjozlnM23Z23ghY84QEOiwQUMZTQglnfWkmukjjlyTX
         TOvOzy2sOnLP5SIew4eWkX/oe6XjLxHVk5JLpgvMuDCdbqMt2p6ujPh24bbx0azI4aAI
         tTWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/q4d3OHrZvdq1tcu5svJ1FaMMKQIyrlKNH4TSyE5QtM=;
        b=0wpegqL+Ho9d8JOtr1HhtgOHY0sAcQpjTUAep1ZlatzDwtgg6pN66lQsd/EvBg19bJ
         qUhfE//judWrBjwr+3FcNrb6DwMfPbgoHC0GHhRABts0GZp4PkpHVQVp79gQ8xdML6zG
         IiAZXKswPrFilyonTQw8OAVMpXtKajm5xhN3VZ2rtYw9OHXrnZByfyO5AE3YejlXC1Qq
         LZQWZOLysT9RhnnLS3SI67CFCR7Y/PTa5aazfoL1jOrq9LJCt6+2IpDcb6B+gCGRiI/z
         lNnujfj7HCi9xnFEqWmO0swQycqy2IcXwGmupFqaSC9pOPBoC8kNSGRmkDOKqVbtecEN
         ohuQ==
X-Gm-Message-State: AOAM532ZQRrFVkBPx4TJF6ISUXTWKeZ4gzfr8WeGd6V5S9km59NEXGT0
        vHRsxLjo1fmepUq7QR7oDQRnWPqPHG1kQBfw
X-Google-Smtp-Source: ABdhPJx11KaoIOBoxzezk7OjBrcz0m+M7R7hALB4LLuEiqyNltMkiAXGFjD3aRSGOCHjRpGmCIX/vQ==
X-Received: by 2002:a17:906:2a19:b0:6fa:7525:45d8 with SMTP id j25-20020a1709062a1900b006fa752545d8mr3201491eje.768.1652080554493;
        Mon, 09 May 2022 00:15:54 -0700 (PDT)
Received: from [192.168.0.242] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y1-20020a50eb01000000b0042617ba6392sm5845956edp.28.2022.05.09.00.15.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 00:15:53 -0700 (PDT)
Message-ID: <703ef9c7-40b2-6b57-82de-c66c2a1e8268@linaro.org>
Date:   Mon, 9 May 2022 09:15:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 08/11] dt-bindings: clock: qcom: ipq8074: add USB GDSCs
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, bjorn.andersson@linaro.org,
        agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        tdas@codeaurora.org, absahu@codeaurora.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220507202948.397271-1-robimarko@gmail.com>
 <20220507202948.397271-8-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220507202948.397271-8-robimarko@gmail.com>
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

On 07/05/2022 22:29, Robert Marko wrote:
> Add bindings for the USB GDSCs found in IPQ8074 GCC.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  include/dt-bindings/clock/qcom,gcc-ipq8074.h | 3 +++
>  1 file changed, 3 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
