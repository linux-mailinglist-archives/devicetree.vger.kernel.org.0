Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23C115B1A80
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 12:52:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbiIHKwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 06:52:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbiIHKwm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 06:52:42 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAC15F5C7B
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 03:52:40 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id c10so9917853ljj.2
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 03:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=vVTBzK9B05XGZ/xpSwgV5tjebiNQ+EY1RJ0k0CE1o6c=;
        b=DzWFPekGUBniXrt3Ux6czjGmubm1EMzTGihec6QlyHO6VhNBHiJd9hXiiwGNC0aeki
         9hEIeHr6P+C0KHmMnSJGh+L7xW0rX4xbEwSW1D3dAu09XUM+AQUR/TuM2sX+HN0Xui1r
         BPcq7wDRrhpOkcW0Jj8RSoshsUYNo7cCCVyFkArctfxMod0iRChZ9443r/10V74RlPd1
         Uf95UXyK7FuCr5eX/S5l+coQtGvO4NJveb/0VZ1mLC+1oCDIsDXSNcx2LASsY6UPvcib
         +ZQWL/raksilwWS/GxYaXJ02KtcUcCke/iDjFhGQFqrKBIpLdM1F11JcPt5Hq510pKxc
         pUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=vVTBzK9B05XGZ/xpSwgV5tjebiNQ+EY1RJ0k0CE1o6c=;
        b=1K4Z3tkRADcOYaRNlJMVV0CsC8P7v5afU6VzWNKa+tAjAACRSUfbK7MKrnNm4+Hk0r
         WUE4RPwHZL4uFF7HBywwUL9TnYLbuPk7wdxbyfO8DjkOr6pP4k89QSQGay8BYfIvomgr
         Pu7+M2k90IRCusxeykqnYbECw9SjPdkp3UTChScLcHGmQVpTXp+skRlO6a7Vi4v4hL8y
         2lTRmrfRTx12IjH0Bt8IrAhL3g1JfPt4qO7rvcnLl9IPGcNTgNenWShX65y/n91hPQeI
         yrDKfNsqFJxpENQdpkSLLj4qIMxOi6HCn6K+hy57g4+yP/r6Q/UBdrpedlc4TOeSeuVm
         rCPg==
X-Gm-Message-State: ACgBeo3kCnKlkCQS2kb2kdfmHjwzjcZPeGRZM6wv/oDNfshmYb9/+SQd
        jsfbV510W2RFVR2sxjxantkvhQ==
X-Google-Smtp-Source: AA6agR4BKBhBADZe3TEbKzB0AHQ2b0+NvKfM32FRZkMwBfcJNEw/5gAzkz+kAcf2cJHwI7syEEl7UA==
X-Received: by 2002:a2e:98ca:0:b0:26a:9856:6c92 with SMTP id s10-20020a2e98ca000000b0026a98566c92mr2189184ljj.146.1662634359206;
        Thu, 08 Sep 2022 03:52:39 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j10-20020ac2454a000000b0048b23c609c9sm2995196lfm.102.2022.09.08.03.52.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 03:52:38 -0700 (PDT)
Message-ID: <01b4d522-ffd8-5a25-10f3-11bf6e0d08dd@linaro.org>
Date:   Thu, 8 Sep 2022 12:52:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 2/2] dt-bindings: pci: QCOM Add missing sc7280 aggre0,
 aggre1 clocks
Content-Language: en-US
To:     Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        helgaas@kernel.org
Cc:     linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        quic_vbadigan@quicinc.com, quic_hemantk@quicinc.com,
        quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
        quic_ramkri@quicinc.com, manivannan.sadhasivam@linaro.org,
        swboyd@chromium.org, dmitry.baryshkov@linaro.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <1662626776-19636-1-git-send-email-quic_krichai@quicinc.com>
 <1662626776-19636-3-git-send-email-quic_krichai@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1662626776-19636-3-git-send-email-quic_krichai@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 10:46, Krishna chaitanya chundru wrote:
> Add missing aggre0 and aggre1 clocks.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
> changes since v3:
> 	- Changed the order of the clocks.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
