Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20851626930
	for <lists+devicetree@lfdr.de>; Sat, 12 Nov 2022 12:36:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234911AbiKLLg2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Nov 2022 06:36:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234146AbiKLLg1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Nov 2022 06:36:27 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1AE023E8F
        for <devicetree@vger.kernel.org>; Sat, 12 Nov 2022 03:36:25 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id r12so11998935lfp.1
        for <devicetree@vger.kernel.org>; Sat, 12 Nov 2022 03:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kRbo22PtqHobTCeV1YZA3tYBu2AmF31nXSrL8zFUE7w=;
        b=PxRzqdglo5xsAfV2+zPzrOeZyo8zSrbPaBOlhuS6Ei+U4ZJpP10HKAuetRzSqXQxGi
         3NcmnZamzK6tWa5TrY752rp5ix5pYsfoPqhTgLO6qvAyfvdl2dfnSw6nGD4KaIYbl0Le
         Uq9Gn7JIMqsBXxLjozKT41aa+GCF/Qzh0AurAxCy5xwOK0CTpgk5WwT+RXBvvgOsQAP1
         gOS93K6POaiWagi90o+aJWNyivFFyoJrhES4i4cqSEzBdbzKGGYy/1kIq4D4CUtHuxdI
         hNJr0jePbm1qnlIsgmfFvf4hQMq4dxJachtIvvZjNETwHwp2qJvg8tT7tY/vRExbdx3k
         oCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kRbo22PtqHobTCeV1YZA3tYBu2AmF31nXSrL8zFUE7w=;
        b=z3x1hz+E91w5fFh/wt5zkCl0Ux+kXSG1TpVdzewlDzBP/Tn4d7X8YM+8aZHfXCorxz
         hdb1Ekv1gFlUlX5rpYGRAn7jqxmv+J61pma6n9sda/dTCpyn/mvrJCHOP3H4R3QVM5Jf
         qBWeUU5lIn+xeSLmYlhM+Rk1+BM9YHFxzma/Tmppb5gyvMLUZpcPNkX+9W2Maw+SfC70
         XUYDxxdGtPy0NCxT8SHt1aDndy7ri2dM4cjJSAMNQtZusB+TzC6r6jzcKGNXPQNs0YEd
         Y6jzXBjjHB8rNlaC5mt4pWa5OPeEn+FacfGT+dN/1avmmVzA9kSCHcvx5LFB80aUyM8b
         +L2w==
X-Gm-Message-State: ANoB5pmng37N2yQ0zj1VhGnJrrxFZw0WhXNuJgtd4lbxuP1PanwERpWW
        Z4immJOSuNhrwb8bsWkAaT/bxA==
X-Google-Smtp-Source: AA0mqf7rj1x3q1LBG9NCbryzByD0dB+icZsVAx/s1dv6PQrlY1jKO6N36HaoBo09/p6FnElIW8TTDQ==
X-Received: by 2002:ac2:4bd0:0:b0:4b0:1305:7039 with SMTP id o16-20020ac24bd0000000b004b013057039mr1885054lfq.543.1668252984151;
        Sat, 12 Nov 2022 03:36:24 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b004a65780e4cfsm833698lfs.106.2022.11.12.03.36.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:36:23 -0800 (PST)
Message-ID: <ae61af60-46ef-e455-6063-e47238c608b1@linaro.org>
Date:   Sat, 12 Nov 2022 14:36:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 14/14] phy: qcom-qmp-combo: add support for updated
 sc8280xp binding
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-15-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-15-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/11/2022 12:24, Johan Hovold wrote:
> Add support for the new SC8280XP binding.
> 
> Note that the binding does not try to describe every register subregion
> and instead the driver holds the corresponding offsets.
> 
> Also note that (possibly) unlike on earlier platforms, the TX registers
> are used by both the USB and DP implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 143 ++++++++++++++++++++--
>   1 file changed, 133 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 0a4d53e6c586..544a7e55bf14 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -798,9 +798,25 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
>   
>   struct qmp_combo;
>   
> +struct qmp_combo_offsets {
> +	u16 com;
> +	u16 txa;
> +	u16 rxa;
> +	u16 txb;
> +	u16 rxb;


Yes, txa/txb are more in spite of the vendor headers. I'd sill suggest 
to use tx/tx2 and rx/rx2 as used everywhere in the QMP driver.


> +	u16 usb3_serdes;
> +	u16 usb3_pcs_misc;
> +	u16 usb3_pcs;
> +	u16 usb3_pcs_usb;
> +	u16 dp_serdes;
> +	u16 dp_dp_phy;
> +};
> +
-- 
With best wishes
Dmitry

