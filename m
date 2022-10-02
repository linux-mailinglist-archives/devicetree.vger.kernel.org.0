Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49FCF5F2466
	for <lists+devicetree@lfdr.de>; Sun,  2 Oct 2022 19:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbiJBRyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 13:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229682AbiJBRyW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 13:54:22 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A4C939B91
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 10:54:21 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id h10so5203565plb.2
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 10:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date;
        bh=5W29tZVkY7Gcwhc8yEWup/KXx3wVHKfaa0BxBjFL65Y=;
        b=YuC8Y4APFIJhwUMuvqJRBlA3DDtVhe5TPvQ75K9BWgea++GLv22fP7KiIZs/MNoqIn
         ofHQ4HYoR+IOJ9JUITRatGkNyj9RL/t+cWECfpUXOvqRP79P7BghlF2ty2yXMzukrk4q
         rKSXTCpBuvzC+IQ0vcgFgYmL5yE6Ck77ywmgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=5W29tZVkY7Gcwhc8yEWup/KXx3wVHKfaa0BxBjFL65Y=;
        b=WMN1/Rvwd+dBWYAxhXO2Vt+3wZHEn73tM1SPBsc0iuU7kug7RpZgSVaC0C6c4WCDL7
         xeFULFga/Lkl7DdJ4xhdmpQB697VL8D63VjiWG7SNdav8dJCWcefivWzHsLYOe8x7CvN
         BsU6aHY3kUj4lJP0XhoeZc8qdESxVXnpAdQjwmZJDYddPBJTP/BeLKaMOJlvRuYQO5AD
         h+r04GdQ9Ea+xK8t3e1xKE4lZH1AxiQjJxYphSDJ++QpFrOFaIFbPVQzHVlcC4Ap/2Ao
         HpMSecx8Cuy4++W7LOpakCT3chnWTTc1gtzdej2W5F7+iyqk2GaKuWRDHYjbFvSwTz11
         PFLw==
X-Gm-Message-State: ACrzQf0nbrMN5/ftE/2Z3XzaLWo+XuWUT+AAfHhT9LLIUL1agnXCmWea
        wKxfErJmH7BoPw7vOH4ce7tPGg==
X-Google-Smtp-Source: AMsMyM4ycgoxPkQdx7TH7/NaqNt518nq+9R7njsWalvl4hA0vjKBB/2jxloiomvO2pmZgKL0kCmWHA==
X-Received: by 2002:a17:90b:254a:b0:200:53f:891d with SMTP id nw10-20020a17090b254a00b00200053f891dmr8580039pjb.168.1664733260980;
        Sun, 02 Oct 2022 10:54:20 -0700 (PDT)
Received: from [192.168.1.33] ([50.45.132.124])
        by smtp.googlemail.com with ESMTPSA id rm13-20020a17090b3ecd00b0020263b7177csm13363107pjb.3.2022.10.02.10.54.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Oct 2022 10:54:20 -0700 (PDT)
Message-ID: <ca430004-7f03-b6f8-092c-0a7ab1cddcd0@schmorgal.com>
Date:   Sun, 2 Oct 2022 10:54:18 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     kbuild-all@lists.01.org, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20221001200039.21049-3-doug@schmorgal.com>
 <202210020642.ts8UPw06-lkp@intel.com>
 <a9a94d2d-5379-7e0b-b27c-cad0f569a773@schmorgal.com>
 <a5f9ec49-f921-5efa-6721-d23671ec6bc0@kernel.org>
From:   Doug Brown <doug@schmorgal.com>
Subject: Re: [PATCH 2/2] ASoC: wm8961: add support for devicetree
In-Reply-To: <a5f9ec49-f921-5efa-6721-d23671ec6bc0@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On 10/2/2022 1:35 AM, Krzysztof Kozlowski wrote:

> Now I see the report about issue I wrote to you. It's not particular
> nice catch of robot... it's visible from the code and easily testable by
> yourself. Even without compile test... The code was just not tested for
> warnings.

Thanks for your thorough and timely review. It is much appreciated. I
will address everything you mentioned in V2, and will do a better job of
checking for warnings with multiple configs going forward.

Doug
