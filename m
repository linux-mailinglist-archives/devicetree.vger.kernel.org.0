Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B43BA631C98
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 10:15:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230100AbiKUJPm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 04:15:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbiKUJPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 04:15:40 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C66522BC1
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 01:15:38 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id g7so17898431lfv.5
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 01:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=edGTmU1jMBO60TkSFZa7W5D8f6ttu0/8Kyu/xHgBnxc=;
        b=sDNFLcT38brmo4xJZO980qL17IOrn3ecWr/mJPLysHzcsbd2N9OOoOV4Gf+Xt66/Vt
         gmF95Pu1f0vn+MtdlHkq7oZdHDmQvk8M/mASCQE7JhWmEO+86kChBdLrpymgabkLbdWj
         ll+x70ykq6NUrI0NeuVUzgAn2n6lxIT016TogWD1ysioOaOLqppe/3ZcXchl77Pdcjbn
         n7LOCWyIWHIgKmNSkI/YP+f+mBQdgPRwu/kmDWSHw6k4rEpc0eUWkbRV5157EMVwh1rr
         2bhz4vxRVu8pqTF/nO0PD2f94s06H2FbpV0b7NWQm9LMq1rC1C5OBqKeEwPCNAyVNlxa
         YzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=edGTmU1jMBO60TkSFZa7W5D8f6ttu0/8Kyu/xHgBnxc=;
        b=xIsGm0gEvU+lCZsOzZzuB4EFidHnyaaf0rnxY5ROyxRPzWaC6VSkgR4Z1C6XiqsoyP
         ngHfhtqqxorM/EYqbwWqDL8NzWIb/I8BzF7Xg1qlLDcijjcVGkq4l0rmQF00IyLW5efk
         SMt47MWliG4rEheK1I+5IzaISXnH3sWUcE4hyGhS3V9P+qoC2niJR2Pg4VEi8dxcTsgG
         635WYCvT5UMowdZZjBIkcOsR4nmsjbYbcBm5f9CPYdkl1OKghrjwMk1jgifMftcmKxsO
         ySfM/IPKhREE5AfDRKg401oyKw6TyJ/RhXC9qDQum16EI9UPqF4moRxQYFtazcMwN10E
         eRvw==
X-Gm-Message-State: ANoB5pnCpiXwOXBwsaL924ybkkm5hdBNAbtZOsYUSc3YLqPin6uLKRqs
        ldVg/N9vI9zEift3xQb+OBju9w==
X-Google-Smtp-Source: AA0mqf7X74FVmnUcC8FTUQTvF39/oyLCQR97ZwpZL+K4q7KohKadZDBpN1MMAue4vWvn3ows6jt+/g==
X-Received: by 2002:ac2:4209:0:b0:499:f8e4:6dd0 with SMTP id y9-20020ac24209000000b00499f8e46dd0mr5881644lfh.162.1669022136906;
        Mon, 21 Nov 2022 01:15:36 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id dw7-20020a0565122c8700b004a91df49508sm1952179lfb.177.2022.11.21.01.15.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 01:15:36 -0800 (PST)
Message-ID: <9d2dfd82-88f4-3c41-fe0f-ab38ac2760dd@linaro.org>
Date:   Mon, 21 Nov 2022 10:15:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/9] dt-bindings: arm: qcom: document new
 msm8953-family devices
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221119203758.888207-1-luca@z3ntu.xyz>
 <20221119203758.888207-2-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221119203758.888207-2-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
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

On 19/11/2022 21:37, Luca Weiss wrote:
> Document the various phones added in upcoming patches. Also allow
> qcom,msm-id and qcom,board-id for msm8953 and sdm450.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

