Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32F8725D753
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 13:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729765AbgIDLaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 07:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730184AbgIDL0C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 07:26:02 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77D53C061244
        for <devicetree@vger.kernel.org>; Fri,  4 Sep 2020 04:24:03 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id a9so5745597wmm.2
        for <devicetree@vger.kernel.org>; Fri, 04 Sep 2020 04:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8xEgg3o+gLGeESFHktGDRTpfevC+XglUUg4G3rHJx3I=;
        b=vHJpiwhqX32vEN3zWtbXmY0ePGjmUa5Gzfg+sZKNvZv4hI2s8k2vIpGGM4s7zrwM2s
         jzbK/FnKxl0PFFSZFeUybLHJBPyZ0oQFAtOhBfFBPwGTsThaPfNFEMz8DD8LWQtDFBhi
         qvgVFDlw5kPPpWyvWBkwmP1bARRgi7L7CHtoRlDF24c4Jg/hCBgby3aVV8bZ2GogBnEB
         Dy0rtNsF3LdNzB/rowH6JxMOmHt4+vf4ulr7kJGWT/KdbWTGoNqpgNLpmkcRrRlFgXGz
         ROSroRFf1uZJnc5DlU+/S8d49BHzXztyHEZ2zrYq5BR45hPZwEwcq+D1xcPT6exLf14J
         mtdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8xEgg3o+gLGeESFHktGDRTpfevC+XglUUg4G3rHJx3I=;
        b=AjUMf34cHw5Wn0vQtU7Axzw5nPmvnlQ5twD9PSsI+/steqm8UnrTCNBVlpf8W7yMNo
         vBq/KwpeVy84dt9hNQAqq/Zof6qxwi5Fe7LW/n5AYe+yIljYmDtVEkZczUIkUhkodFgk
         c3WZlmrpE2jQQIbMhPuMOBkZL3pzDA++7AcrVU3Hv+XQr9Lz1kyklyDcfehKS+ud4HtX
         LVlPM5R8mIymgeZRGWUp80r1br10gDYqaRMfNOwcQ9KuhSBIsBoy8l0QbrlnPoo/L53j
         Nys/nSoYnQy4v9LUupiHWYv356U7WZP/Qkt38rmePTCj/nQGJ/p/I3EXn3CG9EtRcFZD
         bWjg==
X-Gm-Message-State: AOAM5310TbLH0V8EeWX6mSiz8gW7sRRyq8dChMdrSfbw4Tj8JZr3xd0n
        k6Spz6jsy00WFwzpYNF3Rg4DxRnNwxeIOw==
X-Google-Smtp-Source: ABdhPJyFCbGhweiu1wpz6oEb3pkbD1zvGYUpQ+bW5YR2Ya6HcJTdQVy88XJFyHuu6THd5DeOCRXbHg==
X-Received: by 2002:a1c:4c05:: with SMTP id z5mr6687314wmf.47.1599218642188;
        Fri, 04 Sep 2020 04:24:02 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id h8sm10573821wrw.68.2020.09.04.04.24.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 04:24:01 -0700 (PDT)
Subject: Re: [PATCH v3 3/5] ASoC: qcom: Add support for lpass hdmi driver
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        rohitkr@codeaurora.org, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     V Sujith Kumar Reddy <vsujithk@codeaurora.org>
References: <1598855964-1042-1-git-send-email-srivasam@codeaurora.org>
 <1598855964-1042-4-git-send-email-srivasam@codeaurora.org>
 <ac1f0b9a-8e07-464c-b0df-6b8e5665a632@linaro.org>
 <0101017458d94c82-96bbcff0-018e-4f5d-8273-7869c3599d32-000000@us-west-2.amazonses.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <b18ed556-09f5-1d2a-b8fc-56a52429addc@linaro.org>
Date:   Fri, 4 Sep 2020 12:24:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0101017458d94c82-96bbcff0-018e-4f5d-8273-7869c3599d32-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 04/09/2020 12:21, Srinivasa Rao Mandadapu wrote:
>>
>> Before going into detail review, I see real issue in the overall 
>> approach here to add new interface to exiting lpass!!
>>
>> Intention of struct lpass_variant is to address differences between 
>> SoCs or different lpass versions. But you should not duplicate this 
>> and use it for addressing differences between each lpass interfaces!
>> All the dai related register offsets should still go in to this 
>> structure and driver should be able to know which dai its talking to 
>> based on snd_soc_dai_driver id and select correct register offset.
>>
> Do You suggest to use separate structure like struct 
> lpass_hdmi_interface in lpass_data?

No, you should just put every thing lpass_variant as you did but no "id" 
thing in that.

--srini
