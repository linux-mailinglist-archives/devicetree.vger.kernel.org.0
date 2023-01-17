Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BC3366E3C7
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 17:39:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232766AbjAQQjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 11:39:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232523AbjAQQjk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 11:39:40 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 219CF1042D
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 08:39:38 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so26276285wmb.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 08:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C9ea25hCHw0U/849hUO3u5WPIy2TH0XaP2KrQ3ZHvqM=;
        b=CJE8ySF/D515WOvTTrrUedDgSuUlE3kyPUVc3Gfl7Ml15dvqM8/F6tsFi8lnAHuIkL
         TOfh9QTMgDWISaUTYMMlzIqFyVcFMgLp9Cr8App6RdkDwePexWvc5rq1mWJdYPq89KkH
         nY0aPMvDW6dkthKT+Rj0N8ZS7IHkUdt65+Zn7N6PWCzEVB1u82jre0auruELNNov7MmD
         ER9o1YqZEimU7tV2+rey9dcwRDJ/kAXme1tTwpF3JYt+SmC923foshfe+bNSOgqIqUY/
         yA9/MttrFSEwP+CasVpgKyKpDyknQ/iX4/SWmVhGhliLzCU4mCkQ+eeDBNVFdBZzol4F
         SDqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C9ea25hCHw0U/849hUO3u5WPIy2TH0XaP2KrQ3ZHvqM=;
        b=IfIzGqmHXrgWW5QvQZ+waOqKya9X3IdQeolvlJ+ltg7zpzee7K093BzhgaeoO2HCCV
         YUD7IJ4rXkg2NP34FYUXZKtgRuGbgvyuMsr+buRsortoOoyUWKRjAOBw4QEHqRGsO62D
         wqBxb8zZP7IPHnNpmjmVNtdWaUfUOeiAbhdFg6OGm+2zsYHTsUTPoaZqCQSjHLslf2ZV
         +6/C5w+2CWkT4RLY5L4rX/MUyUjz1LkqiSWBOWCd1ChGptuDRsgtLR5WgQx47Hk0LT/H
         kSbwxDIxxqiG2+mu67w53RHppHFCMEpa3jNxmAMP8uKl4d7hajrSseudRBvWlqgcIpcw
         +R2w==
X-Gm-Message-State: AFqh2krbdknf9eN8Hzfm7CMdnSSqjZ/NyDS19weGMIs7OHu2NZWMWA8u
        se+Be2mXGqVjdTl2b+bbGvbBwg==
X-Google-Smtp-Source: AMrXdXu/dSS/oC+YLoBTzQ1Dq/KeKK345N5P429P8GtHoBXJbAtKEwVl8/NpkWHKmyJ4dhBsaRQ2YA==
X-Received: by 2002:a1c:f40a:0:b0:3c6:e62e:2e74 with SMTP id z10-20020a1cf40a000000b003c6e62e2e74mr12475844wma.15.1673973576690;
        Tue, 17 Jan 2023 08:39:36 -0800 (PST)
Received: from [192.168.0.16] (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id n23-20020a05600c3b9700b003cf71b1f66csm42338143wms.0.2023.01.17.08.39.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 08:39:36 -0800 (PST)
Message-ID: <46703b00-97d3-c21d-fbe1-71208fb50f73@sifive.com>
Date:   Tue, 17 Jan 2023 16:39:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v7 00/10] Designware PWM driver updates for OF
Content-Language: en-GB
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        jarkko.nikula@linux.intel.com,
        William Salmon <william.salmon@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>
References: <20221223153820.404565-1-ben.dooks@sifive.com>
From:   Ben Dooks <ben.dooks@sifive.com>
In-Reply-To: <20221223153820.404565-1-ben.dooks@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/12/2022 15:38, Ben Dooks wrote:
> An updated set of patches for the Designware PWM driver
> split into PCI and OF versions. I think I got all the
> review issues in this set.
> 
> Sorry for the delay in getting this out, between conferences
> and other absences there has been little time to deal with
> this set. I will be now out of office until 3rd Jan 2023.

Hi, how's the progress on review and getting this set finalised?

