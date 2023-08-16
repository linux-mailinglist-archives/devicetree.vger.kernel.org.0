Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 485D577DA54
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 08:15:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242060AbjHPGPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 02:15:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242120AbjHPGPK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 02:15:10 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 742D4268A
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:15:05 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-31963263938so3809755f8f.2
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692166504; x=1692771304;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VTUQHvk6nMPNqeWY6wjgN795gkMb2j9jEUIFdAG4LqY=;
        b=xO7Z5WcoLupf7WKGjXnm0+2JGKVIp+cZFnQW8qQQUX+vL1sMACIBIoFNaOSViPQ14a
         UHJWJ2K87aax2Dd0w9aiBwD8VUPcehzUU/C1kdQpQSDDsiBJNmOQiSmx/CYU+BkizcTX
         mscN1bNSQA1cC+Hvmg9TNKYwS6ExADhhO5BWlp4JNCfIuF55JUL3hQG1nyoLcAJlBfM2
         WYvXyXs1HgxJMlF15emnRH/wHuQ7vwi7UGdR44Dr76G5QR6uB0rf7ahScIKYQxrNXbjR
         kWBwlJocmwayctKWjiVkfWbA5zs1pIirENmfQGmsI6fVzE4i8pa2TE/V1KuSTWiD/hkO
         aFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692166504; x=1692771304;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VTUQHvk6nMPNqeWY6wjgN795gkMb2j9jEUIFdAG4LqY=;
        b=WdygsaR7AvSaUq9W2iwnoGAULrFjh8IC5eEey3+CC9qX0o7kV+VN4HugkKAjnlefYX
         8FMGxOBbSmpmyfWbl2F/eOGW10N3NmFApuG1jvWpoNF3vV2QesHC568rf2ngw3rXdHsZ
         fgk4FpRNCOrnZTLhCHhnWXNZiRT6sYWx/kv3pZ/8O8cR+wKVNXffJTGqxN2/XoEbTrFO
         vPTqc2xdJ/4hEDEHwHCTUFUU1V8lzSwjwA0cgw8e1sS+Mx25XauhV7Uy+fYaUng3486N
         /k40ALyH7jVnxdpwmIiexmm1CUevFsYiepG+2zY4jUh08691gwaB3Pz/OjWal0N1dzkq
         5m+g==
X-Gm-Message-State: AOJu0Yx+neC/iHo9yCYzi7lyBDUh8eXBmPgzCF8zHqY46yuVBoQYQyri
        hhA5pOfi/2gmF4KpXQUF/EwtAw==
X-Google-Smtp-Source: AGHT+IExivCJdkDf6HyiYHESX10/DHxdo5RQNph3ghItuTm+BBL36Ju2Zk/LPgvSP3sBJ03330hYSw==
X-Received: by 2002:adf:fc8b:0:b0:317:5d60:2fea with SMTP id g11-20020adffc8b000000b003175d602feamr784010wrr.52.1692166503982;
        Tue, 15 Aug 2023 23:15:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id o10-20020a5d684a000000b0031758e7ba6dsm20004076wrw.40.2023.08.15.23.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 23:15:03 -0700 (PDT)
Message-ID: <90acb8cc-b2b6-0fd1-6512-c17502c9d0f6@linaro.org>
Date:   Wed, 16 Aug 2023 08:15:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 2/5] firmware: qcom: scm: Add SDI disable support
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        quic_gurus@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     computersforpeace@gmail.com, Mukesh Ojha <quic_mojha@quicinc.com>
References: <20230815140030.1068590-1-robimarko@gmail.com>
 <20230815140030.1068590-2-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230815140030.1068590-2-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2023 15:59, Robert Marko wrote:
> Some SoC-s like IPQ5018 require SDI(Secure Debug Image) to be disabled
> before trying to reboot, otherwise board will just hang after reboot has
> been issued via PSCI.
> 
> So, provide a call to SCM that allows disabling it.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> Acked-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---
>  drivers/firmware/qcom_scm.c | 23 +++++++++++++++++++++++
>  drivers/firmware/qcom_scm.h |  1 +
>  2 files changed, 24 insertions(+)

This should be squashed with next patch. Adding local function without
user is useless.

Best regards,
Krzysztof

