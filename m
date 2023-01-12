Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 318A4666CA9
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 09:40:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239792AbjALIk3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 03:40:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233710AbjALIjT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 03:39:19 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AA5A2F7BE
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 00:38:55 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id fy8so42856395ejc.13
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 00:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b2MNWyXB7VrWbVzJQsnav8QmTtvtuo95UZG0nlSjZ2A=;
        b=YvMUyp4i4b09kRs5DZXY9qsK/SIoiI106V4Xx0eoJC9A642eV7V07HBrlVdRDQFM/j
         2Bod68H6EvXEsYW0d/B3ifQW5o6ROi1zolFm7/19zDvl/PJ/0gaIODDPRrIJp93BADoH
         xdhWRTs50JXDLpooWOKWX/+B6ZmIqVDSoBXpdH9NOHiaK6Gwo3h7pRV7zgikuwYORbzB
         KDF+75yB/XKm2uEbf2zvUjidKMBvFTymiO9lGhyWHaMPDACIqgHRX/R3Di981bdFyHrD
         RIRpnQFTI+9EdowbdJei8KuemmCeS7FhhrUxYOUkOwweZCwFzfXlIINuLjBzyQBXPH6l
         IKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b2MNWyXB7VrWbVzJQsnav8QmTtvtuo95UZG0nlSjZ2A=;
        b=Xslxx9CIp+kKfDFyrA887USlUCpRBG/gpZ545kDSCn3k0dL0IsqzD/yYWmpo2629a5
         11DIUDnEOXFt8diqsczEh3bViEj6bpbiZiFPBLQUlW4l9hQSwxX9mB5bXixl8IqCEmGv
         jU8gQQrhFE9cM0C361TTEJajvMoziE7UghNQ+cXjrQzNtuhk3yD+mqIMdQqKgBMD54zN
         c5jSEl/Nv4vYaGGVKl0aY4xcWu9uwCYsEifyTdVjTrVX4yj+KqxTHlhxiZkBSQFjYUsy
         xOAPLDY2oEsvJfjycjN2rhVuWTY8Lg4AWpeacviUdN0szzf03cRnbyb3uv490hwH/Fa1
         eLUQ==
X-Gm-Message-State: AFqh2kp7ziYZGKGjCxMi784JxnvfXRb4lZIYpVvuUjFiRcKC++a3JXU4
        RCJonqlm7m058hlHWuebfIvd2w==
X-Google-Smtp-Source: AMrXdXuLXb8mazgCwccFIsl4I2twUlKO4egUyv1CWBY77YZ2PXe5wvB4tLMY9cIRGb7fo6nc7eZNAw==
X-Received: by 2002:a17:906:d051:b0:866:9c8:570d with SMTP id bo17-20020a170906d05100b0086609c8570dmr1364370ejb.55.1673512734059;
        Thu, 12 Jan 2023 00:38:54 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id 22-20020a170906311600b0082535e2da13sm7136237ejx.6.2023.01.12.00.38.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 00:38:53 -0800 (PST)
Message-ID: <fbeb2433-7b32-6323-6292-21a5b05aa12d@linaro.org>
Date:   Thu, 12 Jan 2023 09:38:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 01/14] dt-bindings: clock: qcom,msm8996-apcc: add
 sys_apcs_aux clock
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
References: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
 <20230111200128.2593359-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230111200128.2593359-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2023 21:01, Dmitry Baryshkov wrote:
> The MSM8996 CPU clock controller can make use of the sys_apcs_aux clock.
> Add it to the bindings.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Best regards,
Krzysztof

