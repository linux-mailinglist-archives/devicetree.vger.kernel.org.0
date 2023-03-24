Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14F066C7BFB
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 10:51:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231222AbjCXJv2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 05:51:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230029AbjCXJv0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 05:51:26 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B8828A5F
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 02:51:25 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id r11so5543520edd.5
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 02:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679651484;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m8d8n4zJUu4+zAVIIKiJzt8kfHtj3DMZ1a0PignKXpM=;
        b=JSP+oG7TORJ0Qvgf4YpsJEtCkGUBw4B0vwO5b3zoPwcax2GPfwBkHhnMEi7rLkpQYY
         DoFBD21rrrsNHZEeladuEMOsuqmh6i02+oCcmfUudHeJbwawSQ6kr8bCvEUu5i1Cg3WK
         A/lylHDRrMQn0dLFHJjDMzBunO6c69ZRi+JQli8I+Q9E8Byeus1yl553aAXKuocS7gm5
         5ag0C/bFtQyfGZthxQBVxDhnK3+TbpBuUZuvrm3iyFqxkAaZiAJtzi8SsVdD8X8RJkfB
         2Nw80Bc05mC3am2tpC2o6nc/a/bju4EfgHt1Jj8UM8ttpRlhcZnE7w+RlnzZtTAQP1GY
         Y2ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679651484;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m8d8n4zJUu4+zAVIIKiJzt8kfHtj3DMZ1a0PignKXpM=;
        b=6fPGO1wGSwuw5hVK9OzroHm2jwMoJnYyxxYDX1voIK89G3utoKC/SAkUywu6vJD1zR
         Ii0szPLMY4T+fEExX2FwacgpvSmUJLcJItedshREQ8xJmAKiYZxIfAs9zGYxuK2WHwXI
         5mXefusJ0qkmo6h34H3K/d3mWkjJ8dRq7uBIR5gHQonA8W4lNWvqNk6FIsyZKURSjXgS
         LhWeFxDHfaJhIGH8Kweue3jgr10RePbPEWbP3lAvnlPfvdBinPXXyyTnb3hv1Jr92eWs
         Vv5gF+oAYMYcRmwyGJWG/zA32VG8SsGI6hixUeQTQ7+S/IInXMceP9G0DcKSx3FBQsL/
         nVHA==
X-Gm-Message-State: AO0yUKVg4h4kT+Mhk1w3Jxt6f9ZBXXVl2WZlOM4HbJDmhulwEPfxc5mB
        a/mX71aRotN43JzNWWywwP4jsw==
X-Google-Smtp-Source: AK7set9iS1RNTCxr+nAo1SXupeLzMq0UksabKsMYsIjJBdUzLKOEiT3GVJE7Wvw0z3AshkMgQ8WNOg==
X-Received: by 2002:a17:907:7630:b0:92d:6078:3878 with SMTP id jy16-20020a170907763000b0092d60783878mr8454189ejc.33.1679651483840;
        Fri, 24 Mar 2023 02:51:23 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ce50:243f:54cc:5373? ([2a02:810d:15c0:828:ce50:243f:54cc:5373])
        by smtp.gmail.com with ESMTPSA id x23-20020a50d617000000b004fa268da13esm10562650edi.56.2023.03.24.02.51.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 02:51:23 -0700 (PDT)
Message-ID: <f9112083-675f-fe61-c9ed-7bef4f8ecc60@linaro.org>
Date:   Fri, 24 Mar 2023 10:51:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/5] arm: dts: qcom: ipq4019: update a compatible for QCE
 IP on IPQ4019 SoC
Content-Language: en-US
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230323233735.2131020-1-vladimir.zapolskiy@linaro.org>
 <20230323233735.2131020-2-vladimir.zapolskiy@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230323233735.2131020-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/03/2023 00:37, Vladimir Zapolskiy wrote:
> Change the old deprecated compatible name to a new one, which is specific
> to IPQ4019 SoC.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-ipq4019.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> index dfcfb3339c23..3968bf0f585b 100644
> --- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
> +++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
> @@ -315,7 +315,7 @@ cryptobam: dma-controller@8e04000 {
>  		};
>  
>  		crypto: crypto@8e3a000 {
> -			compatible = "qcom,crypto-v5.1";
> +			compatible = "qcom,ipq4019-qce", "qcom,qce";

The bindings in current next do not allow such combination. Is there
some dependency here? Are you sure this passed dtbs_check?

Best regards,
Krzysztof

