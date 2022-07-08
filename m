Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A176656B125
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 05:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236692AbiGHD4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 23:56:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236564AbiGHD4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 23:56:17 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6094174DE5
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 20:56:16 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id t19so33697902lfl.5
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 20:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=d+W+CYgVHtPdSnaUFsEjZFbm2jY1agIXuYI2yF5T55s=;
        b=CUSWi9iZiYqV8xxuelbTxPoAfwl0RSCC5FtSv9FJHgRupYh7jA0kqdmc03Ttntsccn
         IGECCxuzBqfBpq+dyL4ZPuly0Kj45ZgfMX2JZxHKIF9+4evrZxah1Y3PeimYZEf2T+Hm
         NO9Qtk1vhQLUUcQNte/vg03RcSrtRZW5bhAEHuZa0ADAISlzWEBvMzJZx2GpA8ccGvtp
         Oi4WZVzynG6uv1YAsX9UrzYjC8QMDSrx2BCtr5V7FIWor1xKNvKkn3yLwjFsj/M2eKPq
         kZs4d2au+MZbK1Ve9cw2ln1wN36iBQmQ8RcxaIuEvDcXj7u7zYWXDwBBnjzJwi7QGTrE
         aYNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=d+W+CYgVHtPdSnaUFsEjZFbm2jY1agIXuYI2yF5T55s=;
        b=Y8pPFIIh6x1OmkwpFX6lNdbei2FOOLOK96VQYJNdd5tpLsieb5puFC4HkPoE36UwVK
         VIU9XusYI0Qo2eqHHo9jtoF8Yet6KkaKgXOLtwXdgEf9Zw3lwjTnDD0389wDzzInBuML
         HCz0qMOc2ug7n03HIUh/5nWVyZMR46d7wqqA6w5cGVX9rVD0HbAhFxL0za7AoZDwWivN
         zscOq0JfrPJIaQ5NhPD2x1cHcX6Ol5DFBFoI868LCeD3TFGV8t/EMgqNzLFEoQPmfKbh
         ESiwq4kppmUytuYnicwxKr8xutt9xY/GDHZD+9H4cI6qi0tJqeEG3gIHitmF1MT9NaiL
         MMFw==
X-Gm-Message-State: AJIora9E0wVQWH/TJ7lyc2ZT3rG+6JmiV2KXcJhzdv0tR4Zq0yAwmXSH
        Uz07e9iJGclbifNj7TQf9ZPf9w==
X-Google-Smtp-Source: AGRyM1v0VsbaUzE0u1YassAPiTUnCpM49yJzVyct4bGbaAQTJ3+q52gkGEn7IrfMV/C5w1BrzdrzQQ==
X-Received: by 2002:a05:6512:a8c:b0:47f:749e:8de3 with SMTP id m12-20020a0565120a8c00b0047f749e8de3mr943503lfu.568.1657252574779;
        Thu, 07 Jul 2022 20:56:14 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s21-20020a056512315500b0047f6e91d4fesm4788536lfi.141.2022.07.07.20.56.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 20:56:14 -0700 (PDT)
Message-ID: <88d21de7-58b8-7915-9fa4-783ed07efd62@linaro.org>
Date:   Fri, 8 Jul 2022 06:56:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 2/9] dt-bindings: msm/dp: bring back support for legacy DP
 reg property
Content-Language: en-GB
To:     Stephen Boyd <swboyd@chromium.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
References: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org>
 <20220707213204.2605816-3-dmitry.baryshkov@linaro.org>
 <CAE-0n519u3S0WK-712aM-2zhZXrRvr7gh9aDSvRfMtkh-f4eUQ@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <CAE-0n519u3S0WK-712aM-2zhZXrRvr7gh9aDSvRfMtkh-f4eUQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/07/2022 04:29, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2022-07-07 14:31:57)
>> The commit 687825c402f1 ("dt-bindings: msm/dp: Change reg definition")
>> changed reg property to list separate register blocks, which broke
>> validation of DT files using single register block. Restore
>> compatibility with older (single register block) DT files by declaring
>> it as a deprecated alternative.
> 
> I think the intention was to quickly migrate the dts files to the
> multiple register regions. Why not just do that and drop this
> deprecation binding update?

Ack, will do in v2.

-- 
With best wishes
Dmitry
