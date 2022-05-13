Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 094A5525D23
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 10:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378185AbiEMIYJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 04:24:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378184AbiEMIYI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 04:24:08 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC3572A2F67
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:24:06 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id v12so10358875wrv.10
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=M1lYVcvZGeJMDFjAhYStiELCM++HSwims5YjxbNozwg=;
        b=VbF5QVMtyN7wrrr73XL/TWaz7LGSC4fqPP/OtRmnRtZadMHQ6Cu4VKhLauJZphD/8P
         vD5LrRJlwxmsuT2CnGS5mQQKXg9S3i+1oa4Nf6sHTE1JJqkIWplJptcJsypElUyhJfdJ
         qlTQFyIhixS+fM0ASMshTHF8S2UFoSsTgOFG92BCWZmv3WZAJtxE4wtU6onXh2xlQQ5k
         yRSXdTTBzO0ubkXC23EXSMRh830kqZUgHGNBGaNawxdFNq50CUJw+o2k7tODZKYWzkuS
         x9ExpYkx25FzZdiFZ87M1czwbZEz7OA4k2xlQuX3xpv++wEFFqdwg3WM90Onyh2xeLYl
         pjHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=M1lYVcvZGeJMDFjAhYStiELCM++HSwims5YjxbNozwg=;
        b=6NsuqDikux6T4cJzZf/IAJ4U2mZaixnRDlmu9zm8miAHjflWKVlatJixSMxhUj3X64
         U6wubQhcWdfw1J+8C4ezA5efTvS7uigEPEmngoUS+uxnP8hngRjUjqljw0AhjhzyIgbI
         oVxHHDFzxRozFfE8nOWeiyOPqKxl051zbpQCOyt+kY/3yBmw8HHMvOtT1KSBg2fGfZBW
         ioH2/4AFTat4VsaJ99UBZWuzxRN/31/aJ04HVIfjS5Fm4mWsBtUdDUkoElNm0omyqRXD
         rLCZrB1D5NrodNLy9QtCmBRkPFpVIMerhPgpgp+TEwkQuOXsYNsNlWInJDcGstNkYBCu
         ulKA==
X-Gm-Message-State: AOAM53141x4SQZThq0ludBMIiV+3S7W7UA959jWmCr5TH5n1Izbe6lhn
        nrZ8CxcY+VqgS+C203z0dTKjew==
X-Google-Smtp-Source: ABdhPJyfbJrwOl2LNY/n2Drgyva6rd+YJJxS539TxEvjRvHrgJmkirgEPK6yG1Emcsy4it1ih0jbmg==
X-Received: by 2002:a5d:58e5:0:b0:20a:e022:3f8c with SMTP id f5-20020a5d58e5000000b0020ae0223f8cmr2764714wrd.667.1652430246346;
        Fri, 13 May 2022 01:24:06 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p26-20020adfa21a000000b0020c61af5e1fsm1495820wra.51.2022.05.13.01.24.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 01:24:05 -0700 (PDT)
Message-ID: <7c7f7036-e3ad-c9db-2c31-749e2d01e83d@linaro.org>
Date:   Fri, 13 May 2022 10:24:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 5/7] arm64: dts: qcom: Add PM6125 PMIC
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220511220613.1015472-1-marijn.suijten@somainline.org>
 <20220511220613.1015472-6-marijn.suijten@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220511220613.1015472-6-marijn.suijten@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 00:06, Marijn Suijten wrote:
> This PMIC is commonly used on boards with an SM6125 SoC and looks very
> similar in layout to the PM6150.
> 
> Downstream declares more nodes to be available, but these have been
> omitted from this patch: the pwm/lpg block is unused on my reference
> device making it impossible to test/validate, and the spmi-clkdiv does
> not have a single device-tree binding using this driver yet, hence
> inclusion is better postponed until ie. audio which uses these clocks is
> brought up.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Two reviews on first patch... :)

> +
> +	pmic@1 {
> +		compatible = "qcom,pm6125", "qcom,spmi-pmic";
> +		reg = <0x1 SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;

No children, so this should not be needed, I think.

> +	};
> +};


Best regards,
Krzysztof
