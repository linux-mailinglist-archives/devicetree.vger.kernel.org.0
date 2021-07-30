Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5807B3DB796
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 13:06:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238637AbhG3LGy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 07:06:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238631AbhG3LGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 07:06:53 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 148E6C0613C1
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 04:06:49 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id p5so10808907wro.7
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 04:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7cN7mCAd1PgSaOiwUYeJf080GlnYfimOBZ14rsMi0+0=;
        b=EIE2baSCXqVT4dVgY1Gguj0uDW2UV88MV3gEfeX1XFWqHh0DznHHGFa58B4wRUEMYh
         deqJ+oTinvP62Ow2Dv3/AVHnn5K535NV4oBCy9AvGSjg8XETNasDy2r8iaHpxePS0OHF
         KFp/upiTubTFSIlYPo9o7BY87UbFZDzUjPEHaeDm6edcyDvnCj2sGZL261EonUmJ4i2Y
         tdCy21VeTSDuf/9Z1GK/8MRairCaptF1pzQnn4obYRll0xYstlM0FcXL65gDBQx3Um5a
         FxikgGBu3MQ0aD+ykNY/WF55YtUFHzLsNHv9xfmStoEld6AgNt16sfeHnzOfySGjWBMt
         /TrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7cN7mCAd1PgSaOiwUYeJf080GlnYfimOBZ14rsMi0+0=;
        b=GDqWTkl5o0yE0SALOhBl4s456vNBC78jmCDU4zSWEjrmBxl+u9O6TbucT9UtCARqDV
         UMGH4NpHheJZxK5zhbzAM6LjZiPPd4danzNlDTJUeXNR9UPX6MdCoH5nBlHW6tZG4Eeh
         j4KhezlKqk4/unykHmTx85sRHufInM9lo/ofvMp/JM8LwOtcRJKiFrh28JRG0DdDxeML
         xP2u/qgzefAF6Mzf7MG99TXM1f/hk1zKbYfmWQ4cMhqNozK5dxn/jw3KgGc+/b51VUTR
         7MPtejc+OKB3C5zD+TvA60NVkjbMoR+9GF83iHQcS6jNseQq9usaEV1sT7Mi9XnFyJ5T
         C4/A==
X-Gm-Message-State: AOAM5314+wkMH3129/kHQ0KFjUDcwrS+DdLpuzH2LMGGUtzUigXZ46CG
        6ap9Jha0QFMEqLutxP0/xzJHJhhcZ0qceQ==
X-Google-Smtp-Source: ABdhPJwJg9Ja1mRbrDoc3k6Xo2NEMjyjUAiTl4lgkbRru8uTrdydvtGvqnfvahOos5jVuAw9eXwYqQ==
X-Received: by 2002:a05:6000:1d0:: with SMTP id t16mr2382907wrx.213.1627643207487;
        Fri, 30 Jul 2021 04:06:47 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id 6sm1486139wmi.3.2021.07.30.04.06.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 04:06:46 -0700 (PDT)
Subject: Re: [PATCH v2 04/16] ASoC: qcom: dt-bindings: add bindings Audio
 Processing manager
To:     Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, bjorn.andersson@linaro.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210714153039.28373-1-srinivas.kandagatla@linaro.org>
 <20210714153039.28373-5-srinivas.kandagatla@linaro.org>
 <20210728173649.GA1290628@robh.at.kernel.org>
 <092018be-50ae-6dda-73cd-6c7eb002dc19@linaro.org>
 <20210729111338.GJ4670@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <a03beb7c-ee4c-fbe0-49bf-1d9b6fa17b94@linaro.org>
Date:   Fri, 30 Jul 2021 12:06:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210729111338.GJ4670@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Mark for the review,

On 29/07/2021 12:13, Mark Brown wrote:
>>> This all looks fairly similar to the prior Qcom audio binding(s). It
>>> would be nice to not see this all re-invented.
>> AudioReach is a new DSP signal processing framework Which is different to
>> its previous DSP firmware(aka Elite).
>> It makes use of ASoC Topology to load audio graphs on to the DSP which is
>> then managed by APM (Audio Processing Manager) service.
>> So internals are not exactly same.
>>  From device tree side we might end up with similar layout, but there are
>> some subtle differences like clocks are managed by q6prm service instead of
>> q6afe service in old firmware, front-end pcm dais definitions come from ASoC
>> topology.

> The software we're running on the hardware shouldn't impact how the
> hardware is described, it should be posible to switch DSP frameworks on
> the same hardware - look at what Intel have done with SoF.

I totally agree with you.

There are two parts to the software running on the hardware, first is 
the hardware itself and second is the services that are running which 
control parts of hardware.

Hardware device tree description across these new and old DSP framework 
are exactly same, However association between hardware and DSP service 
would change as per DSP framework services it exposes.

Ex: clock controller would be associated with PRM(proxy resource 
manager) in AudioReach vs AFE (Audio Frontend Manager) in Elite, but the 
clocks and other hardware properties remain same across these.

As exiting DT-bindings had both services and hardware description in 
same document which Is why I could not reuse it.

I will try to split up the hardware parts and DSP services parts in the 
existing bindings so that we could reuse the hardware bindings across 
multiple dsp frameworks. It should also be possible to reuse some old 
code too in this process.

--srini
> 
>> Are you suggesting that we should reuse the old bindings (q6afe, q6asm) by
>> add new compatible strings along with differences ?
