Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 629416712A7
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 05:34:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbjAREeu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 23:34:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbjAREeq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 23:34:46 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 015D853E62
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:34:44 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id qx13so21958012ejb.13
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9QRiqEIm/55SzWiod6J1S0tN8S9gHuqwPIfY3LIUzYE=;
        b=CkQ+nrOAkSuCp7mMrD3K8TzSBuvsFxd2aXjwpTLPYTAkNV16EF5Z6NGuL0SdCyqF3Y
         b8dVqPf6pVcRtIHzg0ddcGEJ8R72DWRX40wLruO9IUtwo02lmr36z0aj45JOpKoKrcZ9
         AiYWHjFlZPErZb8FSbFNnQ5sNI0O+HN3yGLHfpgwqmuPstOZ7GwZDegGt3EwlCUfDsg8
         qqFF35IK18d49bkLp9b7TpH2Vk4XdEPneiueBJldHD/XcIb0H04RDrjjizEmy0K7VJpC
         xDsPZKtFU3f7j05ngH3ojWbAPu3fGrVjT1CVv6jHmEIkFIca1qlnr7Ic4TdsN8chI5s1
         1cjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9QRiqEIm/55SzWiod6J1S0tN8S9gHuqwPIfY3LIUzYE=;
        b=k8db8R2T1zK0LYE2INPBs6+7h44EqkbEjsSL904BJgnbLNdQZQ/KV6CVAFY0dVfWg3
         NmrubuETkriStKPrfKjr1Zvj1JO3VfK0T70wips9iNWIRnj/4T8CTkbeW12RvF/x8z5I
         lI8VPf0t6GHLU80VzqDg8cpaGO5zbrT380fBEUbjTdC4AeaD1VX/wNavI0r0U8McKceX
         KqlJnDlA08JnldKjOMa5xKUDkFw+nRHQSiL+rRP42sHBRv/WP1cQpEI8uylgyGpVbITa
         JY2QbC9/HowVEllMj62333PEYDbN3d1MHeqRuZcrp43Er+u0Y1cY+8ExQ6RL97bg1IH9
         wZbg==
X-Gm-Message-State: AFqh2kqcuyNNmQbv0ai8C4nGotF5+46VQDyYUtvzc61qVO0NmvOB9/P5
        Y9RhkWQuYdN3l+OK3fVL5f9Fkw==
X-Google-Smtp-Source: AMrXdXu2NLT2a5zzlRnQMmqm67QQgZ3iKnxMMDzynioxIR+84++bUki1rW6n724CqDRQgXpq66VxZA==
X-Received: by 2002:a17:907:9b06:b0:872:f259:a7ea with SMTP id kn6-20020a1709079b0600b00872f259a7eamr5343432ejc.53.1674016482610;
        Tue, 17 Jan 2023 20:34:42 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id l2-20020a1709063d2200b0087276f66c6asm1872325ejf.115.2023.01.17.20.34.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 20:34:42 -0800 (PST)
Message-ID: <7fe0c49e-a628-8e76-8294-ab8faadb3a70@linaro.org>
Date:   Wed, 18 Jan 2023 06:34:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 8/8] phy: qcom-qmp-pcie: Add support for SM8550 g3x2
 and g4x2 PCIEs
Content-Language: en-GB
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Johan Hovold <johan@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-9-abel.vesa@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230118005328.2378792-9-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 02:53, Abel Vesa wrote:
> Add the SM8550 both g4 and g3 configurations. In addition, there is a
> new "lane shared" table that needs to be configured for g4, along with
> the No-CSR list of resets.
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 369 +++++++++++++++++++++++
>   1 file changed, 369 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index bffb9e138715..6f82604bd430 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1506,6 +1506,234 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl[] =
>   	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
>   };

I see that the last two patches still use 'shrd' a lot. Does this 
correspond to hw register names or is it just a vendor kernel code 
convention?

-- 
With best wishes
Dmitry

