Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EBD43E1108
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:17:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239544AbhHEJRm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:17:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239416AbhHEJRl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:17:41 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20788C061765
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 02:17:27 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id c9so5558600wri.8
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fzThuEjTrYhg1qOmjws2RuEPYFGd40kLfkIG1ZhFyqU=;
        b=H9MbDpONaMfqEQsHonMKiW0qkmxYLMwS0uRUZg6wtXAdVU5M/dJLOsFiJe5OER+G1p
         IFQupaw/WaJxRHlv064WK/6b2o0QsZxtImi+8S22GS74wVbd37V2WeDQfMiWJTJlw+wJ
         oopRPsr0AIOCDAPlEj9HWzlN8FaRlH5HJI5fDhhURhHhxQYvTYoQVCzpIRS+UhF7Vdcj
         /I1SZFFnYCwuv2tbAaJ7RZ6coY/XmZ+vSq8Kfsjaddy5+fmq2x6h8Mg1DZL1TY8EaMOR
         QTypTYgGMOvWudH0T1SP1QaR3ZNYKrsTA1NUmQy+GNoNEzpLNMkofeSPXk6EFmZOHrNG
         h8Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fzThuEjTrYhg1qOmjws2RuEPYFGd40kLfkIG1ZhFyqU=;
        b=UfkPxQdREazCz680icEW3pqVEpeHNds7Rb8zU1mMcaJz+3tb13Gl4g7QJHAiLn4hU5
         EPzwwoeqSr7KOYA1bMBg+upZxXAfH2+uxabhI3iEC3dpbD19EJpKCYd40OegcYWA24mr
         BHEZ5WFkbEcAhTKbxC6B//sow0pHaAxg/OxBaSqnHtZj+j9p9ehJNzx7hOza3DVuOjHW
         qTiGufPNGiU9gxcZqeKYKrsMiO/3PTpJTNnwq5Qbjge+eVYV6FPRokvi7fHBzx2160Gu
         vJQ3DpHN/AX+fjyQQBHrGlXKxtJybD2UrpfBlGoli5/WLFpmFQEPzxpWk63W8tbPJX64
         5w3w==
X-Gm-Message-State: AOAM5313xxxmjfbhAovKWFbq9JAilMQekeLEDCCuMFjTlUbazAyj/bY9
        oVERGrxkvLw0AzuMwK/Mztw56Q==
X-Google-Smtp-Source: ABdhPJxWILAsnwsT+9R3gsOKWSUR18ggJyUkK0YIVKtH9k/P3tlswSZoHeyJCACfIZYqUmV1QJxxTw==
X-Received: by 2002:adf:d20c:: with SMTP id j12mr4026181wrh.74.1628155045815;
        Thu, 05 Aug 2021 02:17:25 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id d16sm5400324wrx.76.2021.08.05.02.17.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 02:17:25 -0700 (PDT)
Subject: Re: [PATCH v3 12/20] ASoC: dt-bindings: q6dsp-clocks: add q6prm
 clocks compatible
To:     Mark Brown <broonie@kernel.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-13-srinivas.kandagatla@linaro.org>
 <20210804180249.GH26252@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c07fc981-8eed-8333-fd4a-4521efc8da6c@linaro.org>
Date:   Thu, 5 Aug 2021 10:17:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210804180249.GH26252@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Mark for the review,

On 04/08/2021 19:02, Mark Brown wrote:
> On Tue, Aug 03, 2021 at 01:54:03PM +0100, Srinivas Kandagatla wrote:
> 
>> +    enum:
>> +      - qcom,q6afe-clocks
>> +      - qcom,q6prm-clocks
> 
> Again, what do these mean?  One of the goals with DT bindings
> documentation is to be able to relate hardware to bindings.
> 
Old Elite QDSP framework has service called "Audio Front End" aka q6afe 
which is responsible for managing the LPASS Audio clocks. So We endup 
with "qcom,q6afe-clocks" in the past to represent this.


With New AudioReach framework this functionality is now managed by 
"Proxy Resource Manager" aka q6prm.

I will rename "qcom,q6prm-clocks" to "qcom,q6prm-lpass-clocks"

to be more explicit about the hardware LPASS (Low Power Audio Sub 
System)IP here.

--srini
