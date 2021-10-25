Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80498439CFF
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:08:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234877AbhJYRK4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:10:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235386AbhJYRJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:09:28 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E7DCC0611C2
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:02:14 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id g141so11342184wmg.4
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zhWVNgXFzYIwi+xlrMpHOToyn0X2X7tNzr/emG5rE0A=;
        b=SHeJYP3NU0yZsCRPoP4gnPGxPNuXXzc1WFJl8TcMMjD4K4seLMAZ1iyXZxazbCc9Sx
         75MRRaF7AaauzD4Bkk1MTKAfmQcUE5R8p0m4sPzjf7Bn05ENQccP4lBigrKOtv61NuQ1
         zkcWYTnb5k2xyC64PBuPOsi4x9Wl/smJ2tLJzvGOTI5kXHuxhnro1PCwMorssy/yMJ6+
         ptYYjgFMxdBMtZ8/WTTLZ5GlH+zXWBV7e99Li/ytkVcRkzH1z2rbg9BcoTkxMsRsCrA8
         keyTKIEerp0TOaPrGFh8tH1dNYoMlASsm1p1Jt2+CsDjN47i98hawuIdnG1t7870AL0i
         Fk6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zhWVNgXFzYIwi+xlrMpHOToyn0X2X7tNzr/emG5rE0A=;
        b=n3ybh+0PH+ZUZyqN2lKzx6Lh4dX7sqhgmjjNYEH1c4CHis0/hNTl5kotxL3uShvmxy
         39iqNoJIL5fE+zAXC4E/MihgS7lazAIoeAJdmUn44QjTrOLDYczia3UTi4Ai0Pk+76Xj
         HFe+lY/giWJmox0kiIjT3sPdgkXn024kTSjMRwy82cckCw9HyQpRYtzjAHxc0caUwm/m
         nBxxEMs+7aKteelyZrxwR2JwNS//K1lld5Do01ZlkzT1d0qztaANhbI9rfmenUInjqpo
         Xa/ib499puiTCn8pSHReyv986dvJrYNtki7dtN8EXlGaiab9WgNa0QfdtHe8RfIlADIq
         /9SA==
X-Gm-Message-State: AOAM532h4FfHZK9qAIacJ+S0393Bv6qiyoUC0oS8kcU4xvabdx91ljuj
        PSLCge2yqxzdJ3Q2TEAnnpAwCQ==
X-Google-Smtp-Source: ABdhPJxkIF2GK+nUNNFvKfJ/di1huy/9I9tcRlcFhc8uSkdbTpMLxBPaHKlj2gsxpqTh9dSW2+ST8w==
X-Received: by 2002:a7b:c5cc:: with SMTP id n12mr21588846wmk.43.1635181332906;
        Mon, 25 Oct 2021 10:02:12 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id y5sm6913973wrd.75.2021.10.25.10.01.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 10:01:55 -0700 (PDT)
Subject: Re: [PATCH v9 12/17] ASoC: qdsp6: audioreach: add Kconfig and
 Makefile
To:     Mark Brown <broonie@kernel.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
 <20211006113950.10782-13-srinivas.kandagatla@linaro.org>
 <YXbdQkAkRq0ntpLk@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <24890938-f2a6-f1d4-871a-f8a13557f725@linaro.org>
Date:   Mon, 25 Oct 2021 18:01:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YXbdQkAkRq0ntpLk@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25/10/2021 17:37, Mark Brown wrote:
> On Wed, Oct 06, 2021 at 12:39:45PM +0100, Srinivas Kandagatla wrote:
>> Now that all the code for audioreach and q6apm are in at this point to be
>> able to compile, start adding Kconfig and Makefile changes.
> 
> With the previous issue fixed this continues to break the build for
> arm64 defconfig:
> 
> ERROR: modpost: "audioreach_tplg_init" [sound/soc/qcom/qdsp6/snd-q6apm.ko] undefined!
> 
Sorry Mark, This symbol is in in 13/17 Patch.
I will resend v10 fixing this issue.

--srini
