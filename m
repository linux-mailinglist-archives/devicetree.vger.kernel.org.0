Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA7C62115E
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 13:49:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233603AbiKHMsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 07:48:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234287AbiKHMsg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 07:48:36 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7751A528B8
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 04:48:20 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id a15so20920842ljb.7
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 04:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4s4Z1WdUOPpLx6Zbqf7L1892zlqXckJCl3Ja/uP89L4=;
        b=q4zKbmw94I9pKmSWoe1A3Z/AzqpYt6qpaN3SW9lzEWOqTY8eaaaJuqXM1wk6WGGLYM
         7sI2uCTjDurSYYLQu1LE/8Rj4uHJGC+81xE4Q4OnEwH/uqCsLXMy1yiHuAhdbRxtjE5y
         AaTHEEkEAzPsI+cVKXlTxV771Mkg7tCW4n6Urqq3KBG9y5jeZBV0q8dX132l6sNaOCb4
         jQe5GMdRFVrP3Hyqq7uM5RI/fSmKBXO504+GUY+jokmW7j4Ztrhx7fRGiwyr8UWfopPy
         MJ1e8STAA0bb7J07uwj3dFWVoiVfLcYqSIlFHs9W7OZfx09PfDB4zDzlNwDxgCq4HrBS
         86Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4s4Z1WdUOPpLx6Zbqf7L1892zlqXckJCl3Ja/uP89L4=;
        b=mnqnpSmjJQ/DSd7x+H6MKnr2VXv629z9EtIiR/1WlJRNMsBaHBQbCx7yDY/PJhN2Ua
         xF8IuTTGQQguhZJvjAbKxYapLCta7CqULGWCwRhOoGkTwlM5kvtJl96ClsqoNlqGUvmC
         idgLghk72UtB1tyEzb57ZbzGX4Utuxw6PwplgvKpfXAbaS+WxZ3vU5M3PvTzyTD3ZZR8
         jConUkhYKT9aN3oaoH2aqG6PDe6KdbwyPpVUWzFd64b8ivN8dG6QxpBHRtVoDg0CRKe/
         4RUQSWFhweyLKXVhJ4Bj4Xj9YwDVmqhRwKTEJBMWqmTehRIUS7dNtJB8bqfzQRopFwXn
         TCDg==
X-Gm-Message-State: ACrzQf3xWH/4zXWOF/3Mp2vDzzhT6zB7s8/D1YTlDmCdycHSr1p2pYms
        Pkv8NAt65mf0rvnkiqVqvZIciA==
X-Google-Smtp-Source: AMsMyM6tlA5qzQlcNJ0y1TkIG//th+wyQ8gWeyik8VyEAXOPTD7CNbXS8/glvZgW2PFrCL59t12K8g==
X-Received: by 2002:a05:651c:2d9:b0:277:14bc:da0 with SMTP id f25-20020a05651c02d900b0027714bc0da0mr18784418ljo.212.1667911699164;
        Tue, 08 Nov 2022 04:48:19 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id a7-20020a2e88c7000000b0026daf4fc0f7sm1729753ljk.92.2022.11.08.04.48.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 04:48:18 -0800 (PST)
Message-ID: <6a939e52-b69f-b30f-664d-dfb9f279b5dd@linaro.org>
Date:   Tue, 8 Nov 2022 13:48:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: sc7280: Remove redundant
 soundwire property
Content-Language: en-US
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        vkoul@kernel.org, agross@kernel.org, andersson@kernel.org,
        robh+dt@kernel.org, broonie@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_rohkumar@quicinc.com, srinivas.kandagatla@linaro.org,
        dianders@chromium.org, swboyd@chromium.org, judyhsiao@chromium.org,
        alsa-devel@alsa-project.org, quic_rjendra@quicinc.com,
        konrad.dybcio@somainline.org, mka@chromium.org
Cc:     Ratna Deepthi Kudaravalli <quic_rkudarav@quicinc.com>
References: <1667911156-19238-1-git-send-email-quic_srivasam@quicinc.com>
 <1667911156-19238-4-git-send-email-quic_srivasam@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1667911156-19238-4-git-send-email-quic_srivasam@quicinc.com>
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

On 08/11/2022 13:39, Srinivasa Rao Mandadapu wrote:
> Remove redundant and undocumented property qcom,port-offset in
> soundwire controller nodes.
> This patch is required to avoid dtbs_check errors with
> qcom,soundwie.yaml

> 
> Fixes: 12ef689f09ab ("arm64: dts: qcom: sc7280: Add nodes for soundwire and va tx rx digital macro codecs")
> 

Same two comments as patch #2.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

