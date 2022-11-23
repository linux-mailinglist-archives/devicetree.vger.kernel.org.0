Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B43E66359F2
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:31:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236409AbiKWKbV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:31:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236054AbiKWKa4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:30:56 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F730A45D
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:15:04 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id be13so27481390lfb.4
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bchWv29KUIlfhCBzeS/RlrJmepqrkZ2O36CXiGWm93Y=;
        b=xedXVArDLvIR/udrtXffNHoizqE0zg1raQB+FSllgKAqXe6q+1d2GAXlwOuTtfcCyk
         2DU1r6mJC8t65HrCaIltDw7DgxhWnt9xs10eaS3CRk8oWTLfpmPMeX+IT/TEtCxgR5ck
         0ZAUM8vPg5a5XoxblHWuF82IY7hPL30CwyxrWbxB4dLTIwxLL5yDu6nVh2kvsP/hOV51
         8V/oV7n8rZIRoAHRCy3+0c9MRwJDMCXNlk7Se9S3Z2cwQmAsLuI2/AGi11DyV14l8AOZ
         J4sO+OhW1swnFUpvzihysRxA7lpAe1fkJcvXCoVKG/6/StvaFgTTgQdTd0xr5qtmwZT5
         wHAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bchWv29KUIlfhCBzeS/RlrJmepqrkZ2O36CXiGWm93Y=;
        b=zp2oOszqcy5tlm4zDrv0dBBYSMBucYNVjYQqJIRR9vzKWxRzKOp6FGNNhnLamXandO
         rESvmvoHQ/NfUMTZq7cyxXXb0/FMQ/zUReuFgwH6UeBulODnH1ZFnePFB3KBHYvQMX7s
         Ig5hTItopHfO4zDdnZA1swTB40dspqfdngGkR6rQdcCb5mZ0TtwzmW+/ERsuitM2lrQP
         e5OxuPnr9BYIGlzoWbidzvi2IWQLmX42iZDwR7eakAOXgEbClPZlg/vCDELrLYzdKyS+
         kw4HbDLSn129z5OiOXkOgO5fTuONoW1d7XTOu80vyR6UYAwHhvIelWSCGfRFwi7bbLhp
         fpHw==
X-Gm-Message-State: ANoB5pkjtI3IQTkayY5Wdr70EC45Bc5wsiHse/gr0j8DXZ9oKpK2h6us
        xDY+hmF53oqPq35CJlNwiV3lcQ==
X-Google-Smtp-Source: AA0mqf4P6Eq/wqOg5Tajs92LbSU1nWk3/3lttgoUsmyi/7LsJFhSMFkymsFaFXCg/zb856zXQtWhjg==
X-Received: by 2002:a05:6512:3cc:b0:4a2:2bac:e4fb with SMTP id w12-20020a05651203cc00b004a22bace4fbmr3214001lfp.297.1669198503026;
        Wed, 23 Nov 2022 02:15:03 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 6-20020a2eb946000000b0027775fb1f6csm2152048ljs.136.2022.11.23.02.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 02:15:02 -0800 (PST)
Message-ID: <3f796546-f9ac-353c-9f5b-870f77726da6@linaro.org>
Date:   Wed, 23 Nov 2022 11:15:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 01/11] dt-bindings: display/msm: *dpu.yaml: split
 required properties clauses
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
 <20221122231235.3299737-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122231235.3299737-2-dmitry.baryshkov@linaro.org>
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

On 23/11/2022 00:12, Dmitry Baryshkov wrote:
> Per Krzysztof's request, move a clause requiring certain properties to
> the file where they are declared.
> 

Commit msg could be a bit more generic, without naming me (there are few
Krzysztofs), e.g.:

Require only properties declared in given schema, which makes the code a
bit more readable and easy to follow.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

