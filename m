Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2B5654D389
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 23:18:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349966AbiFOVSq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 17:18:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350227AbiFOVS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 17:18:29 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 738F255485
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:18:28 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id k5-20020a17090a404500b001e8875e6242so3172463pjg.5
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AdSNYlarnghZLL4+EwD5Nxa+VwtZOE12n1YSRFgSAD0=;
        b=rq4HnFWbq6xo4ji9uDTZmvctRQPOMXHvVKyRxreJHg5eITcoxkEQ6nZOWfWPBms4Fl
         zKZ61g6FzYqexv/S1p1JkHv3DWL7dHqvtn0J4/fF1v9m8yX4qTbP/s6ZyY93Jlqzc2Sj
         gLyuPHqzLXNHJe0FwYjs645KMSKe6FSsJi4rbByhr4xKMEId9b3FldShsDEwNo2C8B1S
         NeODmLsRDJ+3tVZ788Hah7dyxkh0ZqqCxb33Nta7jTiNPVDRwwmKg9QcKGMKlG9Alvbf
         UoeEFLICKmbY7LfDudU4Mu1CEG6Ld7nyvMFn/dYae2vOXm5A9YFTHfIs3lAgBP4oaYtv
         Xjng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AdSNYlarnghZLL4+EwD5Nxa+VwtZOE12n1YSRFgSAD0=;
        b=p3ZwkA9neYE/0z74Yv1uLKThhCz6Ao4A3oLUOL+bgKLm27hTR50cYv5dQNEqS/GfJ3
         /F/d9FwXdoqYPon0pwevzgn5jrYl4h8YPxOmcJj/mNmIdqCpveLjw4Td7eAfT2NowaUP
         MdYm8vGTnRPfWBYLK1SWcU///336Xwy/6sF0XzfWFOdj1X8t/L1uq6DFgwSfRVm7U+2g
         AD2H909nkJht2AeXyqIhsRJZNlt+qkSv4R6cUpNT5vsvQeubj0gMnQbBjsJLXCMA27iy
         gXSxAOpT4tH32l5fQ6L7jABnLq0JyMbiy/KDMSBCtbD3CHh2j1+Sjc5AicMy7wq45NS9
         Tf1Q==
X-Gm-Message-State: AJIora8Z2gc/wYx5/ze2SxPh0SFdyjIYnRmwOSG+f9xCg5+jxYF0vsxN
        nFSYUHj5uJd20oFV9JhssDBJdw==
X-Google-Smtp-Source: AGRyM1tA/elZAAtrJW4sA4e2iACdIX7S4wavbn+hv4qN9/qOkHwSZUGjW/opaYx+1Ur/YEnpVMCSaQ==
X-Received: by 2002:a17:903:230b:b0:167:5310:9eed with SMTP id d11-20020a170903230b00b0016753109eedmr1469945plh.46.1655327907931;
        Wed, 15 Jun 2022 14:18:27 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id x8-20020a17090a6b4800b001e2d4ef6160sm39763pjl.27.2022.06.15.14.18.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 14:18:27 -0700 (PDT)
Message-ID: <90bf6d4b-68bd-3508-7a28-4b45287ee4cb@linaro.org>
Date:   Wed, 15 Jun 2022 14:18:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: hdmi: split and
 convert to yaml
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, David Heidelberg <david@ixit.cz>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
 <20220609122350.3157529-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220609122350.3157529-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2022 05:23, Dmitry Baryshkov wrote:
> Convert Qualcomm HDMI binding into HDMI TX and PHY yaml bindings.
> 
> Changes to schema:
> HDMI:
>  - fixed reg-names numbering to match 0..3 instead 0,1,3,4
>  - dropped qcom,tx-ddc-* from example, they were not documented
>  - make phy-names deprecated, drop it from the examples
> 
> PHY:
>  - moved into phy/ directory
>  - split into QMP and non-QMP PHY schemas
> 
> Co-developed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
