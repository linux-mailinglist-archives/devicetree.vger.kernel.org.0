Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9144C749BE0
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 14:35:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbjGFMfI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 08:35:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjGFMfH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 08:35:07 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 928A0173F
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 05:35:06 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3fbf1b82d9cso6524315e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 05:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1688646905; x=1691238905;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2lGRta1DFJWgP2Ka3XUK1qfLkVKYTy4OhAMOsxkgoyQ=;
        b=t9T2EPPp9hbOjIHqqad9elRw73dzrHEK2qBF+VJuC8f9Y3/9oMFx31mNw37w8ibwcy
         52cdAg0Y7/Ozjn2LCoU9JJLD0kixWVjLFoeQwcSOWnSOGDJyiaHna6kf1NGSlP6EIHNB
         AWQQ573f791IbjtZMj4Pfai38KjablEBnkRW3fTVKJ9tmjDz+St1xrbdQjmcLwdKig/H
         wOIWU+6EHF/+4IvIFfRhyvcFdIwTfhJ5gK2gYQ4JfTH8N8yWiflC09nqE4vx2xuNmfLA
         W3KxngHtkuQWfYwyJN78GH7JZ3H3mggVoHkYCrGMzYmf0lEXaPqioQaGUnzRQqm6kN+g
         3I5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688646905; x=1691238905;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2lGRta1DFJWgP2Ka3XUK1qfLkVKYTy4OhAMOsxkgoyQ=;
        b=kF9/QMPSus6iSzvKySV+XTmc5Pl8AooEREFZuWxyrHj3+eiitQG7RLDN6xKsqElWHx
         1oZz3Kfumm7b/Id0T1vaz4y5PzY/1jHPLO5CZ6pp84MM/ADwDz+w42UqQe6jp3AbR13W
         QOJkzpdhBX850r1NFKFqTGacE8XERBSQUOCu7fleQnRJ2BSRzfHgD8PJ7OhvXesOGrt1
         979pK1Tx6gTVsNjZALQB+Vv6NaNzkpE4x4ngd66dgXrwo1FOcUOmA0TSa9t1BalgWg8/
         k9q/TLMeY2OYBOyQAM9Jtv0B6ruNRjUi/S85WsQQ0P++qyNDSjVxHdN3fRDD/wBdhmRc
         0Xng==
X-Gm-Message-State: ABy/qLYPOoJaR32xjrKlc8mx8pEG8rBhAduIe1hfoRL7GTM+QH8sMdmp
        V6IPHg9UXZdhdeSi9Y+1zaQbQA==
X-Google-Smtp-Source: APBJJlFztCovuW8wVvfjzKQVaVRs6Fs31fNA/tQYgjyyw5T1md8AvL7PKf82FqXbSOSfVivrPPxFsQ==
X-Received: by 2002:a5d:618d:0:b0:30f:c7e4:d207 with SMTP id j13-20020a5d618d000000b0030fc7e4d207mr1293596wru.61.1688646904933;
        Thu, 06 Jul 2023 05:35:04 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id j14-20020a056000124e00b0031274a184d5sm1764357wrx.109.2023.07.06.05.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 05:35:04 -0700 (PDT)
Message-ID: <67e02d84-3b51-9973-225a-cf11fcd1aaf2@baylibre.com>
Date:   Thu, 6 Jul 2023 14:35:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Fix PM suspend/resume with
 venc clocks
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, matthias.bgg@gmail.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, yong.wu@mediatek.com,
        tinghan.shen@mediatek.com, weiyi.lu@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com
References: <20230706095841.109315-1-angelogioacchino.delregno@collabora.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230706095841.109315-1-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 06/07/2023 11:58, AngeloGioacchino Del Regno wrote:
> Before suspending the LARBs we're making sure that any operation is
> done: this never happens because we are unexpectedly unclocking the
> LARB20 before executing the suspend handler for the MediaTek Smart
> Multimedia Interface (SMI) and the cause of this is incorrect clocks
> on this LARB.
> 
> Fix this issue by changing the Local Arbiter 20 (used by the video
> encoder secondary core) apb clock to CLK_VENC_CORE1_VENC;
> furthermore, in order to make sure that both the PM resume and video
> encoder operation is stable, add the CLK_VENC(_CORE1)_LARB clock to
> the VENC (main core) and VENC_CORE1 power domains, as this IP cannot
> communicate with the rest of the system (the AP) without local
> arbiter clocks being operational.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre
