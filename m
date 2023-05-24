Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63DBD70F930
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 16:52:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236113AbjEXOwG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 10:52:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235990AbjEXOv6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 10:51:58 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A935BE7A
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 07:51:36 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f68fc6b479so2302465e9.2
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 07:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684939869; x=1687531869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d2DZMvMkI+V5RMAcXCANfBiGO0oQRS/4+8XHUn3qgoQ=;
        b=YT+4PyG2PpzfKSBHI8via/8/85UUkYBO2UQIpGyWv6Za+qBrjWJtqy48/7FF0kjuXS
         RMowXnKeB9ZUFdWVc02eXhlevD7TG5KMShelI1AdHdYOdM2/focKmgSgHkJTQVl1hH1E
         583D9fVRRW7QNbiEQsBi1u+lVIRB+0IiP8nSx5Q3NGOOjOE1p4Fv3Gdxj9zcGgldrsN0
         v+Owz0hzn7fVsVQl/QfZp38PHyTcyN9qsiWdkr2Z04AyMtXOSKDIvDODXJyyQKKt5bJ7
         Q8rffHMfEiZe4LyTr8tGRM0t/YtOcfIAT3wI0MsdXaO+QrL6w6KCtyeSFa3/ARp0/w+i
         fPMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684939869; x=1687531869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d2DZMvMkI+V5RMAcXCANfBiGO0oQRS/4+8XHUn3qgoQ=;
        b=TfvtLKcH2JtIBdoHvuGHzKYQ3iO6STp/AIKwf5yTELAdXkMEfced1XODjviU8920vE
         KZ5/5Uy8PdOD/LpLQKQJWW+7PXLoqOb+5O0Den6Dmjv99SmAxat8PVtztDajZE2r+Vih
         /I/fJnUB8fTtYpsiSfOPLVgDog2nrtRdopCscBBsKSQwe25bJ8cZfEQraB6zztgw8tX6
         sQ+LYcstnPbqv8M2VciMAK9u+vAaeMKR1E0xMbFqwHkGEeAwQjtzcmwfJqR4nmFJjV4q
         mW797vChCz2JllpgIwUBAvTuhCWGhgRVqaV+MttyuG+HpdJWtrMadn2ee9afTUDwd/QW
         X/Aw==
X-Gm-Message-State: AC+VfDznuvzS2lBDEL3EzpdB3JmNINhWWtobmMegcm8CQ6zIJQg2Tnul
        j26XlrXR1RZHgFNfvJC47wu6RA==
X-Google-Smtp-Source: ACHHUZ5wWAGNXmRoeycTsyYGzAOS1ytBUa6At8n0AYB/K3UfJLVFRhbZwiqycV6JUKARY/EvMGybsA==
X-Received: by 2002:a7b:c40a:0:b0:3f1:72fb:461a with SMTP id k10-20020a7bc40a000000b003f172fb461amr86103wmi.2.1684939869319;
        Wed, 24 May 2023 07:51:09 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id x26-20020a05600c21da00b003f423f5b659sm2675744wmj.10.2023.05.24.07.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 07:51:08 -0700 (PDT)
Message-ID: <e13c2670-4877-7e75-aaa2-623f4ed927c0@baylibre.com>
Date:   Wed, 24 May 2023 16:51:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 5/7] ASoC: soc-dapm.c: clean up debugfs for freed
 widget
Content-Language: en-US
To:     Trevor Wu <trevor.wu@mediatek.com>, broonie@kernel.org,
        lgirdwood@gmail.com, tiwai@suse.com, perex@perex.cz,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com
Cc:     alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230523021933.3422-1-trevor.wu@mediatek.com>
 <20230523021933.3422-6-trevor.wu@mediatek.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230523021933.3422-6-trevor.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/05/2023 04:19, Trevor Wu wrote:
> When a widget is added to dapm via snd_soc_dapm_new_widgets,
> dapm_debugfs_add_widget is also called to create a corresponding debugfs
> file. However, when a widget is freed by snd_soc_dapm_free_widget, the
> corresponding debugfs is not cleared. As a result, the freed widget is
> still seen in the dapm directory.
> 
> This patch adds dapm_debugfs_free_widget to free the debugfs of a
> specified widget, and it's called at snd_soc_dapm_free_widget to clean
> up the debugfs for freed widget.
> 
> Signed-off-by: Trevor Wu<trevor.wu@mediatek.com>

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

