Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9898439AED
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 17:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233413AbhJYP6r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 11:58:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233339AbhJYP6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 11:58:47 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3D4EC061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 08:56:24 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id g201-20020a1c20d2000000b00327775075f7so5490053wmg.5
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 08:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Db2B25rEfKLkiVTUHJs7laJ28rh5Dd1fktdUJTRuQiM=;
        b=HcdApW17lvO9adNo+z7zNuECFnzltC/L9PbFgBvpHbu4gvMM09dQLVA3c74VY2oK7U
         Qp64U4TOk8Kp1s+XNsEgdT91OdprE1r3Hn8Y3VoZgABudbi76bVMqyS7yYAB4VwTIM7U
         CddS3F+uTFJFolcSOqdPGfyNjXw5TCP2qF8N1Qmbsz/RIyiYfC7r4dySTc40O7EsRv1Z
         Ort/JjHa65neZ79sG69Y+KZpzF80SZARty8B7CiOJUZNSkKXrrppWoS4JBMf6r+JkfXX
         WrkgLeRvs9PYbH4mOac9sHZYhuj88uShrWWXRHqRAOrUe/66x0rVqcy+GlcjFmP5mDBx
         ofWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Db2B25rEfKLkiVTUHJs7laJ28rh5Dd1fktdUJTRuQiM=;
        b=aNJcxTMgW9iMxvbdujIRdFePM5xqL5OiRE/rJt5aIxDaGiDTKQfD+h2s9kGa0obzYd
         ZyFecrPAUVOyWFroMNUzkVALvoEaeGKhK4CsKstJkL+DuKayDpzwJFhFF4LcpKSzrxLE
         9JRxlXzbOpzy4kf1uSl9+vl0RqXhrZpdKpryoJ4Af42/Dc+rlJoD3KWVpipGfjpcKvKI
         6Rz4eRKmlt4ZrgXHvPfq6QHk9uTDArqQCL5Zbs44zOBxNqEzrEa/vlB8TIhq4P4ZcNn7
         GoTg4E52ZhzxfG3uqhckSnCNGLLChJlgmJi+nAzFedFUyKNNTw4iETs3Q0EFyYZ2PuiE
         Szog==
X-Gm-Message-State: AOAM530U1mG94XOhWv8GzEgrgVTTkROTSGlEBsx9xJ9XEewVIAYVVk6W
        x12aUXJPM/fzvV/jgK6ltGA2mg==
X-Google-Smtp-Source: ABdhPJzhoi76q5GOL2yBjpjIEY4bELHeotutWzEjbathm7xYYDMUMqf+3+7Dk2ErnfmLk6OpoKMpqA==
X-Received: by 2002:a7b:c7d6:: with SMTP id z22mr20015915wmk.65.1635177383520;
        Mon, 25 Oct 2021 08:56:23 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id m2sm19155475wml.15.2021.10.25.08.56.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 08:56:23 -0700 (PDT)
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
 <YXbSHubt3Rivh9xp@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <0313d98f-d626-7086-8808-663dee2a3560@linaro.org>
Date:   Mon, 25 Oct 2021 16:56:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YXbSHubt3Rivh9xp@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25/10/2021 16:49, Mark Brown wrote:
> On Wed, Oct 06, 2021 at 12:39:45PM +0100, Srinivas Kandagatla wrote:
>> Now that all the code for audioreach and q6apm are in at this point to be
>> able to compile, start adding Kconfig and Makefile changes.
> 
> This doesn't compile with current code for arm64 defconfig:
> 
> /mnt/kernel/sound/soc/qcom/qdsp6/q6apm.c: In function 'q6apm_audio_remove':
> /mnt/kernel/sound/soc/qcom/qdsp6/q6apm.c:703:2: error: too few arguments to function 'snd_soc_tplg_component_remove'
>    703 |  snd_soc_tplg_component_remove(component);
>        |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from /mnt/kernel/include/sound/soc-dapm.h:15,
>                   from /mnt/kernel/include/sound/soc.h:386,
>                   from /mnt/kernel/sound/soc/qcom/qdsp6/q6apm.c:15:
> /mnt/kernel/include/sound/soc-topology.h:191:19: note: declared here
>    191 | static inline int snd_soc_tplg_component_remove(struct snd_soc_component *comp,
>        |                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> This will be with the stub for !SND_SOC_TOPOLOGY, the index argument has
> been removed for the actual implementation but not for the stub, the fix
> is in the header.
> 

This patch [1] seems to have remove the argument to 
snd_soc_tplg_component_remove() but not in the stub function.

I can send a patch to fix this

--srini

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/commit/include/sound/soc-topology.h?id=a5b8f71c5477f4327c66a085d9714fe298510819
