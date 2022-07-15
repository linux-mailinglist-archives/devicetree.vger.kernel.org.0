Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61618576436
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 17:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233387AbiGOPMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 11:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232952AbiGOPMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 11:12:49 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1AB07CB4D
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 08:12:48 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id q7so6009341lji.12
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 08:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=76oZtBS/foVZEkUC9OiorabaBtf3lSNeNe99cdZLStA=;
        b=v5v5inoEi6PQuOUkPu6nO36nLN/ZY8ivrBX1AUTWy6RGRCdAv0Ptwd8yobv7HhXrys
         7yg9wYXKmTfUI4Imf3ZNtTzCKu+O77avrHbvOblPAd7AgOfyKE2g/1TdeuNXuV1sZnND
         iQweLAJ8iDH6b/wPddg7lvKXZSiT+nsMiScCwT2I7mhhwfTNn2VcKYxjIlUfap8Yfkbu
         QZrD20fpVrCsfaJDjvOhuQyButVlqV60wqfW34xg3zdAHXH9zIcS+dgQThlwGwmRySDc
         prUM3kOpIkdDVup+YY+sPRYqBWbMpaUeFL/zdgEF16zZMQsdZ5XVvlNvU9ILX5U+XrzI
         lcyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=76oZtBS/foVZEkUC9OiorabaBtf3lSNeNe99cdZLStA=;
        b=j1N2ZtH8YNjH+XHoUj2cd6pYlDDB6hTwk5AnQwvHgbWvl2PRPZzCxBLiIvU5dxzgLA
         bAZdzleuHbl1/HIZxBCQgioriw9wWnKKFaLdetml4i1R9Ays7/thyeCZ9XW3pc4bP1y/
         id0T8K/j9ZvclRwV9CKnbP4yXHKlxLMBvqvgDlkX5i9I0Np6iTd1+bxBki8El7xlWQuL
         Cm0EXdcTG9B+eNt6pHQCPwtxdwjyWJXpo9nJRXXKcEYFFXUgA7hfUqt7qWBa3xNgWSIc
         AL55nAEVVb6u5Y/pVej+/OnYbUnEeWTRSsM0mbZdEFywXtZj3ZJ5dXWxLgYmQdzCbTks
         Z4ww==
X-Gm-Message-State: AJIora8KcGuuKcmHjF0G5jp7u+YDLcrnjdypiNskp0OWCBV9LwHeG4yE
        yk7QUyk9zdS46POJ/DlVOSJkzQ==
X-Google-Smtp-Source: AGRyM1ts3yMPaVarrKM2ncpHF2S97FKxw1xuAlGlSpaA7rSqLRt4K5FbQ1crX4P4is8LeEATejkiMA==
X-Received: by 2002:a2e:594:0:b0:25d:47ee:85ff with SMTP id 142-20020a2e0594000000b0025d47ee85ffmr7479924ljf.435.1657897966980;
        Fri, 15 Jul 2022 08:12:46 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s5-20020a056512214500b0047255d2111csm940406lfr.75.2022.07.15.08.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 08:12:46 -0700 (PDT)
Message-ID: <c5251107-33f5-d5e9-7977-eccb1c6e1130@linaro.org>
Date:   Fri, 15 Jul 2022 18:12:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: (subset) [PATCH v6 0/4] arm: qcom: qcom-apq8064: add separate
 device node for tsens
Content-Language: en-GB
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20220521151437.1489111-1-dmitry.baryshkov@linaro.org>
 <165716107313.864223.16495504646338874492.b4-ty@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <165716107313.864223.16495504646338874492.b4-ty@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 07/07/2022 05:31, Bjorn Andersson wrote:
> On Sat, 21 May 2022 18:14:33 +0300, Dmitry Baryshkov wrote:
>> Currently gcc-msm8960 driver manually creates tsens device. Instantiate
>> the device using DT node instead. This makes the APQ8064 follow the
>> IPQ8064 device tree schema (which is also closer to the way tsens
>> devices are described on newer Qualcomm platforms).
>>
>> Compatibility with the previous devices trees is kept intact.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/4] dt-bindings: clock: qcom,gcc-apq8064: move msm8960 compat from gcc-other.yaml
>        commit: 91a4cbf93326f2d27dda7361c43a5bb24cfd93c3
> [2/4] dt-bindings: clock: qcom,gcc-apq8064: split tsens to the child node
>        commit: 621f984840928f0bd14b20c86b70a15590ed2d3e
> [3/4] clk: qcom: gcc-msm8960: create tsens device if there are no child nodes
>        commit: 93b793d88da8b2c7afd63c64772666ec4274efad

I hope to see patch 4/4 to be also picked up at some point...

-- 
With best wishes
Dmitry
