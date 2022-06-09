Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A603544B62
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 14:10:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245164AbiFIMKd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 08:10:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245217AbiFIMK3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 08:10:29 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F23F265FB8
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 05:10:26 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id a29so9157083lfk.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 05:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QSG20Dj6ndvabyRb1c78eTbY+WPCIgmk0mLj5fnfkZc=;
        b=yQKeO/Z2I0TkmD51XdZCPv8rndgXW2el6J4HIJe8EIgTxElnD7e53n1HVblBwk0mSH
         /OL51MvESzk+OSfstbvtRK7HkC5CfWoBkQ5DafO7X4w4naZypTtCpPv3wtQuHf5w/APp
         AdtLE6rLqvrH59UL2r7T+mFuUG5rOnl+s0EhkCr5rKP6JQdyoRBRMu7+/dA1HzvQjSfA
         fVNYV4DEU8dNTo8jAfZ4fOxFTT0CIUBgFGtgSQb5Cu9RpfO10idNjaP9F4DC9R8qd03/
         ricINP2QR0CJS8dwHMPx6jjXnkITY2DYestbvJJjvut1Qu2V+HkwjZ/C3dwVjViaLc1r
         Yscg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QSG20Dj6ndvabyRb1c78eTbY+WPCIgmk0mLj5fnfkZc=;
        b=eHpe9lcu+VqSmpdUrKrBTHIbodbbcipHR4CzcNv1obQnadheAM7DuV7fORxzzmt190
         bljUkRRiJ5JueTVqHHptqK4zZnEuDbe0564u64VtdX2xmQVnMA5jV8EL/EoZLp87Th9B
         QYRLRuMtkfWnvn5bj2FemxWDx30wpjaTkhMj2K5q/jJYeEXjCkgb0GJ0D/Np729ycwSW
         UfGbgWd2le+TrXozunpgOjhXIh8s8PWeX+Hcrm2iUtFdiHG7C2HkpAtLjcZ1Iq716G9l
         4ZpTacLWG+FaOXkacM1nDJsb40qnuzc6GKpg3GnNKirXnGPZX4NrS6saKyS0xz2T5djq
         RymA==
X-Gm-Message-State: AOAM531NzDdDJDJx1UZCNSxSvlUetH66Z9QH2/RYEzW9kYhlA5eVgvCL
        GfM/olWwGUPGM/Y6XMPmo0ew8A==
X-Google-Smtp-Source: ABdhPJx4hS6cWFi0csc42PotruFgLnEop7eKNzSQaLClCXHVQwjjzFnQZjWmDt88EW5Yplrdbl5cVQ==
X-Received: by 2002:a05:6512:92c:b0:479:7a74:8427 with SMTP id f12-20020a056512092c00b004797a748427mr4722918lft.126.1654776624478;
        Thu, 09 Jun 2022 05:10:24 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f25-20020a19dc59000000b0047255d211afsm4199310lfj.222.2022.06.09.05.10.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 05:10:24 -0700 (PDT)
Message-ID: <98c98ef4-06df-0aae-ecf7-77e181f566f4@linaro.org>
Date:   Thu, 9 Jun 2022 15:10:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2 01/12] dt-bindings: display/msm: hdmi: split and
 convert to yaml
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
 <20220608120723.2987843-2-dmitry.baryshkov@linaro.org>
 <e9918d06-1b53-d847-016f-2310c4fa9866@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <e9918d06-1b53-d847-016f-2310c4fa9866@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 15:37, Krzysztof Kozlowski wrote:
> On 08/06/2022 14:07, Dmitry Baryshkov wrote:
>> Convert Qualcomm HDMI binding into HDMI TX and PHY yaml bindings.
>>
>> Changes to schema:
>> HDMI:
>>   - fixed reg-names numbering to match 0..3 instead 0,1,3,4
>>   - dropped qcom,tx-ddc-* from example, they were not documented
>>
>> PHY:
>>   - moved into phy/ directory
>>   - split into QMP and non-QMP PHY schemas
>>
>> Co-developed-by: David Heidelberg <david@ixit.cz>
> 
> David also needs to SoB here.

Thank you for the review and for the comments.

-- 
With best wishes
Dmitry
