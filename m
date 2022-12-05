Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 094A464272B
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 12:09:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230154AbiLELJT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 06:09:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbiLELJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 06:09:18 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CB8AA45E
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 03:09:17 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id i15so7057096edf.2
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 03:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FwfUzflGu1+z0kHjmPww1C0Zp4cmqkMxpg9SKp1UOmI=;
        b=twUIUHoD4Mzqf8n/F71EPPBOQAktxihqjY+bfaV2h3TxSuyTOe3ODSJoyrWC7JyLqJ
         t6T+bGGWxPImCubtvCy4HphHDnBuZlM1DXji0d33YHmMUR7/tSzesKsiF5XoBeHyCgV3
         D1Svsm5+kcrFB2c1yFpMikT1obSNif+UUq5b3y/fnZfWVWTtYbdkhTHEg4rGOZ/NPMts
         Rym61FupYStWIzuc0vvNuOTG8JOZL2la3wTQY1IyMZfduCdWh7QLB7ApFHILfidFpyMP
         STlg3bqZ/b11kirdvtoLT4ymJkqj9gVFRsU1wsmdksWmLIDx8kFcum099AvyY5tXuhzE
         dOcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FwfUzflGu1+z0kHjmPww1C0Zp4cmqkMxpg9SKp1UOmI=;
        b=iGJ8dKiZqX4bhtTHkWk9j8PBx9jTWnLJwDb7SDoX/bE3E5ouUNHePl4Q+Jpfftj/N/
         V9NfwT6icr16qRdhjEfYmANdtppotgmTX+5RPr5YpFMcfZxXHJcvmgTFm0XKT/P+HyMj
         1JHhro9tQO2g2ZPmH5rW3rkD3+mTBDOG1loCnA0mSSSDQ4+qQXGBsF0QVpe8BGpXei3Z
         ghrSVDT6JkLefOUOsEDnzq7rmE+rQDnEe3SOznGx8qIoaL2qcYy+tObLkxpX/XrB53M9
         MgmcuoP1bQmAGJTSk6IRq9I4izi0BG8aJIZ8tNtFhyEWxhAvBUubS5UgW2Tf1nilymgb
         nJGQ==
X-Gm-Message-State: ANoB5pmvvE8d7n9PAmmhKjjl8WY8v6U6HzHKhpJO1kVTIw3pUs5AV2Zq
        D8GzVipnwHRovu4qZXKkxcU7iw==
X-Google-Smtp-Source: AA0mqf69ODOqMulw7Mj8mxJDLpUgqbnk8OoxUwuSacbG0HGb7Y9L0Nkc5h0egNoD/7CH1ox3dBY4Rw==
X-Received: by 2002:aa7:ca4c:0:b0:46c:24fc:ba0f with SMTP id j12-20020aa7ca4c000000b0046c24fcba0fmr12258232edt.140.1670238555590;
        Mon, 05 Dec 2022 03:09:15 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id o7-20020a056402444700b0044dbecdcd29sm4632097edb.12.2022.12.05.03.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 03:09:10 -0800 (PST)
Message-ID: <2cf45767-7974-3b40-fa18-ec33db5d5ac2@linaro.org>
Date:   Mon, 5 Dec 2022 12:09:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.5.0
Subject: Re: [PATCH 1/1] arm64: dts: qcom: msm8992-lg-bullhead: Disable
 cont_splash_mem
To:     Petr Vorel <petr.vorel@gmail.com>, Petr Vorel <pevik@seznam.cz>,
        Dominik Kobinski <dominikkobinski314@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, Bart Ribbers <bribbers@disroot.org>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>
References: <20221126010531.466046-1-pevik@seznam.cz>
 <CAB1t1CzmNK8i0qT43qVw7VGUPVi67Up6QU-kYDoEsrV7=N7u7w@mail.gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAB1t1CzmNK8i0qT43qVw7VGUPVi67Up6QU-kYDoEsrV7=N7u7w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 04/12/2022 14:16, Petr Vorel wrote:
> Hi all,
> 
> 
> I got reply from Dominik that he noticed dfps_data_mem (reserved in
> msm8994.dtsi) overlaps with the framebuffer region.
They are usually next to each other..

> I'll retest it next week, maybe removing it instead of cont_splash_mem
> fixes the reboot.
Maybe your bootloader reads it? And needs it to be at a certain address,
maybe with a certain node name or a label?

> 
> He also noticed, that Linux doesn't reboot when loaded from uefi (his
> project [1]).
> Not sure if there is any difference.
Is it loaded with this DTB or does it rely on ACPI?

Konrad
> 
> Kind regards,
> Petr
> 
> [1] https://github.com/Dominduchami/Nexus5XPkg/
