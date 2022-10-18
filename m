Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9B0F6020B0
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 03:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbiJRB6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 21:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230078AbiJRB6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 21:58:19 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0F1D8BBBA
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:58:09 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id mg6so8504894qvb.10
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RLAK/RZjVkZUTYOcQamXq8CZ6Yk8GhuaCQFzyazb1/0=;
        b=s7wsrJIbJuR6XRlLJOlaT0wo31Nb6jk1jWgt7E+X4/J9DxjIe9jqjJc0kNd4RtSon2
         UrRkEhhG5mnY/GyUr9bsbJ9xnJJcTTdRiKeB+cdWVeZtUhXEQjKrnOlyMmCHATJ35K+q
         u/O4CYWdz886vVW7SE6+V6qD8T2niGd/HZbAgmIN8XTkzJ8ekZ5xdSHdhvdHa6xNlhI6
         fALBO1STWizAbLuc3kL2GfJOHGWhqSzj5q+mOm6oFsT6ZDps19dNn5a9OSpOjr/xd+G/
         okSyIutvjiCgRh3kjlbOZXrWbq+/fXIugCxvJAiC6j6zmq7noGfIUYF5lKJ3j5ks6oVD
         ThPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RLAK/RZjVkZUTYOcQamXq8CZ6Yk8GhuaCQFzyazb1/0=;
        b=GKIusFiT2oW31L2KgPHZT+8IjuahhuOnAGVkp8PugMt5RFWLVu+ILUjanAX8zNM2ue
         lisn1s8r3gJkxFfv/8NOlJD/qM3fpFostDidjRXI8ghnpIbwuYg4WHyiTjZ7mcv6yU5k
         HjWE3eBNCRGNpJCOmvSekaZTR9Zji3vaAA1k1i+0ipIkAB+79/VDUrWfUK1CNfnBMjeS
         xO6gRNYRT2p01AG4cxiQjmItewluoX2qK0vAwq46tfhjn9eZtDm5oxIb0YnTRyE3kbTS
         vVQbx2YflzJVpFwawJ8ZWkOo1fn+Yy0/C4JPLiCXD8+9ptTaB3dmWhiuPCIfEP36FzMe
         z8/w==
X-Gm-Message-State: ACrzQf3N+bIjN9epoziRUuL9HSLyVAQ9qwRK5oKXp36om8+DYxElrHll
        SOEW3pDQ/ZiJFAx3qhECQdg40Q==
X-Google-Smtp-Source: AMsMyM4cPM5mKlAtoI4hcuDlyyAjJY0S6+DfQxC+qRJYxgx9Dmkh2LRZLb11bUWpjR1eofMYfJ5C5A==
X-Received: by 2002:a05:6214:1cc2:b0:4af:891b:4e75 with SMTP id g2-20020a0562141cc200b004af891b4e75mr370762qvd.30.1666058289055;
        Mon, 17 Oct 2022 18:58:09 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id bi39-20020a05620a31a700b006eeb64da8b1sm1159797qkb.2.2022.10.17.18.58.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 18:58:08 -0700 (PDT)
Message-ID: <b8477650-07e0-c6a0-fec4-baeccbd44309@linaro.org>
Date:   Mon, 17 Oct 2022 21:58:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sdm632: fairphone-fp3: add
 touchscreen
Content-Language: en-US
To:     Job Noorman <job@noorman.info>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221017100409.189293-1-job@noorman.info>
 <20221017100409.189293-4-job@noorman.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017100409.189293-4-job@noorman.info>
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

On 17/10/2022 06:04, Job Noorman wrote:
> Add Himax hx83112b touchscreen to the FP3 DT.
> 
> Signed-off-by: Job Noorman <job@noorman.info>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

