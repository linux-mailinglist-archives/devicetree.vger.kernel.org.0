Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2A3B6D1A99
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 10:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231482AbjCaImh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 04:42:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231725AbjCaImG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 04:42:06 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C91DD1D934
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:41:31 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id c29so27965071lfv.3
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680252043;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gjXQ5aQpqa9dtTjZKu9qBegMD76XnvSRVVOgnd82YkA=;
        b=vltQKUL3hd9OWaeRLdVX83lC9n5JnQDc4llvdPRGU22FvnP96K9I88V0ANxqtlRKXP
         t2DmmsASCcz5z3tr/h3gtvUX7GSjKy6VuQqYaooHwqPN/PlkdqzDVjHfr9QllImsWqG5
         aW01Olub4vZc6jwBtji2t4P4F2tCSgGweFusFG7gLbcqvrtfsyzpJZUW2t1w4itI7lYY
         47P7raJ7QtH3W7Zpoju4a2yE1Q18SO4+D3PXoYZLYj4tWCoN0yk6BKQMn0plL07ByDl7
         wgkjePVTUHMk4BpyMvopnikvt1g6Q11/AEd/quexyX20zkVSNJEkABjPOrXEs/zutbMX
         9NSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680252043;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gjXQ5aQpqa9dtTjZKu9qBegMD76XnvSRVVOgnd82YkA=;
        b=QsnWwbxiS+74kidF5D2b22YqDDRsvXPDcpk1zZ4NmLANmBcWNI4fqn2644mg2vMV8S
         z19MFP+uEB+uEOu8QSviq4tSH/+lQxIpDApijKAUsPw0seNsUBbD3doTJxSBDnu6cjQJ
         XsMgamfVWLY6pZQdgdDZww9ZanCJ2SZliK6vU8Plo9p93aFayk0vzAprCOuPs5i9ppCu
         wnx3ZoSWy5tLtD6eeR2tT0dFRmvpk1Jpb4MyS4Yryn5Zww1JwExjJ2GVy6vPgo0QDIm3
         NQwsF+GBvD3uoRbIcb3q+yKeqiqSvkruB24ewC4IA8g5E8tXipAg8ohgmaujtOT0xuDo
         BpVA==
X-Gm-Message-State: AAQBX9eK2hiXZ4raeAoWBEnBTR3HT81znent3zebDv+P9OtrXVWn/SHz
        Romczsi/YQNYICtVI7eqNukbGw==
X-Google-Smtp-Source: AKy350ZF4EPLm2KOd54BriJCTJPExfvm5KVPdSmGedrby3dOniEiFQ93phf7NAJWdI34ReDhM3A7ZA==
X-Received: by 2002:ac2:5482:0:b0:4b5:8f03:a2bc with SMTP id t2-20020ac25482000000b004b58f03a2bcmr7517722lfk.9.1680252043253;
        Fri, 31 Mar 2023 01:40:43 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s5-20020a19ad45000000b004e845b49d81sm289545lfd.140.2023.03.31.01.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:40:42 -0700 (PDT)
Message-ID: <bdb9c715-3cc9-73b8-e500-d2e34075b53e@linaro.org>
Date:   Fri, 31 Mar 2023 10:40:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RFC PATCH 1/3] dt-bindings: display/msm/gpu: allow specifying MX
 domain A5xx
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230329222500.1131836-1-dmitry.baryshkov@linaro.org>
 <20230329222500.1131836-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230329222500.1131836-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 00:24, Dmitry Baryshkov wrote:
> Some a5xx Adreno devices might need additional power domains to handle
> voltage scaling. While we do not (yet) have support for CPR3 providing
> voltage scaling, allow specifying MX domain to scale the memory cell
> voltage.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

