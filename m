Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C28AA59E6E1
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:20:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244602AbiHWQTk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:19:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244599AbiHWQTU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:19:20 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 610376F27F
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:41:39 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id q18so12371785ljg.12
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=cyI6Nb+Lpql20jJvIrugwBnM2iazJtwpL+MJh5jvid4=;
        b=q3Fo8HyP0yxbMRrLy+xdVhMFNtEmJmByU9GZdikhrDCs30JN4tDr/RIzlQiME7jRn2
         sYCc7ydBLGKYxn/P3IOjAZ6QfqOeBzVjv1GF/pNy+YxjI1Ah6DT1xv6YuUaH4u4Km23w
         Xq0Jov4lQGSFZWRsAfoCIgMD3eCPcm124W3iMgPPwuoqqZXmMHSuGKD35rW7PmvyCN9J
         f5Lr81uMnYSH+ZGSv0offL7O5nBUFF/mGNxaSDdUZPyG+3weyRBml8OCaZdJnkbHbdCd
         AHQP0rGAxc1QrGhWeZXeB+hQK1ORTMUSLdAm5HNjRjisQDYcni3AJdXCCEQGcaa/1+za
         t7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=cyI6Nb+Lpql20jJvIrugwBnM2iazJtwpL+MJh5jvid4=;
        b=N8ezyVT8ulfhrEuYvAhDsOCKrnHPuzwCQ7CY4D6jPX1X2vVqKcJM786645uljEh66l
         E08vSkthrWGt84wxvhZkkL4lv+CIrJETqPeqcFCgxSWeymXpEB5islEhkk6pz/+wW50M
         6NAcOtXGwFxHRQV/MmyVmacYLRNq0DqyltqEUenQKL+9vjKss86GzkN0pHQi4hmPk3JW
         jLvnS45b7aSSkmIuyaCV4eKAVmAS0b08HWHLDs/XnU51X+vaOXDIMlILbJI51FxBzEXw
         vX/n/dVeQiYyfxN+jPxt2JEDwlhoFnCCkVhJhjZWoPSCeGpkIHD0sCcOBv4lcoOIsXtK
         uD6w==
X-Gm-Message-State: ACgBeo1JBVdIliHCkdBZfwEElRJNHSLMGdxzPH54kdSzWJpteN4UQBiy
        4+F2d9LGdsNZOtAW9ru2zm5Z177zdwpgQgLB
X-Google-Smtp-Source: AA6agR6TNLCRTysUgZMU3GceB2QqJBQ8Ev+BbUtFHZzcuSRQUyLVRafRkgZ0nk+1JeJK6snRoZqBSQ==
X-Received: by 2002:a2e:a889:0:b0:25e:3d55:b092 with SMTP id m9-20020a2ea889000000b0025e3d55b092mr7192999ljq.402.1661258498169;
        Tue, 23 Aug 2022 05:41:38 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id s13-20020a056512202d00b00492dbf809e8sm851894lfs.118.2022.08.23.05.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:41:37 -0700 (PDT)
Message-ID: <13858817-dbca-68b2-9905-cb7d0bc81cbd@linaro.org>
Date:   Tue, 23 Aug 2022 15:41:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Content-Language: en-US
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, cphealy@gmail.com
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <273e27e6-4def-2424-b838-de217f10e4a3@linaro.org>
 <SN6PR06MB534215A808939107AFDE5CFEA5709@SN6PR06MB5342.namprd06.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN6PR06MB534215A808939107AFDE5CFEA5709@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
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

On 23/08/2022 15:40, Chris Morgan wrote:
>>> +		regulators {
>>> +			vdd_logic: DCDC_REG1 {
>>
>> I commented here and there was no feedback, so please implement the change.
>>
> 
> Sorry I didn't explicitly call it out, I only made a note in the
> revision notes. The regulator names for the RK808 series are hard-coded, so
> I can't change them without modifying the driver (and every existing DTS that
> uses them).

OK.

Best regards,
Krzysztof
