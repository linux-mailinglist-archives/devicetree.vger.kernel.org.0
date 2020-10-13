Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1DA128CBDC
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 12:36:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731016AbgJMKgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 06:36:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730205AbgJMKgi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 06:36:38 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B021CC0613D5
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 03:36:37 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id k18so21229013wmj.5
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 03:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CiWCv3BMnudQFt/Kh0EA1mCHFgkrHwPIFYjOeIiiAgM=;
        b=rrHdIIkHJ4RWluKR74GDVBCXZ3fHa+2GckpSDJAnPQr3LIihHVRnyUP0B3Pyy3ZhiX
         8rSJA7CHd4bBwm+paLicw3yVKCUd7p47cqxTVZOMI8KQTToQQIRbcEkKYaCAJv5rCfEc
         1bgA/vc4KEWcOYZ4uNSULZ7vzptJAjV8I6Yt5FQdZdfVDCfUWFaaYLymlxMbvCLnuB5g
         k4Q1OxKAiRD5UMQFq/jNfia58Icqaqxjn9Zw637CxWxICuvMpdldIxOsG31VbTFTfcjx
         fcwjAwQt64YG5s9nbZkfQG7kDKS53uzrSfQJevNyaAgzQJP/OvC7fnfI1m0PztItBYpx
         0bKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CiWCv3BMnudQFt/Kh0EA1mCHFgkrHwPIFYjOeIiiAgM=;
        b=GTHRVtnbJVN1KulZBrgpf4jHXP1UdHYIiEcy93q4BQ0KErbFMBHcx8FkoK8y7WOI7e
         ZnXlAd4j5/aaT1MMi7zC26KkDTnmxCfZXT8JJ9kVHEX/k4oPCiNiyA4BvZXCoc9Lfpbq
         IGnvRgm5Xc3UKend8ubVeDKhODvzQYCo/C7p9zpt3OsX/UEJ3kyPDtAJWUOmrv1+ekzl
         oIqwGV0cvpuFwK2vipVPMLNQ32GbORRtzl7R2371C6y0OeBq4D67905K3Ygaty/IRgm5
         aVSji1UENJscbFQnKaDFwUV/62IIC4BbeO1wniUErsGaqxnc/8Zcf3shwbP4QeLxtAgJ
         4O6A==
X-Gm-Message-State: AOAM533wV2jFEFaFRlTyJbqE3al4NjPEQ8jyoiXXW5PTWpcyOyFXfTOa
        5cyfF2wa0Z5KSfOZeMp2PfE7FQ==
X-Google-Smtp-Source: ABdhPJxiYcDKpnTqq5SWY21dPvFP7GNAu3f5Em/slUL6EOVBNEG9+t+pGtCNV4M0EgkRnYKNBcGB0w==
X-Received: by 2002:a1c:1905:: with SMTP id 5mr15466149wmz.32.1602585396171;
        Tue, 13 Oct 2020 03:36:36 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id t6sm31809439wre.30.2020.10.13.03.36.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 03:36:35 -0700 (PDT)
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
To:     Cheng-Yi Chiang <cychiang@chromium.org>,
        linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>, Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Stephan Gerhold <stephan@gerhold.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Srinivasa Rao <srivasam@codeaurora.org>, dianders@chromium.org,
        dgreid@chromium.org, tzungbi@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <7bdc0d63-27b1-f99e-c5f8-65f880733d16@linaro.org>
Date:   Tue, 13 Oct 2020 11:36:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200914080619.4178587-3-cychiang@chromium.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Cheng,

Sorry for such late review w.r.t compatibles,

On 14/09/2020 09:06, Cheng-Yi Chiang wrote:
> +---
> +$id:http://devicetree.org/schemas/sound/qcom,sc7180.yaml#
> +$schema:http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Technologies Inc. SC7180 ASoC sound card driver
> +
> +maintainers:
> +  - Rohit kumar<rohitkr@codeaurora.org>
> +  - Cheng-Yi Chiang<cychiang@chromium.org>
> +
> +description:
> +  This binding describes the SC7180 sound card which uses LPASS for audio.
> +
> +properties:
> +  compatible:
> +    const: qcom,sc7180-sndcard-rt5682-m98357-1mic

This information can come from the dai link description itself, why 
should compatible string have this information?

Can't we have better compatible string with actual board name or use the 
same compatible name as used by other boards?

Can you give us some details on the advantages of doing this way?

Or am I missing something?

AFAIU, you should add proper board name / model name to the compatible 
string rather than describe how its connected. Connection is already 
part of dai link definition.

On the other hand model property can include variant information.
This can also be used to set card long name which will help in UCM2.

The reason I had to bring this up is because the use-space (ucm in this 
case) will not be in a position to differentiate between different board 
variants to select correct mixer controls, so its going to be a pain!


Thanks,
srini
