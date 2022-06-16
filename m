Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0F1A54E291
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 15:55:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377263AbiFPNzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 09:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377317AbiFPNzK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 09:55:10 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D69C3A71C
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 06:55:09 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id h34-20020a17090a29a500b001eb01527d9eso709461pjd.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 06:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AqCBBKJhjvVRevpKirub+RjdcNJhrbWsjFdQsoZidsM=;
        b=MLMlzJpHqLk2NTSkk+4CI6/9tDS/CcuAuC6dpww7mHmyJkrttmtnJO/CzsKVctLzxk
         uSWmtfHFtdcmmtcODHtKBEZjJDTXUKdKe+WmLecqFOF6zJKiqunDohh3PU0vQalFwjKA
         d7uiDUPkWwPHlwOvs19l2d58ZAWsYV0fw7sePeBQIPrYPZsiYO5IJW3+TGPBkwJCdCpZ
         TUBQgm+PUj2fx8W3A7arprSw311qJKS2AT37ChtVeYVsgIJHCEUXmpBrOLlt79rnM7iI
         clLazAQA26Ptz+LYSgDLQKTFIA8N4Iutdz2ZSrAPnlzZqxBBCdvCpomjVI7MWbyu93Wf
         ZrzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AqCBBKJhjvVRevpKirub+RjdcNJhrbWsjFdQsoZidsM=;
        b=Qh9Fi3ASE4Zv2moBMV92J1ULQsKOjs9lWH2mnyPiHTZDJqgZQv0twGA5pcLu3KpMrb
         3t8tDoHilbLYfg0Uwe99D1qTL3dSQVOLCAR//k+o3kN9ImjXtYAZy4SgFrgAahcRrSyB
         F8AruPsTjqhOQqiUcz5HYIjRjYAFuLH17Ksrmr1QxT4RL6GrpUusGcZ8q0efmjUhrojj
         8izBY40ggpMocDe6Rhw7E6zB7LjWaV1cLN89mF2Z7rAzmYz6CBbL61yET2+N1sr9AaiG
         qLZmxmj/yCiF/KE9arsVZXWt6ukZ0zyxW0uN301ulF3JQV2HhbjM01jZFaUQJcOOvRce
         6nWQ==
X-Gm-Message-State: AJIora/rugxQqyHNN7vbpmZM3IJBDVbHCe0xH9n2tHWlBBkOBPT0tnDL
        x7AWtrPxcyXDRCpNPW/VwgbbWQ==
X-Google-Smtp-Source: AGRyM1vD8xThX01mXSwdjH5o86512U3eYCtOXz7Tt7aA/zrrnyjP12qDLwKDYDuqb3ZyVxcfG86VdA==
X-Received: by 2002:a17:902:c94b:b0:168:fb7a:e5a0 with SMTP id i11-20020a170902c94b00b00168fb7ae5a0mr4755533pla.56.1655387708715;
        Thu, 16 Jun 2022 06:55:08 -0700 (PDT)
Received: from [172.20.0.255] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p2-20020a62b802000000b0051bc3f9a1f6sm1823305pfe.55.2022.06.16.06.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 06:55:08 -0700 (PDT)
Message-ID: <629e761b-e3ad-0861-1937-ad660a8a900b@linaro.org>
Date:   Thu, 16 Jun 2022 06:55:06 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/4] dt-bindings: dsp: mediatek: Use meaningful names
 for mbox
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
        Bard Liao <yung-chuan.liao@linux.intel.com>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, YC Hung <yc.hung@mediatek.com>,
        Curtis Malainey <cujomalainey@chromium.org>,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        sound-open-firmware@alsa-project.org, alsa-devel@alsa-project.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220616073042.13229-1-tinghan.shen@mediatek.com>
 <20220616073042.13229-2-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220616073042.13229-2-tinghan.shen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2022 00:30, Tinghan Shen wrote:
> Rename mbox according to actions instead of 'mbox0' and 'mbox1'.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>
> ---
>  .../devicetree/bindings/dsp/mediatek,mt8195-dsp.yaml   | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/dsp/mediatek,mt8195-dsp.yaml b/Documentation/devicetree/bindings/dsp/mediatek,mt8195-dsp.yaml
> index b7e68b0dfa13..ca8d8661f872 100644
> --- a/Documentation/devicetree/bindings/dsp/mediatek,mt8195-dsp.yaml
> +++ b/Documentation/devicetree/bindings/dsp/mediatek,mt8195-dsp.yaml
> @@ -50,13 +50,13 @@ properties:
>  
>    mboxes:
>      items:
> -      - description: ipc reply between host and audio DSP.
> -      - description: ipc request between host and audio DSP.
> +      - description: mailbox for receiving audio DSP requests.
> +      - description: mailbox for transmitting requests to audio DSP.
>  
>    mbox-names:
>      items:
> -      - const: mbox0
> -      - const: mbox1
> +      - const: rx
> +      - const: tx
>  

Commit msg lacks important piece - do you break any users with this? Do
you have any users of this binding?


Best regards,
Krzysztof
