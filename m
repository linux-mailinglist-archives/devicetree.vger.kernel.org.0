Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94BF86118AC
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 19:04:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231270AbiJ1REK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 13:04:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230269AbiJ1RD4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 13:03:56 -0400
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22A9E77559
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 10:02:24 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id h10so4459236qvq.7
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 10:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Vt2NRfPYoZ2LtBVbnQGBt2MOSimjRuiE+rlZh3+5+g=;
        b=jPdqWef5RqLJJwMWlMCL6Yputv2Coc+NkBGsrEHXX6tbmnDpP2NtnvxtTSP6fRdSq3
         9Kqz/c71UIa4gQ+A2LP6PMOTjv0toDO9Wbv24q8Hi0vvzBmXumFDNfw9ZLYIwiEjZOJ8
         tWNjQ3tHwc9WfYtIkV9WiIhYUQunkYzUK40ZvlMd1aAkb7yjfS8eWBVm04flWli+1qZa
         LsSLi79kWqEp7HNoQgl4Fari2Zxp91qcZm24d/SnU/0pvHXGnlsVVzcCi79dUNo/9tVG
         JqDBVt9Yu1hENE81e2/abORwdPlEIwgnb9Sked0wA9H4R3ttr5u75sNyIpAQ/PXngxml
         Sazg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Vt2NRfPYoZ2LtBVbnQGBt2MOSimjRuiE+rlZh3+5+g=;
        b=GIFKGvhfhMd6EECVvn/+G1kZh6V7DHUCHGwvy62My/zIiSMfeCyb55UvMYDS5uEr98
         aK/IuNRVf6TjJBtIpBKcaQrTG1BNvX5RWkEOvN7WMmwMHzhWvoeU5RVdyKgSNyaD4XEP
         2qdTZDpY7+YxE64aeKJaWjbPXpf9CcH4bqFFT6/K5ooeKh/q6rJytc6L/JoGFRu1IDAX
         tltgyGkAkePwaOU+6RMEPoFQ9S0W0tfQECpHs+cGYOJfFhKMoYrXtx7Cit7L32Mjw7XS
         buP5gNOQViY4AkBM12E/mY3Gr3Z7YT2cclIhEKXpFinr7Ceg2HX6eboELepiI90AuqYr
         mV+A==
X-Gm-Message-State: ACrzQf3PrwvTxhNkvbz+QGc1qhIPcVfPF62d21XblSm1LBhfoQRjk/Yl
        vFEcP0Ee0WVKnhPblGf9y3k5+w==
X-Google-Smtp-Source: AMsMyM7WI6/C5Bbg8LE38AWlmWBGVBzI2D+TeBS/UIIXN5bby8fjbj0k0m/zk8IVDHE2noidzevKhw==
X-Received: by 2002:a05:6214:2b06:b0:4bb:5716:d1c3 with SMTP id jx6-20020a0562142b0600b004bb5716d1c3mr365680qvb.85.1666976543183;
        Fri, 28 Oct 2022 10:02:23 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bn1-20020a05620a2ac100b006b5c061844fsm3223584qkb.49.2022.10.28.10.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 10:02:22 -0700 (PDT)
Message-ID: <97b462ea-e283-60ee-e272-b136ca08a251@linaro.org>
Date:   Fri, 28 Oct 2022 13:02:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v10 1/7] dt-bindings: remoteproc: qcom: Add SC7280 ADSP
 support
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        linux-remoteproc@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, quic_plai@quicinc.com, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, srinivas.kandagatla@linaro.org,
        quic_rohkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org, devicetree@vger.kernel.org
References: <1664368073-13659-1-git-send-email-quic_srivasam@quicinc.com>
 <1664368073-13659-2-git-send-email-quic_srivasam@quicinc.com>
 <a1a78c72-2067-1ea8-a50e-0dcf4ae4bb83@linaro.org>
In-Reply-To: <a1a78c72-2067-1ea8-a50e-0dcf4ae4bb83@linaro.org>
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

On 29/09/2022 03:32, Krzysztof Kozlowski wrote:
> On 28/09/2022 14:27, Srinivasa Rao Mandadapu wrote:
>> Add ADSP PIL loading support for SC7280 SoCs.
>>
>> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
>> ---
>> Changes since V9:
>> 	-- Add missing unevaluatedProperties in glink-edge.
>> Changes since V8:
>> 	-- Add glink-edge reference.
>> 	-- Remove redundant glinke-edge properties.
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Actually not... you still do not Cc all necessary maintainers. I don't
understand why.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

Best regards,
Krzysztof

