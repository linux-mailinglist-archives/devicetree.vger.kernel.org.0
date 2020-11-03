Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 586DB2A4533
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 13:31:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728023AbgKCMbk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 07:31:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728007AbgKCMbk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 07:31:40 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B394C0617A6
        for <devicetree@vger.kernel.org>; Tue,  3 Nov 2020 04:31:39 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id c16so12606754wmd.2
        for <devicetree@vger.kernel.org>; Tue, 03 Nov 2020 04:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=j00fZvd5E25LdZWEzbk/1r7+kTge0offgTqgLngChuU=;
        b=zwxC+iwJptDjgiLVGWFM2MWY7tm/VXVdLIdMZtY1HfjuCcNxbWUJbcbj7rgGaccdF/
         oxUFoIPE+H2jh9ZiucjG5gsB8/wX7QdyFyAOWnjyDifHt6h9gbO7eBtFWTo8ahF8VOQZ
         9jksT6eBdGLYlmzScWMr1nODC1Qn6xkHXz1FJ6TQ9F+05aXheM7nkx72jJp8Z9D8b/4i
         gupaGs8o44QOC6/e3DmhysXcyyKFfFXxuebxG9Z5ILw75WbRboNtSeJhDSc30KvsEybS
         XyccheUV3JXBzLEwVR66FzaysD4dVpIfJkdRChQDMNPcgThoegLW0RDv9nxDW88+D88T
         Jd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j00fZvd5E25LdZWEzbk/1r7+kTge0offgTqgLngChuU=;
        b=Rxwrvasv3Y/xdRaCqtr0lHo0E9drdkz9TcX5smCQk2HhudBq+mrpnQCC1XoDTF85nJ
         RXbLWrgpuPGm7a3+zwIq2pRspQeSu23/GI9DzXbpi5oid++GwR3LakRY9PqxFTP1uOb3
         473mMqOHHxVP0VO9/VpiTjYxemPzrVUrSriKIRXVM5BOKxY3TTvqpiFYwZi8woXa16UK
         ADNicL9ygw2sKGWGmuNP+kleznkufHo0hMu9G9ekRKZQfMVJvtmUeOB6KsayUiZZqTkc
         elX6W/OSnxn9tEX58pu/z2zUtoQTI0414YDGzRcZ4KVhIiUZmPq6Or/xyYBsQ4O0YZk9
         yqEg==
X-Gm-Message-State: AOAM531jI3GZ02FbOVeuPBXSYo/KEwMJrUDF5IyTBBD4OVV21O9kp8b6
        qz/Jb24I1eFQAgD0gsnf00qevQ==
X-Google-Smtp-Source: ABdhPJw6nHTW43cCaBSUzJOKY5E/eZzzP3IlKaa7CbmY90z+f/wk/4UnhiYk363o9nYD0FBPq3OYxg==
X-Received: by 2002:a1c:1b85:: with SMTP id b127mr3563167wmb.163.1604406697450;
        Tue, 03 Nov 2020 04:31:37 -0800 (PST)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id u3sm3127993wme.0.2020.11.03.04.31.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2020 04:31:36 -0800 (PST)
Subject: Re: [PATCH v2 3/6] ASoC: codecs: lpass-wsa-macro: add dapm widgets
 and route
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        broonie@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org
References: <20201029110829.16425-1-srinivas.kandagatla@linaro.org>
 <20201029110829.16425-4-srinivas.kandagatla@linaro.org>
 <3300f31e-28d1-becf-41e7-814b38082dcb@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <b21abfab-108e-50f4-f905-5d9d0fc5168b@linaro.org>
Date:   Tue, 3 Nov 2020 12:31:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3300f31e-28d1-becf-41e7-814b38082dcb@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29/10/2020 15:52, Pierre-Louis Bossart wrote:
> 
>> +static int wsa_macro_enable_mix_path(struct snd_soc_dapm_widget *w,
>> +                     struct snd_kcontrol *kcontrol, int event)
>> +{
>> +    struct snd_soc_component *component = 
>> snd_soc_dapm_to_component(w->dapm);
>> +    u16 gain_reg;
>> +    int offset_val = 0;
>> +    int val = 0;
>> +
>> +    switch (w->reg) {
>> +    case CDC_WSA_RX0_RX_PATH_MIX_CTL:
>> +        gain_reg = CDC_WSA_RX0_RX_VOL_MIX_CTL;
>> +        break;
>> +    case CDC_WSA_RX1_RX_PATH_MIX_CTL:
>> +        gain_reg = CDC_WSA_RX1_RX_VOL_MIX_CTL;
>> +        break;
>> +    default:
>> +        return 0;
>> +    }
>> +
>> +    switch (event) {
>> +    case SND_SOC_DAPM_POST_PMU:
>> +        val = snd_soc_component_read(component, gain_reg);
>> +        val += offset_val;
>> +        snd_soc_component_write(component, gain_reg, val);
> 
> missed from v1: offset_val is zero so the sequence is reading and 
> writing the same thing. Is this intentional or useful?

Its useless, I should get rid of offset_val!

> 
>> +        break;
>> +    case SND_SOC_DAPM_POST_PMD:
>> +        snd_soc_component_update_bits(component, w->reg,
>> +                          CDC_WSA_RX_PATH_MIX_CLK_EN_MASK,
>> +                          CDC_WSA_RX_PATH_MIX_CLK_DISABLE);
>> +        break;
>> +    }
>> +
>> +    return 0;
>> +}
>> +
> 
> [...]
> 
>> +static bool wsa_macro_adie_lb(struct snd_soc_component *component,
>> +                  int interp_idx)
>> +{
>> +    u16 int_mux_cfg0 = 0, int_mux_cfg1 = 0;
> 
> these inits are ignored
> 
>> +    u8 int_mux_cfg0_val = 0, int_mux_cfg1_val = 0;
> 
> these as well
> 
>> +    u8 int_n_inp0 = 0, int_n_inp1 = 0, int_n_inp2 = 0;
> 
> and these are also ignored.
> 
Yes, these are ignored, I should have removed the unnecessary 
initialization!
It would have been nice if sparse could catch such errors!

are you using tool to catch these?

--srini
>> +    int_mux_cfg0 = CDC_WSA_RX_INP_MUX_RX_INT0_CFG0 + interp_idx * 8;
>> +    int_mux_cfg1 = int_mux_cfg0 + 4;
>> +    int_mux_cfg0_val = snd_soc_component_read(component, int_mux_cfg0);
>> +    int_mux_cfg1_val = snd_soc_component_read(component, int_mux_cfg1);
>> +
>> +    int_n_inp0 = int_mux_cfg0_val & 0x0F;
>> +    if (int_n_inp0 == INTn_1_INP_SEL_DEC0 ||
>> +        int_n_inp0 == INTn_1_INP_SEL_DEC1)
>> +        return true;
>> +
>> +    int_n_inp1 = int_mux_cfg0_val >> 4;
>> +    if (int_n_inp1 == INTn_1_INP_SEL_DEC0 ||
>> +        int_n_inp1 == INTn_1_INP_SEL_DEC1)
>> +        return true;
>> +
>> +    int_n_inp2 = int_mux_cfg1_val >> 4;
>> +    if (int_n_inp2 == INTn_1_INP_SEL_DEC0 ||
>> +        int_n_inp2 == INTn_1_INP_SEL_DEC1)
>> +        return true;
>> +
>> +    return false;
>> +}
> 
