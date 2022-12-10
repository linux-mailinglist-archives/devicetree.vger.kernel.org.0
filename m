Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA66D648DEE
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 10:28:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbiLJJ22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 04:28:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbiLJJ20 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 04:28:26 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A53E6B3B
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 01:28:25 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id cf42so10738260lfb.1
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 01:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TsbzVdPrko1HxcNQW70p0zO6ACUW3D/Os+YvnWapKLw=;
        b=hYX3LhT9pRZdl+nd0Llwx2iTMYMEWRC9SSmd2fMFFbg+EUEJHCa1NyloZoLZBYUDPD
         HxPo2cnm771kRSFmnWheyqS4XO+yNc6hP9wiUjcnECI6vEgHNXEoCpdDkCqGeEFsThzE
         FrgfYJdMfmOBG0SDoOooZlEkKteAva+6nuC46NsOBDrb8kMZXIZeL14ruv4D4oPH8OpW
         fW1eikvYhUmoXF+uEUgBlmcHMDA9ZsP3n8w8jpAVCsBLjimMx21VOeDyEFS2uEOLq0mo
         YwuNFs1pQde2AKw3AC41ZEm5DwdXpqBi+nNMmCBn+OQTnvcph8zDN/jbTFcvCksLsWuP
         pz1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TsbzVdPrko1HxcNQW70p0zO6ACUW3D/Os+YvnWapKLw=;
        b=RgCyyqHvhpup3Py6VpGDaiPP5bCD9Bqdv8qqN/H/v9ho842/x7k6pU7XoBz9CvgB69
         ON3QqRo3ZOHLgJnQPnxKu+FPXGm3DzchMmy6laURw9A2KtxloASpemLypzWkNol6x+qI
         WVBP5TlK9BOKHJWlA8sR8eLRK1sjT9emEwr6M+g/+JO+bN7c7Ips9tk1N0nP0yeX+Ium
         h0dLG0IAJC8Bpq6OWWM4T2SI4BkkW7CO61KcSgAx2m3G+RjdTLOzbjgIFcZbW1j0BMUw
         aO2uWQWON1VkgkMgXLM9T2iLDM7+vLqeSyNX4LlizKMmMfpl6wxUsKug6H81STpEMQT9
         tZAQ==
X-Gm-Message-State: ANoB5pmW3uA9uAlxNzU2/7SP6OtMi/95u/DDnEHleyn+AVZQn05Mpahe
        o1oBRyqxyRSIk1gIXGGmDnuAuA==
X-Google-Smtp-Source: AA0mqf62tTMgMEYSsD2FXG7iK70ce/NmK0K6J/J1yoPi7SnzCjvz0DnwaWCBSTJWV87CBeWxRySitQ==
X-Received: by 2002:a05:6512:3e19:b0:4b0:6023:6f6f with SMTP id i25-20020a0565123e1900b004b060236f6fmr3566078lfv.57.1670664504035;
        Sat, 10 Dec 2022 01:28:24 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id q19-20020ac25293000000b004b5732080d1sm647488lfm.150.2022.12.10.01.28.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Dec 2022 01:28:23 -0800 (PST)
Message-ID: <2a571be3-0ade-a8fe-2c9d-abb8e85955ee@linaro.org>
Date:   Sat, 10 Dec 2022 10:28:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/1] arm64: dts: qcom: msm8992-lg-bullhead: Disable
 cont_splash_mem
Content-Language: en-US
To:     Dominik Kobinski <dominikkobinski314@gmail.com>
Cc:     agross@kernel.org, alexeymin@postmarketos.org,
        bjorn.andersson@linaro.org, bribbers@disroot.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        petr.vorel@gmail.com, pevik@seznam.cz
References: <2cf45767-7974-3b40-fa18-ec33db5d5ac2@linaro.org>
 <20221210052454.314693-1-dominikkobinski314@gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221210052454.314693-1-dominikkobinski314@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10.12.2022 06:24, Dominik Kobinski wrote:
> Hi all,
> 
> Looks like the reboot issue was caused by a memory hole not being reserved.
> It's defined in the downstream kernel source (link : [1]). 
> 
> Adding it makes the kernel boot fine (tested when booted from lk2nd)
> 
> I'll try to send a patch with it tomorrow.
> 
> Kind regards,
> Dominik
That looks more sane than a piece of memory being reserved
causing issues :) Happy you found the fix!

Konrad
> 
> [1] https://github.com/android-linux-stable/bullhead/blob/android-msm-bullhead-3.10/arch/arm64/boot/dts/lge/msm8992-bullhead.dtsi#L144
