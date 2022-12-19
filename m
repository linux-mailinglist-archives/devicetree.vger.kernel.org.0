Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2611C65092B
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 10:14:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231553AbiLSJOS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 04:14:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231709AbiLSJNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 04:13:32 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 774622D4
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 01:13:30 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id a19so8460720ljk.0
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 01:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o9wZ7wdsyu+BSbKq1sblZFj5sTqaF3b2C3AeLhpxvQc=;
        b=bEEi1FjcFq4Sb7j7F3hfqK9koSj3TRus0GHArhLQHNvJY3waSRzpQiStJnD8W8U0u+
         9pPT6sUh1GwODLOl03OIFi3Ey2GYnukCb2j+LJjxIQp/0C2n5mRDsiwGz4YFkKZHoKCG
         aLVWw15MeB5vlqXH2oRmk7oI6YExIl7PKhXfNnnX98vn1aahNQmcwC1jhKjE45NzVJzD
         ep5lsbAIPqpaBi9C8r0md6CRIeewadrcl8t798rTLpLNbm5wTpbG9bg/80RATOtJcraC
         HjzeX967mliyMKf2xwpeZGnafscZ/5wyGtGWlIjnlZH+EbCkqmeY76MyPqQS6dFFB/iz
         5VuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o9wZ7wdsyu+BSbKq1sblZFj5sTqaF3b2C3AeLhpxvQc=;
        b=rZvnJwgB1gpIjpskYuazvjOLaMhMUYpzE2DxmKovbVGdsvTs3i/QBBoVhiBbwosKSW
         /f31ifMdrF7przGQlNPbgOgbJra1x5eGnqG02SXzqWnHIBGByepuqwsBRenVc0JdnP1n
         uZR/YVKAagXhSjldfsSsjrr96S/B90MucUpqSo2WBreVR33YeyDrVCFfr7nj7p26WkH2
         ozQo1g7rp8vUKKqx3lK4nvVnZY/aCk1m1jTDuhyDLd18Z0rLA1tws+XRCWFjmqqRz5en
         BMC8y6QnMHoXjEnxZMQ+yFy99ehma5U/CzqkfCgLzqUqMjC1512IT/izkwttgUeVG7xW
         bQtA==
X-Gm-Message-State: ANoB5pk4aCgm2k4x6D5QeN9Q/tXenFQ/XhMWeqX/P8uYStobgSEFw4fv
        O61vthURGo5xlIdAod5AFRrjtw==
X-Google-Smtp-Source: AA0mqf5tLkCPq34JLgVHqZ2jLa1fJotOTZ09Mx3C6cEZj/tIdSFTAN/RVlEVNulIltGaJkRR8PYvMA==
X-Received: by 2002:a2e:a814:0:b0:277:4be:ae38 with SMTP id l20-20020a2ea814000000b0027704beae38mr11081258ljq.7.1671441208865;
        Mon, 19 Dec 2022 01:13:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bj27-20020a2eaa9b000000b002797892025csm707046ljb.137.2022.12.19.01.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 01:13:28 -0800 (PST)
Message-ID: <a813d8dd-25e6-1255-8b3b-e79649401957@linaro.org>
Date:   Mon, 19 Dec 2022 10:13:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 01/15] dt-bindings: clock: qcom: gcc-qcs404: add two GDSC
 entries
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20221217001730.540502-1-dmitry.baryshkov@linaro.org>
 <20221217001730.540502-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221217001730.540502-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/12/2022 01:17, Dmitry Baryshkov wrote:
> On QCS404 platform the Global Clock Controller supports two GDSCs: MDSS
> (display) and OXILI (GPU). Add corresponding indices.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  include/dt-bindings/clock/qcom,gcc-qcs404.h | 4 ++++
>  1 file changed, 4 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

