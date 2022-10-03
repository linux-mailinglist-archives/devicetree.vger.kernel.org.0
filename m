Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40A7C5F3382
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbiJCQ0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:26:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbiJCQ0N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:26:13 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E053C32AB8
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:26:10 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id a3so5260182wrt.0
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=cTAuqn7Gk4AbhE11xB1KEODbwH7tCOHEcr01QZ55ppM=;
        b=MqI3JwT80NPPwEb6PADF+ctRbhg6zfEBed8d6+AOBi3Uz6IWhPS2IEHGIXzuoCZGh4
         Yi7X13vgvYAjHbZx0OStbEjxm/9e/1b+zYH9oXf4eWHUodQqwQTbU8rG84/dtr87LRUF
         HrSq9bpZubVRGuSqX9og3sEshIc7FzI7eWoNgXVuduycw3KYIg1FQkdviucAO0BZm4mA
         jQoH/gs+Upj9mlfeRviyrK9dZKPhAD9P99//ldwOjFWVqnPUCv0hsVBoPnoQ8COMOgTO
         G+JH8+OJGPwF3VYTOKSvgHmlTH2PZjsYHkfCWDzyMQtJKgnHh5vHIximRNDvz0JTSpud
         6r0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=cTAuqn7Gk4AbhE11xB1KEODbwH7tCOHEcr01QZ55ppM=;
        b=BbIL2P5KZho4GW7SNDCypUSRI9rBsd8mIBbgQpE8CA71YtrPHZTuwIUYXtMURL3kWt
         Vg9xfq0urd9rQmby5xXNSRl1uqmB4H1oCSP4vD7tZ4ZzvfkAJCxVii03DEcJHuFwlC7W
         FjmFytZ2MgljBbbUmUUtrLJno96ZTFW57+mBLpeYFSaRiruMkYLNaU1zo6ojkY8Mf1fr
         LHfExOpeGfnUDhf/dwBv4xlNxmwC2d3fwE/gxn9drddPeycCmxOVcVl2Q5BVMYmZEXGr
         rCjmM02bKjFbtpj04PVjKODarRQmlENwd8mXT2S+GaD4IvJlxg4dWptFGdIu42gey6i5
         K3Iw==
X-Gm-Message-State: ACrzQf2sZ4HOAXA3zvcCZHt6PIbOATWHVnrHc1l5iqS7UQujA96nKyOj
        l3PutIf6kESAeHYrsiYbWy3MZQ==
X-Google-Smtp-Source: AMsMyM6yjEd1E4u+wEJdbORfzq+urbdvvgXYGqoza0RTkNPdmN5ARy0RV64dLqWiIQAVFSOmkB5GfQ==
X-Received: by 2002:a05:6000:1564:b0:226:dece:5630 with SMTP id 4-20020a056000156400b00226dece5630mr14384427wrz.294.1664814368632;
        Mon, 03 Oct 2022 09:26:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id l13-20020a5d4bcd000000b00226dba960b4sm10190798wrt.3.2022.10.03.09.26.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:26:08 -0700 (PDT)
Message-ID: <d093f08f-4439-1328-dea3-55d9f4ee2c2b@linaro.org>
Date:   Mon, 3 Oct 2022 18:26:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 19/23] ARM: dts: qcom: msm8960: drop amba device node
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-20-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-20-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> The separate amba device node doesn't add anything significant to the
> DT. The OF parsing code already creates ambda_device or platform_device
-----------------------------------------/\ s/ambda/amba/
> depending on the compatibility lists. Drop the amba node and reorder
> sdcc nodes according to node addresses.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom-msm8960.dtsi | 68 +++++++++++++----------------
>   1 file changed, 31 insertions(+), 37 deletions(-)
> 

<snip>

With typo fixed:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
