Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83DDF4E9A65
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 17:08:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244245AbiC1PKJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 11:10:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244242AbiC1PKI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 11:10:08 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A82C453A46
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 08:08:27 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id b19so20816421wrh.11
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 08:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=c6REY1PLhiapPTr7AeZ96JBFH3lbQ/XIpgsf/k2b/KE=;
        b=rc8knfvsbiIZeLFyS7vHudfEQ6F+nDgM3nGrhMy05X5s2i59dmjrUszAs0BvjyNWc+
         c6YiB86dNVsSkk/sbeN3N18kffBdAaLmtremfAs81l4O9b8E7WdTc9ol8rl2i0wCU/Bl
         ptGd+ZZm2dn/f9ZkjKxpqWN8O5Rh4C0cdkYbNsdrEJG4aLvhlMlWo1DpLweq6SvuyWyj
         IehazaE5KCh2hWLPm18e9Eu715V1wMv5olHpb0n8AfTU+h4CSPs5lCbHcryvYEm1O9ph
         c5HXrQ3FP5UeRqpYwPKoNQ8WUqy6REhpB10VdrlL3l4VvoJDP5SU/o4VLLTbkasbM10f
         zaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c6REY1PLhiapPTr7AeZ96JBFH3lbQ/XIpgsf/k2b/KE=;
        b=OS2Gf5OATNxCBAE8GFftgYvGz69f8OCCeWabQKtAstqIjY1eKknjG1yqD9m8kM4VFe
         GQg1/YlWu3cKImLZMxmhed/4RZAZHkXKN/pCgtXQb6LkllGVmdNCoE3WfzAb07qzojDh
         siyQL9fWuWr3bGCzRJEwJpRdw0FBTteudh2Kt1gL5wSTRVLlR8ddEEf6qo6zvedHJmTN
         +vmkSDVxFcaQf93oyRkv103Lqtes+L6oXK4uKCD5JfDcqYTuIVZvi0MUL+2ssqO+XN4f
         B5SyH222NlaFnTYqnqdJrlqebipaqK7z7B9AdjB4zGzgXQxjjoqNhth3amVdhi7dWJHr
         UBEQ==
X-Gm-Message-State: AOAM530/qI2pzbd1w+rDX5DrKgzkYvEwGMhCGVWSzcfVQTF3PCnb6YXn
        1qDyaXSPylg1b5WjnODE8pC+OoDqowdhBevK
X-Google-Smtp-Source: ABdhPJydoBELfp7hcJZbOgQCsniJ3eyPk42bn+yxHvqwq2v6SqofvqObHz1gbJ5BZQd3D8SmYadJfw==
X-Received: by 2002:a05:6000:386:b0:203:f8d8:f70 with SMTP id u6-20020a056000038600b00203f8d80f70mr23939212wrf.163.1648480100875;
        Mon, 28 Mar 2022 08:08:20 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id u23-20020a7bcb17000000b0037bdfa1665asm22329921wmj.18.2022.03.28.08.08.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 08:08:20 -0700 (PDT)
Message-ID: <4ae92eed-7713-69a4-8fe4-f777af652e3d@linaro.org>
Date:   Mon, 28 Mar 2022 17:08:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sm8350: move qup-opp-tables out of
 soc node
Content-Language: en-US
To:     Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220328143035.519909-1-vkoul@kernel.org>
 <20220328143035.519909-3-vkoul@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220328143035.519909-3-vkoul@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2022 16:30, Vinod Koul wrote:
> The soc node expects all the nodes to have unit addresses. The
> qup-opp-tables do not have that which causes warnings:
> 
> arch/arm64/boot/dts/qcom/sm8350.dtsi:640.46-657.5:
> 	Warning (simple_bus_reg): /soc@0/qup-100mhz-opp-table:
> 	missing or empty reg/ranges property
> arch/arm64/boot/dts/qcom/sm8350.dtsi:659.46-676.5:
> 	Warning (simple_bus_reg): /soc@0/qup-120mhz-opp-table:
> 	missing or empty reg/ranges property
> 
> Move the qup-opp-tables out of soc node to fix these warnings
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 76 ++++++++++++++--------------
>  1 file changed, 38 insertions(+), 38 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
