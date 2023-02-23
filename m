Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27FA16A04D6
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 10:32:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233941AbjBWJcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 04:32:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233446AbjBWJcM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 04:32:12 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 109A1211FD
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:32:11 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id bo30so9556433wrb.0
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RGcZat4rJvZA4JvcNDS29r6hOcHFn5XfKWwq3XORVPs=;
        b=Yt49MEJ9NqvopLj/2ozmBGZWXWZP4QGefbvOIErAMUKNhgea+wVF0D/Jy5Azg2/9Zk
         ApR8dloCE57tigesDALBZ5JvU8wFsj0ksr5t2SsRABIVi6ikOoVO2DWbRD1JfFWTh/kW
         H7b82HrlGm5vFPEjd19iE2kergvhiDnvJ6EPzlFW4d7fQ2FrCmsFM/T8SbLSWa6KkiHR
         WXQzvOuUKglkxurFrTF1/e/lWj+DZ0EQwHGxFvuYLRrNyu73sxSKU/h7dDlJpCRZBD7E
         TKvvUSIeLuPOEl1KWrpFtQim91uU9IPqshCevpoPfHOJzysW70/GRimB5io9ts3+/BUG
         Dxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RGcZat4rJvZA4JvcNDS29r6hOcHFn5XfKWwq3XORVPs=;
        b=QG7ilcvmgi4D+3WF4WugDlOI59ejBp9oyr3W73dLZSbpJeIslcT6XkSKk7YkTqUh3D
         pSDxB020GsfWEI3bRV/m1/HTXnBZrnFvNxwDaZOA4ke0rCv7A67ACHQ2P6/yZZYW1kTP
         D/7xISwx4y2FU97kQvrO3oQ1k/qvEA73x1v5YxEqRGHHr0QqzYZmxJ9S6Ixxbz3MXIYx
         1jUOw+0By2iO7tEgk3Qw1hvVUPGbvatqVfwAzio/ynrDS8cwz18NKd5MjUHCRmTVs3EH
         2HekHX0XYhH5nxoA53Qf438FzQwEVIf31e4fBMzi/In8H+wylghlWy2x5oENqAiQMNyf
         q/Iw==
X-Gm-Message-State: AO0yUKXRtMBQAjTEJTvSpBJjTkYmV4OhSQ1qfJSQIdFmEglwEGe2JBhq
        SGuFfQHBn13rWUsK3W2DGyTb+Q==
X-Google-Smtp-Source: AK7set8JtmCSdtvo0Q/Dix4hkgM4WlaiSkXDAUcpvvkOj2MWIykMQbAOyl7oCrI5Oq9nTyXgJO4d4A==
X-Received: by 2002:adf:f7d1:0:b0:2c7:bd6:68fd with SMTP id a17-20020adff7d1000000b002c70bd668fdmr4252879wrq.47.1677144729470;
        Thu, 23 Feb 2023 01:32:09 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a16-20020adffb90000000b002c54c92e125sm8537550wrr.46.2023.02.23.01.32.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:32:04 -0800 (PST)
Message-ID: <3b54cd46-1c85-6a50-4902-7e59fb00a117@linaro.org>
Date:   Thu, 23 Feb 2023 10:32:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11 06/10] dt-bindings: qcom-qce: document optional clocks
 and clock-names properties
Content-Language: en-US
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20230222172240.3235972-1-vladimir.zapolskiy@linaro.org>
 <20230222172240.3235972-7-vladimir.zapolskiy@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222172240.3235972-7-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/02/2023 18:22, Vladimir Zapolskiy wrote:
> On newer Qualcomm SoCs the crypto engine clocks are enabled by default
> by security firmware. To drop clocks and clock-names from the list of
> required properties use 'qcom,sm8150-qce' compatible name.
> 
> The change is based on Neil Armstrong's observation and an original change.
> 
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

